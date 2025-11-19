@interface AppPromotionDetailPageViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC8AppStore36AppPromotionDetailPageViewController)initWithCoder:(id)a3;
- (_TtC8AppStore36AppPromotionDetailPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AppPromotionDetailPageViewController

- (_TtC8AppStore36AppPromotionDetailPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_isCollapsing) = 0;
  v4 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v5 = type metadata accessor for ActionMetrics();
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_backButtonActionMetrics, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_closeButtonActionMetrics, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10017D63C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10017D808(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10017DAC8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10017DE9C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10017E26C(a3);
}

- (void)as_viewWillBecomeFullyVisible
{
  v2 = self;
  sub_10017E9FC(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:), &dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo());
}

- (void)as_viewDidBecomeFullyVisible
{
  v2 = self;
  sub_10017E5E0();
}

- (void)as_viewWillBecomePartiallyVisible
{
  v2 = self;
  sub_10017E7E0();
}

- (void)as_viewDidBecomePartiallyVisible
{
  v2 = self;
  sub_10017E9FC(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), &dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo());
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10017EC14();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10017ED98(a3);
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(AppPromotionDetailPageViewController *)v2 traitCollection];
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
  sub_10017F03C();
}

- (void)appExitedWhileAppeared
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400((&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver), *&self->lifecycleObserver[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 16]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v3);
  v7 = self;
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  (*(v4 + 8))(v6, v3);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3, v5);
  type metadata accessor for AppPromotionDetailPagePresenter();
  sub_100181038(&qword_100977118, &type metadata accessor for AppPromotionDetailPagePresenter);
  v8 = self;
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  [(AppPromotionDetailPageViewController *)v8 dismissViewControllerAnimated:1 completion:0];

  return 1;
}

- (_TtC8AppStore36AppPromotionDetailPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end