@interface AppPromotionDetailPageViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC22SubscribePageExtension36AppPromotionDetailPageViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension36AppPromotionDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (_TtC22SubscribePageExtension36AppPromotionDetailPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_isCollapsing) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v5 = sub_100752614();
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics, 1, 1, v5);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004D6CC0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1004D6E8C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1004D714C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004D748C(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004D785C(disappear);
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_1004D7FEC(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:), &dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo());
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  sub_1004D7BD0();
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  sub_1004D7DD0();
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_1004D7FEC(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), &dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo());
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1004D8204();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1004D8388(change);
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
  sub_1004D862C();
}

- (void)appExitedWhileAppeared
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888((&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver), *&self->lifecycleObserver[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 16]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v3);
  selfCopy = self;
  sub_100742974();

  (*(v4 + 8))(v6, v3);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3, v5);
  sub_1007427D4();
  sub_1004DA624(&qword_10093ADC0, &type metadata accessor for AppPromotionDetailPagePresenter);
  selfCopy = self;
  sub_100748C64();
  (*(v4 + 8))(v7, v3);
  [(AppPromotionDetailPageViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  return 1;
}

- (_TtC22SubscribePageExtension36AppPromotionDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end