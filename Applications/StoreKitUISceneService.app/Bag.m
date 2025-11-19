@interface Bag
+ (AMSBagProtocol)defaultBag;
+ (AMSBagProtocol)sandboxBag;
+ (AMSBagProtocol)testflightBag;
+ (id)xcodeBagWithBundleId:(id)a3;
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)URLForKey:(id)a3 account:(id)a4;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)createSnapshotWithCompletion:(id)a3;
@end

@implementation Bag

- (NSString)profile
{
  v2 = self;
  sub_10000C5FC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)profileVersion
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)isExpired
{
  v2 = self;
  v3 = sub_10000C6A0();

  return v3 & 1;
}

- (NSDate)expirationDate
{
  v3 = (*(*(sub_100012634(&qword_1000D1CF0, &qword_1000935C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = self;
  sub_10000C7D0(v5);

  v7 = type metadata accessor for Date();
  isa = 0;
  if (sub_100012898(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return isa;
}

+ (AMSBagProtocol)defaultBag
{
  v2 = sub_10000CA8C(&qword_1000D1A80, &qword_1000E4460);

  return v2;
}

+ (AMSBagProtocol)sandboxBag
{
  v2 = sub_10000CA8C(&qword_1000D1A88, &qword_1000E4468);

  return v2;
}

+ (AMSBagProtocol)testflightBag
{
  v2 = sub_10000CA8C(&qword_1000D1A90, &qword_1000E4470);

  return v2;
}

+ (id)xcodeBagWithBundleId:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_10000CBDC();

  return v3;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000DD24(v4);

  return v6;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000DDC8(v4);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10000DE6C(sub_100012D64, v5);
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000E0B4(v4);

  return v6;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000E158(v4);

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000E1FC(v4);

  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000E2A0(v4);

  return v6;
}

- (id)URLForKey:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000E344(v6, a4);

  return v9;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000E464(v4);

  return v6;
}

@end