@interface BuddyStolenDeviceProtectionController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYCapabilities)capabilities;
- (BYExpressSettingsSetupCache)expressSettingsCache;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (_TtC5Setup37BuddyStolenDeviceProtectionController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Setup37BuddyStolenDeviceProtectionController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)applicationDidBecomeActive;
- (void)notNowTapped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setBuddyPreferencesExcludedFromBackup:(id)backup;
- (void)setManagedConfiguration:(id)configuration;
- (void)setMiscState:(id)state;
- (void)setPaneFeatureAnalyticsManager:(id)manager;
- (void)setSetupMethod:(id)method;
- (void)turnOnTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation BuddyStolenDeviceProtectionController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10004D4D8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10004D984(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for BuddyStolenDeviceProtectionController();
  v4 = v6.receiver;
  [(BuddyStolenDeviceProtectionController *)&v6 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_notificationCenter];
  [v5 removeObserver:v4 name:UIApplicationDidBecomeActiveNotification object:{0, v6.receiver, v6.super_class}];
}

- (void)setManagedConfiguration:(id)configuration
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_managedConfiguration];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_managedConfiguration] = configuration;
  configurationCopy = configuration;
}

- (BYCapabilities)capabilities
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPaneFeatureAnalyticsManager:(id)manager
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_paneFeatureAnalyticsManager];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_paneFeatureAnalyticsManager] = manager;
  managerCopy = manager;
}

- (BuddyFeatureFlags)featureFlags
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBuddyPreferencesExcludedFromBackup:(id)backup
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_buddyPreferencesExcludedFromBackup];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_buddyPreferencesExcludedFromBackup] = backup;
  backupCopy = backup;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMiscState:(id)state
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_miscState];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_miscState] = state;
  stateCopy = state;
}

- (BYExpressSettingsSetupCache)expressSettingsCache
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSetupMethod:(id)method
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_setupMethod];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_setupMethod] = method;
  methodCopy = method;
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
  v3 = sub_10004DEEC();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_100051B44(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)turnOnTapped
{
  selfCopy = self;
  sub_10004E630();
}

- (void)notNowTapped
{
  selfCopy = self;
  sub_10004EC8C();
}

- (void)applicationDidBecomeActive
{
  if (*&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_postAuthenticationWorkItem])
  {
    selfCopy = self;

    dispatch thunk of DispatchWorkItem.perform()();
  }
}

- (_TtC5Setup37BuddyStolenDeviceProtectionController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup37BuddyStolenDeviceProtectionController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end