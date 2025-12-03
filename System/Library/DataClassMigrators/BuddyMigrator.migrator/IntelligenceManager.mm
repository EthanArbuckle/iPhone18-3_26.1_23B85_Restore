@interface IntelligenceManager
- (_TtC13BuddyMigrator19IntelligenceManager)init;
- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)flags availabilityProvider:(id)provider stateProvider:(id)stateProvider preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)deviceProvider visualIntelligencePresentationManager:(id)manager;
- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)flags preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)provider;
- (id)stashableNotificationOnboardingDefaults;
- (void)applyStashedIsIntelligenceEnabled:(BOOL)enabled;
- (void)applyStashedNotificationOnboardingDefaults:(id)defaults;
- (void)isIntelligenceEnabledWithCompletionHandler:(id)handler;
- (void)setDidShowIntelligencePaneInCurrentSession;
- (void)shouldShowIntelligenceWithServerCheck:(BOOL)check completionHandler:(id)handler;
- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)show completionHandler:(id)handler;
@end

@implementation IntelligenceManager

- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)flags availabilityProvider:(id)provider stateProvider:(id)stateProvider preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)deviceProvider visualIntelligencePresentationManager:(id)manager
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  preferencesCopy = preferences;
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_128DC(flags, provider, stateProvider, preferencesCopy, chronicleCopy, manager);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v16;
}

- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)flags preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)provider
{
  swift_unknownObjectRetain();
  preferencesCopy = preferences;
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  return IntelligenceManager.init(featureFlags:preferences:chronicle:deviceProvider:)(flags, preferencesCopy, chronicleCopy, provider);
}

- (void)shouldShowIntelligenceWithServerCheck:(BOOL)check completionHandler:(id)handler
{
  v7 = sub_ED0C(&qword_30030, "&w");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = check;
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
  selfCopy = self;
  sub_17E1C(0, 0, v11, &unk_1D208, v16);
}

- (void)setDidShowIntelligencePaneInCurrentSession
{
  selfCopy = self;
  IntelligenceManager.setDidShowIntelligencePaneInCurrentSession()();
}

- (void)isIntelligenceEnabledWithCompletionHandler:(id)handler
{
  v5 = sub_ED0C(&qword_30030, "&w");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
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
  selfCopy = self;
  sub_17E1C(0, 0, v9, &unk_1D1E8, v14);
}

- (void)applyStashedIsIntelligenceEnabled:(BOOL)enabled
{
  selfCopy = self;
  IntelligenceManager.applyStashedIsIntelligenceEnabled(_:)(enabled);
}

- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)show completionHandler:(id)handler
{
  v7 = sub_ED0C(&qword_30030, "&w");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = show;
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
  selfCopy = self;
  sub_17E1C(0, 0, v11, &unk_1D110, v16);
}

- (id)stashableNotificationOnboardingDefaults
{
  selfCopy = self;
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

- (void)applyStashedNotificationOnboardingDefaults:(id)defaults
{
  defaultsCopy = defaults;
  selfCopy = self;
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