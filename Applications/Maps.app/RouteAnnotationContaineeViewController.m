@interface RouteAnnotationContaineeViewController
- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithRouteAnnotation:(id)a3;
- (id)onDismiss;
- (void)setOnDismiss:(id)a3;
- (void)setRouteAnnotation:(id)a3;
- (void)viewDidLoad;
@end

@implementation RouteAnnotationContaineeViewController

- (id)onDismiss
{
  if (*(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_onDismiss))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_onDismiss + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_onDismiss);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1001FDE68;
    v5[3] = &unk_10160E300;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOnDismiss:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000D2C9C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_onDismiss);
  v8 = *(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_onDismiss);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1000588AC(v8);
}

- (void)setRouteAnnotation:(id)a3
{
  v5 = *(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_routeAnnotation);
  *(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_routeAnnotation) = a3;
  v6 = a3;
  v7 = self;

  sub_1005072D8(a3);
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithRouteAnnotation:(id)a3
{
  v4 = a3;
  v5 = sub_100281C48(a3);

  return v5;
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_onDismiss);
  *v3 = 0;
  v3[1] = 0;
  *(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_routeAnnotation) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100281570();
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end