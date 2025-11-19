@interface CLKComplicationWidgetMigrationConfiguration
- (BOOL)isEqual:(id)a3;
- (CLKComplicationWidgetMigrationConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initPrivate;
@end

@implementation CLKComplicationWidgetMigrationConfiguration

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = CLKComplicationWidgetMigrationConfiguration;
  return [(CLKComplicationWidgetMigrationConfiguration *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return [v4 isEqual:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (CLKComplicationWidgetMigrationConfiguration)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLKComplicationWidgetMigrationConfiguration;
  return [(CLKComplicationWidgetMigrationConfiguration *)&v4 init];
}

@end