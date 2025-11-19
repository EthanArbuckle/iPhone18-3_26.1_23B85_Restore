@interface MusicNowPlayingLyricsViewController
- (MusicNowPlayingLyricsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)contentScrollView;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)setCardHeight:(double)a3;
- (void)setNowPlaying:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MusicNowPlayingLyricsViewController

- (void)setNowPlaying:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying) = a3;
  v5 = a3;
  v6 = self;

  sub_10029948C();
}

- (void)setCardHeight:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight) = a3;
  v3 = self;
  sub_10029AB40();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedMonitor];
  [v5 unregisterObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for NowPlayingLyricsViewController();
  [(MusicNowPlayingLyricsViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10029B2D8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for NowPlayingLyricsViewController();
  v13.receiver = self;
  v13.super_class = v8;
  v9 = self;
  [(MusicNowPlayingLyricsViewController *)&v13 viewDidAppear:v3];
  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_10006B010(v7, v9 + v11, &qword_101188C20);
  swift_endAccess();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NowPlayingLyricsViewController();
  v4 = v7.receiver;
  [(MusicNowPlayingLyricsViewController *)&v7 viewDidDisappear:v3];
  sub_1002AAA18();
  v5 = *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  v6 = v5;
  sub_1002AAC80(v5);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingLyricsViewController();
  v2 = v3.receiver;
  [(MusicNowPlayingLyricsViewController *)&v3 viewDidLayoutSubviews];
  sub_10029F54C();
}

- (id)contentScrollView
{
  v2 = self;
  v3 = sub_1002AB634();

  return v3;
}

- (MusicNowPlayingLyricsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1002AB6F8(v5, v7, a4);
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002ABF44(v4);
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1002ACB38();

  return v12;
}

@end