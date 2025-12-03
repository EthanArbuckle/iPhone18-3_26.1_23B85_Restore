@interface AppPromotionDetailPageViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC20ProductPageExtension36AppPromotionDetailPageViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension36AppPromotionDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (_TtC20ProductPageExtension36AppPromotionDetailPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_isCollapsing) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v5 = sub_10076F4FC();
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics, 1, 1, v5);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003A8204();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003A83D0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003A8690(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003A89D0(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003A8DA0(disappear);
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_1003A9530(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:), &dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo());
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  sub_1003A9114();
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  sub_1003A9314();
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_1003A9530(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), &dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo());
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1003A9748();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003A98CC(change);
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
  sub_1003A9B70();
}

- (void)appExitedWhileAppeared
{
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78((&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver), *&self->lifecycleObserver[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 16]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v3);
  selfCopy = self;
  sub_10075F2BC();

  (*(v4 + 8))(v6, v3);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3, v5);
  sub_10075F11C();
  sub_1003ABBD8(&qword_1009552D0, &type metadata accessor for AppPromotionDetailPagePresenter);
  selfCopy = self;
  sub_1007657FC();
  (*(v4 + 8))(v7, v3);
  [(AppPromotionDetailPageViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  return 1;
}

- (_TtC20ProductPageExtension36AppPromotionDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end