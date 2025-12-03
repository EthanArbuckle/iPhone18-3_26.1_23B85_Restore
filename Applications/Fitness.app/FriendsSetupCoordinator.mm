@interface FriendsSetupCoordinator
- (BOOL)friendsSetupViewControllerShouldTransitionToCloudKitSignInPhase:(id)phase;
- (_TtC10FitnessApp23FriendsSetupCoordinator)init;
- (void)applicationDidBecomeActive;
- (void)dealloc;
- (void)friendsSetupViewController:(id)controller didCompletePhase:(int64_t)phase;
- (void)friendsSetupViewControllerDidCompleteSetup:(id)setup;
@end

@implementation FriendsSetupCoordinator

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for FriendsSetupCoordinator();
  [(FriendsSetupCoordinator *)&v5 dealloc];
}

- (void)applicationDidBecomeActive
{
  selfCopy = self;
  sub_10062B10C();
}

- (_TtC10FitnessApp23FriendsSetupCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)friendsSetupViewControllerShouldTransitionToCloudKitSignInPhase:(id)phase
{
  selfCopy = self;
  v4 = sub_10062DBBC();

  return (v4 & 1) == 0;
}

- (void)friendsSetupViewController:(id)controller didCompletePhase:(int64_t)phase
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10062ECD4(phase);
}

- (void)friendsSetupViewControllerDidCompleteSetup:(id)setup
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

@end