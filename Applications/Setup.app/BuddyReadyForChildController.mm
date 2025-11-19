@interface BuddyReadyForChildController
- (_TtC5Setup28BuddyReadyForChildController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Setup28BuddyReadyForChildController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (_TtP5Setup20LockdownModeProvider_)lockdownModeProvider;
- (void)continueTapped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setBuddyPreferencesExcludedFromBackup:(id)a3;
- (void)setFlowItemDispositionProvider:(id)a3;
- (void)setLockdownModeProvider:(id)a3;
- (void)setSetupMethod:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyReadyForChildController

- (void)viewDidLoad
{
  v2 = self;
  sub_100047E64();
}

- (void)continueTapped
{
  v2 = self;
  sub_1000492C8();
}

- (void)setBuddyPreferencesExcludedFromBackup:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_buddyPreferencesExcludedFromBackup];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_buddyPreferencesExcludedFromBackup] = a3;
  v3 = a3;
}

- (void)setFlowItemDispositionProvider:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_flowItemDispositionProvider];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_flowItemDispositionProvider] = a3;
  v3 = a3;
}

- (_TtP5Setup20LockdownModeProvider_)lockdownModeProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setLockdownModeProvider:(id)a3
{
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_lockdownModeProvider] = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setSetupMethod:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_setupMethod];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_setupMethod] = a3;
  v3 = a3;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10004A264(sub_10004AD00, v5);
}

- (_TtC5Setup28BuddyReadyForChildController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup28BuddyReadyForChildController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end