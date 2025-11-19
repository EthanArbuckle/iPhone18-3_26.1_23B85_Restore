@interface TabBarController
- (_TtC6Health16TabBarController)init;
- (_TtC6Health16TabBarController)initWithCoder:(id)a3;
- (_TtC6Health16TabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC6Health16TabBarController)initWithTabs:(id)a3;
- (id)tabBarController:(id)a3 displayedViewControllersForTab:(id)a4 proposedViewControllers:(id)a5;
- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)find:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v2 = self;
  v3 = [(TabBarController *)v2 selectedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = [v5 overrideMask];

      return v6;
    }
  }

  else
  {
  }

  return 2;
}

- (_TtC6Health16TabBarController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TabBarController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(TabBarController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  sub_10000F75C();
  dispatch thunk of HealthAppAnalyticsManager.submitResizeWindowInteraction(with:)();

  swift_unknownObjectRelease();
}

- (_TtC6Health16TabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6Health16TabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tabBarController:(id)a3 displayedViewControllersForTab:(id)a4 proposedViewControllers:(id)a5
{
  sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1000521BC(v9, v10, v8);

  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000548EC(v9, a5);
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005346C(v4);
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100054DA4(v10);

  return v12;
}

- (void)find:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = self;
  sub_100051684(sub_100054894, v6);

  sub_10000D544(v8, &qword_1000DB160, &type metadata for Any + 8, &type metadata accessor for Optional, sub_100003D8C);
}

@end