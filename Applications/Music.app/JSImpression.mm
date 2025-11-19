@interface JSImpression
- (NSString)debugDescription;
@end

@implementation JSImpression

- (NSString)debugDescription
{
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v2 = v11.receiver;
  v3 = [(JSImpression *)&v11 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v12 = v4;
  v13 = v6;
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v8);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

@end