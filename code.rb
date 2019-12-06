voter_data = [
  {
    first_name: "John",
    last_name: "Smith",
    age: 25,
    income: 50000,
    household_size: 1,
    gender: "Male",
    education: "College",
  },
  {
    first_name: "Jane",
    last_name: "Davies",
    age: 30,
    income: 60000,
    household_size: 3,
    gender: "Female",
    education: "High School",
  },
  {
    first_name: "Sam",
    last_name: "Farelly",
    age: 32,
    income: 80000,
    household_size: 2,
    gender: "Unspecified",
    education: "College",
  },
  {
    first_name: "Joan",
    last_name: "Favreau",
    age: 35,
    income: 65000,
    household_size: 4,
    gender: "Female",
    education: "College",
  },
  {
    first_name: "Sam",
    last_name: "McNulty",
    age: 38,
    income: 63000,
    household_size: 3,
    gender: "Male",
    education: "College",
  },
  {
    first_name: "Mark",
    last_name: "Minahan",
    age: 48,
    income: 78000,
    household_size: 5,
    gender: "Male",
    education: "High School",
  },
  {
    first_name: "Susan",
    last_name: "Umami",
    age: 45,
    income: 75000,
    household_size: 2,
    gender: "Female",
    education: "College",
  },
  {
    first_name: "Bill",
    last_name: "Perault",
    age: 24,
    income: 45000,
    household_size: 1,
    gender: "Male",
    education: "Did Not Complete High School",
  },
  {
    first_name: "Doug",
    last_name: "Stamper",
    age: 45,
    income: 75000,
    household_size: 1,
    gender: "Male",
    education: "College",
  },
  {
    first_name: "Francis",
    last_name: "Underwood",
    age: 52,
    income: 100000,
    household_size: 2,
    gender: "Male",
    education: "College",
  }
]
# Average age
ages_sum = 0
voters_count = 0
voter_data.each do |voter|
  ages_sum += voter[:age]
  voters_count += 1
end
ages_average = ages_sum.to_f / voters_count.to_f
puts "Average Age: #{ages_average}"
puts "\n"

# Average income
income_sum = 0
voter_data.each do |voter|
  income_sum += voter[:income]
end
income_average = income_sum.to_f / voters_count.to_f
puts "Average Income: #{income_average}"
puts "\n"

# Average household size
household_size_sum = 0
voter_data.each do |voter|
  household_size_sum += voter[:household_size]
end
household_size_average = household_size_sum.to_f / voters_count.to_f
puts "Average Household Size: #{household_size_average}"
puts "\n"

# Female Percentage
female_count = 0
voter_data.each do |voter|
  if voter[:gender] === "Female"
    female_count += 1
  end
end
female_percentage = (female_count.to_f / voters_count.to_f) * 100
puts "Female Percentage: #{female_percentage}%"
puts "\n"
# Male Percentage
male_count = 0
voter_data.each do |voter|
  if voter[:gender] === "Male"
    male_count += 1
  end
end
male_percentage = (male_count.to_f / voters_count.to_f) * 100
puts "Male Percentage: #{male_percentage}%"
puts "\n"
# Unspecified Gender Percentage
unspecified_gender_count = 0
voter_data.each do |voter|
  if voter[:gender] === "Unspecified"
    unspecified_gender_count += 1
  end
end
unspecified_percentage = (unspecified_gender_count.to_f / voters_count.to_f) * 100
puts "Unspecified Gender Percentage: #{unspecified_percentage}%"
puts "\n"
# Percent of those who obtained a college education level
college_count = 0
voter_data.each do |voter|
  if voter[:education] === "College"
    college_count += 1
  end
end
college_percent = (college_count.to_f / voters_count.to_f) * 100
puts "College Education Percentage: #{college_percent}%"
puts "\n"
# Percent of those who obtained no higher than a high school education level
highschool_count = 0
voter_data.each do |voter|
  if voter[:education] === "High School"
    highschool_count += 1
  end
end
highschool_percent = (highschool_count.to_f / voters_count.to_f) * 100
puts "Highschool Education Percentage: #{highschool_percent}%"
puts "\n"
# Percent of those that did not finish high school
did_not_finish_count = 0
voter_data.each do |voter|
  if voter[:education] === "Did Not Complete High School"
    did_not_finish_count += 1
  end
end
did_not_finish_percentage = (did_not_finish_count.to_f / voters_count.to_f) * 100
puts "Did Not Finish High School Percentage: #{did_not_finish_percentage}%"
