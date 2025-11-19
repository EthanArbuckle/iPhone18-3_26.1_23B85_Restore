@interface StoreTabBarController
- (_TtC18ASMessagesProvider21StoreTabBarController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider21StoreTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18ASMessagesProvider21StoreTabBarController)initWithTabs:(id)a3;
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

- (_TtC18ASMessagesProvider21StoreTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_FF8B4(v5, v7, a4);
}

- (_TtC18ASMessagesProvider21StoreTabBarController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_objectGraph) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_tabChangeDelegate) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
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

- (void)handleTodayTabSwitchKeyCommand
{
  v2 = self;
  sub_FFB60(&enum case for NavigationTab.today(_:));
}

- (void)handleGamesTabSwitchKeyCommand
{
  v2 = self;
  sub_FFB60(&enum case for NavigationTab.games(_:));
}

- (void)handleAppsTabSwitchKeyCommand
{
  v2 = self;
  sub_FFB60(&enum case for NavigationTab.apps(_:));
}

- (void)handleArcadeTabSwitchKeyCommand
{
  v2 = self;
  sub_FFB60(&enum case for NavigationTab.arcade(_:));
}

- (void)handleSearchKeyCommand
{
  v2 = self;
  sub_1000E8();
}

- (void)handleAccountKeyCommand
{
  v2 = self;
  sub_100AE8();
}

- (void)handleSignInCommand
{
  v2 = self;
  sub_1012F4(&type metadata accessor for SignInAction, &SignInAction.init());
}

- (void)handleSignOutCommand
{
  v2 = self;
  sub_1012F4(&type metadata accessor for SignOutAction, &SignOutAction.init());
}

- (void)handlePrivacyCommand
{
  v2 = self;
  isa = sub_769450().super.isa;
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
  sub_1015CC();
}

- (_TtC18ASMessagesProvider21StoreTabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end