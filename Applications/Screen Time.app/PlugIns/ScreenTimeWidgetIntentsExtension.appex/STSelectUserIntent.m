@interface STSelectUserIntent
- (STSelectUserIntent)init;
- (STSelectUserIntent)initWithCoder:(id)a3;
- (STSelectUserIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (STSelectUserIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation STSelectUserIntent

- (STSelectUserIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STSelectUserIntent();
  return [(STSelectUserIntent *)&v3 init];
}

- (STSelectUserIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for STSelectUserIntent();
  v4 = a3;
  v5 = [(STSelectUserIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (STSelectUserIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_10000708C();
    v6 = a4;
    v7 = sub_10000707C();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for STSelectUserIntent();
  v9 = [(STSelectUserIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (STSelectUserIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_10000706C();
    v8 = a3;
    v9 = a4;
    v10.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for STSelectUserIntent();
  v13 = [(STSelectUserIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10.super.isa];

  return v13;
}

@end