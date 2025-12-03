@interface BuddyIntentController
+ (id)cloudConfigSkipKey;
+ (void)skippedByCloudConfigWithEnvironment:(id)environment;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (BuddyNetworkProvider)networkProvider;
- (_TtC5Setup21BuddyIntentController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Setup21BuddyIntentController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)showModalWiFiSettingsBlock;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setAnalyticsEventAppearance:(id)appearance;
- (void)setChildSetupPresenter:(id)presenter;
- (void)setFlowItemDispositionProvider:(id)provider;
- (void)setManagedConfiguration:(id)configuration;
- (void)setProximitySetupController:(id)controller;
- (void)setSetupMethod:(id)method;
- (void)setShowModalWiFiSettingsBlock:(id)block;
- (void)setUpForChildTapped;
- (void)setUpForMyselfTapped;
- (void)viewDidLoad;
@end

@implementation BuddyIntentController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001A06C();
}

- (void)setUpForMyselfTapped
{
  selfCopy = self;
  sub_10001A3C4();
}

- (void)setUpForChildTapped
{
  selfCopy = self;
  sub_10001A620();
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSetupMethod:(id)method
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod) = method;
  methodCopy = method;
}

- (void)setFlowItemDispositionProvider:(id)provider
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_flowItemDispositionProvider);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_flowItemDispositionProvider) = provider;
  providerCopy = provider;
}

- (void)setProximitySetupController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_proximitySetupController);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_proximitySetupController) = controller;
  controllerCopy = controller;
}

- (void)setManagedConfiguration:(id)configuration
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_managedConfiguration);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_managedConfiguration) = configuration;
  configurationCopy = configuration;
}

- (void)setAnalyticsEventAppearance:(id)appearance
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_analyticsEventAppearance);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_analyticsEventAppearance) = appearance;
  appearanceCopy = appearance;
}

- (void)setChildSetupPresenter:(id)presenter
{
  v4 = *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_childSetupPresenter);
  *(self + OBJC_IVAR____TtC5Setup21BuddyIntentController_childSetupPresenter) = presenter;
  presenterCopy = presenter;
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

- (void)setShowModalWiFiSettingsBlock:(id)block
{
  v4 = _Block_copy(block);
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_10001B588();

  return v3 & 1;
}

+ (void)skippedByCloudConfigWithEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  setupMethod = [environment setupMethod];
  if (setupMethod)
  {
    v5 = setupMethod;
    if (![setupMethod intent])
    {
      [v5 setIntent:1];
    }
  }

  swift_unknownObjectRelease();
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_10001BFEC(selfCopy, v4);
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

- (_TtC5Setup21BuddyIntentController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup21BuddyIntentController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end