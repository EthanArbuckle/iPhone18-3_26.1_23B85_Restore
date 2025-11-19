@interface BuddyStolenDeviceProtectionController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYCapabilities)capabilities;
- (BYExpressSettingsSetupCache)expressSettingsCache;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (_TtC5Setup37BuddyStolenDeviceProtectionController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Setup37BuddyStolenDeviceProtectionController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)applicationDidBecomeActive;
- (void)notNowTapped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setBuddyPreferencesExcludedFromBackup:(id)a3;
- (void)setManagedConfiguration:(id)a3;
- (void)setMiscState:(id)a3;
- (void)setPaneFeatureAnalyticsManager:(id)a3;
- (void)setSetupMethod:(id)a3;
- (void)turnOnTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BuddyStolenDeviceProtectionController

- (void)viewDidLoad
{
  v2 = self;
  sub_10004D4D8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10004D984(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for BuddyStolenDeviceProtectionController();
  v4 = v6.receiver;
  [(BuddyStolenDeviceProtectionController *)&v6 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_notificationCenter];
  [v5 removeObserver:v4 name:UIApplicationDidBecomeActiveNotification object:{0, v6.receiver, v6.super_class}];
}

- (void)setManagedConfiguration:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_managedConfiguration];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_managedConfiguration] = a3;
  v3 = a3;
}

- (BYCapabilities)capabilities
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPaneFeatureAnalyticsManager:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_paneFeatureAnalyticsManager];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_paneFeatureAnalyticsManager] = a3;
  v3 = a3;
}

- (BuddyFeatureFlags)featureFlags
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBuddyPreferencesExcludedFromBackup:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_buddyPreferencesExcludedFromBackup];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_buddyPreferencesExcludedFromBackup] = a3;
  v3 = a3;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMiscState:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_miscState];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_miscState] = a3;
  v3 = a3;
}

- (BYExpressSettingsSetupCache)expressSettingsCache
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSetupMethod:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_setupMethod];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_setupMethod] = a3;
  v3 = a3;
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
  v3 = sub_10004DEEC();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100051B44(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)turnOnTapped
{
  v2 = self;
  sub_10004E630();
}

- (void)notNowTapped
{
  v2 = self;
  sub_10004EC8C();
}

- (void)applicationDidBecomeActive
{
  if (*&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_postAuthenticationWorkItem])
  {
    v2 = self;

    dispatch thunk of DispatchWorkItem.perform()();
  }
}

- (_TtC5Setup37BuddyStolenDeviceProtectionController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup37BuddyStolenDeviceProtectionController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end