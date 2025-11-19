@interface EmptyConfigurationINIntent
- (_TtC9WidgetKit26EmptyConfigurationINIntent)init;
- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithCoder:(id)a3;
- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation EmptyConfigurationINIntent

- (_TtC9WidgetKit26EmptyConfigurationINIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmptyConfigurationINIntent();
  return [(EmptyConfigurationINIntent *)&v3 init];
}

- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmptyConfigurationINIntent();
  v4 = a3;
  v5 = [(EmptyConfigurationINIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_192227960();
    v6 = a4;
    v7 = sub_192227930();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for EmptyConfigurationINIntent();
  v9 = [(EmptyConfigurationINIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (_TtC9WidgetKit26EmptyConfigurationINIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_192227840();
    v8 = a3;
    v9 = a4;
    v10 = sub_192227830();
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for EmptyConfigurationINIntent();
  v13 = [(EmptyConfigurationINIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end