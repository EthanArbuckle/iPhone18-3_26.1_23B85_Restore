@interface BKAudiobookNowPlayingTouchViewController
- (AEAsset)asset;
- (AEAssetAudiobookStatus)assetStatus;
- (AEAssetViewControllerDelegate)assetViewControllerDelegate;
- (BKAudiobookNowPlayingTouchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKAudiobookNowPlayingTouchViewControllerDelegate)delegate;
- (BOOL)im_firstVisibleChildValidateWithItem:(id)a3;
- (BOOL)isPlaying;
- (BOOL)shouldCloseDueToAssetDeletion;
- (CGRect)transitionCoverFrame;
- (Class)transitionControlsViews;
- (_TtC13BookAnalytics9BATracker)trackerForAudiobookAnalytics;
- (id)coverAnimationHostSourceForItem:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)transitionContentView;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (int64_t)coverContentMode;
- (void)assetViewControllerDidOpenAnimated:(BOOL)a3;
- (void)assetViewControllerPrepareForReload;
- (void)assetViewControllerWillUnload;
- (void)bc_analyticsForceEndSession;
- (void)close:(BOOL)a3;
- (void)dealloc;
- (void)didPurchaseWithProductProfile:(id)a3 completion:(id)a4;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
- (void)ensureAudiobookNotPlayingWithAssetID:(id)a3;
- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4;
- (void)messageViewControllerDidSelectCancel:(id)a3;
- (void)onAppWillEnterForeground:(id)a3;
- (void)open:(BOOL)a3;
- (void)openToLocation:(id)a3 animated:(BOOL)a4;
- (void)requestClose:(BOOL)a3;
- (void)setAssetViewControllerDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDownloadState:(int64_t)a3 assetState:(signed __int16)a4 progressValue:(float)a5;
- (void)setHelper:(id)a3 completion:(id)a4;
- (void)setRecommendedTracker:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BKAudiobookNowPlayingTouchViewController

- (Class)transitionControlsViews
{
  v0.super.isa = sub_1007A25D4().super.isa;

  return v0.super.isa;
}

- (AEAssetViewControllerDelegate)assetViewControllerDelegate
{
  v2 = self;
  v3 = AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.getter();

  return v3;
}

- (void)setAssetViewControllerDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.setter();
}

- (BKAudiobookNowPlayingTouchViewControllerDelegate)delegate
{
  v2 = self;
  v3 = sub_10026E030();

  return v3;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_10026E114();
}

- (BOOL)isPlaying
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_10079B9A4();

  return v5;
}

- (void)setRecommendedTracker:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker);
  *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker) = a3;
  v3 = a3;
}

- (AEAssetAudiobookStatus)assetStatus
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) assetStatus];

  return v2;
}

- (void)dealloc
{
  v2 = *((swift_isaMask & self->super.super.super.isa) + 0x1E0);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  [(BKAudiobookNowPlayingTouchViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v2 = v4.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v4 viewDidLoad];
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v2 selector:"onAppWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v4 = v5.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v5 viewWillAppear:v3];
  [v4 setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v4 = v7.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v7 viewDidAppear:v3];
  v5 = [v4 ba_effectiveAnalyticsTracker];
  v6 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker];
  *&v4[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker] = v5;

  sub_10026F058();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  v4 = v6.receiver;
  [(BKAudiobookNowPlayingTouchViewController *)&v6 viewWillDisappear:v3];
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
  v3 = self;
  [v2 togglePlayPause];
  sub_100797C64();
}

- (void)setHelper:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    _Block_copy(v6);
    swift_unknownObjectRetain();
    v9 = self;
    sub_1003EFF64(a3, v8, v6);
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

- (void)ensureAudiobookNotPlayingWithAssetID:(id)a3
{
  v4 = sub_1007A2254();
  v6 = v5;
  v7 = self;
  sub_10026F8C4(v4, v6);
}

- (void)onAppWillEnterForeground:(id)a3
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v8 = *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  v9 = self;
  [v8 updateFollowingDormantPeriod];
  (*(v5 + 8))(v7, v4);
}

- (BKAudiobookNowPlayingTouchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AEAsset)asset
{
  v2 = self;
  v3 = AudiobookNowPlayingTouchViewController.asset.getter();

  return v3;
}

- (void)open:(BOOL)a3
{
  v4 = self;
  AudiobookNowPlayingTouchViewController.open(_:)(a3);
}

- (void)openToLocation:(id)a3 animated:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  AudiobookNowPlayingTouchViewController.open(toLocation:animated:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)close:(BOOL)a3
{
  v4 = self;
  AudiobookNowPlayingTouchViewController.close(_:)(a3);
}

- (void)requestClose:(BOOL)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = self;
    sub_1002D6C60(a3);

    swift_unknownObjectRelease();
  }
}

- (void)assetViewControllerDidOpenAnimated:(BOOL)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_1002D7578();

    swift_unknownObjectRelease();
  }
}

- (void)assetViewControllerWillUnload
{
  v2 = self;
  AudiobookNowPlayingTouchViewController.assetViewControllerWillUnload()();
}

- (void)assetViewControllerPrepareForReload
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }
}

- (void)didPurchaseWithProductProfile:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  v7 = self;
  sub_100272878(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (void)setDownloadState:(int64_t)a3 assetState:(signed __int16)a4 progressValue:(float)a5
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = self;
    sub_1002CE464(a3, a4, a5);

    swift_unknownObjectRelease();
  }
}

- (BOOL)shouldCloseDueToAssetDeletion
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
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
  v2 = [(BKAudiobookNowPlayingTouchViewController *)self view];

  return v2;
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
  v2 = self;
  v3 = AudiobookNowPlayingTouchViewController.coverContentMode()();

  return v3;
}

- (_TtC13BookAnalytics9BATracker)trackerForAudiobookAnalytics
{
  v2 = [(BKAudiobookNowPlayingTouchViewController *)self ba_effectiveAnalyticsTracker];

  return v2;
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = sub_1007A2254();
  v11 = v10;
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_100272A14(a4, v9, v11);
}

- (void)messageViewControllerDidSelectCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  AudiobookNowPlayingTouchViewController.messageViewControllerDidSelectCancel(_:)(v4);
}

- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4
{
  v4 = sub_1007969B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796974();
  (*(v5 + 8))(v7, v4);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(BKAudiobookNowPlayingTouchViewController *)v5 traitCollection];
  v7 = [(BKAudiobookNowPlayingTouchViewController *)v5 adaptivePresentationStyleForPresentationController:v4 traitCollection:v6];

  return v7;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v4 = [a3 presentedViewController];
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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100272FDC(v8);

  return v12;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s5Books38AudiobookNowPlayingTouchViewControllerC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0(v6);

  return v9;
}

- (id)coverAnimationHostSourceForItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  result = [(BKAudiobookNowPlayingTouchViewController *)v4 view];
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

- (BOOL)im_firstVisibleChildValidateWithItem:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10043422C(v8);

  sub_1000230BC(v8);
  return v6;
}

@end