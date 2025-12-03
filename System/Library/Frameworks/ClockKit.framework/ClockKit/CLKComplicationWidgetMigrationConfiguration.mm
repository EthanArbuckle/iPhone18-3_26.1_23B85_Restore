@interface CLKComplicationWidgetMigrationConfiguration
- (BOOL)isEqual:(id)equal;
- (CLKComplicationWidgetMigrationConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPrivate;
@end

@implementation CLKComplicationWidgetMigrationConfiguration

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = CLKComplicationWidgetMigrationConfiguration;
  return [(CLKComplicationWidgetMigrationConfiguration *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return [v4 isEqual:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (CLKComplicationWidgetMigrationConfiguration)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CLKComplicationWidgetMigrationConfiguration;
  return [(CLKComplicationWidgetMigrationConfiguration *)&v4 init];
}

@end