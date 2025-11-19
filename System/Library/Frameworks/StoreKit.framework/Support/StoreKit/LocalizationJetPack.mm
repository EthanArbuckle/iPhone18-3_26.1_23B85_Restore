@interface LocalizationJetPack
+ (id)loadWithUrl:(id)a3 client:(id)a4;
- (id)stringForKey:(id)a3;
@end

@implementation LocalizationJetPack

+ (id)loadWithUrl:(id)a3 client:(id)a4
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v9 = a4;
  v10 = sub_10017CC28(v8, v9);

  (*(v6 + 8))(v8, v5);

  return v10;
}

- (id)stringForKey:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10017E694();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end