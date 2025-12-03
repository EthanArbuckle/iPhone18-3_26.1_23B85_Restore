@interface AppRemovability
+ (void)isAllowedAndPossibleWithApp:(LSApplicationRecord *)app completionHandler:(id)handler;
- (_TtC17StorageSettingsUI15AppRemovability)init;
@end

@implementation AppRemovability

+ (void)isAllowedAndPossibleWithApp:(LSApplicationRecord *)app completionHandler:(id)handler
{
  v7 = sub_147EC(&unk_B8240, &qword_88F50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = app;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_81AB8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_8B598;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_8B5A8;
  v15[5] = v14;
  appCopy = app;
  sub_651B8(0, 0, v10, &unk_8B5B8, v15);
}

- (_TtC17StorageSettingsUI15AppRemovability)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppRemovability();
  return [(AppRemovability *)&v3 init];
}

@end