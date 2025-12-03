@interface Device
- (Device)initWithCoder:(id)coder;
- (Device)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation Device

- (Device)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
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
  if (hint)
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

- (Device)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Device();
  coderCopy = coder;
  v5 = [(Device *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end