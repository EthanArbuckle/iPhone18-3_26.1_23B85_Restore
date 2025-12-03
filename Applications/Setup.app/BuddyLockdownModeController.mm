@interface BuddyLockdownModeController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BOOL)enableTappedAndReturnError:(id *)error;
- (BYRunState)runState;
- (_TtC5Setup27BuddyLockdownModeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Setup27BuddyLockdownModeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (_TtP5Setup20LockdownModeProvider_)lockdownModeProvider;
- (void)setSetupMethod:(id)method;
- (void)setUpLaterTapped;
- (void)viewDidLoad;
@end

@implementation BuddyLockdownModeController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10002C814();
}

- (BOOL)enableTappedAndReturnError:(id *)error
{
  selfCopy = self;
  sub_10002CA70();

  return 1;
}

- (void)setUpLaterTapped
{
  selfCopy = self;
  sub_10002D2E4();
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtP5Setup20LockdownModeProvider_)lockdownModeProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSetupMethod:(id)method
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_setupMethod];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_setupMethod] = method;
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
  v3 = sub_10002DB90();

  return v3 & 1;
}

- (_TtC5Setup27BuddyLockdownModeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup27BuddyLockdownModeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end