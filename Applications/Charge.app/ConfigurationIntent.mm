@interface ConfigurationIntent
- (ConfigurationIntent)init;
- (ConfigurationIntent)initWithCoder:(id)coder;
@end

@implementation ConfigurationIntent

- (ConfigurationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConfigurationIntent();
  return [(ConfigurationIntent *)&v3 init];
}

- (ConfigurationIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ConfigurationIntent();
  coderCopy = coder;
  v5 = [(ConfigurationIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end