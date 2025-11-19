@interface ASDAMSBag
- (AMSProcessInfo)processInfo;
- (NSDate)expirationDate;
- (NSString)profile;
- (NSString)profileVersion;
- (_TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag)init;
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
  v3 = sub_1831C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&self->bag[OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24];
  sub_F19C((&self->super.isa + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *&self->bag[OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 16]);
  v9 = self;
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
  v2 = [objc_opt_self() currentProcess];

  return v2;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v5 = sub_9C94(&qword_25930, &qword_1AC60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_FB2C(0, 0, v8, &unk_1AC90, v13);
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_D988(v4);

  return v6;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_DCC8(v4);

  return v6;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_E418(v4);

  return v6;
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_E550(v4);

  return v6;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_E684(v4);

  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_E7B8(v4);

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_EA7C(v4);

  return v6;
}

- (id)URLForKey:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_ECCC(v6, a4);

  return v9;
}

- (_TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end