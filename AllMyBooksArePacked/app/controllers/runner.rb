# Iterate over each document in data
# for each document, call all parsable methods
# separate each bit of information
# save each bit of information to db

get '/' do
  if !Book.empty?
    @books = Book.all
  else
    Parser.parse_dir('data')
  end
end
