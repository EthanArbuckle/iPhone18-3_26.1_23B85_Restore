@interface NowPlayingControlsViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC12NowPlayingUI32NowPlayingControlsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category;
- (void)setChevronView:(id)view;
- (void)setResponse:(id)response;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation NowPlayingControlsViewController

- (void)setResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  sub_E8244(response);
}

- (void)setChevronView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView) = view;
  viewCopy = view;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_DE3E8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_E40F8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_E42F8(disappear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_E4440(appear);
}

- (void)appExitedWhileAppeared
{
  selfCopy = self;
  sub_14434C();
}

- (void)appEnteredWhileAppeared
{
  selfCopy = self;
  sub_14434C();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(NowPlayingControlsViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_E77C4;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_DC658;
  v11[3] = &block_descriptor_16;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(NowPlayingControlsViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController];
  *&v4[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController] = 0;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_E4888();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_E49C4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_E4C7C(change);
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category
{
  selfCopy = self;
  sub_E3E60();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(NowPlayingControlsViewController *)&v3 viewSafeAreaInsetsDidChange];
  sub_E3E60();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  view = [(NowPlayingControlsViewController *)selfCopy view];
  [beginCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkLayoutGuide) layoutFrame];
  v12.x = v8;
  v12.y = v10;
  LOBYTE(view) = CGRectContainsPoint(v13, v12);

  return view;
}

- (_TtC12NowPlayingUI32NowPlayingControlsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end