@interface RouteItemsViewController
- (_TtC4Maps24RouteItemsViewController)initWithAvailableRoutes:(id)routes unavailableRoutes:(id)unavailableRoutes isAllSavedRoutes:(BOOL)savedRoutes;
- (_TtC4Maps24RouteItemsViewController)initWithCoder:(id)coder;
- (_TtC4Maps24RouteItemsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)applyRouteDataAddress:(id)address;
- (void)didSaveCustomRoute:(id)route;
- (void)popContainee;
- (void)viewDidLoad;
@end

@implementation RouteItemsViewController

- (_TtC4Maps24RouteItemsViewController)initWithAvailableRoutes:(id)routes unavailableRoutes:(id)unavailableRoutes isAllSavedRoutes:(BOOL)savedRoutes
{
  sub_100014C84(0, &qword_10190EC50);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1004F021C(v6, v7, savedRoutes);
}

- (_TtC4Maps24RouteItemsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps24RouteItemsViewController_activeConversionRouteData) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps24RouteItemsViewController_selectedRouteData) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004F0494();
}

- (_TtC4Maps24RouteItemsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)applyRouteDataAddress:(id)address
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps24RouteItemsViewController_selectedRouteData);
  if (v3)
  {
    [v3 setAddress:address];
  }
}

- (void)popContainee
{
  selfCopy = self;
  if (![(ContaineeViewController *)selfCopy containeeDelegate])
  {
LABEL_5:

    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    containerViewController = [v2 containerViewController];
    if (!containerViewController)
    {
      __break(1u);
      return;
    }

    v4 = containerViewController;
    [containerViewController popLastViewControllerAnimated:1];
    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

- (void)didSaveCustomRoute:(id)route
{
  selfCopy = self;
  if (![(ContaineeViewController *)selfCopy containeeDelegate])
  {
LABEL_5:

    return;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    containerViewController = [v3 containerViewController];
    if (!containerViewController)
    {
      __break(1u);
      return;
    }

    v5 = containerViewController;
    [containerViewController popLastViewControllerAnimated:1];
    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

@end