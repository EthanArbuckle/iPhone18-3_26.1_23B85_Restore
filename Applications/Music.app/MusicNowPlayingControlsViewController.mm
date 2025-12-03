@interface MusicNowPlayingControlsViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (MusicNowPlayingControlsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIControl)contextButton;
- (UIControl)favoriteButton;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)loadView;
- (void)setControlsHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setDismissButton:(id)button;
- (void)setLeftButton:(id)button;
- (void)setPlayPauseStopButton:(id)button;
- (void)setReactionButton:(id)button;
- (void)setRightButton:(id)button;
- (void)setRouteLabel:(id)label;
- (void)setTtrSmartTransitionButton:(id)button;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePlayingItemAudioTraitButton;
- (void)videoOutput:(id)output willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)videoOutput:(id)output willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MusicNowPlayingControlsViewController

- (void)dealloc
{
  v2 = qword_10117F2A0;
  selfCopy = self;
  if (v2 != -1)
  {
    v6 = selfCopy;
    swift_once();
    selfCopy = v6;
  }

  v4 = *(*off_101183280 + 104);
  v5 = selfCopy;

  v4(v5);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  [(MusicNowPlayingControlsViewController *)&v7 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  sub_10019D69C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10019D7CC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001A53F4(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001A5514(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1001A5728(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1001A5838(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1001A5AD4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1001A5F60(change);
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_1001A63DC();
}

- (void)setDismissButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton) = button;
  buttonCopy = button;
}

- (void)updatePlayingItemAudioTraitButton
{
  selfCopy = self;
  sub_1001A9244();
}

- (UIControl)contextButton
{
  selfCopy = self;
  v3 = sub_1001AA510();

  return v3;
}

- (UIControl)favoriteButton
{
  selfCopy = self;
  v3 = sub_1001AB0B4();

  return v3;
}

- (void)setReactionButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton) = button;
  buttonCopy = button;
}

- (void)setTtrSmartTransitionButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton) = button;
  buttonCopy = button;
}

- (void)setLeftButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton) = button;
  buttonCopy = button;
}

- (void)setPlayPauseStopButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton) = button;
  buttonCopy = button;
}

- (void)setRightButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton) = button;
  buttonCopy = button;
}

- (void)setRouteLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel) = label;
  labelCopy = label;
}

- (void)setControlsHidden:(BOOL)hidden animated:(BOOL)animated
{
  selfCopy = self;
  sub_1001BB2A0(hidden, animated);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1001BDB84(beginCopy);

  return self & 1;
}

- (MusicNowPlayingControlsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)videoOutput:(id)output willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001CB3C4(output, coordinator);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)videoOutput:(id)output willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = output;
  v10[4] = sub_1001D17AC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1007E9F28;
  v10[3] = &unk_10109E8B8;
  v8 = _Block_copy(v10);
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRetain();

  [coordinator animateAlongsideTransition:0 completion:v8];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v8);
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  selfCopy = self;
  sub_1001D1494();
}

@end