@interface ASDAMSBag
- (AMSProcessInfo)processInfo;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (_TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag)init;
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
  v3 = sub_1831C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&self->bag[OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24];
  sub_F19C((&self->super.isa + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *&self->bag[OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 16]);
  selfCopy = self;
  sub_1851C();

  v10.super.isa = sub_182FC().super.isa;
  (*(v4 + 8))(v7, v3);

  return v10.super.isa;
}

- (NSString)profile
{
  v2 = sub_1881C();

  return v2;
}

- (NSString)profileVersion
{
  v2 = sub_1881C();

  return v2;
}

- (AMSProcessInfo)processInfo
{
  currentProcess = [objc_opt_self() currentProcess];

  return currentProcess;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v5 = sub_9C94(&qword_25930, &qword_1AC60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_188EC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1AC70;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1AC80;
  v13[5] = v12;
  selfCopy = self;
  sub_FB2C(0, 0, v8, &unk_1AC90, v13);
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_D988(keyCopy);

  return v6;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_DCC8(keyCopy);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_E418(keyCopy);

  return v6;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_E550(keyCopy);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_E684(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_E7B8(keyCopy);

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_EA7C(keyCopy);

  return v6;
}

- (id)URLForKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  selfCopy = self;
  v9 = sub_ECCC(keyCopy, account);

  return v9;
}

- (_TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end