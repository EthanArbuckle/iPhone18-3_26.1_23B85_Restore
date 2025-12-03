@interface ADArgumentParserPositionalArgument
+ (id)enumArgument:(SEL)argument description:(id)description conversionDictionary:(id)dictionary;
+ (id)floatArgument:(SEL)argument description:(id)description;
+ (id)integerArgument:(SEL)argument description:(id)description;
+ (id)stringArgument:(SEL)argument description:(id)description;
- (ADArgumentParserPositionalArgument)initWithName:(SEL)name description:(id)description type:(unint64_t)type conversionDictionary:(id)dictionary;
- (BOOL)setPropertyFromMap:()map<std:()docopt:()std:(std:(docopt:(id)std :value>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :value :string toCommand:;
- (id)fullUsage;
- (id)legalValuesString;
- (id)shortUsage;
@end

@implementation ADArgumentParserPositionalArgument

- (BOOL)setPropertyFromMap:()map<std:()docopt:()std:(std:(docopt:(id)std :value>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :value :string toCommand:
{
  stdCopy = std;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", self->_name];
  std::map<std::string,docopt::value>::map[abi:ne200100](v14, a3);
  getDocoptValueFromMap(v7, v14, &v15);
  std::__tree<std::__value_type<std::string,docopt::value>,std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,docopt::value>>>::destroy(v14[1]);

  name = self->_name;
  type = self->_type;
  v12 = v15;
  if (v15 > 2)
  {
    if (v15 == 4)
    {
      memset(&__p, 0, sizeof(__p));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v16.__r_.__value_.__l.__size_ - v16.__r_.__value_.__r.__words[0]) >> 3));
    }

    else if (v15 == 3)
    {
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v16;
      }
    }
  }

  else if (v15 == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = v16.__r_.__value_.__s.__data_[0];
  }

  else if (v15 == 2)
  {
    __p.__r_.__value_.__r.__words[0] = v16.__r_.__value_.__r.__words[0];
  }

  v10 = setProperty(stdCopy, name, type, &v12, self->_conversionDictionary);
  if (v12 == 4)
  {
    p_p = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  }

  else if (v12 == 3 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15 == 4)
  {
    p_p = &v16;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  }

  else if (v15 == 3 && SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v10;
}

- (id)fullUsage
{
  string = [MEMORY[0x277CCAB68] string];
  name = [(ADArgumentParserPositionalArgument *)self name];
  v5 = [name mutableCopy];

  [v5 rightPaddToLength:45];
  descriptionString = [(ADArgumentParserPositionalArgument *)self descriptionString];
  [string appendFormat:@"%@%@", v5, descriptionString];

  legalValuesString = [(ADArgumentParserPositionalArgument *)self legalValuesString];

  if (legalValuesString)
  {
    legalValuesString2 = [(ADArgumentParserPositionalArgument *)self legalValuesString];
    [string appendString:legalValuesString2];
  }

  return string;
}

- (id)shortUsage
{
  v3 = [(ADArgumentParserPositionalArgument *)self type]- 5;
  v4 = MEMORY[0x277CCACA8];
  name = [(ADArgumentParserPositionalArgument *)self name];
  v6 = name;
  if (v3 > 2)
  {
    [v4 stringWithFormat:@"<%@>", name];
  }

  else
  {
    [v4 stringWithFormat:@"<%@...>", name];
  }
  v7 = ;

  return v7;
}

- (id)legalValuesString
{
  v19 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  conversionDictionary = [(ADArgumentParserPositionalArgument *)self conversionDictionary];
  if (conversionDictionary && (-[ADArgumentParserPositionalArgument conversionDictionary](self, "conversionDictionary"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, conversionDictionary, v6))
  {
    objc_msgSend(string, "appendString:", @" (");
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    conversionDictionary2 = [(ADArgumentParserPositionalArgument *)self conversionDictionary];
    allKeys = [conversionDictionary2 allKeys];

    v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          [string appendFormat:@"%@|", *(*(&v14 + 1) + 8 * i)];
        }

        v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 1, 1}];
    [string appendString:@""]);
    v12 = string;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (ADArgumentParserPositionalArgument)initWithName:(SEL)name description:(id)description type:(unint64_t)type conversionDictionary:(id)dictionary
{
  descriptionCopy = description;
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = ADArgumentParserPositionalArgument;
  v13 = [(ADArgumentParserPositionalArgument *)&v17 init];
  if (v13)
  {
    v14 = NSStringFromSelector(name);
    name = v13->_name;
    v13->_name = v14;

    objc_storeStrong(&v13->_descriptionString, description);
    v13->_type = type;
    objc_storeStrong(&v13->_conversionDictionary, dictionary);
  }

  return v13;
}

+ (id)floatArgument:(SEL)argument description:(id)description
{
  descriptionCopy = description;
  v6 = [[ADArgumentParserPositionalArgument alloc] initWithName:argument description:descriptionCopy type:3 conversionDictionary:0];

  return v6;
}

+ (id)integerArgument:(SEL)argument description:(id)description
{
  descriptionCopy = description;
  v6 = [[ADArgumentParserPositionalArgument alloc] initWithName:argument description:descriptionCopy type:2 conversionDictionary:0];

  return v6;
}

+ (id)stringArgument:(SEL)argument description:(id)description
{
  descriptionCopy = description;
  v6 = [[ADArgumentParserPositionalArgument alloc] initWithName:argument description:descriptionCopy type:4 conversionDictionary:0];

  return v6;
}

+ (id)enumArgument:(SEL)argument description:(id)description conversionDictionary:(id)dictionary
{
  descriptionCopy = description;
  dictionaryCopy = dictionary;
  v9 = [[ADArgumentParserPositionalArgument alloc] initWithName:argument description:descriptionCopy type:0 conversionDictionary:dictionaryCopy];

  return v9;
}

@end