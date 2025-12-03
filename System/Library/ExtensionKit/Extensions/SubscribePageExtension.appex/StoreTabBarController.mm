@interface StoreTabBarController
- (_TtC22SubscribePageExtension21StoreTabBarController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension21StoreTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC22SubscribePageExtension21StoreTabBarController)initWithTabs:(id)tabs;
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

- (_TtC22SubscribePageExtension21StoreTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1006F6A3C(v5, v7, bundle);
}

- (_TtC22SubscribePageExtension21StoreTabBarController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_objectGraph) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_tabChangeDelegate) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
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

- (void)handleTodayTabSwitchKeyCommand
{
  selfCopy = self;
  sub_1006F6CE8(&enum case for NavigationTab.today(_:));
}

- (void)handleGamesTabSwitchKeyCommand
{
  selfCopy = self;
  sub_1006F6CE8(&enum case for NavigationTab.games(_:));
}

- (void)handleAppsTabSwitchKeyCommand
{
  selfCopy = self;
  sub_1006F6CE8(&enum case for NavigationTab.apps(_:));
}

- (void)handleArcadeTabSwitchKeyCommand
{
  selfCopy = self;
  sub_1006F6CE8(&enum case for NavigationTab.arcade(_:));
}

- (void)handleSearchKeyCommand
{
  selfCopy = self;
  sub_1006F7270();
}

- (void)handleAccountKeyCommand
{
  selfCopy = self;
  sub_1006F7C70();
}

- (void)handleSignInCommand
{
  selfCopy = self;
  sub_1006F847C(&type metadata accessor for SignInAction, &SignInAction.init());
}

- (void)handleSignOutCommand
{
  selfCopy = self;
  sub_1006F847C(&type metadata accessor for SignOutAction, &SignOutAction.init());
}

- (void)handlePrivacyCommand
{
  selfCopy = self;
  isa = sub_100753294().super.isa;
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
  sub_1006F8754();
}

- (_TtC22SubscribePageExtension21StoreTabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end