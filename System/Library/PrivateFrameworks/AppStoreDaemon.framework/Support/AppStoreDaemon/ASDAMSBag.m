@interface ASDAMSBag
- (AMSProcessInfo)processInfo;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (_TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag)init;
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

@implementation ASDAMSBag

- (NSDate)expirationDate
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005B60((&self->super.isa + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *&self->bag[OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 16]);
  v7 = self;
  dispatch thunk of Bag.expiration.getter();

  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (NSString)profile
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)profileVersion
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (AMSProcessInfo)processInfo
{
  v2 = [objc_opt_self() currentProcess];

  return v2;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100435A60;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  v13 = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000D3D60(v4);

  return v6;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000D3FC8(v4);

  return v6;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000D4648(v4);

  return v6;
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000D4780(v4);

  return v6;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000D48B4(v4);

  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000D49E8(v4);

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000D4BD4(v4);

  return v6;
}

- (id)URLForKey:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000D4D4C(v6, a4);

  return v9;
}

- (_TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end