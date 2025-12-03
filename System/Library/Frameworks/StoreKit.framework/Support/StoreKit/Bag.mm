@interface Bag
+ (AMSBagProtocol)defaultBag;
+ (AMSBagProtocol)sandboxBag;
+ (AMSBagProtocol)testflightBag;
+ (id)xcodeBagWithBundleId:(id)id;
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)URLForKey:(id)key account:(id)account;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)createSnapshotWithCompletion:(id)completion;
@end

@implementation Bag

- (NSString)profile
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_10023991C();

  return v3 & 1;
}

- (NSDate)expirationDate
{
  v3 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
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

+ (id)xcodeBagWithBundleId:(id)id
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100239E58();
  v4 = v3;

  return v4;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023AC78(keyCopy);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023AD1C(keyCopy);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10023ADC0(sub_10023F8FC, v5);
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023AF7C(keyCopy);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023B020(keyCopy);

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023B0C4(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023B168(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  selfCopy = self;
  v9 = sub_10023B20C(keyCopy, account);

  return v9;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023B32C(keyCopy);

  return v6;
}

@end