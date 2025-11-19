@interface BuddyIntentController
+ (id)cloudConfigSkipKey;
+ (void)skippedByCloudConfigWithEnvironment:(id)a3;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (BuddyNetworkProvider)networkProvider;
- (_TtC5Setup21BuddyIntentController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Setup21BuddyIntentController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)showModalWiFiSettingsBlock;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setAnalyticsEventAppearance:(id)a3;
- (void)setChildSetupPresenter:(id)a3;
- (void)setFlowItemDispositionProvider:(id)a3;
- (void)setManagedConfiguration:(id)a3;
- (void)setProximitySetupController:(id)a3;
- (void)setSetupMethod:(id)a3;
- (void)setShowModalWiFiSettingsBlock:(id)a3;
- (void)setUpForChildTapped;
- (void)setUpForMyselfTapped;
- (void)viewDidLoad;
@end

@implementation BuddyIntentController

- (void)viewDidLoad
{
  v2 = self;
  sub_10001A06C();
}

- (void)setUpForMyselfTapped
{
  v2 = self;
  sub_10001A3C4();
}

- (void)setUpForChildTapped
{
  v2 = self;
  sub_10001A620();
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSetupMethod:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod) = a3;
  v3 = a3;
}

- (void)setFlowItemDispositionProvider:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_flowItemDispositionProvider);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_flowItemDispositionProvider) = a3;
  v3 = a3;
}

- (void)setProximitySetupController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_proximitySetupController);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_proximitySetupController) = a3;
  v3 = a3;
}

- (void)setManagedConfiguration:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_managedConfiguration);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_managedConfiguration) = a3;
  v3 = a3;
}

- (void)setAnalyticsEventAppearance:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_analyticsEventAppearance);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_analyticsEventAppearance) = a3;
  v3 = a3;
}

- (void)setChildSetupPresenter:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_childSetupPresenter);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_childSetupPresenter) = a3;
  v3 = a3;
}

- (BuddyNetworkProvider)networkProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)showModalWiFiSettingsBlock
{
  if (*(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_showModalWiFiSettingsBlock))
  {
    v2 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_showModalWiFiSettingsBlock + 8);
    v5[4] = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_showModalWiFiSettingsBlock);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10001B2F4;
    v5[3] = &unk_100328720;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowModalWiFiSettingsBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_10001C914;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC5Setup21BuddyIntentController_showModalWiFiSettingsBlock);
  v8 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_showModalWiFiSettingsBlock);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_10001C91C(v8);
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)controllerNeedsToRun
{
  v2 = self;
  v3 = sub_10001B588();

  return v3 & 1;
}

+ (void)skippedByCloudConfigWithEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v4 = [a3 setupMethod];
  if (v4)
  {
    v5 = v4;
    if (![v4 intent])
    {
      [v5 setIntent:1];
    }
  }

  swift_unknownObjectRelease();
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10001BFEC(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)controllerWasPopped
{
  v2 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod);
  if (v2)
  {
    [v2 setIntent:0];
  }
}

- (_TtC5Setup21BuddyIntentController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup21BuddyIntentController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end