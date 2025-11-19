@interface BuddyLockdownModeController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BOOL)enableTappedAndReturnError:(id *)a3;
- (BYRunState)runState;
- (_TtC5Setup27BuddyLockdownModeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Setup27BuddyLockdownModeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (_TtP5Setup20LockdownModeProvider_)lockdownModeProvider;
- (void)setSetupMethod:(id)a3;
- (void)setUpLaterTapped;
- (void)viewDidLoad;
@end

@implementation BuddyLockdownModeController

- (void)viewDidLoad
{
  v2 = self;
  sub_10002C814();
}

- (BOOL)enableTappedAndReturnError:(id *)a3
{
  v3 = self;
  sub_10002CA70();

  return 1;
}

- (void)setUpLaterTapped
{
  v2 = self;
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

- (void)setSetupMethod:(id)a3
{
  v4 = *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_setupMethod];
  *&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_setupMethod] = a3;
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
  v3 = sub_10002DB90();

  return v3 & 1;
}

- (_TtC5Setup27BuddyLockdownModeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup27BuddyLockdownModeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end