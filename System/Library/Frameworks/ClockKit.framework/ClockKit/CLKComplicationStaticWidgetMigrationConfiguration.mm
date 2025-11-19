@interface CLKComplicationStaticWidgetMigrationConfiguration
+ (CLKComplicationStaticWidgetMigrationConfiguration)staticWidgetMigrationConfigurationWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier;
- (BOOL)isEqual:(id)a3;
- (CLKComplicationStaticWidgetMigrationConfiguration)initWithCoder:(id)a3;
- (CLKComplicationStaticWidgetMigrationConfiguration)initWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKComplicationStaticWidgetMigrationConfiguration

- (CLKComplicationStaticWidgetMigrationConfiguration)initWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier
{
  v6 = kind;
  v7 = extensionBundleIdentifier;
  v14.receiver = self;
  v14.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  v8 = [(CLKComplicationWidgetMigrationConfiguration *)&v14 initPrivate];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_kind;
    v8->_kind = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_extensionBundleIdentifier;
    v8->_extensionBundleIdentifier = v11;
  }

  return v8;
}

+ (CLKComplicationStaticWidgetMigrationConfiguration)staticWidgetMigrationConfigurationWithKind:(NSString *)kind extensionBundleIdentifier:(NSString *)extensionBundleIdentifier
{
  v6 = extensionBundleIdentifier;
  v7 = kind;
  v8 = [[a1 alloc] initWithKind:v7 extensionBundleIdentifier:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  if ([(CLKComplicationWidgetMigrationConfiguration *)&v12 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    kind = self->_kind;
    v7 = [v5 kind];
    if ([(NSString *)kind isEqualToString:v7])
    {
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      v9 = [v5 extensionBundleIdentifier];
      v10 = [(NSString *)extensionBundleIdentifier isEqualToString:v9];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  v4 = [(CLKComplicationWidgetMigrationConfiguration *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 1, self->_kind);
  objc_storeStrong(v4 + 2, self->_extensionBundleIdentifier);
  return v4;
}

- (CLKComplicationStaticWidgetMigrationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  v5 = [(CLKComplicationWidgetMigrationConfiguration *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_WidgetMigrationConfigurationKind"];
    kind = v5->_kind;
    v5->_kind = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_WidgetMigrationConfigurationKindExtensionBundleIdentifier"];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKComplicationStaticWidgetMigrationConfiguration;
  v4 = a3;
  [(CLKComplicationWidgetMigrationConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_kind forKey:{@"_WidgetMigrationConfigurationKind", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_extensionBundleIdentifier forKey:@"_WidgetMigrationConfigurationKindExtensionBundleIdentifier"];
}

@end