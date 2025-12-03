@interface JourneyDrivenOnboardingStep
- (_TtC8AppStore27JourneyDrivenOnboardingStep)init;
- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation JourneyDrivenOnboardingStep

- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_10023A894(engagementCopy, request, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_100239AA8(engagementCopy, request, v9, v11, v12, v14);
}

- (_TtC8AppStore27JourneyDrivenOnboardingStep)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end