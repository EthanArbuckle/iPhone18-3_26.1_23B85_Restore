@interface MPModelTVShow
- (NSString)shortDescription;
@end

@implementation MPModelTVShow

- (NSString)shortDescription
{
  selfCopy = self;
  v3 = [(MPModelTVShow *)selfCopy title:0x22203A656C746954];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xED0000776F685320;
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