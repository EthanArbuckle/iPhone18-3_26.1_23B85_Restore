@interface BKAudiobookNowPlayingTouchViewController
- (AEAsset)asset;
- (AEAssetAudiobookStatus)assetStatus;
- (AEAssetViewControllerDelegate)assetViewControllerDelegate;
- (BKAudiobookNowPlayingTouchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKAudiobookNowPlayingTouchViewControllerDelegate)delegate;
- (BOOL)im_firstVisibleChildValidateWithItem:(id)item;
- (BOOL)isPlaying;
- (BOOL)shouldCloseDueToAssetDeletion;
- (CGRect)transitionCoverFrame;
- (Class)transitionControlsViews;
- (_TtC13BookAnalytics9BATracker)trackerForAudiobookAnalytics;
- (id)coverAnimationHostSourceForItem:(id)item;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)transitionContentView;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)coverContentMode;
- (void)assetViewControllerDidOpenAnimated:(BOOL)animated;
- (void)assetViewControllerPrepareForReload;
- (void)assetViewControllerWillUnload;
- (void)bc_analyticsForceEndSession;
- (void)close:(BOOL)close;
- (void)dealloc;
- (void)didPurchaseWithProductProfile:(id)profile completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
- (void)ensureAudiobookNotPlayingWithAssetID:(id)d;
- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l;
- (void)messageViewControllerDidSelectCancel:(id)cancel;
- (void)onAppWillEnterForeground:(id)foreground;
- (void)open:(BOOL)open;
- (void)openToLocation:(id)location animated:(BOOL)animated;
- (void)requestClose:(BOOL)close;
- (void)setAssetViewControllerDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)setDownloadState:(int64_t)state assetState:(signed __int16)assetState progressValue:(float)value;
- (void)setHelper:(id)helper completion:(id)completion;
- (void)setRecommendedTracker:(id)tracker;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BKAudiobookNowPlayingTouchViewController

- (Class)transitionControlsViews
{
  v0.super.isa = sub_1007A25D4().super.isa;

  return v0.super.isa;
}

- (AEAssetViewControllerDelegate)assetViewControllerDelegate
{
  selfCopy = self;
  v3 = AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.getter();

  return v3;
}

- (void)setAssetViewControllerDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.setter();
}

- (BKAudiobookNowPlayingTouchViewControllerDelegate)delegate
{
  selfCopy = self;
  v3 = sub_10026E030();

  return v3;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10026E114();
}

- (BOOL)isPlaying
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_10079B9A4();

  return v5;
}

- (void)setRecommendedTracker:(id)tracker
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker);
  *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker) = tracker;
  trackerCopy = tracker;
}

- (AEAssetAudiobookStatus)assetStatus
{
  assetStatus = [*(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) assetStatus];

  return assetStatus;
}

- (void)dealloc
{
  v2 = *((swift_isaMask & self->super.super.super.isa) + 0x1E0);
  selfCopy = self;
  v2();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  [(BKAudiobookNowPlayingTouchViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v2 = v4.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v4 viewDidLoad];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter addObserver:v2 selector:"onAppWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  sub_10026E9A4();
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v2 = v5.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v5 viewDidLayoutSubviews];
  v3 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_contentOpenAnimator;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4)
  {
    [v4 bookContentDidLoad];
  }

  *&v2[v3] = 0;

  swift_unknownObjectRelease();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v4 = v5.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v5 viewWillAppear:appearCopy];
  [v4 setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v4 = v7.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v7 viewDidAppear:appearCopy];
  ba_effectiveAnalyticsTracker = [v4 ba_effectiveAnalyticsTracker];
  v6 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker];
  *&v4[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker] = ba_effectiveAnalyticsTracker;

  sub_10026F058();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v4 = v6.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v6 viewWillDisappear:disappearCopy];
  v5 = sub_10026E030();
  if (v5)
  {
    [v5 audiobookNowPlayingViewControllerWillDisappear:{v4, v6.receiver, v6.super_class}];
    swift_unknownObjectRelease();
  }
}

- (void)bc_analyticsForceEndSession
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  selfCopy = self;
  [v2 togglePlayPause];
  sub_100797C64();
}

- (void)setHelper:(id)helper completion:(id)completion
{
  v6 = _Block_copy(completion);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    _Block_copy(v6);
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_1003EFF64(helper, v8, v6);
    _Block_release(v6);
    _Block_release(v6);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {

    _Block_release(v6);
  }
}

- (void)ensureAudiobookNotPlayingWithAssetID:(id)d
{
  v4 = sub_1007A2254();
  v6 = v5;
  selfCopy = self;
  sub_10026F8C4(v4, v6);
}

- (void)onAppWillEnterForeground:(id)foreground
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v8 = *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  selfCopy = self;
  [v8 updateFollowingDormantPeriod];
  (*(v5 + 8))(v7, v4);
}

- (BKAudiobookNowPlayingTouchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AEAsset)asset
{
  selfCopy = self;
  v3 = AudiobookNowPlayingTouchViewController.asset.getter();

  return v3;
}

- (void)open:(BOOL)open
{
  selfCopy = self;
  AudiobookNowPlayingTouchViewController.open(_:)(open);
}

- (void)openToLocation:(id)location animated:(BOOL)animated
{
  swift_unknownObjectRetain();
  selfCopy = self;
  AudiobookNowPlayingTouchViewController.open(toLocation:animated:)(location, animated);
  swift_unknownObjectRelease();
}

- (void)close:(BOOL)close
{
  selfCopy = self;
  AudiobookNowPlayingTouchViewController.close(_:)(close);
}

- (void)requestClose:(BOOL)close
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_1002D6C60(close);

    swift_unknownObjectRelease();
  }
}

- (void)assetViewControllerDidOpenAnimated:(BOOL)animated
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_1002D7578();

    swift_unknownObjectRelease();
  }
}

- (void)assetViewControllerWillUnload
{
  selfCopy = self;
  AudiobookNowPlayingTouchViewController.assetViewControllerWillUnload()();
}

- (void)assetViewControllerPrepareForReload
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }
}

- (void)didPurchaseWithProductProfile:(id)profile completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100272878(profile, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (void)setDownloadState:(int64_t)state assetState:(signed __int16)assetState progressValue:(float)value
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_1002CE464(state, assetState, value);

    swift_unknownObjectRelease();
  }
}

- (BOOL)shouldCloseDueToAssetDeletion
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    v4 = sub_1002D6D08();

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)transitionContentView
{
  view = [(BKAudiobookNowPlayingTouchViewController *)self view];

  return view;
}

- (CGRect)transitionCoverFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (int64_t)coverContentMode
{
  selfCopy = self;
  v3 = AudiobookNowPlayingTouchViewController.coverContentMode()();

  return v3;
}

- (_TtC13BookAnalytics9BATracker)trackerForAudiobookAnalytics
{
  ba_effectiveAnalyticsTracker = [(BKAudiobookNowPlayingTouchViewController *)self ba_effectiveAnalyticsTracker];

  return ba_effectiveAnalyticsTracker;
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = sub_1007A2254();
  v11 = v10;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_100272A14(request, v9, v11);
}

- (void)messageViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  AudiobookNowPlayingTouchViewController.messageViewControllerDidSelectCancel(_:)(cancelCopy);
}

- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l
{
  v4 = sub_1007969B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796974();
  (*(v5 + 8))(v7, v4);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  traitCollection = [(BKAudiobookNowPlayingTouchViewController *)selfCopy traitCollection];
  v7 = [(BKAudiobookNowPlayingTouchViewController *)selfCopy adaptivePresentationStyleForPresentationController:controllerCopy traitCollection:traitCollection];

  return v7;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  presentedViewController = [controller presentedViewController];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();

  if (v5)
  {
    return -1;
  }

  else
  {
    return 5;
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v12 = sub_100272FDC(interactionCopy);

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = _s5Books38AudiobookNowPlayingTouchViewControllerC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0(interactionCopy);

  return v9;
}

- (id)coverAnimationHostSourceForItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  result = [(BKAudiobookNowPlayingTouchViewController *)selfCopy view];
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for AudiobookNowPlayingTouchViewControllerCoverSource();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC5Books49AudiobookNowPlayingTouchViewControllerCoverSource_view] = v6;
    v11.receiver = v8;
    v11.super_class = v7;
    v9 = v6;
    v10 = [(BKAudiobookNowPlayingTouchViewController *)&v11 init];

    sub_1000074E0(v12);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)im_firstVisibleChildValidateWithItem:(id)item
{
  if (item)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_10043422C(v8);

  sub_1000230BC(v8);
  return v6;
}

@end