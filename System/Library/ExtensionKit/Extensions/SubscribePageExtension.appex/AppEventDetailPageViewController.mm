@interface AppEventDetailPageViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC22SubscribePageExtension32AppEventDetailPageViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension32AppEventDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (_TtC22SubscribePageExtension32AppEventDetailPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_isCollapsing) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  v4 = sub_100742964();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(AppEventDetailPageViewController *)&v9 viewDidLoad];
  sub_10000C888((&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver), *&selfCopy->lifecycleObserver[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 16]);
  (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v4);
  sub_100742974();
  (*(v5 + 8))(v7, v4);
  sub_100744314();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100239164(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10023941C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10023975C(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100239B2C(disappear);
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_10023A3DC(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:), &dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo());
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  sub_100239FC0();
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  sub_10023A1C0();
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_10023A3DC(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), &dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo());
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10023A5F4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10023A778(change);
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
  sub_10023AA1C();
}

- (void)appExitedWhileAppeared
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888((&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver), *&self->lifecycleObserver[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 16]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v3);
  selfCopy = self;
  sub_100742974();

  (*(v4 + 8))(v6, v3);
}

- (void)lockupTapGestureRecognized:(id)recognized
{
  if (recognized)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10023AECC();

  sub_10000C8CC(v6, &unk_100923520);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v3, v5);
  sub_100742734();
  sub_10023C914(&qword_10092EB60, 255, &type metadata accessor for AppEventDetailPagePresenter);
  selfCopy = self;
  sub_100748C64();
  (*(v4 + 8))(v7, v3);
  [(AppEventDetailPageViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  return 1;
}

- (_TtC22SubscribePageExtension32AppEventDetailPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end