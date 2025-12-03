@interface RouteAnnotationContaineeViewController
- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithRouteAnnotation:(id)annotation;
- (id)onDismiss;
- (void)setOnDismiss:(id)dismiss;
- (void)setRouteAnnotation:(id)annotation;
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

- (void)setOnDismiss:(id)dismiss
{
  v4 = _Block_copy(dismiss);
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
  selfCopy = self;
  sub_1000588AC(v8);
}

- (void)setRouteAnnotation:(id)annotation
{
  v5 = *(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_routeAnnotation);
  *(self + OBJC_IVAR____TtC4Maps38RouteAnnotationContaineeViewController_routeAnnotation) = annotation;
  annotationCopy = annotation;
  selfCopy = self;

  sub_1005072D8(annotation);
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithRouteAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = sub_100281C48(annotation);

  return v5;
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_100281570();
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end