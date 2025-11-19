@interface AppEventDetailPageViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC20ProductPageExtension32AppEventDetailPageViewController)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension32AppEventDetailPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)lockupTapGestureRecognized:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AppEventDetailPageViewController

- (_TtC20ProductPageExtension32AppEventDetailPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_isCollapsing) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  v4 = sub_10075F2AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = self;
  v9.super_class = ObjectType;
  v8 = self;
  [(AppEventDetailPageViewController *)&v9 viewDidLoad];
  sub_10000CF78((&v8->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver), *&v8->lifecycleObserver[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 16]);
  (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v4);
  sub_10075F2BC();
  (*(v5 + 8))(v7, v4);
  sub_100760C9C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100667FC4(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10066827C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1006685BC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10066898C(a3);
}

- (void)as_viewWillBecomeFullyVisible
{
  v2 = self;
  sub_10066923C(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:), &dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo());
}

- (void)as_viewDidBecomeFullyVisible
{
  v2 = self;
  sub_100668E20();
}

- (void)as_viewWillBecomePartiallyVisible
{
  v2 = self;
  sub_100669020();
}

- (void)as_viewDidBecomePartiallyVisible
{
  v2 = self;
  sub_10066923C(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), &dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo());
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100669454();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1006695D8(a3);
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(AppEventDetailPageViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)appEnteredWhileAppeared
{
  v2 = self;
  sub_10066987C();
}

- (void)appExitedWhileAppeared
{
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78((&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver), *&self->lifecycleObserver[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 16]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v3);
  v7 = self;
  sub_10075F2BC();

  (*(v4 + 8))(v6, v3);
}

- (void)lockupTapGestureRecognized:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100669D2C();

  sub_10000CFBC(v6, &unk_1009434C0);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v3, v5);
  sub_10075F07C();
  sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter);
  v8 = self;
  sub_1007657FC();
  (*(v4 + 8))(v7, v3);
  [(AppEventDetailPageViewController *)v8 dismissViewControllerAnimated:1 completion:0];

  return 1;
}

- (_TtC20ProductPageExtension32AppEventDetailPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end