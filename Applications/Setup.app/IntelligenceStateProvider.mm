@interface IntelligenceStateProvider
- (BOOL)canEnableIntelligence;
- (BOOL)shouldShowForSummarization;
- (BOOL)wasOfferedIntelligence;
- (_TtC5Setup25IntelligenceStateProvider)init;
- (id)stashableNotificationOnboardingDefaults;
- (void)applyStashedIsIntelligenceEnabled:(BOOL)a3;
- (void)applyStashedNotificationOnboardingDefaults:(id)a3;
- (void)isIntelligenceEnabledWithCompletionHandler:(id)a3;
@end

@implementation IntelligenceStateProvider

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
  v11[4] = &unk_100297990;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100297310;
  v12[5] = v11;
  v13 = self;
  sub_100063A28(0, 0, v7, &unk_1002979A0, v12);
}

- (void)applyStashedIsIntelligenceEnabled:(BOOL)a3
{
  type metadata accessor for GMOptIn();
  v3 = static GMOptIn.shared.getter();
  dispatch thunk of GMOptIn.isOptedIn.setter();
}

- (BOOL)wasOfferedIntelligence
{
  v2 = self;
  sub_10000FF68();
  if (v3)
  {
    type metadata accessor for GMOptIn();
    v4 = static GMOptIn.shared.getter();
    dispatch thunk of GMOptIn.state.getter();
  }

  v5 = GMOptIn.State.rawValue.getter();
  v6 = GMOptIn.State.rawValue.getter();

  return v5 != v6;
}

- (BOOL)shouldShowForSummarization
{
  v2 = objc_opt_self();

  return [v2 shouldShowExperience:0 forClient:0];
}

- (id)stashableNotificationOnboardingDefaults
{
  v2 = _s5Setup25IntelligenceStateProviderC39stashableNotificationOnboardingDefaults10Foundation4DataVSgyF_0();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100011858(v5, v6);
    v4 = isa;
  }

  return v4;
}

- (void)applyStashedNotificationOnboardingDefaults:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  _s5Setup25IntelligenceStateProviderC42applyStashedNotificationOnboardingDefaultsyy10Foundation4DataVF_0();
  sub_100011804(v5, v7);
}

- (BOOL)canEnableIntelligence
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_generativeModelProvider);
  v4 = v3[3];
  v5 = v3[4];
  sub_10000B444(v3, v4);
  v6 = *(v5 + 8);
  v7 = self;
  v8 = v6(v4, v5);
  sub_100006410(&qword_1003A0460);
  v9 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002978B0;
  (*(v10 + 104))(v12 + v11, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:), v9);
  v13 = sub_100010398(v12, v8);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = v13[2];

  return v14 == 0;
}

- (_TtC5Setup25IntelligenceStateProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end