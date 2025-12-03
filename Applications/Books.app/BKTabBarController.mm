@interface BKTabBarController
+ (NSString)rootBarReadyNotification;
- (BKRootBarCoordinating)bk_rootBarCoordinator;
- (BKTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (BKTabBarController)initWithTabs:(id)tabs;
- (BOOL)bc_analyticsVisibilityOfChild:(id)child;
- (BOOL)prefersStatusBarHidden;
- (NSString)bc_stringForReturnToRootBarItem;
- (UIViewController)childViewControllerForStatusBarHidden;
- (UIViewController)childViewControllerForStatusBarStyle;
- (id)flowControllers;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations;
- (void)_setSelectedViewController:(id)controller performUpdates:(BOOL)updates;
- (void)didReceiveMemoryWarning;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKTabBarController

- (void)viewDidLoad
{
  selfCopy = self;
  TabBarController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9 = 0;
  v10 = 0;
  appearCopy2 = appear;
  v11 = 0;
  selfCopy = self;
  sub_10079B8C4();
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for TabBarController();
  [(MiniPlayerHostingTabBarController *)&v7 viewWillAppear:appearCopy];
  view = [(BKTabBarController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view setAccessibilityElementsHidden:0];
  }

  else
  {
    __break(1u);
  }
}

- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations
{
  orientationsCopy = orientations;
  selectedViewController = [orientationsCopy selectedViewController];
  if (selectedViewController)
  {
    v5 = selectedViewController;
    supportedInterfaceOrientations = [selectedViewController supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
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
  selfCopy = self;
  v3 = TabBarController.childForStatusBarHidden.getter();

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  bc_windowForViewController = [(BKTabBarController *)selfCopy bc_windowForViewController];
  windowScene = [bc_windowForViewController windowScene];

  if (windowScene)
  {
    interfaceOrientation = [windowScene interfaceOrientation];
  }

  else
  {
    interfaceOrientation = 0;
  }

  v6 = isPad();

  if (v6)
  {
    return 0;
  }

  return sub_100025674(interfaceOrientation);
}

- (BKRootBarCoordinating)bk_rootBarCoordinator
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_setSelectedViewController:(id)controller performUpdates:(BOOL)updates
{
  controllerCopy = controller;
  selfCopy = self;
  v9 = selfCopy;
  v10 = selfCopy;
  v12.value.super.super.isa = controller;
  v12.is_nil = updates;
  TabBarController._setSelectedViewController(_:performUpdates:)(v12, v9);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  TabBarController.viewWillDisappear(_:)(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  TabBarController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();

  sub_1000074E0(&v6);
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  TabBarController.didReceiveMemoryWarning()();
}

- (BOOL)bc_analyticsVisibilityOfChild:(id)child
{
  childCopy = child;
  selectedViewController = [(BKTabBarController *)self selectedViewController];
  if (selectedViewController)
  {
    v6 = selectedViewController;

    return v6 == childCopy;
  }

  else
  {

    return 0;
  }
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v3 = TabBarController.childForStatusBarStyle.getter();

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  v3 = TabBarController.preferredStatusBarStyle.getter();

  return v3;
}

- (BKTabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  controllerCopy = controller;
  tabCopy = tab;
  previousTabCopy = previousTab;
  selfCopy = self;
  sub_10058CBC8(tabCopy, previousTab);
}

- (id)flowControllers
{
  sub_1001F1160(&qword_100AD7FB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080B690;
  *(v3 + 56) = type metadata accessor for TabBarController();
  *(v3 + 32) = self;
  selfCopy = self;
  v5.super.isa = sub_1007A25D4().super.isa;

  return v5.super.isa;
}

- (NSString)bc_stringForReturnToRootBarItem
{
  selfCopy = self;
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