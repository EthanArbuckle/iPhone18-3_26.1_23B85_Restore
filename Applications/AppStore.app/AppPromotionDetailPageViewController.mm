@interface AppPromotionDetailPageViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC8AppStore36AppPromotionDetailPageViewController)initWithCoder:(id)coder;
- (_TtC8AppStore36AppPromotionDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation AppPromotionDetailPageViewController

- (_TtC8AppStore36AppPromotionDetailPageViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_10017D63C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10017D808(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10017DAC8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10017DE9C(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10017E26C(disappear);
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_10017E9FC(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:), &dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo());
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  sub_10017E5E0();
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  sub_10017E7E0();
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_10017E9FC(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), &dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo());
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10017EC14();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10017ED98(change);
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(AppPromotionDetailPageViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  [(AppPromotionDetailPageViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  return 1;
}

- (_TtC8AppStore36AppPromotionDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end