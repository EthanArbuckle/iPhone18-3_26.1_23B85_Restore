@interface IntelligenceAvailabilityProvider
- (_TtC13BuddyMigrator32IntelligenceAvailabilityProvider)init;
- (void)fetchLatestAvailabilityWithCompletionHandler:(id)a3;
- (void)isDeviceEligibleForIntelligenceWithCompletionHandler:(id)a3;
@end

@implementation IntelligenceAvailabilityProvider

- (void)isDeviceEligibleForIntelligenceWithCompletionHandler:(id)a3
{
  v5 = sub_ED0C(&qword_30030, "&w");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_193D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D298;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D2A0;
  v14[5] = v13;
  v15 = self;
  sub_17E1C(0, 0, v9, &unk_1D2A8, v14);
}

- (void)fetchLatestAvailabilityWithCompletionHandler:(id)a3
{
  v5 = sub_ED0C(&qword_30030, "&w");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_193D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D288;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D1C0;
  v14[5] = v13;
  v15 = self;
  sub_17E1C(0, 0, v9, &unk_1D110, v14);
}

- (_TtC13BuddyMigrator32IntelligenceAvailabilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end