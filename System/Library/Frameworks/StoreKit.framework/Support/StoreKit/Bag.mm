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
  sub_100239878();

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
  v3 = sub_10023991C();

  return v3 & 1;
}

- (NSDate)expirationDate
{
  v3 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = self;
  sub_100239A4C(v5);

  v7 = type metadata accessor for Date();
  isa = 0;
  if (sub_100081D0C(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return isa;
}

+ (AMSBagProtocol)defaultBag
{
  v2 = sub_100239D08(&qword_1003CC0C8);

  return v2;
}

+ (AMSBagProtocol)sandboxBag
{
  v2 = sub_100239D08(&qword_1003CC0D0);

  return v2;
}

+ (AMSBagProtocol)testflightBag
{
  v2 = sub_100239D08(&qword_1003CC0D8);

  return v2;
}

+ (id)xcodeBagWithBundleId:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100239E58();
  v4 = v3;

  return v4;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10023AC78(v4);

  return v6;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10023AD1C(v4);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10023ADC0(sub_10023F8FC, v5);
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10023AF7C(v4);

  return v6;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10023B020(v4);

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10023B0C4(v4);

  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10023B168(v4);

  return v6;
}

- (id)URLForKey:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10023B20C(v6, a4);

  return v9;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10023B32C(v4);

  return v6;
}

@end