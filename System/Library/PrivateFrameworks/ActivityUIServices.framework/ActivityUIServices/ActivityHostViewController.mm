@interface ActivityHostViewController
- (ACActivityDescriptor)acActivityDescriptor;
- (BLSHBacklightSceneHostEnvironment)backlightHostEnvironment;
- (BOOL)handleHardwareButtonForType:(int64_t)type;
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
- (_TtC18ActivityUIServices26ActivityHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices26ActivityHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP18ActivityUIServices34ActivityHostViewControllerDelegate_)delegate;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (void)ensureContentWithTimeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)handleHardwareButtonPressForType:(int64_t)type;
- (void)invalidate;
- (void)requestLaunch;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sceneLayerManagerDidStartTrackingLayers:(id)layers;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers;
- (void)sceneLayerManagerDidUpdateLayers:(id)layers;
- (void)setActivitySceneDescriptor:(id)descriptor;
- (void)setActivityTouchRestrictedRects:(id)rects;
- (void)setAudioCategoriesDisablingVolumeHUD:(id)d;
- (void)setBackgroundTintColor:(id)color;
- (void)setIdleTimerDisabled:(BOOL)disabled;
- (void)setPresentationMode:(unsigned int)mode;
- (void)setResolvedMetrics:(id)metrics;
- (void)setSceneDeactivationReasons:(unint64_t)reasons;
- (void)setShouldShareTouchesWithHost:(BOOL)host;
- (void)setSystemProvidedMetrics:(id)metrics;
- (void)setTextColor:(id)color;
- (void)setWantsBaseContentTouchEvents:(BOOL)events;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)setActivitySceneDescriptor:(id)descriptor
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = descriptor;
  descriptorCopy = descriptor;
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

- (void)setPresentationMode:(unsigned int)mode
{
  selfCopy = self;
  BSDispatchQueueAssertMain();
  sub_18E62CC9C(mode, 0);
}

- (BOOL)wantsBaseContentTouchEvents
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWantsBaseContentTouchEvents:(BOOL)events
{
  eventsCopy = events;
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = eventsCopy;
  if (v6 != eventsCopy)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    selfCopy = self;
    sub_18E62E8BC(sub_18E63D3D0, v7);
  }
}

- (UIColor)backgroundTintColor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBackgroundTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_18E62975C(color);
}

- (UIColor)textColor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_18E6297BC(color);
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)resolvedMetrics
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResolvedMetrics:(id)metrics
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = metrics;
  metricsCopy = metrics;
  selfCopy = self;

  BSDispatchQueueAssertMain();
  sub_18E62EB30();
}

- (BOOL)idleTimerDisabled
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIdleTimerDisabled:(BOOL)disabled
{
  selfCopy = self;
  sub_18E629910(disabled);
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

- (void)setAudioCategoriesDisablingVolumeHUD:(id)d
{
  if (d)
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
  selfCopy = self;

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

- (void)setActivityTouchRestrictedRects:(id)rects
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

- (void)setSystemProvidedMetrics:(id)metrics
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = metrics;
  metricsCopy = metrics;
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)fallbackMetrics
{
  selfCopy = self;
  v3 = sub_18E629C68();

  return v3;
}

- (_TtC18ActivityUIServices26ActivityHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v5 = sub_18E65F900();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(descriptor, v5, v7);
}

- (void)viewDidLoad
{
  selfCopy = self;
  BSDispatchQueueAssertMain();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ActivityHostViewController();
  [(ActivityHostViewController *)&v3 viewDidLoad];
  sub_18E62FBAC();
  sub_18E62FDC4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_18E632100(change);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ActivityHostViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(ActivityHostViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
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
  selfCopy = self;
  sub_18E6327E4();
}

- (void)ensureContentWithTimeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  queueCopy = queue;
  selfCopy = self;
  sub_18E62A5DC(queueCopy, sub_18E63CA90, v9, timeout);
}

- (void)setSceneDeactivationReasons:(unint64_t)reasons
{
  selfCopy = self;
  sub_18E62B3B4(reasons);
}

- (BLSHBacklightSceneHostEnvironment)backlightHostEnvironment
{
  selfCopy = self;
  BSDispatchQueueAssertMain();
  v3 = *(selfCopy + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v3)
  {
    v4 = v3;
    backlightSceneHostEnvironment = [v4 backlightSceneHostEnvironment];
  }

  else
  {
    backlightSceneHostEnvironment = 0;
  }

  return backlightSceneHostEnvironment;
}

- (void)invalidate
{
  selfCopy = self;
  sub_18E62B574();
}

- (NSString)description
{
  selfCopy = self;
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

- (void)setShouldShareTouchesWithHost:(BOOL)host
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  *(self + v5) = host;
  selfCopy = self;
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
  selfCopy = self;
  sub_18E62B9B4();
  v4 = v3;

  return v4;
}

- (void)requestLaunch
{
  selfCopy = self;
  sub_18E62BE5C();
}

- (BOOL)handleHardwareButtonForType:(int64_t)type
{
  selfCopy = self;
  LOBYTE(type) = sub_18E62C0E8(type);

  return type & 1;
}

- (void)handleHardwareButtonPressForType:(int64_t)type
{
  selfCopy = self;
  sub_18E62C0E8(type);
}

- (_TtC18ActivityUIServices26ActivityHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  _s18ActivityUIServices0A18HostViewControllerC16sceneDidActivateyySo7FBSceneCF_0();
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  _s18ActivityUIServices0A18HostViewControllerC18sceneDidInvalidateyySo7FBSceneCF_0();
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  ActivityHostViewController.sceneDidDeactivate(_:withError:)(deactivateCopy, error);
}

- (void)sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  ActivityHostViewController.sceneContentStateDidChange(_:)(changeCopy);
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
  sub_18E63B6CC();
  v6 = sub_18E65FA00();
  sceneCopy = scene;
  selfCopy = self;
  ActivityHostViewController.scene(_:didReceive:)(sceneCopy, v6);
}

- (void)sceneLayerManagerDidUpdateLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  sub_18E63BF80(sub_18E62F264, "[%{public}s] sceneLayerManagerDidUpdateLayers");
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  sub_18E63BF80(sub_18E62FA90, "[%{public}s] sceneLayerManagerDidStopTrackingLayers");
}

- (void)sceneLayerManagerDidStartTrackingLayers:(id)layers
{
  layersCopy = layers;
  selfCopy = self;
  sub_18E63BF80(sub_18E62F264, "[%{public}s] sceneLayerManagerDidStartTrackingLayers");
}

@end