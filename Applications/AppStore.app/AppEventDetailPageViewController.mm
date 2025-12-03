@interface AppEventDetailPageViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC8AppStore32AppEventDetailPageViewController)initWithCoder:(id)coder;
- (_TtC8AppStore32AppEventDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)lockupTapGestureRecognized:(id)recognized;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation AppEventDetailPageViewController

- (_TtC8AppStore32AppEventDetailPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_isCollapsing) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(AppEventDetailPageViewController *)&v9 viewDidLoad];
  sub_10002A400((&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver), *&selfCopy->lifecycleObserver[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 16]);
  (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v4);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v5 + 8))(v7, v4);
  dispatch thunk of BasePresenter.didLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001722E0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100172598(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10017296C(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100172D3C(disappear);
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_1001735EC(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:), &dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo());
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  sub_1001731D0();
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  sub_1001733D0();
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_1001735EC(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), &dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo());
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100173804();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100173988(change);
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(AppEventDetailPageViewController *)selfCopy traitCollection];
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
  sub_100173C2C();
}

- (void)appExitedWhileAppeared
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400((&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver), *&self->lifecycleObserver[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 16]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v3);
  selfCopy = self;
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  (*(v4 + 8))(v6, v3);
}

- (void)lockupTapGestureRecognized:(id)recognized
{
  if (recognized)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1001740D8();

  sub_10002B894(v6, &unk_1009711D0);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v3, v5);
  type metadata accessor for AppEventDetailPagePresenter();
  sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter);
  selfCopy = self;
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  [(AppEventDetailPageViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  return 1;
}

- (_TtC8AppStore32AppEventDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end