@interface INCodableLocalizationTable
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableLocalizationTable)initWithBundleIdentifier:(id)identifier tableName:(id)name;
- (INCodableLocalizationTable)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCodableLocalizationTable

- (unint64_t)hash
{
  tableName = [(INCodableLocalizationTable *)self tableName];
  v4 = [tableName hash];
  bundleIdentifier = [(INCodableLocalizationTable *)self bundleIdentifier];
  v6 = [bundleIdentifier hash];

  return v6 ^ v4;
}

- (INCodableLocalizationTable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = INCodableLocalizationTable;
  v5 = [(INCodableLocalizationTable *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tableName"];
    tableName = v5->_tableName;
    v5->_tableName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_tableName forKey:@"tableName"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary intents_setPlistSafeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [dictionary intents_setPlistSafeObject:self->_tableName forKey:@"tableName"];
  v6 = [dictionary copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    tableName = [(INCodableLocalizationTable *)self tableName];
    tableName2 = [equalCopy tableName];
    if ([tableName isEqualToString:tableName2])
    {
      bundleIdentifier = [(INCodableLocalizationTable *)self bundleIdentifier];
      bundleIdentifier2 = [equalCopy bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:bundleIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [INCodableLocalizationTable allocWithZone:zone];
  bundleIdentifier = [(INCodableLocalizationTable *)self bundleIdentifier];
  tableName = [(INCodableLocalizationTable *)self tableName];
  v7 = [(INCodableLocalizationTable *)v4 initWithBundleIdentifier:bundleIdentifier tableName:tableName];

  return v7;
}

- (INCodableLocalizationTable)initWithBundleIdentifier:(id)identifier tableName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = INCodableLocalizationTable;
  v8 = [(INCodableLocalizationTable *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [nameCopy copy];
    tableName = v8->_tableName;
    v8->_tableName = v11;
  }

  return v8;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v5 = objc_alloc_init(INCodableLocalizationTable);
  v6 = [representationCopy intents_stringForKey:@"tableName"];
  tableName = v5->_tableName;
  v5->_tableName = v6;

  v8 = [representationCopy intents_stringForKey:@"bundleIdentifier"];

  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v8;

  return v5;
}

@end