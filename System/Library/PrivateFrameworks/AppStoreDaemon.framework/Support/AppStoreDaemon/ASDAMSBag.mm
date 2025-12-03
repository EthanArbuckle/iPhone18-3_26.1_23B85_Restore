@interface ASDAMSBag
- (AMSProcessInfo)processInfo;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (_TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag)init;
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

@implementation ASDAMSBag

- (NSDate)expirationDate
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005B60((&self->super.isa + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *&self->bag[OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 16]);
  selfCopy = self;
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
  currentProcess = [objc_opt_self() currentProcess];

  return currentProcess;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D3D60(keyCopy);

  return v6;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D3FC8(keyCopy);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D4648(keyCopy);

  return v6;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D4780(keyCopy);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D48B4(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D49E8(keyCopy);

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D4BD4(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  selfCopy = self;
  v9 = sub_1000D4D4C(keyCopy, account);

  return v9;
}

- (_TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end