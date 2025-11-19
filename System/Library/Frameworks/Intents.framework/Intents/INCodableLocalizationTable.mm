@interface INCodableLocalizationTable
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableLocalizationTable)initWithBundleIdentifier:(id)a3 tableName:(id)a4;
- (INCodableLocalizationTable)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCodableLocalizationTable

- (unint64_t)hash
{
  v3 = [(INCodableLocalizationTable *)self tableName];
  v4 = [v3 hash];
  v5 = [(INCodableLocalizationTable *)self bundleIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (INCodableLocalizationTable)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = INCodableLocalizationTable;
  v5 = [(INCodableLocalizationTable *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tableName"];
    tableName = v5->_tableName;
    v5->_tableName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_tableName forKey:@"tableName"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 intents_setPlistSafeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 intents_setPlistSafeObject:self->_tableName forKey:@"tableName"];
  v6 = [v5 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(INCodableLocalizationTable *)self tableName];
    v6 = [v4 tableName];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(INCodableLocalizationTable *)self bundleIdentifier];
      v8 = [v4 bundleIdentifier];
      v9 = [v7 isEqualToString:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [INCodableLocalizationTable allocWithZone:a3];
  v5 = [(INCodableLocalizationTable *)self bundleIdentifier];
  v6 = [(INCodableLocalizationTable *)self tableName];
  v7 = [(INCodableLocalizationTable *)v4 initWithBundleIdentifier:v5 tableName:v6];

  return v7;
}

- (INCodableLocalizationTable)initWithBundleIdentifier:(id)a3 tableName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INCodableLocalizationTable;
  v8 = [(INCodableLocalizationTable *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [v7 copy];
    tableName = v8->_tableName;
    v8->_tableName = v11;
  }

  return v8;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(INCodableLocalizationTable);
  v6 = [v4 intents_stringForKey:@"tableName"];
  tableName = v5->_tableName;
  v5->_tableName = v6;

  v8 = [v4 intents_stringForKey:@"bundleIdentifier"];

  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v8;

  return v5;
}

@end