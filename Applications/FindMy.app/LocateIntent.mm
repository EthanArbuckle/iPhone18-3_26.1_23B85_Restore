@interface LocateIntent
- (LocateIntent)init;
- (LocateIntent)initWithCoder:(id)coder;
- (LocateIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (LocateIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation LocateIntent

- (LocateIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocateIntent();
  return [(LocateIntent *)&v3 init];
}

- (LocateIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LocateIntent();
  coderCopy = coder;
  v5 = [(LocateIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (LocateIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    storeCopy = store;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LocateIntent();
  v9 = [(LocateIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (LocateIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    domainCopy = domain;
    verbCopy = verb;
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for LocateIntent();
  v13 = [(LocateIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end