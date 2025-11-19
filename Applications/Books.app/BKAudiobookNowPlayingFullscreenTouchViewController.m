@interface BKAudiobookNowPlayingFullscreenTouchViewController
- (BOOL)sliderIsProgressSlider:(id)a3;
- (CGRect)alternateAccessibilityFrameFor:(id)a3;
- (CGRect)transitionCoverFrame;
- (_TtC13BookAnalytics9BATracker)ba_analyticsTracker;
- (double)coverCornerRadius;
- (double)durationOfCurrentChapter;
- (double)playedInterval;
- (id)accessibleDescriptionOfSessionIndicatorPosition;
- (id)createMiniViewController;
- (id)transitionBackgroundImageView;
- (id)transitionControlsViews;
- (id)transitionCoverImagePlayControl;
- (id)transitionCurrentCoverImage;
- (unint64_t)supportedInterfaceOrientations;
- (void)ba_setAnalyticsTracker:(id)a3;
- (void)beginTracking:(id)a3;
- (void)didTapSessionIndicator:(id)a3;
- (void)endTracking:(id)a3;
- (void)fadeOutHUD:(id)a3;
- (void)fineScrubSpeedChanged:(id)a3;
- (void)loadView;
- (void)resetPlaybackSpeed;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BKAudiobookNowPlayingFullscreenTouchViewController

- (void)loadView
{
  v3 = self;
  v2 = sub_100274880();
  [(BKAudiobookNowPlayingFullscreenTouchViewController *)v3 setView:v2];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel;
  sub_100274D68();
  sub_100275384(*&v2[v3]);
  sub_100278F14();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  AudiobookNowPlayingFullscreenTouchViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v6 viewDidAppear:v3];
  v5 = sub_100274880();
  [*&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] setMarqueeEnabled:1 withOptions:{0, v6.receiver, v6.super_class}];
  [*&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView] setMarqueeEnabled:1 withOptions:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(BKAudiobookNowPlayingFullscreenTouchViewController *)&v7 viewDidDisappear:v3];
  v5 = sub_100411508();
  if (v5)
  {
    v6 = v5;
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v5);
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(BKAudiobookNowPlayingFullscreenTouchViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3 = sub_100274880();
  [v3 setNeedsLayout];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(BKAudiobookNowPlayingFullscreenTouchViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (id)createMiniViewController
{
  v2 = self;
  v3 = sub_10041240C();
  AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.getter();
  AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.setter();

  return v3;
}

- (_TtC13BookAnalytics9BATracker)ba_analyticsTracker
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(BKAudiobookNowPlayingFullscreenTouchViewController *)&v4 ba_analyticsTracker];

  return v2;
}

- (void)ba_setAnalyticsTracker:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(BKAudiobookNowPlayingFullscreenTouchViewController *)&v6 ba_setAnalyticsTracker:v4];
  sub_100279D80();
}

- (id)transitionCurrentCoverImage
{
  v2 = self;
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  v5 = [v4 image];

  return v5;
}

- (CGRect)transitionCoverFrame
{
  v2 = self;
  v3 = AudiobookNowPlayingFullscreenTouchViewController.transitionCoverFrame()();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)transitionBackgroundImageView
{
  v2 = self;
  v3 = sub_100274880();
  v4 = sub_100395DD8();

  return v4;
}

- (id)transitionControlsViews
{
  v2 = self;
  AudiobookNowPlayingFullscreenTouchViewController.transitionControlsViews()();

  v3.super.isa = sub_1007A25D4().super.isa;

  return v3.super.isa;
}

- (double)coverCornerRadius
{
  v2 = self;

  return 10.0;
}

- (id)transitionCoverImagePlayControl
{
  v2 = self;
  v3 = sub_100274880();

  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];
  v5 = v4;

  return v4;
}

- (void)fadeOutHUD:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100282570();
}

- (void)beginTracking:(id)a3
{
  v4 = a3;
  v5 = self;
  AudiobookNowPlayingFullscreenTouchViewController.beginTracking(_:)(v4);
}

- (void)endTracking:(id)a3
{
  v4 = a3;
  v5 = self;
  _s5Books48AudiobookNowPlayingFullscreenTouchViewControllerC11endTrackingyySo14IMCustomSliderCF_0();
}

- (void)fineScrubSpeedChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  AudiobookNowPlayingFullscreenTouchViewController.fineScrubSpeedChanged(_:)(v4);
}

- (BOOL)sliderIsProgressSlider:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100274880();

  v7 = *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];
  return v7 == v4;
}

- (double)playedInterval
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_10079B9A4();

  return v5;
}

- (double)durationOfCurrentChapter
{
  v2 = self;
  v3 = AudiobookNowPlayingFullscreenTouchViewController.durationOfCurrentChapter.getter();

  return v3;
}

- (void)didTapSessionIndicator:(id)a3
{
  v4 = a3;
  v5 = self;
  AudiobookNowPlayingFullscreenTouchViewController.didTapSessionIndicator(_:)(v4);
}

- (id)accessibleDescriptionOfSessionIndicatorPosition
{
  v2 = self;
  object = AudiobookNowPlayingFullscreenTouchViewController.accessibleDescriptionOfSessionIndicatorPosition()().value._object;

  if (object)
  {
    v4 = sub_1007A2214();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)alternateAccessibilityFrameFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = AudiobookNowPlayingFullscreenTouchViewController.alternateAccessibilityFrame(for:)(v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)resetPlaybackSpeed
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  v6 = self;
  [v2 playbackRate];
  if (*&v3 == 1.0)
  {
    v4 = v6;
  }

  else
  {
    LODWORD(v3) = 1.0;
    [v2 setPlaybackRateTo:v3];
    v5 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    [(BKAudiobookNowPlayingFullscreenTouchViewController *)v5 notificationOccurred:0];

    v4 = v5;
  }
}

@end