@interface RouteItemsViewController
- (_TtC4Maps24RouteItemsViewController)initWithAvailableRoutes:(id)a3 unavailableRoutes:(id)a4 isAllSavedRoutes:(BOOL)a5;
- (_TtC4Maps24RouteItemsViewController)initWithCoder:(id)a3;
- (_TtC4Maps24RouteItemsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)applyRouteDataAddress:(id)a3;
- (void)didSaveCustomRoute:(id)a3;
- (void)popContainee;
- (void)viewDidLoad;
@end

@implementation RouteItemsViewController

- (_TtC4Maps24RouteItemsViewController)initWithAvailableRoutes:(id)a3 unavailableRoutes:(id)a4 isAllSavedRoutes:(BOOL)a5
{
  sub_100014C84(0, &qword_10190EC50);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1004F021C(v6, v7, a5);
}

- (_TtC4Maps24RouteItemsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps24RouteItemsViewController_selectedRouteData) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1004F0494();
}

- (_TtC4Maps24RouteItemsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)applyRouteDataAddress:(id)a3
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps24RouteItemsViewController_selectedRouteData);
  if (v3)
  {
    [v3 setAddress:a3];
  }
}

- (void)popContainee
{
  v5 = self;
  if (![(ContaineeViewController *)v5 containeeDelegate])
  {
LABEL_5:

    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 containerViewController];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 popLastViewControllerAnimated:1];
    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

- (void)didSaveCustomRoute:(id)a3
{
  v6 = self;
  if (![(ContaineeViewController *)v6 containeeDelegate])
  {
LABEL_5:

    return;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 containerViewController];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 popLastViewControllerAnimated:1];
    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

@end