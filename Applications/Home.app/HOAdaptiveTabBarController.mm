@interface HOAdaptiveTabBarController
+ (BOOL)isAdaptiveTabBarEnabled;
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (BOOL)wantsAccessoryControlsCard;
- (HOAdaptiveTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (HOAdaptiveTabBarController)initWithTabs:(id)tabs;
- (HOBaseController)baseController;
- (HUDashboardNavigator)dashboardNavigator;
- (HUMenuToolbarManager)menuToolbarManager;
- (id)currentViewController;
- (id)selectCurrentTab;
- (id)selectTabWithIdentifier:(id)identifier;
- (id)tabBarController:(id)controller animationControllerForTransitionFromViewController:(id)viewController toViewController:(id)toViewController;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)windowTitleForTabIdentifier:(id)identifier dashboardContext:(id)context;
- (unint64_t)_uip_tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session;
- (void)_tabElementGroup:(id)group didCustomizeDisplayOrder:(id)order;
- (void)_tabElementGroup:(id)group didSelectElement:(id)element;
- (void)_uip_tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session;
- (void)dealloc;
- (void)didLoadHome:(id)home;
- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory;
- (void)homeDidUpdateToROAR:(void *)r;
- (void)setBaseController:(id)controller;
- (void)setLoadingViewController:(id)controller;
- (void)setMenuToolbarManager:(id)manager;
- (void)switchToAccessoryTypeGroup:(id)group;
- (void)switchToHome:(id)home;
- (void)switchToRoom:(id)room;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)viewDidLoad;
@end

@implementation HOAdaptiveTabBarController

+ (BOOL)isAdaptiveTabBarEnabled
{
  v2 = type metadata accessor for HomeAppFeatures();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIKitFeatures();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for UIKitFeatures.floatingTabBar(_:), v7);
  sub_10005E620(&qword_1000D9EF8, &type metadata accessor for UIKitFeatures);
  v12 = FeatureFlagsKey.isEnabled.getter();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    (*(v3 + 104))(v6, enum case for HomeAppFeatures.adaptiveNavigation(_:), v2);
    sub_10005E620(&qword_1000D9F00, &type metadata accessor for HomeAppFeatures);
    v13 = FeatureFlagsKey.isEnabled.getter();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (HOBaseController)baseController
{
  selfCopy = self;
  v3 = AdaptiveTabBarController.baseController.getter();

  return v3;
}

- (void)setBaseController:(id)controller
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController);
  *(&self->super.super.super.super.isa + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController) = controller;
  controllerCopy = controller;
}

- (HUMenuToolbarManager)menuToolbarManager
{
  v3 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setMenuToolbarManager:(id)manager
{
  v5 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = manager;
  managerCopy = manager;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  swift_beginAccess();
  v5 = *(&self->super.super.super.super.isa + v4);
  *(&self->super.super.super.super.isa + v4) = &_swiftEmptyDictionarySingleton;
  selfCopy = self;

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(HOAdaptiveTabBarController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  AdaptiveTabBarController.viewDidLoad()();
}

- (id)selectCurrentTab
{
  navigationController = [(HOAdaptiveTabBarController *)self navigationController];

  return navigationController;
}

- (void)switchToRoom:(id)room
{
  roomCopy = room;
  selfCopy = self;
  AdaptiveTabBarController.switchTo(room:)(roomCopy);
}

- (void)switchToAccessoryTypeGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  AdaptiveTabBarController.switchTo(accessoryTypeGroup:)(groupCopy);
}

- (void)switchToHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  AdaptiveTabBarController.switchTo(home:)(homeCopy);
}

- (HOAdaptiveTabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HOAdaptiveTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)currentViewController
{
  selfCopy = self;
  v3 = AdaptiveTabBarController.currentViewController()();

  return v3;
}

- (void)setLoadingViewController:(id)controller
{
  sub_1000578B4(&unk_1000D9F80, &unk_100093218);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100093150;
  *(v5 + 32) = controller;
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  controllerCopy = controller;
  selfCopy = self;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [(HOAdaptiveTabBarController *)selfCopy setViewControllers:isa];
}

- (void)didLoadHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  AdaptiveTabBarController.didLoad(_:)(homeCopy);
}

- (id)selectTabWithIdentifier:(id)identifier
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = identifier;
  sub_10005B9DC(0, &qword_1000D9FA0, UINavigationController_ptr);
  identifierCopy = identifier;
  selfCopy = self;
  v9 = static NAFutureHelper.futureOnMainActor<A>(descriptor:with:)();

  return v9;
}

- (BOOL)wantsAccessoryControlsCard
{
  selfCopy = self;
  v3 = AdaptiveTabBarController.wantsAccessoryControlsCard.getter();

  return v3 & 1;
}

- (void)_tabElementGroup:(id)group didSelectElement:(id)element
{
  groupCopy = group;
  elementCopy = element;
  selfCopy = self;
  AdaptiveTabBarController._tabElementGroup(_:didSelect:)(groupCopy, elementCopy);
}

- (void)_tabElementGroup:(id)group didCustomizeDisplayOrder:(id)order
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  groupCopy = group;
  selfCopy = self;
  sub_10006CB58(v6);
}

- (void)homeDidUpdateToROAR:(void *)r
{
  rCopy = r;
  _s7HomeApp24AdaptiveTabBarControllerC4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0();
}

- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory
{
  selfCopy = self;
  _s7HomeApp24AdaptiveTabBarControllerC4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0();
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  v9 = sub_10006CE1C(viewControllerCopy);

  return v9 & 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_10006CFC4(viewControllerCopy);
}

- (id)tabBarController:(id)controller animationControllerForTransitionFromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v12 = sub_10006D2BC(toViewControllerCopy);

  return v12;
}

- (HUDashboardNavigator)dashboardNavigator
{
  selfCopy = self;
  v3 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();

  return v3;
}

- (unint64_t)_uip_tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = sub_10006D414(tabCopy, session);

  swift_unknownObjectRelease();
  return v11;
}

- (void)_uip_tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10006D7EC(tabCopy, session);

  swift_unknownObjectRelease();
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  AdaptiveTabBarController.target(forAction:withSender:)(action, v16, v17);

  sub_10005C664(v16, &qword_1000D9D88, &qword_100093400);
  v8 = v18;
  if (v18)
  {
    v9 = sub_1000583BC(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_1000578FC(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)windowTitleForTabIdentifier:(id)identifier dashboardContext:(id)context
{
  identifierCopy = identifier;
  selfCopy = self;
  contextCopy = context;
  _s7HomeApp24AdaptiveTabBarControllerC11windowTitle03forD10Identifier16dashboardContextSSSgSo06HFHomebdJ0a_0A2UI09DashboardL0CSgtF_0(identifierCopy, context);
  v10 = v9;

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end