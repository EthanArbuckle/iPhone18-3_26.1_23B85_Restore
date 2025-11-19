@interface ConfigurationIntent
- (ConfigurationIntent)init;
- (ConfigurationIntent)initWithCoder:(id)a3;
@end

@implementation ConfigurationIntent

- (ConfigurationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConfigurationIntent();
  return [(ConfigurationIntent *)&v3 init];
}

- (ConfigurationIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ConfigurationIntent();
  v4 = a3;
  v5 = [(ConfigurationIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end