@interface ADArgumentParserOptionalArgument
+ (id)BOOLOption:(SEL)option shortName:(char)name description:(id)description;
+ (id)enumOption:(SEL)option shortName:(char)name defaultValue:(unint64_t)value description:(id)description conversionDictionary:(id)dictionary;
+ (id)floatArrayOption:(SEL)option shortName:(char)name defaultValue:(id)value description:(id)description;
+ (id)floatOption:(SEL)option shortName:(char)name defaultValue:(float)value description:(id)description;
+ (id)integerArrayOption:(SEL)option shortName:(char)name defaultValue:(id)value description:(id)description;
+ (id)integerOption:(SEL)option shortName:(char)name defaultValue:(int64_t)value description:(id)description;
+ (id)stringArrayOption:(SEL)option shortName:(char)name defaultValue:(id)value description:(id)description;
+ (id)stringOption:(SEL)option shortName:(char)name defaultValue:(id)value description:(id)description;
- (ADArgumentParserOptionalArgument)initWithName:(SEL)name shortName:(char)shortName defaultValue:(id)value description:(id)description type:(unint64_t)type conversionDictionary:(id)dictionary;
- (BOOL)setPropertyFromMap:()map<std:()docopt:()std:(std:(docopt:(id)std :value>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :value :string toCommand:;
- (id)defaultValueString;
- (id)fullUsage;
- (id)legalValuesString;
- (id)shortUsage;
@end

@implementation ADArgumentParserOptionalArgument

- (BOOL)setPropertyFromMap:()map<std:()docopt:()std:(std:(docopt:(id)std :value>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :value :string toCommand:
{
  stdCopy = std;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@", self->_name];
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
  if ([(ADArgumentParserOptionalArgument *)self shortName])
  {
    type = [(ADArgumentParserOptionalArgument *)self type];
    if (type <= 7)
    {
      if (((1 << type) & 0x24) != 0)
      {
        shortName = [(ADArgumentParserOptionalArgument *)self shortName];
        v6 = @"-%c <int>, ";
        goto LABEL_13;
      }

      if (((1 << type) & 0x48) != 0)
      {
        shortName = [(ADArgumentParserOptionalArgument *)self shortName];
        v6 = @"-%c <float>, ";
        goto LABEL_13;
      }

      if (((1 << type) & 0x90) != 0)
      {
        shortName = [(ADArgumentParserOptionalArgument *)self shortName];
        v6 = @"-%c <string>, ";
LABEL_13:
        [string appendFormat:v6, shortName];
        goto LABEL_14;
      }
    }

    if (type)
    {
      if (type != 1)
      {
        v15 = 154;
        goto LABEL_34;
      }

      shortName = [(ADArgumentParserOptionalArgument *)self shortName];
      v6 = @"-%c, ";
    }

    else
    {
      shortName = [(ADArgumentParserOptionalArgument *)self shortName];
      v6 = @"-%c <enum>, ";
    }

    goto LABEL_13;
  }

LABEL_14:
  type2 = [(ADArgumentParserOptionalArgument *)self type];
  if (type2 <= 7)
  {
    if (((1 << type2) & 0x24) != 0)
    {
      name = [(ADArgumentParserOptionalArgument *)self name];
      [string appendFormat:@"--%@ <int>", name];
      goto LABEL_25;
    }

    if (((1 << type2) & 0x48) != 0)
    {
      name = [(ADArgumentParserOptionalArgument *)self name];
      [string appendFormat:@"--%@ <float>", name];
      goto LABEL_25;
    }

    if (((1 << type2) & 0x90) != 0)
    {
      name = [(ADArgumentParserOptionalArgument *)self name];
      [string appendFormat:@"--%@ <string>", name];
      goto LABEL_25;
    }
  }

  if (type2 != 1)
  {
    if (!type2)
    {
      name = [(ADArgumentParserOptionalArgument *)self name];
      [string appendFormat:@"--%@ <enum>", name];
      goto LABEL_25;
    }

    v15 = 179;
LABEL_34:
    __assert_rtn("[ADArgumentParserOptionalArgument fullUsage]", "ADArgumentParserOptionalArgument.mm", v15, "0");
  }

  name = [(ADArgumentParserOptionalArgument *)self name];
  [string appendFormat:@"--%@", name];
LABEL_25:

  [string rightPaddToLength:45];
  descriptionString = [(ADArgumentParserOptionalArgument *)self descriptionString];
  [string appendString:descriptionString];

  legalValuesString = [(ADArgumentParserOptionalArgument *)self legalValuesString];

  if (legalValuesString)
  {
    legalValuesString2 = [(ADArgumentParserOptionalArgument *)self legalValuesString];
    [string appendString:legalValuesString2];
  }

  defaultValueString = [(ADArgumentParserOptionalArgument *)self defaultValueString];

  if (defaultValueString)
  {
    defaultValueString2 = [(ADArgumentParserOptionalArgument *)self defaultValueString];
    [string appendFormat:@" [default: %@]", defaultValueString2];
  }

  return string;
}

- (id)shortUsage
{
  type = [(ADArgumentParserOptionalArgument *)self type];
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        v11 = MEMORY[0x277CCACA8];
        name = [(ADArgumentParserOptionalArgument *)self name];
        v6 = [v11 stringWithFormat:@"[--%@ <float>]...", name];
      }

      else
      {
        if (type != 7)
        {
          goto LABEL_22;
        }

        v9 = MEMORY[0x277CCACA8];
        name = [(ADArgumentParserOptionalArgument *)self name];
        v6 = [v9 stringWithFormat:@"[--%@ <string>]...", name];
      }

      goto LABEL_19;
    }

    v7 = MEMORY[0x277CCACA8];
    if (type == 4)
    {
      name = [(ADArgumentParserOptionalArgument *)self name];
      [v7 stringWithFormat:@"[--%@ <string>]", name];
    }

    else
    {
      name = [(ADArgumentParserOptionalArgument *)self name];
      [v7 stringWithFormat:@"[--%@ <int>]...", name];
    }

    v6 = LABEL_9:;
    goto LABEL_19;
  }

  if (type > 1)
  {
    v8 = MEMORY[0x277CCACA8];
    if (type == 2)
    {
      name = [(ADArgumentParserOptionalArgument *)self name];
      [v8 stringWithFormat:@"[--%@ <int>]", name];
    }

    else
    {
      name = [(ADArgumentParserOptionalArgument *)self name];
      [v8 stringWithFormat:@"[--%@ <float>]", name];
    }

    goto LABEL_9;
  }

  if (type)
  {
    if (type == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      name = [(ADArgumentParserOptionalArgument *)self name];
      v6 = [v4 stringWithFormat:@"[--%@]", name];
      goto LABEL_19;
    }

LABEL_22:
    __assert_rtn("[ADArgumentParserOptionalArgument shortUsage]", "ADArgumentParserOptionalArgument.mm", 114, "0");
  }

  v10 = MEMORY[0x277CCACA8];
  name = [(ADArgumentParserOptionalArgument *)self name];
  v6 = [v10 stringWithFormat:@"[--%@ <enum>]", name];
LABEL_19:
  v12 = v6;

  return v12;
}

- (id)defaultValueString
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(ADArgumentParserOptionalArgument *)self type]- 5 > 2)
  {
    if ([(ADArgumentParserOptionalArgument *)self type])
    {
      v10 = MEMORY[0x277CCACA8];
      value = [(ADArgumentParserOptionalArgument *)self value];
      v9 = [v10 stringWithFormat:@"%@", value];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      conversionDictionary = [(ADArgumentParserOptionalArgument *)self conversionDictionary];
      allKeys = [conversionDictionary allKeys];

      v14 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v14)
      {
        v15 = *v26;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(allKeys);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            conversionDictionary2 = [(ADArgumentParserOptionalArgument *)self conversionDictionary];
            v19 = [conversionDictionary2 objectForKeyedSubscript:v17];
            value2 = [(ADArgumentParserOptionalArgument *)self value];
            v21 = [v19 isEqual:value2];

            if (v21)
            {
              v9 = v17;

              goto LABEL_24;
            }
          }

          v14 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v22 = MEMORY[0x277CCACA8];
      value3 = [(ADArgumentParserOptionalArgument *)self value];
      v9 = [v22 stringWithFormat:@"%@", value3];
    }
  }

  else
  {
    value4 = [(ADArgumentParserOptionalArgument *)self value];
    if ([value4 count])
    {
      string = [MEMORY[0x277CCAB68] string];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v5 = value4;
      v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v6)
      {
        v7 = *v30;
        do
        {
          for (j = 0; j != v6; ++j)
          {
            if (*v30 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [string appendFormat:@"%@ ", *(*(&v29 + 1) + 8 * j)];
          }

          v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v6);
      }

      v9 = [string substringToIndex:{objc_msgSend(string, "length") - 1}];
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_24:

  return v9;
}

- (id)legalValuesString
{
  v19 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  conversionDictionary = [(ADArgumentParserOptionalArgument *)self conversionDictionary];
  if (conversionDictionary && (-[ADArgumentParserOptionalArgument conversionDictionary](self, "conversionDictionary"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, conversionDictionary, v6))
  {
    objc_msgSend(string, "appendString:", @" (");
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    conversionDictionary2 = [(ADArgumentParserOptionalArgument *)self conversionDictionary];
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

- (ADArgumentParserOptionalArgument)initWithName:(SEL)name shortName:(char)shortName defaultValue:(id)value description:(id)description type:(unint64_t)type conversionDictionary:(id)dictionary
{
  valueCopy = value;
  descriptionCopy = description;
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = ADArgumentParserOptionalArgument;
  v17 = [(ADArgumentParserOptionalArgument *)&v22 init];
  if (v17)
  {
    v18 = NSStringFromSelector(name);
    name = v17->_name;
    v17->_name = v18;

    v17->_shortName = shortName;
    objc_storeStrong(&v17->_value, value);
    objc_storeStrong(&v17->_descriptionString, description);
    v17->_type = type;
    objc_storeStrong(&v17->_conversionDictionary, dictionary);
  }

  return v17;
}

+ (id)floatArrayOption:(SEL)option shortName:(char)name defaultValue:(id)value description:(id)description
{
  nameCopy = name;
  valueCopy = value;
  descriptionCopy = description;
  v11 = [[ADArgumentParserOptionalArgument alloc] initWithName:option shortName:nameCopy defaultValue:valueCopy description:descriptionCopy type:6 conversionDictionary:0];

  return v11;
}

+ (id)integerArrayOption:(SEL)option shortName:(char)name defaultValue:(id)value description:(id)description
{
  nameCopy = name;
  valueCopy = value;
  descriptionCopy = description;
  v11 = [[ADArgumentParserOptionalArgument alloc] initWithName:option shortName:nameCopy defaultValue:valueCopy description:descriptionCopy type:5 conversionDictionary:0];

  return v11;
}

+ (id)stringArrayOption:(SEL)option shortName:(char)name defaultValue:(id)value description:(id)description
{
  nameCopy = name;
  valueCopy = value;
  descriptionCopy = description;
  v11 = [[ADArgumentParserOptionalArgument alloc] initWithName:option shortName:nameCopy defaultValue:valueCopy description:descriptionCopy type:7 conversionDictionary:0];

  return v11;
}

+ (id)floatOption:(SEL)option shortName:(char)name defaultValue:(float)value description:(id)description
{
  nameCopy = name;
  descriptionCopy = description;
  v10 = [ADArgumentParserOptionalArgument alloc];
  *&v11 = value;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v13 = [(ADArgumentParserOptionalArgument *)v10 initWithName:option shortName:nameCopy defaultValue:v12 description:descriptionCopy type:3 conversionDictionary:0];

  return v13;
}

+ (id)integerOption:(SEL)option shortName:(char)name defaultValue:(int64_t)value description:(id)description
{
  nameCopy = name;
  descriptionCopy = description;
  v10 = [ADArgumentParserOptionalArgument alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:value];
  v12 = [(ADArgumentParserOptionalArgument *)v10 initWithName:option shortName:nameCopy defaultValue:v11 description:descriptionCopy type:2 conversionDictionary:0];

  return v12;
}

+ (id)stringOption:(SEL)option shortName:(char)name defaultValue:(id)value description:(id)description
{
  nameCopy = name;
  valueCopy = value;
  descriptionCopy = description;
  v11 = [[ADArgumentParserOptionalArgument alloc] initWithName:option shortName:nameCopy defaultValue:valueCopy description:descriptionCopy type:4 conversionDictionary:0];

  return v11;
}

+ (id)BOOLOption:(SEL)option shortName:(char)name description:(id)description
{
  nameCopy = name;
  descriptionCopy = description;
  v8 = [[ADArgumentParserOptionalArgument alloc] initWithName:option shortName:nameCopy defaultValue:@"false" description:descriptionCopy type:1 conversionDictionary:0];

  return v8;
}

+ (id)enumOption:(SEL)option shortName:(char)name defaultValue:(unint64_t)value description:(id)description conversionDictionary:(id)dictionary
{
  nameCopy = name;
  descriptionCopy = description;
  dictionaryCopy = dictionary;
  v13 = [ADArgumentParserOptionalArgument alloc];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  v15 = [(ADArgumentParserOptionalArgument *)v13 initWithName:option shortName:nameCopy defaultValue:v14 description:descriptionCopy type:0 conversionDictionary:dictionaryCopy];

  return v15;
}

@end