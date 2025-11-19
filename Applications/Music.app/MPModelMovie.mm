@interface MPModelMovie
- (NSString)shortDescription;
@end

@implementation MPModelMovie

- (NSString)shortDescription
{
  v2 = self;
  v3 = [(MPModelMovie *)v2 title:0x22203A656D614ELL];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xEE006569766F4D20;
    v5 = 0x64656C7469746E55;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 34;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

@end