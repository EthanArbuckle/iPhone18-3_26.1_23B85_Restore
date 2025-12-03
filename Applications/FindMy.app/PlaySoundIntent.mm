@interface PlaySoundIntent
- (PlaySoundIntent)init;
- (PlaySoundIntent)initWithCoder:(id)coder;
- (PlaySoundIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (PlaySoundIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation PlaySoundIntent

- (PlaySoundIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaySoundIntent();
  return [(PlaySoundIntent *)&v3 init];
}

- (PlaySoundIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaySoundIntent();
  coderCopy = coder;
  v5 = [(PlaySoundIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (PlaySoundIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for PlaySoundIntent();
  v9 = [(PlaySoundIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (PlaySoundIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for PlaySoundIntent();
  v13 = [(PlaySoundIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end