@interface LocateDeviceIntent
- (LocateDeviceIntent)init;
- (LocateDeviceIntent)initWithCoder:(id)coder;
- (LocateDeviceIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (LocateDeviceIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation LocateDeviceIntent

- (LocateDeviceIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocateDeviceIntent();
  return [(LocateDeviceIntent *)&v3 init];
}

- (LocateDeviceIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LocateDeviceIntent();
  coderCopy = coder;
  v5 = [(LocateDeviceIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (LocateDeviceIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for LocateDeviceIntent();
  v9 = [(LocateDeviceIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (LocateDeviceIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for LocateDeviceIntent();
  v13 = [(LocateDeviceIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end