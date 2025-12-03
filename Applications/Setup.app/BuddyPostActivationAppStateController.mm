@interface BuddyPostActivationAppStateController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYCapabilities)capabilities;
- (BYRunState)runState;
- (_TtC5Setup37BuddyPostActivationAppStateController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Setup37BuddyPostActivationAppStateController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueSetupTapped;
- (void)eraseTapped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setAnalyticsManager:(id)manager;
- (void)setBuddyPreferencesExcludedFromBackup:(id)backup;
- (void)setProximitySetupController:(id)controller;
- (void)viewDidLoad;
@end

@implementation BuddyPostActivationAppStateController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000664B4();
}

- (void)continueSetupTapped
{
  selfCopy = self;
  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  if (delegate)
  {
    [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)eraseTapped
{
  selfCopy = self;
  sub_100066708();
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBuddyPreferencesExcludedFromBackup:(id)backup
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_buddyPreferencesExcludedFromBackup];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_buddyPreferencesExcludedFromBackup] = backup;
  backupCopy = backup;
}

- (void)setProximitySetupController:(id)controller
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_proximitySetupController];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_proximitySetupController] = controller;
  controllerCopy = controller;
}

- (void)setAnalyticsManager:(id)manager
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_analyticsManager];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_analyticsManager] = manager;
  managerCopy = manager;
}

- (BYCapabilities)capabilities
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

+ (id)cloudConfigSkipKey
{
  if (os_variant_has_internal_ui())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v3 = sub_100066ACC();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();
  selfCopy = self;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = selfCopy;
  v13[5] = sub_100067BE8;
  v13[6] = v9;
  sub_100022A78(0, 0, v7, &unk_100299298, v13);
}

- (_TtC5Setup37BuddyPostActivationAppStateController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup37BuddyPostActivationAppStateController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end