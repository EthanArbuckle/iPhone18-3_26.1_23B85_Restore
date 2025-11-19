@interface DetermineIntent
- (DetermineIntent)init;
- (DetermineIntent)initWithCoder:(id)a3;
- (DetermineIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (DetermineIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation DetermineIntent

- (DetermineIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DetermineIntent();
  return [(DetermineIntent *)&v3 init];
}

- (DetermineIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DetermineIntent();
  v4 = a3;
  v5 = [(DetermineIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (DetermineIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_2CE270();
    v6 = a4;
    v7 = sub_2CE260();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DetermineIntent();
  v9 = [(DetermineIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (DetermineIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_2CE200();
    v8 = a3;
    v9 = a4;
    v10.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for DetermineIntent();
  v13 = [(DetermineIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10.super.isa];

  return v13;
}

@end