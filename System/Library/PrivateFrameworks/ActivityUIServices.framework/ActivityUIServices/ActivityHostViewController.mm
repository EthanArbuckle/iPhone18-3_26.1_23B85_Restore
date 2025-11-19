@interface ActivityHostViewController
- (ACActivityDescriptor)acActivityDescriptor;
- (BLSHBacklightSceneHostEnvironment)backlightHostEnvironment;
- (BOOL)handleHardwareButtonForType:(int64_t)a3;
- (BOOL)idleTimerDisabled;
- (BOOL)shouldShareTouchesWithHost;
- (BOOL)wantsBaseContentTouchEvents;
- (NSArray)activityTouchRestrictedRects;
- (NSArray)audioCategoriesDisablingVolumeHUD;
- (NSString)description;
- (UIColor)backgroundTintColor;
- (UIColor)textColor;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)fallbackMetrics;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)resolvedMetrics;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)systemProvidedMetrics;
- (_TtC18ActivityUIServices23ActivitySceneDescriptor)activitySceneDescriptor;
- (_TtC18ActivityUIServices26ActivityHostViewController)initWithActivitySceneDescriptor:(id)a3 targetBundleIdentifier:(id)a4;
- (_TtC18ActivityUIServices26ActivityHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP18ActivityUIServices34ActivityHostViewControllerDelegate_)delegate;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (void)ensureContentWithTimeout:(double)a3 queue:(id)a4 completion:(id)a5;
- (void)handleHardwareButtonPressForType:(int64_t)a3;
- (void)invalidate;
- (void)requestLaunch;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)sceneDidInvalidate:(id)a3;
- (void)sceneLayerManagerDidStartTrackingLayers:(id)a3;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3;
- (void)sceneLayerManagerDidUpdateLayers:(id)a3;
- (void)setActivitySceneDescriptor:(id)a3;
- (void)setActivityTouchRestrictedRects:(id)a3;
- (void)setAudioCategoriesDisablingVolumeHUD:(id)a3;
- (void)setBackgroundTintColor:(id)a3;
- (void)setIdleTimerDisabled:(BOOL)a3;
- (void)setPresentationMode:(unsigned int)a3;
- (void)setResolvedMetrics:(id)a3;
- (void)setSceneDeactivationReasons:(unint64_t)a3;
- (void)setShouldShareTouchesWithHost:(BOOL)a3;
- (void)setSystemProvidedMetrics:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setWantsBaseContentTouchEvents:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ActivityHostViewController

- (_TtP18ActivityUIServices34ActivityHostViewControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC18ActivityUIServices23ActivitySceneDescriptor)activitySceneDescriptor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActivitySceneDescriptor:(id)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (ACActivityDescriptor)acActivityDescriptor
{
  v3 = sub_18E65F4C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E623B78(0, &qword_1ED764D00, 0x1E6959CC0);
  v8 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  (*(v4 + 16))(v7, *(self + v8) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v3);
  v9 = sub_18E65FAD0();

  return v9;
}

- (void)setPresentationMode:(unsigned int)a3
{
  v4 = self;
  BSDispatchQueueAssertMain();
  sub_18E62CC9C(a3, 0);
}

- (BOOL)wantsBaseContentTouchEvents
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWantsBaseContentTouchEvents:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if (v6 != v3)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = self;
    sub_18E62E8BC(sub_18E63D3D0, v7);
  }
}

- (UIColor)backgroundTintColor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBackgroundTintColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18E62975C(a3);
}

- (UIColor)textColor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18E6297BC(a3);
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)resolvedMetrics
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResolvedMetrics:(id)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  BSDispatchQueueAssertMain();
  sub_18E62EB30();
}

- (BOOL)idleTimerDisabled
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIdleTimerDisabled:(BOOL)a3
{
  v4 = self;
  sub_18E629910(a3);
}

- (NSArray)audioCategoriesDisablingVolumeHUD
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_18E65F990();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAudioCategoriesDisablingVolumeHUD:(id)a3
{
  if (a3)
  {
    v4 = sub_18E65F9A0();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
  v7 = self;

  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController_];
    swift_unknownObjectRelease();
  }
}

- (NSArray)activityTouchRestrictedRects
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for CGRect(0);

  v5 = sub_18E65F990();

  return v5;
}

- (void)setActivityTouchRestrictedRects:(id)a3
{
  type metadata accessor for CGRect(0);
  v4 = sub_18E65F9A0();
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)systemProvidedMetrics
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSystemProvidedMetrics:(id)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)fallbackMetrics
{
  v2 = self;
  v3 = sub_18E629C68();

  return v3;
}

- (_TtC18ActivityUIServices26ActivityHostViewController)initWithActivitySceneDescriptor:(id)a3 targetBundleIdentifier:(id)a4
{
  if (a4)
  {
    v5 = sub_18E65F900();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(a3, v5, v7);
}

- (void)viewDidLoad
{
  v2 = self;
  BSDispatchQueueAssertMain();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ActivityHostViewController();
  [(ActivityHostViewController *)&v3 viewDidLoad];
  sub_18E62FBAC();
  sub_18E62FDC4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18E632100(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ActivityHostViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(ActivityHostViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  v9 = swift_beginAccess();
  if (*(*&v7[v8] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) == 4)
  {
    MEMORY[0x1EEE9AC00](v9);
    v11[16] = v10;
    sub_18E62E8BC(sub_18E63D3CC, v11);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_18E6327E4();
}

- (void)ensureContentWithTimeout:(double)a3 queue:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a4;
  v11 = self;
  sub_18E62A5DC(v10, sub_18E63CA90, v9, a3);
}

- (void)setSceneDeactivationReasons:(unint64_t)a3
{
  v4 = self;
  sub_18E62B3B4(a3);
}

- (BLSHBacklightSceneHostEnvironment)backlightHostEnvironment
{
  v2 = self;
  BSDispatchQueueAssertMain();
  v3 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 backlightSceneHostEnvironment];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)invalidate
{
  v2 = self;
  sub_18E62B574();
}

- (NSString)description
{
  v2 = self;
  sub_18E63391C();

  v3 = sub_18E65F8F0();

  return v3;
}

- (BOOL)shouldShareTouchesWithHost
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldShareTouchesWithHost:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  BSDispatchQueueAssertMain();
  if (*(self + v5) == 1)
  {
    sub_18E62F264();
  }

  else
  {
    sub_18E62FA90();
  }
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  v2 = self;
  sub_18E62B9B4();
  v4 = v3;

  return v4;
}

- (void)requestLaunch
{
  v2 = self;
  sub_18E62BE5C();
}

- (BOOL)handleHardwareButtonForType:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_18E62C0E8(a3);

  return a3 & 1;
}

- (void)handleHardwareButtonPressForType:(int64_t)a3
{
  v4 = self;
  sub_18E62C0E8(a3);
}

- (_TtC18ActivityUIServices26ActivityHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  _s18ActivityUIServices0A18HostViewControllerC16sceneDidActivateyySo7FBSceneCF_0();
}

- (void)sceneDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  _s18ActivityUIServices0A18HostViewControllerC18sceneDidInvalidateyySo7FBSceneCF_0();
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  ActivityHostViewController.sceneDidDeactivate(_:withError:)(v6, a4);
}

- (void)sceneContentStateDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  ActivityHostViewController.sceneContentStateDidChange(_:)(v4);
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
  sub_18E63B6CC();
  v6 = sub_18E65FA00();
  v7 = a3;
  v8 = self;
  ActivityHostViewController.scene(_:didReceive:)(v7, v6);
}

- (void)sceneLayerManagerDidUpdateLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E63BF80(sub_18E62F264, "[%{public}s] sceneLayerManagerDidUpdateLayers");
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E63BF80(sub_18E62FA90, "[%{public}s] sceneLayerManagerDidStopTrackingLayers");
}

- (void)sceneLayerManagerDidStartTrackingLayers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E63BF80(sub_18E62F264, "[%{public}s] sceneLayerManagerDidStartTrackingLayers");
}

@end