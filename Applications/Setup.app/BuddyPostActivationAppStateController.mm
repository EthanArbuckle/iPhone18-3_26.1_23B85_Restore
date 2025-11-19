@interface BuddyPostActivationAppStateController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYCapabilities)capabilities;
- (BYRunState)runState;
- (_TtC5Setup37BuddyPostActivationAppStateController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Setup37BuddyPostActivationAppStateController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continueSetupTapped;
- (void)eraseTapped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setAnalyticsManager:(id)a3;
- (void)setBuddyPreferencesExcludedFromBackup:(id)a3;
- (void)setProximitySetupController:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyPostActivationAppStateController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000664B4();
}

- (void)continueSetupTapped
{
  v3 = self;
  v2 = [(BuddyWelcomeController *)v3 delegate];
  if (v2)
  {
    [(BFFFlowItemDelegate *)v2 flowItemDone:v3];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)eraseTapped
{
  v2 = self;
  sub_100066708();
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBuddyPreferencesExcludedFromBackup:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_buddyPreferencesExcludedFromBackup];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_buddyPreferencesExcludedFromBackup] = a3;
  v3 = a3;
}

- (void)setProximitySetupController:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_proximitySetupController];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_proximitySetupController] = a3;
  v3 = a3;
}

- (void)setAnalyticsManager:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_analyticsManager];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_analyticsManager] = a3;
  v3 = a3;
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
  v2 = self;
  v3 = sub_100066ACC();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = self;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  v13[5] = sub_100067BE8;
  v13[6] = v9;
  sub_100022A78(0, 0, v7, &unk_100299298, v13);
}

- (_TtC5Setup37BuddyPostActivationAppStateController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup37BuddyPostActivationAppStateController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end