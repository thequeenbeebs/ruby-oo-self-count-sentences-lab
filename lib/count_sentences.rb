require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_count = 0
    words = self.split(' ')
    words.each do |index|
      if index.sentence? || index.question? || index.exclamation?
        sentence_count += 1
      end
    end
    sentence_count
  end
end