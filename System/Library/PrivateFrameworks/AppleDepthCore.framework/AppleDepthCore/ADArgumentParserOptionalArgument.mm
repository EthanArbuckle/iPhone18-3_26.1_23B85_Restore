@interface ADArgumentParserOptionalArgument
+ (id)BOOLOption:(SEL)a3 shortName:(char)a4 description:(id)a5;
+ (id)enumOption:(SEL)a3 shortName:(char)a4 defaultValue:(unint64_t)a5 description:(id)a6 conversionDictionary:(id)a7;
+ (id)floatArrayOption:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6;
+ (id)floatOption:(SEL)a3 shortName:(char)a4 defaultValue:(float)a5 description:(id)a6;
+ (id)integerArrayOption:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6;
+ (id)integerOption:(SEL)a3 shortName:(char)a4 defaultValue:(int64_t)a5 description:(id)a6;
+ (id)stringArrayOption:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6;
+ (id)stringOption:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6;
- (ADArgumentParserOptionalArgument)initWithName:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6 type:(unint64_t)a7 conversionDictionary:(id)a8;
- (BOOL)setPropertyFromMap:()map<std:()docopt:()std:(std:(docopt:(id)a4 :value>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :value :string toCommand:;
- (id)defaultValueString;
- (id)fullUsage;
- (id)legalValuesString;
- (id)shortUsage;
@end

@implementation ADArgumentParserOptionalArgument

- (BOOL)setPropertyFromMap:()map<std:()docopt:()std:(std:(docopt:(id)a4 :value>>> *)a3 :allocator<std::pair<const)std::string :less<std::string> :value :string toCommand:
{
  v6 = a4;
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

  v10 = setProperty(v6, name, type, &v12, self->_conversionDictionary);
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
  v3 = [MEMORY[0x277CCAB68] string];
  if ([(ADArgumentParserOptionalArgument *)self shortName])
  {
    v4 = [(ADArgumentParserOptionalArgument *)self type];
    if (v4 <= 7)
    {
      if (((1 << v4) & 0x24) != 0)
      {
        v5 = [(ADArgumentParserOptionalArgument *)self shortName];
        v6 = @"-%c <int>, ";
        goto LABEL_13;
      }

      if (((1 << v4) & 0x48) != 0)
      {
        v5 = [(ADArgumentParserOptionalArgument *)self shortName];
        v6 = @"-%c <float>, ";
        goto LABEL_13;
      }

      if (((1 << v4) & 0x90) != 0)
      {
        v5 = [(ADArgumentParserOptionalArgument *)self shortName];
        v6 = @"-%c <string>, ";
LABEL_13:
        [v3 appendFormat:v6, v5];
        goto LABEL_14;
      }
    }

    if (v4)
    {
      if (v4 != 1)
      {
        v15 = 154;
        goto LABEL_34;
      }

      v5 = [(ADArgumentParserOptionalArgument *)self shortName];
      v6 = @"-%c, ";
    }

    else
    {
      v5 = [(ADArgumentParserOptionalArgument *)self shortName];
      v6 = @"-%c <enum>, ";
    }

    goto LABEL_13;
  }

LABEL_14:
  v7 = [(ADArgumentParserOptionalArgument *)self type];
  if (v7 <= 7)
  {
    if (((1 << v7) & 0x24) != 0)
    {
      v8 = [(ADArgumentParserOptionalArgument *)self name];
      [v3 appendFormat:@"--%@ <int>", v8];
      goto LABEL_25;
    }

    if (((1 << v7) & 0x48) != 0)
    {
      v8 = [(ADArgumentParserOptionalArgument *)self name];
      [v3 appendFormat:@"--%@ <float>", v8];
      goto LABEL_25;
    }

    if (((1 << v7) & 0x90) != 0)
    {
      v8 = [(ADArgumentParserOptionalArgument *)self name];
      [v3 appendFormat:@"--%@ <string>", v8];
      goto LABEL_25;
    }
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      v8 = [(ADArgumentParserOptionalArgument *)self name];
      [v3 appendFormat:@"--%@ <enum>", v8];
      goto LABEL_25;
    }

    v15 = 179;
LABEL_34:
    __assert_rtn("[ADArgumentParserOptionalArgument fullUsage]", "ADArgumentParserOptionalArgument.mm", v15, "0");
  }

  v8 = [(ADArgumentParserOptionalArgument *)self name];
  [v3 appendFormat:@"--%@", v8];
LABEL_25:

  [v3 rightPaddToLength:45];
  v9 = [(ADArgumentParserOptionalArgument *)self descriptionString];
  [v3 appendString:v9];

  v10 = [(ADArgumentParserOptionalArgument *)self legalValuesString];

  if (v10)
  {
    v11 = [(ADArgumentParserOptionalArgument *)self legalValuesString];
    [v3 appendString:v11];
  }

  v12 = [(ADArgumentParserOptionalArgument *)self defaultValueString];

  if (v12)
  {
    v13 = [(ADArgumentParserOptionalArgument *)self defaultValueString];
    [v3 appendFormat:@" [default: %@]", v13];
  }

  return v3;
}

- (id)shortUsage
{
  v3 = [(ADArgumentParserOptionalArgument *)self type];
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v11 = MEMORY[0x277CCACA8];
        v5 = [(ADArgumentParserOptionalArgument *)self name];
        v6 = [v11 stringWithFormat:@"[--%@ <float>]...", v5];
      }

      else
      {
        if (v3 != 7)
        {
          goto LABEL_22;
        }

        v9 = MEMORY[0x277CCACA8];
        v5 = [(ADArgumentParserOptionalArgument *)self name];
        v6 = [v9 stringWithFormat:@"[--%@ <string>]...", v5];
      }

      goto LABEL_19;
    }

    v7 = MEMORY[0x277CCACA8];
    if (v3 == 4)
    {
      v5 = [(ADArgumentParserOptionalArgument *)self name];
      [v7 stringWithFormat:@"[--%@ <string>]", v5];
    }

    else
    {
      v5 = [(ADArgumentParserOptionalArgument *)self name];
      [v7 stringWithFormat:@"[--%@ <int>]...", v5];
    }

    v6 = LABEL_9:;
    goto LABEL_19;
  }

  if (v3 > 1)
  {
    v8 = MEMORY[0x277CCACA8];
    if (v3 == 2)
    {
      v5 = [(ADArgumentParserOptionalArgument *)self name];
      [v8 stringWithFormat:@"[--%@ <int>]", v5];
    }

    else
    {
      v5 = [(ADArgumentParserOptionalArgument *)self name];
      [v8 stringWithFormat:@"[--%@ <float>]", v5];
    }

    goto LABEL_9;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [(ADArgumentParserOptionalArgument *)self name];
      v6 = [v4 stringWithFormat:@"[--%@]", v5];
      goto LABEL_19;
    }

LABEL_22:
    __assert_rtn("[ADArgumentParserOptionalArgument shortUsage]", "ADArgumentParserOptionalArgument.mm", 114, "0");
  }

  v10 = MEMORY[0x277CCACA8];
  v5 = [(ADArgumentParserOptionalArgument *)self name];
  v6 = [v10 stringWithFormat:@"[--%@ <enum>]", v5];
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
      v11 = [(ADArgumentParserOptionalArgument *)self value];
      v9 = [v10 stringWithFormat:@"%@", v11];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = [(ADArgumentParserOptionalArgument *)self conversionDictionary];
      v13 = [v12 allKeys];

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v14)
      {
        v15 = *v26;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            v18 = [(ADArgumentParserOptionalArgument *)self conversionDictionary];
            v19 = [v18 objectForKeyedSubscript:v17];
            v20 = [(ADArgumentParserOptionalArgument *)self value];
            v21 = [v19 isEqual:v20];

            if (v21)
            {
              v9 = v17;

              goto LABEL_24;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v22 = MEMORY[0x277CCACA8];
      v23 = [(ADArgumentParserOptionalArgument *)self value];
      v9 = [v22 stringWithFormat:@"%@", v23];
    }
  }

  else
  {
    v3 = [(ADArgumentParserOptionalArgument *)self value];
    if ([v3 count])
    {
      v4 = [MEMORY[0x277CCAB68] string];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v5 = v3;
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

            [v4 appendFormat:@"%@ ", *(*(&v29 + 1) + 8 * j)];
          }

          v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v6);
      }

      v9 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];
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
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(ADArgumentParserOptionalArgument *)self conversionDictionary];
  if (v4 && (-[ADArgumentParserOptionalArgument conversionDictionary](self, "conversionDictionary"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    objc_msgSend(v3, "appendString:", @" (");
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(ADArgumentParserOptionalArgument *)self conversionDictionary];
    v8 = [v7 allKeys];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [v3 appendFormat:@"%@|", *(*(&v14 + 1) + 8 * i)];
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
    [v3 appendString:@""]);
    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (ADArgumentParserOptionalArgument)initWithName:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6 type:(unint64_t)a7 conversionDictionary:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v22.receiver = self;
  v22.super_class = ADArgumentParserOptionalArgument;
  v17 = [(ADArgumentParserOptionalArgument *)&v22 init];
  if (v17)
  {
    v18 = NSStringFromSelector(a3);
    name = v17->_name;
    v17->_name = v18;

    v17->_shortName = a4;
    objc_storeStrong(&v17->_value, a5);
    objc_storeStrong(&v17->_descriptionString, a6);
    v17->_type = a7;
    objc_storeStrong(&v17->_conversionDictionary, a8);
  }

  return v17;
}

+ (id)floatArrayOption:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [[ADArgumentParserOptionalArgument alloc] initWithName:a3 shortName:v7 defaultValue:v9 description:v10 type:6 conversionDictionary:0];

  return v11;
}

+ (id)integerArrayOption:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [[ADArgumentParserOptionalArgument alloc] initWithName:a3 shortName:v7 defaultValue:v9 description:v10 type:5 conversionDictionary:0];

  return v11;
}

+ (id)stringArrayOption:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [[ADArgumentParserOptionalArgument alloc] initWithName:a3 shortName:v7 defaultValue:v9 description:v10 type:7 conversionDictionary:0];

  return v11;
}

+ (id)floatOption:(SEL)a3 shortName:(char)a4 defaultValue:(float)a5 description:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = [ADArgumentParserOptionalArgument alloc];
  *&v11 = a5;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v13 = [(ADArgumentParserOptionalArgument *)v10 initWithName:a3 shortName:v7 defaultValue:v12 description:v9 type:3 conversionDictionary:0];

  return v13;
}

+ (id)integerOption:(SEL)a3 shortName:(char)a4 defaultValue:(int64_t)a5 description:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = [ADArgumentParserOptionalArgument alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v12 = [(ADArgumentParserOptionalArgument *)v10 initWithName:a3 shortName:v7 defaultValue:v11 description:v9 type:2 conversionDictionary:0];

  return v12;
}

+ (id)stringOption:(SEL)a3 shortName:(char)a4 defaultValue:(id)a5 description:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [[ADArgumentParserOptionalArgument alloc] initWithName:a3 shortName:v7 defaultValue:v9 description:v10 type:4 conversionDictionary:0];

  return v11;
}

+ (id)BOOLOption:(SEL)a3 shortName:(char)a4 description:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [[ADArgumentParserOptionalArgument alloc] initWithName:a3 shortName:v5 defaultValue:@"false" description:v7 type:1 conversionDictionary:0];

  return v8;
}

+ (id)enumOption:(SEL)a3 shortName:(char)a4 defaultValue:(unint64_t)a5 description:(id)a6 conversionDictionary:(id)a7
{
  v9 = a4;
  v11 = a6;
  v12 = a7;
  v13 = [ADArgumentParserOptionalArgument alloc];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v15 = [(ADArgumentParserOptionalArgument *)v13 initWithName:a3 shortName:v9 defaultValue:v14 description:v11 type:0 conversionDictionary:v12];

  return v15;
}

@end