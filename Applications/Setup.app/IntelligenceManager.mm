@interface IntelligenceManager
- (_TtC5Setup19IntelligenceManager)init;
- (_TtC5Setup19IntelligenceManager)initWithFeatureFlags:(id)flags availabilityProvider:(id)provider stateProvider:(id)stateProvider preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)deviceProvider visualIntelligencePresentationManager:(id)manager;
- (_TtC5Setup19IntelligenceManager)initWithFeatureFlags:(id)flags preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)provider;
- (id)stashableNotificationOnboardingDefaults;
- (void)applyStashedIsIntelligenceEnabled:(BOOL)enabled;
- (void)applyStashedNotificationOnboardingDefaults:(id)defaults;
- (void)isIntelligenceEnabledWithCompletionHandler:(id)handler;
- (void)setDidShowIntelligencePaneInCurrentSession;
- (void)shouldShowIntelligenceWithServerCheck:(BOOL)check completionHandler:(id)handler;
- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)show completionHandler:(id)handler;
@end

@implementation IntelligenceManager

- (_TtC5Setup19IntelligenceManager)initWithFeatureFlags:(id)flags availabilityProvider:(id)provider stateProvider:(id)stateProvider preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)deviceProvider visualIntelligencePresentationManager:(id)manager
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  preferencesCopy = preferences;
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_10003F08C(flags, provider, stateProvider, preferencesCopy, chronicleCopy, manager);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v16;
}

- (_TtC5Setup19IntelligenceManager)initWithFeatureFlags:(id)flags preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)provider
{
  swift_unknownObjectRetain();
  preferencesCopy = preferences;
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  return IntelligenceManager.init(featureFlags:preferences:chronicle:deviceProvider:)(flags, preferencesCopy, chronicleCopy, provider);
}

- (void)shouldShowIntelligenceWithServerCheck:(BOOL)check completionHandler:(id)handler
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = check;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002988D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002988E0;
  v14[5] = v13;
  selfCopy = self;
  sub_100063A28(0, 0, v9, &unk_1002988E8, v14);
}

- (void)setDidShowIntelligencePaneInCurrentSession
{
  selfCopy = self;
  IntelligenceManager.setDidShowIntelligencePaneInCurrentSession()();
}

- (void)isIntelligenceEnabledWithCompletionHandler:(id)handler
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002988B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002988C0;
  v12[5] = v11;
  selfCopy = self;
  sub_100063A28(0, 0, v7, &unk_1002988C8, v12);
}

- (void)applyStashedIsIntelligenceEnabled:(BOOL)enabled
{
  selfCopy = self;
  IntelligenceManager.applyStashedIsIntelligenceEnabled(_:)(enabled);
}

- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)show completionHandler:(id)handler
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = show;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002988A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100297310;
  v14[5] = v13;
  selfCopy = self;
  sub_100063A28(0, 0, v9, &unk_1002979A0, v14);
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
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100011858(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (void)applyStashedNotificationOnboardingDefaults:(id)defaults
{
  defaultsCopy = defaults;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  IntelligenceManager.applyStashedNotificationOnboardingDefaults(_:)();
  sub_100011804(v5, v7);
}

- (_TtC5Setup19IntelligenceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end