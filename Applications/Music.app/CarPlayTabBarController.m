@interface CarPlayTabBarController
- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4;
- (CarPlayTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (CarPlayTabBarController)initWithTabs:(id)a3;
- (void)accessoryViewAction;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)viewDidLoad;
@end

@implementation CarPlayTabBarController

- (void)viewDidLoad
{
  v2 = self;
  sub_10018A200();
}

- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10018CE88(v6, v7);

  return v9 & 1;
}

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10018CF7C(v9, a5);
}

- (void)accessoryViewAction
{
  v5 = self;
  v2 = [(CarPlayTabBarController *)v5 navigationController];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for CarPlayRootNavigationController();
    if (swift_dynamicCastClass())
    {
      sub_1001D3268(0, 1);
      v4 = v3;
    }

    else
    {
      v4 = v5;
      v5 = v3;
    }
  }
}

- (CarPlayTabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CarPlayTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end