@interface INAppResolverOptions
+ (INAppResolverOptions)optionsWithDictionary:(id)a3;
- (BOOL)includeUserActivityTypes;
- (BOOL)skipSupportedIntentsCheck;
- (INAppResolverOptions)initWithCoder:(id)a3;
- (INAppResolverOptions)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAppResolverOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INAppResolverOptions *)self dictionary];
  [v4 encodeObject:v5 forKey:@"dictionary"];
}

- (INAppResolverOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = INAppResolverOptions;
  v5 = [(INAppResolverOptions *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = v5;
  }

  return v5;
}

- (INAppResolverOptions)initWithDictionary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = INAppResolverOptions;
  v6 = [(INAppResolverOptions *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)skipSupportedIntentsCheck
{
  v2 = [(INAppResolverOptions *)self dictionary];
  v3 = [v2 objectForKey:@"SkipSupportedIntentsCheck"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)includeUserActivityTypes
{
  v2 = [(INAppResolverOptions *)self dictionary];
  v3 = [v2 objectForKey:@"IncludeUserActivityTypes"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (INAppResolverOptions)optionsWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [[INAppResolverOptions alloc] initWithDictionary:v3];

  return v4;
}

@end