@interface Bag.XcodeBag
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)createSnapshotWithCompletion:(id)a3;
- (void)setExpirationDate:(id)a3;
@end

@implementation Bag.XcodeBag

- (NSDate)expirationDate
{
  v2 = (*(*(sub_100012634(&qword_1000D1CF0, &qword_1000935C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v8 - v3;
  sub_10000ECD8();
  v5 = type metadata accessor for Date();
  isa = 0;
  if (sub_100012898(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (void)setExpirationDate:(id)a3
{
  v5 = (*(*(sub_100012634(&qword_1000D1CF0, &qword_1000935C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11 - v6;
  if (a3)
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

  sub_10001267C(v7, v9, 1, v8);
  v10 = self;
  sub_10000EE14(v7);
}

- (NSString)profile
{
  v2 = self;
  sub_10000C5FC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)profileVersion
{
  sub_10000C660();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100010128(v4);

  return v6;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100010190(v4);

  return v6;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1000101F8(v5, v4);
  _Block_release(v4);
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000109D4(v4);

  return v6;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100010A3C(v4);

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100010AA4(v4);

  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100010B0C(v4);

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100010B74(v4);

  return v6;
}

@end