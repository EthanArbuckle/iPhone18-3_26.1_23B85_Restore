@interface CarPlayTabBarController
- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab;
- (CarPlayTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (CarPlayTabBarController)initWithTabs:(id)tabs;
- (void)accessoryViewAction;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)viewDidLoad;
@end

@implementation CarPlayTabBarController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10018A200();
}

- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab
{
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  v9 = sub_10018CE88(controllerCopy, tabCopy);

  return v9 & 1;
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  controllerCopy = controller;
  tabCopy = tab;
  previousTabCopy = previousTab;
  selfCopy = self;
  sub_10018CF7C(tabCopy, previousTab);
}

- (void)accessoryViewAction
{
  selfCopy = self;
  navigationController = [(CarPlayTabBarController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    type metadata accessor for CarPlayRootNavigationController();
    if (swift_dynamicCastClass())
    {
      sub_1001D3268(0, 1);
      v4 = v3;
    }

    else
    {
      v4 = selfCopy;
      selfCopy = v3;
    }
  }
}

- (CarPlayTabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CarPlayTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end