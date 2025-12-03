@interface BuddyReadyForChildController
- (_TtC5Setup28BuddyReadyForChildController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Setup28BuddyReadyForChildController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (_TtP5Setup20LockdownModeProvider_)lockdownModeProvider;
- (void)continueTapped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setBuddyPreferencesExcludedFromBackup:(id)backup;
- (void)setFlowItemDispositionProvider:(id)provider;
- (void)setLockdownModeProvider:(id)provider;
- (void)setSetupMethod:(id)method;
- (void)viewDidLoad;
@end

@implementation BuddyReadyForChildController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100047E64();
}

- (void)continueTapped
{
  selfCopy = self;
  sub_1000492C8();
}

- (void)setBuddyPreferencesExcludedFromBackup:(id)backup
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_buddyPreferencesExcludedFromBackup];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_buddyPreferencesExcludedFromBackup] = backup;
  backupCopy = backup;
}

- (void)setFlowItemDispositionProvider:(id)provider
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_flowItemDispositionProvider];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_flowItemDispositionProvider] = provider;
  providerCopy = provider;
}

- (_TtP5Setup20LockdownModeProvider_)lockdownModeProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setLockdownModeProvider:(id)provider
{
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_lockdownModeProvider] = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setSetupMethod:(id)method
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_setupMethod];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_setupMethod] = method;
  methodCopy = method;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10004A264(sub_10004AD00, v5);
}

- (_TtC5Setup28BuddyReadyForChildController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup28BuddyReadyForChildController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end