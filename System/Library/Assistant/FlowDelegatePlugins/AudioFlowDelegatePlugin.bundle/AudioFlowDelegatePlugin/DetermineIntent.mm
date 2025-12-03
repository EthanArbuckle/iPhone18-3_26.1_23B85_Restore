@interface DetermineIntent
- (DetermineIntent)init;
- (DetermineIntent)initWithCoder:(id)coder;
- (DetermineIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (DetermineIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation DetermineIntent

- (DetermineIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DetermineIntent();
  return [(DetermineIntent *)&v3 init];
}

- (DetermineIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DetermineIntent();
  coderCopy = coder;
  v5 = [(DetermineIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (DetermineIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_2CE270();
    storeCopy = store;
    v7 = sub_2CE260();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DetermineIntent();
  v9 = [(DetermineIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (DetermineIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_2CE200();
    domainCopy = domain;
    verbCopy = verb;
    v10.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for DetermineIntent();
  v13 = [(DetermineIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end