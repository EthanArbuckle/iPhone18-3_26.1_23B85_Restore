@interface BKAudiobookNowPlayingFullscreenTouchViewController
- (BOOL)sliderIsProgressSlider:(id)slider;
- (CGRect)alternateAccessibilityFrameFor:(id)for;
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
- (void)ba_setAnalyticsTracker:(id)tracker;
- (void)beginTracking:(id)tracking;
- (void)didTapSessionIndicator:(id)indicator;
- (void)endTracking:(id)tracking;
- (void)fadeOutHUD:(id)d;
- (void)fineScrubSpeedChanged:(id)changed;
- (void)loadView;
- (void)resetPlaybackSpeed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKAudiobookNowPlayingFullscreenTouchViewController

- (void)loadView
{
  selfCopy = self;
  v2 = sub_100274880();
  [(BKAudiobookNowPlayingFullscreenTouchViewController *)selfCopy setView:v2];
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  AudiobookNowPlayingFullscreenTouchViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v6 viewDidAppear:appearCopy];
  v5 = sub_100274880();
  [*&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] setMarqueeEnabled:1 withOptions:{0, v6.receiver, v6.super_class}];
  [*&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView] setMarqueeEnabled:1 withOptions:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(BKAudiobookNowPlayingFullscreenTouchViewController *)&v7 viewDidDisappear:disappearCopy];
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
  selfCopy = self;
  traitCollection = [(BKAudiobookNowPlayingFullscreenTouchViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
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
  selfCopy = self;
  v3 = sub_10041240C();
  AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.getter();
  AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.setter();

  return v3;
}

- (_TtC13BookAnalytics9BATracker)ba_analyticsTracker
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  ba_analyticsTracker = [(BKAudiobookNowPlayingFullscreenTouchViewController *)&v4 ba_analyticsTracker];

  return ba_analyticsTracker;
}

- (void)ba_setAnalyticsTracker:(id)tracker
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  trackerCopy = tracker;
  v5 = v6.receiver;
  [(BKAudiobookNowPlayingFullscreenTouchViewController *)&v6 ba_setAnalyticsTracker:trackerCopy];
  sub_100279D80();
}

- (id)transitionCurrentCoverImage
{
  selfCopy = self;
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  image = [v4 image];

  return image;
}

- (CGRect)transitionCoverFrame
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_100274880();
  v4 = sub_100395DD8();

  return v4;
}

- (id)transitionControlsViews
{
  selfCopy = self;
  AudiobookNowPlayingFullscreenTouchViewController.transitionControlsViews()();

  v3.super.isa = sub_1007A25D4().super.isa;

  return v3.super.isa;
}

- (double)coverCornerRadius
{
  selfCopy = self;

  return 10.0;
}

- (id)transitionCoverImagePlayControl
{
  selfCopy = self;
  v3 = sub_100274880();

  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];
  v5 = v4;

  return v4;
}

- (void)fadeOutHUD:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_100282570();
}

- (void)beginTracking:(id)tracking
{
  trackingCopy = tracking;
  selfCopy = self;
  AudiobookNowPlayingFullscreenTouchViewController.beginTracking(_:)(trackingCopy);
}

- (void)endTracking:(id)tracking
{
  trackingCopy = tracking;
  selfCopy = self;
  _s5Books48AudiobookNowPlayingFullscreenTouchViewControllerC11endTrackingyySo14IMCustomSliderCF_0();
}

- (void)fineScrubSpeedChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  AudiobookNowPlayingFullscreenTouchViewController.fineScrubSpeedChanged(_:)(changedCopy);
}

- (BOOL)sliderIsProgressSlider:(id)slider
{
  sliderCopy = slider;
  selfCopy = self;
  v6 = sub_100274880();

  v7 = *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];
  return v7 == sliderCopy;
}

- (double)playedInterval
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_10079B9A4();

  return v5;
}

- (double)durationOfCurrentChapter
{
  selfCopy = self;
  v3 = AudiobookNowPlayingFullscreenTouchViewController.durationOfCurrentChapter.getter();

  return v3;
}

- (void)didTapSessionIndicator:(id)indicator
{
  indicatorCopy = indicator;
  selfCopy = self;
  AudiobookNowPlayingFullscreenTouchViewController.didTapSessionIndicator(_:)(indicatorCopy);
}

- (id)accessibleDescriptionOfSessionIndicatorPosition
{
  selfCopy = self;
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

- (CGRect)alternateAccessibilityFrameFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = AudiobookNowPlayingFullscreenTouchViewController.alternateAccessibilityFrame(for:)(forCopy);
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
  selfCopy = self;
  [v2 playbackRate];
  if (*&v3 == 1.0)
  {
    v4 = selfCopy;
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