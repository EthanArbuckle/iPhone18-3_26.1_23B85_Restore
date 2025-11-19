@interface BKTabBarController
+ (NSString)rootBarReadyNotification;
- (BKRootBarCoordinating)bk_rootBarCoordinator;
- (BKTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKTabBarController)initWithTabs:(id)a3;
- (BOOL)bc_analyticsVisibilityOfChild:(id)a3;
- (BOOL)prefersStatusBarHidden;
- (NSString)bc_stringForReturnToRootBarItem;
- (UIViewController)childViewControllerForStatusBarHidden;
- (UIViewController)childViewControllerForStatusBarStyle;
- (id)flowControllers;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)a3;
- (void)_setSelectedViewController:(id)a3 performUpdates:(BOOL)a4;
- (void)didReceiveMemoryWarning;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKTabBarController

- (void)viewDidLoad
{
  v2 = self;
  TabBarController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9 = 0;
  v10 = 0;
  v8 = a3;
  v11 = 0;
  v4 = self;
  sub_10079B8C4();
  v7.receiver = v4;
  v7.super_class = type metadata accessor for TabBarController();
  [(MiniPlayerHostingTabBarController *)&v7 viewWillAppear:v3];
  v5 = [(BKTabBarController *)v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setAccessibilityElementsHidden:0];
  }

  else
  {
    __break(1u);
  }
}

- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = a3;
  v4 = [v3 selectedViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 supportedInterfaceOrientations];

    return v6;
  }

  else
  {
    v8 = isPad();

    if (v8)
    {
      return 30;
    }

    else
    {
      return 2;
    }
  }
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  v2 = self;
  v3 = TabBarController.childForStatusBarHidden.getter();

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = [(BKTabBarController *)v2 bc_windowForViewController];
  v4 = [v3 windowScene];

  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  v6 = isPad();

  if (v6)
  {
    return 0;
  }

  return sub_100025674(v5);
}

- (BKRootBarCoordinating)bk_rootBarCoordinator
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_setSelectedViewController:(id)a3 performUpdates:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  v9 = v8;
  v10 = v8;
  v12.value.super.super.isa = a3;
  v12.is_nil = a4;
  TabBarController._setSelectedViewController(_:performUpdates:)(v12, v9);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  TabBarController.viewWillDisappear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  TabBarController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();

  sub_1000074E0(&v6);
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  TabBarController.didReceiveMemoryWarning()();
}

- (BOOL)bc_analyticsVisibilityOfChild:(id)a3
{
  v4 = a3;
  v5 = [(BKTabBarController *)self selectedViewController];
  if (v5)
  {
    v6 = v5;

    return v6 == v4;
  }

  else
  {

    return 0;
  }
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = self;
  v3 = TabBarController.childForStatusBarStyle.getter();

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = TabBarController.preferredStatusBarStyle.getter();

  return v3;
}

- (BKTabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10058CBC8(v9, a5);
}

- (id)flowControllers
{
  sub_1001F1160(&qword_100AD7FB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080B690;
  *(v3 + 56) = type metadata accessor for TabBarController();
  *(v3 + 32) = self;
  v4 = self;
  v5.super.isa = sub_1007A25D4().super.isa;

  return v5.super.isa;
}

- (NSString)bc_stringForReturnToRootBarItem
{
  v2 = self;
  TabBarController.bc_stringForReturnToRootBarItem.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1007A2214();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSString)rootBarReadyNotification
{
  if (qword_100AD1868 != -1)
  {
    swift_once();
  }

  v3 = static NSNotificationName.rootBarReady;

  return v3;
}

@end