@interface IntelligenceServerControlProvider
- (_TtC13BuddyMigrator33IntelligenceServerControlProvider)init;
- (void)isFeatureEnabledFromCache:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation IntelligenceServerControlProvider

- (void)isFeatureEnabledFromCache:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_ED0C(&qword_30030, "&w");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_193D0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D308;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D1C0;
  v16[5] = v15;
  v17 = self;
  sub_17E1C(0, 0, v11, &unk_1D110, v16);
}

- (_TtC13BuddyMigrator33IntelligenceServerControlProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntelligenceServerControlProvider();
  return [(IntelligenceServerControlProvider *)&v3 init];
}

@end