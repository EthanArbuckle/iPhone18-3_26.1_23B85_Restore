@interface TagIntent
- (TagIntent)init;
- (TagIntent)initWithCoder:(id)coder;
- (TagIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (TagIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation TagIntent

- (TagIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TagIntent();
  return [(TagIntent *)&v3 init];
}

- (TagIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TagIntent();
  coderCopy = coder;
  v5 = [(TagIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (TagIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_10000F154();
    storeCopy = store;
    v7 = sub_10000F144();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TagIntent();
  v9 = [(TagIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (TagIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_10000F134();
    domainCopy = domain;
    verbCopy = verb;
    v10.super.isa = sub_10000F124().super.isa;
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for TagIntent();
  v13 = [(TagIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end