@interface HOAdaptiveTabBarController
+ (BOOL)isAdaptiveTabBarEnabled;
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (BOOL)wantsAccessoryControlsCard;
- (HOAdaptiveTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (HOAdaptiveTabBarController)initWithTabs:(id)a3;
- (HOBaseController)baseController;
- (HUDashboardNavigator)dashboardNavigator;
- (HUMenuToolbarManager)menuToolbarManager;
- (id)currentViewController;
- (id)selectCurrentTab;
- (id)selectTabWithIdentifier:(id)a3;
- (id)tabBarController:(id)a3 animationControllerForTransitionFromViewController:(id)a4 toViewController:(id)a5;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)windowTitleForTabIdentifier:(id)a3 dashboardContext:(id)a4;
- (unint64_t)_uip_tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5;
- (void)_tabElementGroup:(id)a3 didCustomizeDisplayOrder:(id)a4;
- (void)_tabElementGroup:(id)a3 didSelectElement:(id)a4;
- (void)_uip_tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5;
- (void)dealloc;
- (void)didLoadHome:(id)a3;
- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5;
- (void)homeDidUpdateToROAR:(void *)a1;
- (void)setBaseController:(id)a3;
- (void)setLoadingViewController:(id)a3;
- (void)setMenuToolbarManager:(id)a3;
- (void)switchToAccessoryTypeGroup:(id)a3;
- (void)switchToHome:(id)a3;
- (void)switchToRoom:(id)a3;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
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
  v2 = self;
  v3 = AdaptiveTabBarController.baseController.getter();

  return v3;
}

- (void)setBaseController:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController);
  *(&self->super.super.super.super.isa + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController) = a3;
  v3 = a3;
}

- (HUMenuToolbarManager)menuToolbarManager
{
  v3 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setMenuToolbarManager:(id)a3
{
  v5 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  swift_beginAccess();
  v5 = *(&self->super.super.super.super.isa + v4);
  *(&self->super.super.super.super.isa + v4) = &_swiftEmptyDictionarySingleton;
  v6 = self;

  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(HOAdaptiveTabBarController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  AdaptiveTabBarController.viewDidLoad()();
}

- (id)selectCurrentTab
{
  v2 = [(HOAdaptiveTabBarController *)self navigationController];

  return v2;
}

- (void)switchToRoom:(id)a3
{
  v4 = a3;
  v5 = self;
  AdaptiveTabBarController.switchTo(room:)(v4);
}

- (void)switchToAccessoryTypeGroup:(id)a3
{
  v4 = a3;
  v5 = self;
  AdaptiveTabBarController.switchTo(accessoryTypeGroup:)(v4);
}

- (void)switchToHome:(id)a3
{
  v4 = a3;
  v5 = self;
  AdaptiveTabBarController.switchTo(home:)(v4);
}

- (HOAdaptiveTabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HOAdaptiveTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)currentViewController
{
  v2 = self;
  v3 = AdaptiveTabBarController.currentViewController()();

  return v3;
}

- (void)setLoadingViewController:(id)a3
{
  sub_1000578B4(&unk_1000D9F80, &unk_100093218);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100093150;
  *(v5 + 32) = a3;
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v6 = a3;
  v8 = self;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [(HOAdaptiveTabBarController *)v8 setViewControllers:isa];
}

- (void)didLoadHome:(id)a3
{
  v4 = a3;
  v5 = self;
  AdaptiveTabBarController.didLoad(_:)(v4);
}

- (id)selectTabWithIdentifier:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a3;
  sub_10005B9DC(0, &qword_1000D9FA0, UINavigationController_ptr);
  v7 = a3;
  v8 = self;
  v9 = static NAFutureHelper.futureOnMainActor<A>(descriptor:with:)();

  return v9;
}

- (BOOL)wantsAccessoryControlsCard
{
  v2 = self;
  v3 = AdaptiveTabBarController.wantsAccessoryControlsCard.getter();

  return v3 & 1;
}

- (void)_tabElementGroup:(id)a3 didSelectElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AdaptiveTabBarController._tabElementGroup(_:didSelect:)(v6, v7);
}

- (void)_tabElementGroup:(id)a3 didCustomizeDisplayOrder:(id)a4
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10006CB58(v6);
}

- (void)homeDidUpdateToROAR:(void *)a1
{
  v1 = a1;
  _s7HomeApp24AdaptiveTabBarControllerC4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0();
}

- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5
{
  v5 = self;
  _s7HomeApp24AdaptiveTabBarControllerC4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0();
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10006CE1C(v7);

  return v9 & 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10006CFC4(v7);
}

- (id)tabBarController:(id)a3 animationControllerForTransitionFromViewController:(id)a4 toViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10006D2BC(v10);

  return v12;
}

- (HUDashboardNavigator)dashboardNavigator
{
  v2 = self;
  v3 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();

  return v3;
}

- (unint64_t)_uip_tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  v11 = sub_10006D414(v9, a5);

  swift_unknownObjectRelease();
  return v11;
}

- (void)_uip_tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_10006D7EC(v9, a5);

  swift_unknownObjectRelease();
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = self;
  }

  AdaptiveTabBarController.target(forAction:withSender:)(a3, v16, v17);

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

- (id)windowTitleForTabIdentifier:(id)a3 dashboardContext:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  _s7HomeApp24AdaptiveTabBarControllerC11windowTitle03forD10Identifier16dashboardContextSSSgSo06HFHomebdJ0a_0A2UI09DashboardL0CSgtF_0(v6, a4);
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