@interface FriendsSetupCoordinator
- (BOOL)friendsSetupViewControllerShouldTransitionToCloudKitSignInPhase:(id)a3;
- (_TtC10FitnessApp23FriendsSetupCoordinator)init;
- (void)applicationDidBecomeActive;
- (void)dealloc;
- (void)friendsSetupViewController:(id)a3 didCompletePhase:(int64_t)a4;
- (void)friendsSetupViewControllerDidCompleteSetup:(id)a3;
@end

@implementation FriendsSetupCoordinator

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v2];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for FriendsSetupCoordinator();
  [(FriendsSetupCoordinator *)&v5 dealloc];
}

- (void)applicationDidBecomeActive
{
  v2 = self;
  sub_10062B10C();
}

- (_TtC10FitnessApp23FriendsSetupCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)friendsSetupViewControllerShouldTransitionToCloudKitSignInPhase:(id)a3
{
  v3 = self;
  v4 = sub_10062DBBC();

  return (v4 & 1) == 0;
}

- (void)friendsSetupViewController:(id)a3 didCompletePhase:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10062ECD4(a4);
}

- (void)friendsSetupViewControllerDidCompleteSetup:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

@end