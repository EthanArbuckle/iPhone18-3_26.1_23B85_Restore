@interface RootContainerViewController
- (_TtC17PeopleViewService27RootContainerViewController)initWithCoder:(id)coder;
- (_TtC17PeopleViewService27RootContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)showMetrics;
@end

@implementation RootContainerViewController

- (void)showMetrics
{
  v3 = type metadata accessor for MetricTemplateView();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  selfCopy = self;
  MetricTemplateView.init(dragRefresh:)();
  v6 = objc_allocWithZone(sub_10000417C(&qword_100026180, &qword_100017410));
  v7 = UIHostingController.init(rootView:)();
  sub_10000DFEC(v7);
}

- (void)loadView
{
  selfCopy = self;
  sub_10000DE94();
}

- (_TtC17PeopleViewService27RootContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RootContainerViewController();
  v9 = [(RootContainerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17PeopleViewService27RootContainerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootContainerViewController();
  coderCopy = coder;
  v5 = [(RootContainerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end