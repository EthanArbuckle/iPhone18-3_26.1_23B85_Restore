@interface NowPlayingControlsViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC12NowPlayingUI32NowPlayingControlsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)a3;
- (void)setChevronView:(id)a3;
- (void)setResponse:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NowPlayingControlsViewController

- (void)setResponse:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_E8244(a3);
}

- (void)setChevronView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_DE3E8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_E40F8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_E42F8(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_E4440(a3);
}

- (void)appExitedWhileAppeared
{
  v2 = self;
  sub_14434C();
}

- (void)appEnteredWhileAppeared
{
  v2 = self;
  sub_14434C();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(NowPlayingControlsViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
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

  [a4 animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(NowPlayingControlsViewController *)&v6 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController];
  *&v4[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController] = 0;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_E4888();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_E49C4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_E4C7C(a3);
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)a3
{
  v3 = self;
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(NowPlayingControlsViewController *)v5 view];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  [*(&v5->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkLayoutGuide) layoutFrame];
  v12.x = v8;
  v12.y = v10;
  LOBYTE(v6) = CGRectContainsPoint(v13, v12);

  return v6;
}

- (_TtC12NowPlayingUI32NowPlayingControlsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end