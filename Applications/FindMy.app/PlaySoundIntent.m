@interface PlaySoundIntent
- (PlaySoundIntent)init;
- (PlaySoundIntent)initWithCoder:(id)a3;
- (PlaySoundIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (PlaySoundIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation PlaySoundIntent

- (PlaySoundIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaySoundIntent();
  return [(PlaySoundIntent *)&v3 init];
}

- (PlaySoundIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaySoundIntent();
  v4 = a3;
  v5 = [(PlaySoundIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (PlaySoundIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PlaySoundIntent();
  v9 = [(PlaySoundIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (PlaySoundIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a3;
    v9 = a4;
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for PlaySoundIntent();
  v13 = [(PlaySoundIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10.super.isa];

  return v13;
}

@end