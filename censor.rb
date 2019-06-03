def censor(array)
  banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
  array.each do |phrase|
    banned_phrases.each do |x|
      if phrase.include?(x)
        phrase.sub! x, 'CENSORED'
      end
    end
    puts phrase
  end
end

test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

censor(test_tweets)
