@interface TabBarController
- (_TtC6Health16TabBarController)init;
- (_TtC6Health16TabBarController)initWithCoder:(id)coder;
- (_TtC6Health16TabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC6Health16TabBarController)initWithTabs:(id)tabs;
- (id)tabBarController:(id)controller displayedViewControllersForTab:(id)tab proposedViewControllers:(id)controllers;
- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request;
- (unint64_t)supportedInterfaceOrientations;
- (void)find:(id)find;
- (void)restoreUserActivityState:(id)state;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TabBarController

- (_TtC6Health16TabBarController)init
{
  v2 = [objc_allocWithZone(HKHealthStore) init];
  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  v3 = sub_100006184();
  v4 = type metadata accessor for PinnedContentManagerProvider();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v2;
  v8 = PinnedContentManagerProvider.init(healthStore:)();
  v9 = objc_allocWithZone(type metadata accessor for TabBarController());
  v10 = sub_100009A60(v7, v3, v8, v9);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  selectedViewController = [(TabBarController *)selfCopy selectedViewController];
  if (selectedViewController)
  {
    v4 = selectedViewController;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      overrideMask = [v5 overrideMask];

      return overrideMask;
    }
  }

  else
  {
  }

  return 2;
}

- (_TtC6Health16TabBarController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TabBarController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(TabBarController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  sub_10000F75C();
  dispatch thunk of HealthAppAnalyticsManager.submitResizeWindowInteraction(with:)();

  swift_unknownObjectRelease();
}

- (_TtC6Health16TabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6Health16TabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tabBarController:(id)controller displayedViewControllersForTab:(id)tab proposedViewControllers:(id)controllers
{
  sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  sub_1000521BC(controllerCopy, tabCopy, v8);

  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  controllerCopy = controller;
  tabCopy = tab;
  previousTabCopy = previousTab;
  selfCopy = self;
  sub_1000548EC(tabCopy, previousTab);
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_10005346C(stateCopy);
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request
{
  controllerCopy = controller;
  sidebarCopy = sidebar;
  requestCopy = request;
  selfCopy = self;
  v12 = sub_100054DA4(requestCopy);

  return v12;
}

- (void)find:(id)find
{
  if (find)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = self;
  selfCopy3 = self;
  sub_100051684(sub_100054894, v6);

  sub_10000D544(v8, &qword_1000DB160, &type metadata for Any + 8, &type metadata accessor for Optional, sub_100003D8C);
}

@end