@interface TagIntent
- (TagIntent)init;
- (TagIntent)initWithCoder:(id)a3;
- (TagIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (TagIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation TagIntent

- (TagIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TagIntent();
  return [(TagIntent *)&v3 init];
}

- (TagIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TagIntent();
  v4 = a3;
  v5 = [(TagIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (TagIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_1000A2D40();
    v6 = a4;
    v7 = sub_1000A2D10();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TagIntent();
  v9 = [(TagIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (TagIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_1000A2C60();
    v8 = a3;
    v9 = a4;
    v10.super.isa = sub_1000A2C50().super.isa;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for TagIntent();
  v13 = [(TagIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10.super.isa];

  return v13;
}

@end