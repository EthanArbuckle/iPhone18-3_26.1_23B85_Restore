@interface INAppResolverOptions
+ (INAppResolverOptions)optionsWithDictionary:(id)dictionary;
- (BOOL)includeUserActivityTypes;
- (BOOL)skipSupportedIntentsCheck;
- (INAppResolverOptions)initWithCoder:(id)coder;
- (INAppResolverOptions)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAppResolverOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionary = [(INAppResolverOptions *)self dictionary];
  [coderCopy encodeObject:dictionary forKey:@"dictionary"];
}

- (INAppResolverOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = INAppResolverOptions;
  v5 = [(INAppResolverOptions *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = v5;
  }

  return v5;
}

- (INAppResolverOptions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = INAppResolverOptions;
  v6 = [(INAppResolverOptions *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    v8 = v7;
  }

  return v7;
}

- (BOOL)skipSupportedIntentsCheck
{
  dictionary = [(INAppResolverOptions *)self dictionary];
  v3 = [dictionary objectForKey:@"SkipSupportedIntentsCheck"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)includeUserActivityTypes
{
  dictionary = [(INAppResolverOptions *)self dictionary];
  v3 = [dictionary objectForKey:@"IncludeUserActivityTypes"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (INAppResolverOptions)optionsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[INAppResolverOptions alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

@end