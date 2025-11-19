@interface IntelligenceManager
- (_TtC13BuddyMigrator19IntelligenceManager)init;
- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)a3 availabilityProvider:(id)a4 stateProvider:(id)a5 preferences:(id)a6 chronicle:(id)a7 deviceProvider:(id)a8 visualIntelligencePresentationManager:(id)a9;
- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)a3 preferences:(id)a4 chronicle:(id)a5 deviceProvider:(id)a6;
- (id)stashableNotificationOnboardingDefaults;
- (void)applyStashedIsIntelligenceEnabled:(BOOL)a3;
- (void)applyStashedNotificationOnboardingDefaults:(id)a3;
- (void)isIntelligenceEnabledWithCompletionHandler:(id)a3;
- (void)setDidShowIntelligencePaneInCurrentSession;
- (void)shouldShowIntelligenceWithServerCheck:(BOOL)a3 completionHandler:(id)a4;
- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation IntelligenceManager

- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)a3 availabilityProvider:(id)a4 stateProvider:(id)a5 preferences:(id)a6 chronicle:(id)a7 deviceProvider:(id)a8 visualIntelligencePresentationManager:(id)a9
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = a6;
  v15 = a7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_128DC(a3, a4, a5, v14, v15, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v16;
}

- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)a3 preferences:(id)a4 chronicle:(id)a5 deviceProvider:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  swift_unknownObjectRetain();
  return IntelligenceManager.init(featureFlags:preferences:chronicle:deviceProvider:)(a3, v10, v11, a6);
}

- (void)shouldShowIntelligenceWithServerCheck:(BOOL)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1D1F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D200;
  v16[5] = v15;
  v17 = self;
  sub_17E1C(0, 0, v11, &unk_1D208, v16);
}

- (void)setDidShowIntelligencePaneInCurrentSession
{
  v2 = self;
  IntelligenceManager.setDidShowIntelligencePaneInCurrentSession()();
}

- (void)isIntelligenceEnabledWithCompletionHandler:(id)a3
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
  v13[4] = &unk_1D1D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D1E0;
  v14[5] = v13;
  v15 = self;
  sub_17E1C(0, 0, v9, &unk_1D1E8, v14);
}

- (void)applyStashedIsIntelligenceEnabled:(BOOL)a3
{
  v4 = self;
  IntelligenceManager.applyStashedIsIntelligenceEnabled(_:)(a3);
}

- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)a3 completionHandler:(id)a4
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
  v15[4] = &unk_1D1B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D1C0;
  v16[5] = v15;
  v17 = self;
  sub_17E1C(0, 0, v11, &unk_1D110, v16);
}

- (id)stashableNotificationOnboardingDefaults
{
  v2 = self;
  v3 = IntelligenceManager.stashableNotificationOnboardingDefaults()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = sub_191B0().super.isa;
    sub_EDCC(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (void)applyStashedNotificationOnboardingDefaults:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_191C0();
  v7 = v6;

  IntelligenceManager.applyStashedNotificationOnboardingDefaults(_:)();
  sub_ED78(v5, v7);
}

- (_TtC13BuddyMigrator19IntelligenceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end