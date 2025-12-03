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
  selfCopy = self;
  v3 = sub_10000C6A0();

  return v3 & 1;
}

- (NSDate)expirationDate
{
  v3 = (*(*(sub_100012634(&qword_1000D1CF0, &qword_1000935C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  selfCopy = self;
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

+ (id)xcodeBagWithBundleId:(id)id
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_10000CBDC();

  return v3;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10000DD24(keyCopy);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10000DDC8(keyCopy);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10000DE6C(sub_100012D64, v5);
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10000E0B4(keyCopy);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10000E158(keyCopy);

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10000E1FC(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10000E2A0(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  selfCopy = self;
  v9 = sub_10000E344(keyCopy, account);

  return v9;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10000E464(keyCopy);

  return v6;
}

@end