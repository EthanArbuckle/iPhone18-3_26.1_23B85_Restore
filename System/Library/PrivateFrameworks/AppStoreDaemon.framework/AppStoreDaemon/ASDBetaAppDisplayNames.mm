@interface ASDBetaAppDisplayNames
+ (id)displayNameWithLocalizedNames:(id)names andPrimaryLocale:(id)locale;
- (ASDBetaAppDisplayNames)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDBetaAppDisplayNames

+ (id)displayNameWithLocalizedNames:(id)names andPrimaryLocale:(id)locale
{
  localeCopy = locale;
  namesCopy = names;
  v7 = objc_opt_new();
  [v7 setLocalizedNames:namesCopy];

  [v7 setPrimaryLocale:localeCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (localizedNames = self->_localizedNames, [(ASDBetaAppDisplayNames *)equalCopy localizedNames], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(localizedNames) = [(NSDictionary *)localizedNames isEqual:v7], v7, localizedNames))
    {
      primaryLocale = self->_primaryLocale;
      primaryLocale = [(ASDBetaAppDisplayNames *)equalCopy primaryLocale];
      v10 = [(NSString *)primaryLocale isEqual:primaryLocale];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ASDBetaAppDisplayNames allocWithZone:?]];
  objc_storeStrong(&v4->_localizedNames, self->_localizedNames);
  objc_storeStrong(&v4->_primaryLocale, self->_primaryLocale);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  localizedNames = self->_localizedNames;
  coderCopy = coder;
  [coderCopy encodeObject:localizedNames forKey:@"A"];
  [coderCopy encodeObject:self->_primaryLocale forKey:@"B"];
}

- (ASDBetaAppDisplayNames)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ASDBetaAppDisplayNames;
  v5 = [(ASDBetaAppDisplayNames *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"A"];
    localizedNames = v5->_localizedNames;
    v5->_localizedNames = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    primaryLocale = v5->_primaryLocale;
    v5->_primaryLocale = v11;
  }

  return v5;
}

@end