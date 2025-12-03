@interface StoreTabBarController
- (_TtC8AppStore21StoreTabBarController)initWithCoder:(id)coder;
- (_TtC8AppStore21StoreTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8AppStore21StoreTabBarController)initWithTabs:(id)tabs;
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

- (_TtC8AppStore21StoreTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100005230(v5, v7, bundle);
}

- (unint64_t)supportedInterfaceOrientations
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  selectedViewController = [(StoreTabBarController *)selfCopy selectedViewController];
  if (selectedViewController)
  {
    v6 = selectedViewController;
    supportedInterfaceOrientations = [selectedViewController supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = ObjectType;
    supportedInterfaceOrientations2 = [(StoreTabBarController *)&v10 supportedInterfaceOrientations];

    return supportedInterfaceOrientations2;
  }
}

- (_TtC8AppStore21StoreTabBarController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21StoreTabBarController_tabChangeDelegate) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleTodayTabSwitchKeyCommand
{
  selfCopy = self;
  sub_1001F610C(&enum case for NavigationTab.today(_:));
}

- (void)handleGamesTabSwitchKeyCommand
{
  selfCopy = self;
  sub_1001F610C(&enum case for NavigationTab.games(_:));
}

- (void)handleAppsTabSwitchKeyCommand
{
  selfCopy = self;
  sub_1001F610C(&enum case for NavigationTab.apps(_:));
}

- (void)handleArcadeTabSwitchKeyCommand
{
  selfCopy = self;
  sub_1001F610C(&enum case for NavigationTab.arcade(_:));
}

- (void)handleSearchKeyCommand
{
  selfCopy = self;
  sub_1001F66A4();
}

- (void)handleAccountKeyCommand
{
  selfCopy = self;
  sub_1001F70A4();
}

- (void)handleSignInCommand
{
  selfCopy = self;
  sub_1001F78B0(&type metadata accessor for SignInAction, &SignInAction.init());
}

- (void)handleSignOutCommand
{
  selfCopy = self;
  sub_1001F78B0(&type metadata accessor for SignOutAction, &SignOutAction.init());
}

- (void)handlePrivacyCommand
{
  selfCopy = self;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [objc_opt_self() presenterForPrivacyUnifiedAboutWithIdentifiers:isa];

  if (v4)
  {
    [v4 setPresentingViewController:selfCopy];
  }

  [v4 present];
}

- (void)handleDebugCommand
{
  selfCopy = self;
  sub_1001F7B88();
}

- (_TtC8AppStore21StoreTabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end