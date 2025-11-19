@interface Tag
- (Tag)initWithCoder:(id)a3;
- (Tag)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation Tag

- (Tag)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    v6 = sub_1000A2D40();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_1000A2D40();
  v11 = v10;
  if (a5)
  {
    v12 = sub_1000A2D40();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return Tag.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (Tag)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Tag();
  v4 = a3;
  v5 = [(Tag *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end