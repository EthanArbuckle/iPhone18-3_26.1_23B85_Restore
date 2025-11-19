@interface MPModelArtist
- (NSString)shortDescription;
@end

@implementation MPModelArtist

- (NSString)shortDescription
{
  v2 = self;
  v3 = [(MPModelArtist *)v2 name:0x22203A656D614ELL];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xEE00747369747241;
    v5 = 0x206E776F6E6B6E55;
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