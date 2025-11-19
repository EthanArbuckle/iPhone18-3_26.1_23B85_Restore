@interface Device
- (Device)initWithCoder:(id)a3;
- (Device)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation Device

- (Device)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a5)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return Device.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (Device)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Device();
  v4 = a3;
  v5 = [(Device *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end