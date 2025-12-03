@interface FMAccessoryDiscoveryCoordinator
- (_TtC6FindMy31FMAccessoryDiscoveryCoordinator)init;
- (void)dealloc;
- (void)didCompleteAccessoryOnboarding:(id)onboarding pairingSuccessful:(BOOL)successful;
- (void)proxCardFlowDidDismiss;
- (void)systemOnboardingStarted;
@end

@implementation FMAccessoryDiscoveryCoordinator

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  v6 = selfCopy;
  v7 = String._bridgeToObjectiveC()();
  [defaultCenter removeObserver:v6 name:v7 object:0];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for FMAccessoryDiscoveryCoordinator(0);
  [(FMAccessoryDiscoveryCoordinator *)&v8 dealloc];
}

- (void)systemOnboardingStarted
{
  selfCopy = self;
  sub_10026D5EC();
}

- (_TtC6FindMy31FMAccessoryDiscoveryCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_100270D78();
}

- (void)didCompleteAccessoryOnboarding:(id)onboarding pairingSuccessful:(BOOL)successful
{
  onboardingCopy = onboarding;
  selfCopy = self;
  sub_1002718C8();
}

@end