@interface MusicNowPlayingControlsViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (MusicNowPlayingControlsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIControl)contextButton;
- (UIControl)favoriteButton;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)loadView;
- (void)setControlsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setDismissButton:(id)a3;
- (void)setLeftButton:(id)a3;
- (void)setPlayPauseStopButton:(id)a3;
- (void)setReactionButton:(id)a3;
- (void)setRightButton:(id)a3;
- (void)setRouteLabel:(id)a3;
- (void)setTtrSmartTransitionButton:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePlayingItemAudioTraitButton;
- (void)videoOutput:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)videoOutput:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MusicNowPlayingControlsViewController

- (void)dealloc
{
  v2 = qword_10117F2A0;
  v3 = self;
  if (v2 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = *(*off_101183280 + 104);
  v5 = v3;

  v4(v5);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  [(MusicNowPlayingControlsViewController *)&v7 dealloc];
}

- (void)loadView
{
  v2 = self;
  sub_10019D69C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10019D7CC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1001A53F4(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1001A5514(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001A5728(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001A5838(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1001A5AD4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001A5F60(a3);
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_1001A63DC();
}

- (void)setDismissButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton) = a3;
  v3 = a3;
}

- (void)updatePlayingItemAudioTraitButton
{
  v2 = self;
  sub_1001A9244();
}

- (UIControl)contextButton
{
  v2 = self;
  v3 = sub_1001AA510();

  return v3;
}

- (UIControl)favoriteButton
{
  v2 = self;
  v3 = sub_1001AB0B4();

  return v3;
}

- (void)setReactionButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton) = a3;
  v3 = a3;
}

- (void)setTtrSmartTransitionButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton) = a3;
  v3 = a3;
}

- (void)setLeftButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton) = a3;
  v3 = a3;
}

- (void)setPlayPauseStopButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton) = a3;
  v3 = a3;
}

- (void)setRightButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton) = a3;
  v3 = a3;
}

- (void)setRouteLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel) = a3;
  v3 = a3;
}

- (void)setControlsHidden:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1001BB2A0(a3, a4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1001BDB84(v4);

  return self & 1;
}

- (MusicNowPlayingControlsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)videoOutput:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_1001CB3C4(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)videoOutput:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a3;
  v10[4] = sub_1001D17AC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1007E9F28;
  v10[3] = &unk_10109E8B8;
  v8 = _Block_copy(v10);
  swift_unknownObjectRetain_n();
  v9 = self;
  swift_unknownObjectRetain();

  [a4 animateAlongsideTransition:0 completion:v8];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v8);
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001D1494();
}

@end