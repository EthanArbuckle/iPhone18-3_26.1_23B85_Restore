@interface CRLPasteboardNativeDataProvider
- (NSArray)promisedDataTypes;
- (_TtC8Freeform31CRLPasteboardNativeDataProvider)init;
- (id)fulfillPromisesForPasteboardType:(id)a3;
@end

@implementation CRLPasteboardNativeDataProvider

- (NSArray)promisedDataTypes
{
  v2 = self;
  sub_100D3B45C();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)fulfillPromisesForPasteboardType:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_100D3BC70(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100025870(v8, v10);
    v11 = isa;
  }

  return v11;
}

- (_TtC8Freeform31CRLPasteboardNativeDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end