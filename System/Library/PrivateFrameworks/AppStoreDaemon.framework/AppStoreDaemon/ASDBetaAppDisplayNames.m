@interface ASDBetaAppDisplayNames
+ (id)displayNameWithLocalizedNames:(id)a3 andPrimaryLocale:(id)a4;
- (ASDBetaAppDisplayNames)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDBetaAppDisplayNames

+ (id)displayNameWithLocalizedNames:(id)a3 andPrimaryLocale:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setLocalizedNames:v6];

  [v7 setPrimaryLocale:v5];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (localizedNames = self->_localizedNames, [(ASDBetaAppDisplayNames *)v4 localizedNames], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(localizedNames) = [(NSDictionary *)localizedNames isEqual:v7], v7, localizedNames))
    {
      primaryLocale = self->_primaryLocale;
      v9 = [(ASDBetaAppDisplayNames *)v4 primaryLocale];
      v10 = [(NSString *)primaryLocale isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ASDBetaAppDisplayNames allocWithZone:?]];
  objc_storeStrong(&v4->_localizedNames, self->_localizedNames);
  objc_storeStrong(&v4->_primaryLocale, self->_primaryLocale);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  localizedNames = self->_localizedNames;
  v5 = a3;
  [v5 encodeObject:localizedNames forKey:@"A"];
  [v5 encodeObject:self->_primaryLocale forKey:@"B"];
}

- (ASDBetaAppDisplayNames)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASDBetaAppDisplayNames;
  v5 = [(ASDBetaAppDisplayNames *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"A"];
    localizedNames = v5->_localizedNames;
    v5->_localizedNames = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    primaryLocale = v5->_primaryLocale;
    v5->_primaryLocale = v11;
  }

  return v5;
}

@end