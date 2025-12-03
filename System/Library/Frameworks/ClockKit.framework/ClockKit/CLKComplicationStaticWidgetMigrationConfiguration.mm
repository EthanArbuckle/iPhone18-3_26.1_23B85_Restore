@interface CLKComplicationStaticWidgetMigrationConfiguration
+ (CLKComplicationStaticWidgetMigrationConfiguration)staticWidgetMigrationConfigurationWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier;
- (BOOL)isEqual:(id)equal;
- (CLKComplicationStaticWidgetMigrationConfiguration)initWithCoder:(id)coder;
- (CLKComplicationStaticWidgetMigrationConfiguration)initWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKComplicationStaticWidgetMigrationConfiguration

- (CLKComplicationStaticWidgetMigrationConfiguration)initWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier
{
  v6 = kind;
  v7 = extensionBundleIdentifier;
  v14.receiver = self;
  v14.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  initPrivate = [(CLKComplicationWidgetMigrationConfiguration *)&v14 initPrivate];
  if (initPrivate)
  {
    v9 = [(NSString *)v6 copy];
    v10 = initPrivate->_kind;
    initPrivate->_kind = v9;

    v11 = [(NSString *)v7 copy];
    v12 = initPrivate->_extensionBundleIdentifier;
    initPrivate->_extensionBundleIdentifier = v11;
  }

  return initPrivate;
}

+ (CLKComplicationStaticWidgetMigrationConfiguration)staticWidgetMigrationConfigurationWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier
{
  v6 = extensionBundleIdentifier;
  v7 = kind;
  v8 = [[self alloc] initWithKind:v7 extensionBundleIdentifier:v6];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  if ([(CLKComplicationWidgetMigrationConfiguration *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    kind = self->_kind;
    kind = [v5 kind];
    if ([(NSString *)kind isEqualToString:kind])
    {
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      extensionBundleIdentifier = [v5 extensionBundleIdentifier];
      v10 = [(NSString *)extensionBundleIdentifier isEqualToString:extensionBundleIdentifier];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  v4 = [(CLKComplicationWidgetMigrationConfiguration *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 1, self->_kind);
  objc_storeStrong(v4 + 2, self->_extensionBundleIdentifier);
  return v4;
}

- (CLKComplicationStaticWidgetMigrationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  v5 = [(CLKComplicationWidgetMigrationConfiguration *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_WidgetMigrationConfigurationKind"];
    kind = v5->_kind;
    v5->_kind = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_WidgetMigrationConfigurationKindExtensionBundleIdentifier"];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  coderCopy = coder;
  [(CLKComplicationWidgetMigrationConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_kind forKey:{@"_WidgetMigrationConfigurationKind", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"_WidgetMigrationConfigurationKindExtensionBundleIdentifier"];
}

@end