# Write your code here.
def dictionary
  dictionary = {
  "hello"=>"hi",
  "to"=> "2",
  "two"=> "2",
  "too"=> "2",
  "for"=> "4",
  "For"=> "4",
  "four"=> "4",
  "be"=>"b",
  "you"=>"u",
  "at"=>"@",
  "and"=>"&"
}
end

def word_substituter(string)
    array = Array.new
    hash = Hash.new
    hash = dictionary()
    array = string.split(" ")
    array.each do |ele|
      hash.each do |key,value|
        if ele == key
          ele.replace(value)
        end
      end
    end
    array.join(' ')
end

def bulk_tweet_shortener(array)
    array.each do |ele|
    puts word_substituter(ele)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  elsif string.length < 140
    string
  end
end

def shortened_tweet_truncator(string)
  new_string = ""
  if string.length > 140
    new_string = word_substituter(string)
  elsif string.length < 140
    new_string = string
  end
  if new_string.length > 140
    new_string = new_string[0..136] + "..."
  elsif new_string.length < 140
    new_string
  end
end
