@interface Bag.XcodeBag
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)createSnapshotWithCompletion:(id)completion;
- (void)setExpirationDate:(id)date;
@end

@implementation Bag.XcodeBag

- (NSDate)expirationDate
{
  v2 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_10023BBA0();
  v5 = type metadata accessor for Date();
  isa = 0;
  if (sub_100081D0C(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (void)setExpirationDate:(id)date
{
  v5 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = 1;
  }

  sub_100081DFC(v7, v9, 1, v8);
  selfCopy = self;
  sub_10023BCDC();
}

- (NSString)profile
{
  selfCopy = self;
  sub_100239878();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)profileVersion
{
  sub_1002398DC();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023CFC0(keyCopy);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023D028(keyCopy);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_10023D090(selfCopy, v4);
  _Block_release(v4);
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023D86C(keyCopy);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023D8D4(keyCopy);

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023D93C(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023D9A4(keyCopy);

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10023DA0C(keyCopy);

  return v6;
}

@end