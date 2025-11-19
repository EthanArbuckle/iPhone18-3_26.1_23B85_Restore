@interface IntelligenceManager
- (_TtC5Setup19IntelligenceManager)init;
- (_TtC5Setup19IntelligenceManager)initWithFeatureFlags:(id)a3 availabilityProvider:(id)a4 stateProvider:(id)a5 preferences:(id)a6 chronicle:(id)a7 deviceProvider:(id)a8 visualIntelligencePresentationManager:(id)a9;
- (_TtC5Setup19IntelligenceManager)initWithFeatureFlags:(id)a3 preferences:(id)a4 chronicle:(id)a5 deviceProvider:(id)a6;
- (id)stashableNotificationOnboardingDefaults;
- (void)applyStashedIsIntelligenceEnabled:(BOOL)a3;
- (void)applyStashedNotificationOnboardingDefaults:(id)a3;
- (void)isIntelligenceEnabledWithCompletionHandler:(id)a3;
- (void)setDidShowIntelligencePaneInCurrentSession;
- (void)shouldShowIntelligenceWithServerCheck:(BOOL)a3 completionHandler:(id)a4;
- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation IntelligenceManager

- (_TtC5Setup19IntelligenceManager)initWithFeatureFlags:(id)a3 availabilityProvider:(id)a4 stateProvider:(id)a5 preferences:(id)a6 chronicle:(id)a7 deviceProvider:(id)a8 visualIntelligencePresentationManager:(id)a9
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = a6;
  v15 = a7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_10003F08C(a3, a4, a5, v14, v15, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v16;
}

- (_TtC5Setup19IntelligenceManager)initWithFeatureFlags:(id)a3 preferences:(id)a4 chronicle:(id)a5 deviceProvider:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  swift_unknownObjectRetain();
  return IntelligenceManager.init(featureFlags:preferences:chronicle:deviceProvider:)(a3, v10, v11, a6);
}

- (void)shouldShowIntelligenceWithServerCheck:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
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
  v15 = self;
  sub_100063A28(0, 0, v9, &unk_1002988E8, v14);
}

- (void)setDidShowIntelligencePaneInCurrentSession
{
  v2 = self;
  IntelligenceManager.setDidShowIntelligencePaneInCurrentSession()();
}

- (void)isIntelligenceEnabledWithCompletionHandler:(id)a3
{
  v5 = sub_100006410(&qword_1003A0110);
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
  v11[4] = &unk_1002988B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002988C0;
  v12[5] = v11;
  v13 = self;
  sub_100063A28(0, 0, v7, &unk_1002988C8, v12);
}

- (void)applyStashedIsIntelligenceEnabled:(BOOL)a3
{
  v4 = self;
  IntelligenceManager.applyStashedIsIntelligenceEnabled(_:)(a3);
}

- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
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
  v15 = self;
  sub_100063A28(0, 0, v9, &unk_1002979A0, v14);
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
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100011858(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (void)applyStashedNotificationOnboardingDefaults:(id)a3
{
  v4 = a3;
  v8 = self;
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