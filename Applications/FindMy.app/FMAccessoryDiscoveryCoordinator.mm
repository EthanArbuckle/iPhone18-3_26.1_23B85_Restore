@interface FMAccessoryDiscoveryCoordinator
- (_TtC6FindMy31FMAccessoryDiscoveryCoordinator)init;
- (void)dealloc;
- (void)didCompleteAccessoryOnboarding:(id)a3 pairingSuccessful:(BOOL)a4;
- (void)proxCardFlowDidDismiss;
- (void)systemOnboardingStarted;
@end

@implementation FMAccessoryDiscoveryCoordinator

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  [v5 removeObserver:v6 name:v7 object:0];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for FMAccessoryDiscoveryCoordinator(0);
  [(FMAccessoryDiscoveryCoordinator *)&v8 dealloc];
}

- (void)systemOnboardingStarted
{
  v2 = self;
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
  v2 = self;
  sub_100270D78();
}

- (void)didCompleteAccessoryOnboarding:(id)a3 pairingSuccessful:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1002718C8();
}

@end