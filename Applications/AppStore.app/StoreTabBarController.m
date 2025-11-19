@interface StoreTabBarController
- (_TtC8AppStore21StoreTabBarController)initWithCoder:(id)a3;
- (_TtC8AppStore21StoreTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8AppStore21StoreTabBarController)initWithTabs:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)handleAccountKeyCommand;
- (void)handleAppsTabSwitchKeyCommand;
- (void)handleArcadeTabSwitchKeyCommand;
- (void)handleDebugCommand;
- (void)handleGamesTabSwitchKeyCommand;
- (void)handlePrivacyCommand;
- (void)handleSearchKeyCommand;
- (void)handleSignInCommand;
- (void)handleSignOutCommand;
- (void)handleTodayTabSwitchKeyCommand;
@end

@implementation StoreTabBarController

- (_TtC8AppStore21StoreTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100005230(v5, v7, a4);
}

- (unint64_t)supportedInterfaceOrientations
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = [(StoreTabBarController *)v4 selectedViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 supportedInterfaceOrientations];

    return v7;
  }

  else
  {
    v10.receiver = v4;
    v10.super_class = ObjectType;
    v9 = [(StoreTabBarController *)&v10 supportedInterfaceOrientations];

    return v9;
  }
}

- (_TtC8AppStore21StoreTabBarController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21StoreTabBarController_tabChangeDelegate) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleTodayTabSwitchKeyCommand
{
  v2 = self;
  sub_1001F610C(&enum case for NavigationTab.today(_:));
}

- (void)handleGamesTabSwitchKeyCommand
{
  v2 = self;
  sub_1001F610C(&enum case for NavigationTab.games(_:));
}

- (void)handleAppsTabSwitchKeyCommand
{
  v2 = self;
  sub_1001F610C(&enum case for NavigationTab.apps(_:));
}

- (void)handleArcadeTabSwitchKeyCommand
{
  v2 = self;
  sub_1001F610C(&enum case for NavigationTab.arcade(_:));
}

- (void)handleSearchKeyCommand
{
  v2 = self;
  sub_1001F66A4();
}

- (void)handleAccountKeyCommand
{
  v2 = self;
  sub_1001F70A4();
}

- (void)handleSignInCommand
{
  v2 = self;
  sub_1001F78B0(&type metadata accessor for SignInAction, &SignInAction.init());
}

- (void)handleSignOutCommand
{
  v2 = self;
  sub_1001F78B0(&type metadata accessor for SignOutAction, &SignOutAction.init());
}

- (void)handlePrivacyCommand
{
  v2 = self;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [objc_opt_self() presenterForPrivacyUnifiedAboutWithIdentifiers:isa];

  if (v4)
  {
    [v4 setPresentingViewController:v2];
  }

  [v4 present];
}

- (void)handleDebugCommand
{
  v2 = self;
  sub_1001F7B88();
}

- (_TtC8AppStore21StoreTabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end