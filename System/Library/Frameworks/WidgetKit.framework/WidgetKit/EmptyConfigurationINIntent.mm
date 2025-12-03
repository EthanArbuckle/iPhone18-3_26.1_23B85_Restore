@interface EmptyConfigurationINIntent
- (_TtC9WidgetKit26EmptyConfigurationINIntent)init;
- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithCoder:(id)coder;
- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation EmptyConfigurationINIntent

- (_TtC9WidgetKit26EmptyConfigurationINIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmptyConfigurationINIntent();
  return [(EmptyConfigurationINIntent *)&v3 init];
}

- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmptyConfigurationINIntent();
  coderCopy = coder;
  v5 = [(EmptyConfigurationINIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_192227960();
    storeCopy = store;
    v7 = sub_192227930();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for EmptyConfigurationINIntent();
  v9 = [(EmptyConfigurationINIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_192227840();
    domainCopy = domain;
    verbCopy = verb;
    v10 = sub_192227830();
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for EmptyConfigurationINIntent();
  v13 = [(EmptyConfigurationINIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end