@interface ShowClockIntent
- (ShowClockIntent)init;
- (ShowClockIntent)initWithCoder:(id)coder;
- (ShowClockIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (ShowClockIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation ShowClockIntent

- (ShowClockIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShowClockIntent();
  return [(ShowClockIntent *)&v3 init];
}

- (ShowClockIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShowClockIntent();
  coderCopy = coder;
  v5 = [(ShowClockIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (ShowClockIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_155A0();
    storeCopy = store;
    v7 = sub_15590();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ShowClockIntent();
  v9 = [(ShowClockIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (ShowClockIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_15560();
    domainCopy = domain;
    verbCopy = verb;
    v10.super.isa = sub_15550().super.isa;
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for ShowClockIntent();
  v13 = [(ShowClockIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end