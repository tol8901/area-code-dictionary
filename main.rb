dial_book = {
    "newyork" => "212",
    "newbrunswich" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
   somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
    if somehash.key?(key)
        "The area code for #{key} is #{somehash["#{key}"]}"
    else
        "The city is absent"
    end

end

# Execution flow
loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you wand the area code for?"
    puts get_city_names(dial_book)
    puts "Enter your selection"
    requested_city = gets.chomp.downcase
    puts get_area_code(dial_book, requested_city)
    
end