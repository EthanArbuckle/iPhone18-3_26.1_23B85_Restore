@interface JourneyDrivenOnboardingStep
- (_TtC8AppStore27JourneyDrivenOnboardingStep)init;
- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
@end

@implementation JourneyDrivenOnboardingStep

- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10023A894(v17, a4, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_100239AA8(v15, a4, v9, v11, v12, v14);
}

- (_TtC8AppStore27JourneyDrivenOnboardingStep)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end