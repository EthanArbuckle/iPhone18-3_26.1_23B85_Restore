@interface STSelectUserIntent
- (STSelectUserIntent)init;
- (STSelectUserIntent)initWithCoder:(id)coder;
- (STSelectUserIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (STSelectUserIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation STSelectUserIntent

- (STSelectUserIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STSelectUserIntent();
  return [(STSelectUserIntent *)&v3 init];
}

- (STSelectUserIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for STSelectUserIntent();
  coderCopy = coder;
  v5 = [(STSelectUserIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (STSelectUserIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_10000708C();
    storeCopy = store;
    v7 = sub_10000707C();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for STSelectUserIntent();
  v9 = [(STSelectUserIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (STSelectUserIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_10000706C();
    domainCopy = domain;
    verbCopy = verb;
    v10.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for STSelectUserIntent();
  v13 = [(STSelectUserIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end