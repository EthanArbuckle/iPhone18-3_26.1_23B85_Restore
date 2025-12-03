@interface ChromeViewController
+ (id)localizedLocationAuthorizationMessage;
+ (id)localizedLocationAuthorizationTitle;
- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect;
- (BOOL)_shouldEnableNavigationDisplayForContextStack:(id)stack requestingContext:(id *)context;
- (BOOL)_shouldSaveLastViewportChangeDateInDefaults;
- (BOOL)hasDeferredAction:(id)action forContext:(id)context;
- (BOOL)hasDuplicatesOfContext:(id)context;
- (BOOL)isCurrentContext:(id)context;
- (BOOL)isRunningNavigationDisplay;
- (BOOL)isTopContext:(id)context;
- (BOOL)isTransitioning;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (BOOL)shouldForceExploreMap;
- (BOOL)transitionFromViewController:(id)controller fromContext:(id)context toViewController:(id)viewController toContext:(id)toContext withAnimation:(id)animation dismissing:(BOOL)dismissing;
- (CGRect)unobscuredMapContentBoundsInContainingView;
- (ChromeContext)topContext;
- (ChromeViewController)init;
- (CustomPOIsController)customPOIsController;
- (GEOMapServiceTraits)currentTraits;
- (GEOMapServiceTraits)navigationAwareTraits;
- (MapCameraController)mapCameraController;
- (MapSelectionManager)mapSelectionManager;
- (PersonalizedItemManager)personalizedItemManager;
- (RouteAnnotationsController)routeAnnotationsController;
- (SearchPinsManager)searchPinsManager;
- (UIEdgeInsets)labelEdgeInsets;
- (UIEdgeInsets)labelEdgeWidths;
- (UIEdgeInsets)mapAttributionInsets;
- (UIEdgeInsets)mapEdgeInsetsForContext:(id)context;
- (UserLocationView)userLocationView;
- (id)_contextCoordinatedScheduler;
- (id)acquireExploreMapHikingMapToken;
- (id)acquireHikingMapToken;
- (id)allComponents;
- (id)createMapReplacementView;
- (id)createMapView;
- (id)defaultFullscreenViewControllerDismissalTransition;
- (id)defaultFullscreenViewControllerPresentationTransition;
- (id)fullscreenViewControllerTransitionFromController:(id)controller toController:(id)toController isDismissTransition:(BOOL)transition;
- (id)lastMapViewportChangedDate;
- (id)mapReplacementColor;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)mapViewDelegate;
- (id)mapViewDelegateForSelector:(SEL)selector;
- (id)mapViewEnteredForegroundDate;
- (id)personalizedItemSourcesForCurrentState;
- (id)presentInterruptionOfKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler;
- (id)uniqueIdentifierForContext:(id)context;
- (unint64_t)contextMapInsetsEdgesRespectingSafeAreaInsets:(id)insets;
- (unint64_t)desiredRadarScreenshotTypes;
- (unint64_t)preferredUpdateTimingForComponent:(id)component;
- (void)_addWatermarkView;
- (void)_checkHikingCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_fillNewTraitsWithMapViewRelatedData:(id)data;
- (void)_freezeMapInsetsLayoutGuideIfPermitted:(BOOL)permitted;
- (void)_getContextsLeaving:(id *)leaving entering:(id *)entering fromPrevious:(id)previous incoming:(id)incoming;
- (void)_installMapReplacementView:(id)view;
- (void)_refreshMapInsetsConstraintsForContext:(id)context animated:(BOOL)animated updateIfNeeded:(BOOL)needed;
- (void)_removeMapReplacementViewIfNeeded;
- (void)_removeWatermarkView;
- (void)_scheduleComponentUpdateTimerIfNeeded;
- (void)_setContexts:(id)contexts animated:(BOOL)animated completion:(id)completion;
- (void)_setInactive:(BOOL)inactive;
- (void)_setLocalizedStringsForMapView:(id)view;
- (void)_setSuppressed:(BOOL)suppressed;
- (void)_setupNavigationDisplayForContext:(id)context withAnimation:(id)animation;
- (void)_suppress;
- (void)_teardownContextTransition:(id)transition;
- (void)_teardownNavigationDisplayWithAnimation:(id)animation;
- (void)_transitionToFullscreenViewController:(id)controller forContext:(id)context previousIsLeaving:(BOOL)leaving withAnimation:(id)animation;
- (void)_unsuppress;
- (void)_updateComponentsIfNeeded:(BOOL)needed forceImmediateUpdate:(BOOL)update forTiming:(unint64_t)timing withAnimation:(id)animation;
- (void)_updateConstraintsWithContainer:(id)container layoutGuide:(id)guide safeAreaEdges:(unint64_t)edges flexible:(BOOL)flexible;
- (void)_updateDebugLayoutGuidesView;
- (void)_updateFullscreenViewControllerWithAnimation:(id)animation;
- (void)_updateMapEdgeInsetsForContext:(id)context withAnimation:(id)animation;
- (void)_updateMapLabelInsetsWithAnimation:(id)animation;
- (void)_updateNavigationDisplayWithTiming:(unint64_t)timing animation:(id)animation;
- (void)_updatePersonalizedItemSourcesForContext:(id)context withAnimation:(id)animation;
- (void)_updateRouteAnnotationsWithAnimation:(id)animation;
- (void)addContextStackObserver:(id)observer;
- (void)cancelDeferredAction:(id)action forContext:(id)context;
- (void)checkIfCoordinate:(CLLocationCoordinate2D)coordinate isInHikingContextualRegionWithCompletionHandler:(id)handler;
- (void)clearMapGesturesAndAnimations;
- (void)commitCoordinatedContextChange;
- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)deactivationReasonsDidChange;
- (void)dealloc;
- (void)decrementForToken:(id)token;
- (void)evictMapView;
- (void)forwardInvocation:(id)invocation;
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (void)incrementForToken:(id)token;
- (void)installMapReplacementView:(id)view;
- (void)installMapView:(id)view;
- (void)loadMapViewIfNeeded;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)popContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)popContextAnimated:(BOOL)animated completion:(id)completion;
- (void)popToContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)popToRootContextAnimated:(BOOL)animated completion:(id)completion;
- (void)prepareMapViewForFirstUse;
- (void)prepareToRemoveMapView:(id)view;
- (void)pushContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)registerAdditionalMapViewDelegate:(id)delegate;
- (void)registerFramesInDebugFramesView:(id)view;
- (void)removeContextStackObserver:(id)observer;
- (void)removeMapReplacementView:(id)view;
- (void)removeMapViewFromViewHierarchy;
- (void)resetForcedExploreModernMapFlag;
- (void)restoreMapInViewHierarchy;
- (void)scheduleCoordinatedContextChange:(id)change completionHandler:(id)handler;
- (void)setContexts:(id)contexts animated:(BOOL)animated completion:(id)completion;
- (void)setFallbackContextCoordinationBlock:(id)block;
- (void)setLabelEdgeInsets:(UIEdgeInsets)insets;
- (void)setLabelEdgeWidths:(UIEdgeInsets)widths;
- (void)setMapEdgeInsets:(UIEdgeInsets)insets animated:(BOOL)animated forContext:(id)context;
- (void)setNeedsUpdateComponent:(id)component animated:(BOOL)animated completion:(id)completion;
- (void)setSuppressed:(BOOL)suppressed;
- (void)setVKApplicationUILayout:(int64_t)layout;
- (void)unregisterAdditionalMapViewDelegate:(id)delegate;
- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation;
- (void)updateComponentsIfNeeded:(BOOL)needed;
- (void)updateFramesInDebugFramesView:(id)view;
- (void)updateHikingMapConfiguration;
- (void)updateOverlayContentConstraints;
- (void)updateViewportConstraints;
- (void)userDefaultsDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)whenContextNextBecomesCurrent:(id)current performAction:(id)action withBlock:(id)block;
@end

@implementation ChromeViewController

- (ChromeViewController)init
{
  v30.receiver = self;
  v30.super_class = ChromeViewController;
  v2 = [(ChromeViewController *)&v30 initWithNibName:0 bundle:0];
  if (!v2)
  {
    return v2;
  }

  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Initializing", buf, 0xCu);
  }

  v10 = [[MapsTokenStorage alloc] initWithDelegate:v2 tokenGroupName:@"ChromeDeactivation" callbackQueue:&_dispatch_main_q];
  deactivationTokens = v2->_deactivationTokens;
  v2->_deactivationTokens = v10;

  v12 = [[MapsTokenStorage alloc] initWithDelegate:v2 tokenGroupName:@"ChromeHiking" callbackQueue:&_dispatch_main_q];
  hikingMapTokens = v2->_hikingMapTokens;
  v2->_hikingMapTokens = v12;

  v14 = +[NSMapTable strongToStrongObjectsMapTable];
  hikingCoordinateChecks = v2->_hikingCoordinateChecks;
  v2->_hikingCoordinateChecks = v14;

  v16 = [[MapsTokenStorage alloc] initWithDelegate:v2 tokenGroupName:@"ChromeMapInsetPropagationSuspension" callbackQueue:&_dispatch_main_q];
  mapInsetPropagationSuspensionTokens = v2->_mapInsetPropagationSuspensionTokens;
  v2->_mapInsetPropagationSuspensionTokens = v16;

  v18 = objc_alloc_init(NSMutableArray);
  contexts = v2->_contexts;
  v2->_contexts = v18;

  if ([objc_opt_class() requiresUniqueContextIdentifiers])
  {
    v20 = +[NSMapTable strongToWeakObjectsMapTable];
    contextsByUniqueIdentifier = v2->_contextsByUniqueIdentifier;
    v2->_contextsByUniqueIdentifier = v20;
  }

  v22 = +[NSUserDefaults standardUserDefaults];
  v23 = [v22 BOOLForKey:@"__internal_MapsDebugForceChromeMapViewInactive"];

  if (v23)
  {
    v24 = [(ChromeViewController *)v2 acquireChromeDeactivationTokenForReason:@"forced"];
    debugForceDeactivationToken = v2->_debugForceDeactivationToken;
    v2->_debugForceDeactivationToken = v24;
  }

  v26 = +[NSUserDefaults standardUserDefaults];
  v2->_debugLayoutGuides = [v26 BOOLForKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

  v27 = +[NSNotificationCenter defaultCenter];
  [v27 addObserver:v2 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:0];
  v28 = +[MapsRadarController sharedInstance];
  [v28 addAttachmentProvider:v2];

  return v2;
}

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = ChromeViewController;
  [(ChromeViewController *)&v54 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(ChromeViewController *)self view];
  [view setBackgroundColor:v3];

  if ([(ChromeViewController *)self shouldAutomaticallyLoadMapView])
  {
    [(ChromeViewController *)self loadMapViewIfNeeded];
  }

  if ([(ChromeViewController *)self isInactive])
  {
    [(ChromeViewController *)self _setInactive:self->_inactive];
  }

  v5 = objc_alloc_init(NSMutableArray);
  viewportLayoutGuideConstraints = self->_viewportLayoutGuideConstraints;
  self->_viewportLayoutGuideConstraints = v5;

  v7 = objc_alloc_init(UILayoutGuide);
  viewportLayoutGuide = self->_viewportLayoutGuide;
  self->_viewportLayoutGuide = v7;

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [NSString stringWithFormat:@"%@.viewportLayoutGuide", v10];
  [(UILayoutGuide *)self->_viewportLayoutGuide setIdentifier:v11];

  view2 = [(ChromeViewController *)self view];
  [view2 addLayoutGuide:self->_viewportLayoutGuide];

  [(ChromeViewController *)self updateViewportConstraints];
  view3 = [(ChromeViewController *)self view];
  v14 = [view3 _maps_flexibleLayoutGuideInsideEdges:15];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"%@.mapInsetsLayoutGuide", v16];
  [v14 setIdentifier:v17];

  objc_storeStrong(&self->_mapInsetsLayoutGuide, v14);
  v18 = [PassThroughView alloc];
  view4 = [(ChromeViewController *)self view];
  [view4 bounds];
  v20 = [(PassThroughView *)v18 initWithFrame:?];

  [(PassThroughView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [NSString stringWithFormat:@"%@.Viewport", v22];
  [(PassThroughView *)v20 setAccessibilityIdentifier:v23];

  view5 = [(ChromeViewController *)self view];
  [view5 addSubview:v20];

  objc_storeStrong(&self->_viewport, v20);
  v25 = objc_alloc_init(NSMutableArray);
  LODWORD(v26) = 1148846080;
  v27 = [(PassThroughView *)v20 _maps_constraintsEqualToEdgesOfLayoutGuide:self->_viewportLayoutGuide priority:v26];
  allConstraints = [v27 allConstraints];
  [v25 addObjectsFromArray:allConstraints];

  view6 = [(ChromeViewController *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
  LODWORD(v31) = 1112276992;
  v32 = [v14 _maps_constraintsEqualToEdgesOfLayoutGuide:safeAreaLayoutGuide priority:v31];
  safeAreaMapEdgeInsetsConstraints = self->_safeAreaMapEdgeInsetsConstraints;
  self->_safeAreaMapEdgeInsetsConstraints = v32;

  [NSLayoutConstraint activateConstraints:v25];
  [(ChromeViewController *)self _addWatermarkView];
  v34 = objc_alloc_init(ChromeOverlayController);
  overlayController = self->_overlayController;
  self->_overlayController = v34;

  overlayController = [(ChromeViewController *)self overlayController];
  [overlayController setDelegate:self];

  v37 = objc_alloc_init(NSMutableArray);
  overlayContentLayoutGuideConstraints = self->_overlayContentLayoutGuideConstraints;
  self->_overlayContentLayoutGuideConstraints = v37;

  v39 = objc_alloc_init(UILayoutGuide);
  overlayContentLayoutGuide = self->_overlayContentLayoutGuide;
  self->_overlayContentLayoutGuide = v39;

  view7 = [(ChromeViewController *)self view];
  [view7 addLayoutGuide:self->_overlayContentLayoutGuide];

  [(ChromeViewController *)self updateOverlayContentConstraints];
  if (![(ChromeViewController *)self isSuppressed])
  {
    overlayController2 = [(ChromeViewController *)self overlayController];
    view8 = [(ChromeViewController *)self view];
    v44 = self->_overlayContentLayoutGuide;
    mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
    viewportLayoutGuide = [(ChromeViewController *)self viewportLayoutGuide];
    [overlayController2 installInView:view8 containingViewController:self contentLayoutGuide:v44 mapInsetsLayoutGuide:mapInsetsLayoutGuide viewportLayoutGuide:viewportLayoutGuide];
  }

  objc_initWeak(&location, self);
  v47 = +[NSNotificationCenter defaultCenter];
  v48 = +[NSOperationQueue mainQueue];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10001DD38;
  v51[3] = &unk_10165FBE8;
  objc_copyWeak(&v52, &location);
  v49 = [v47 addObserverForName:UISceneWillEnterForegroundNotification object:0 queue:v48 usingBlock:v51];
  sceneForegroundingNotificationToken = self->_sceneForegroundingNotificationToken;
  self->_sceneForegroundingNotificationToken = v49;

  self->_usesFadingLabels = GEOConfigGetBOOL();
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

- (ChromeContext)topContext
{
  contexts = [(ChromeViewController *)self contexts];
  lastObject = [contexts lastObject];

  return lastObject;
}

- (MapCameraController)mapCameraController
{
  if (!self->_mapCameraController)
  {
    mapView = [(ChromeViewController *)self mapView];

    if (mapView)
    {
      v4 = sub_10000B11C();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        v11 = [MapCameraController alloc];
        mapView2 = [(ChromeViewController *)self mapView];
        v13 = [(MapCameraController *)v11 initWithMapView:mapView2];
        mapCameraController = self->_mapCameraController;
        self->_mapCameraController = v13;

        [(SearchPinsManager *)self->_searchPinsManager setMapCameraController:self->_mapCameraController];
        goto LABEL_11;
      }

      selfCopy = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      if (objc_opt_respondsToSelector())
      {
        v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
        v9 = v8;
        if (v8 && ![v8 isEqualToString:v7])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

          goto LABEL_9;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

      *buf = 138543362;
      v18 = selfCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating mapCameraController", buf, 0xCu);

      goto LABEL_10;
    }
  }

LABEL_11:
  v15 = self->_mapCameraController;

  return v15;
}

- (void)prepareMapViewForFirstUse
{
  if (!self->_mapView)
  {
    return;
  }

  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543362;
    v34 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Preparing map view for first use", buf, 0xCu);
  }

  [(MKMapView *)self->_mapView _setShowsVenues:1];
  [(MKMapView *)self->_mapView _setLoadLookAroundAvailability:1];
  [(ChromeViewController *)self _setLocalizedStringsForMapView:self->_mapView];
  [(MKMapView *)self->_mapView setBackdropViewQualityChangingDisabled:1];
  [(MKMapView *)self->_mapView _setInactive:self->_inactive];
  [(MKMapView *)self->_mapView _setAllowsPopoverWhenNotInWindow:1];
  preferredConfiguration = [(MKMapView *)self->_mapView preferredConfiguration];
  if ([preferredConfiguration conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
  {
    v11 = preferredConfiguration;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setShowsHiking:1];
  v13 = +[NSUserDefaults __maps_groupUserDefaults];
  v14 = [v13 objectForKey:@"MapsLastActivityCamera"];

  if (v14 || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v15 = objc_claimAutoreleasedReturnValue(), [v15 objectForKey:@"__internal__LastActivityCamera"], v14 = objc_claimAutoreleasedReturnValue(), v15, v14))
  {
    v16 = [[GEOURLCamera alloc] initWithData:v14];
    mapCamera = [v16 mapCamera];
    if (_GEOConfigHasValue())
    {
      GEOConfigGetDouble();
      [mapCamera setPitch:?];
    }

    [mapCamera centerCoordinate];
    if (fabs(v19) <= 180.0 && v18 >= -90.0 && v18 <= 90.0)
    {
      [(MKMapView *)self->_mapView setCamera:mapCamera];
      if (_GEOConfigHasValue())
      {
        mapView = self->_mapView;
        [(MKMapView *)mapView centerCoordinate];
        v22 = v21;
        v24 = v23;
        GEOConfigGetDouble();
        [(MKMapView *)mapView setCenterCoordinate:0 zoomLevel:v22 animated:v24, v25 + 2.0];
      }
    }
  }

  view = [(ChromeViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    v29 = +[NSDate date];
    mapViewEnteredForegroundDate = self->_mapViewEnteredForegroundDate;
    self->_mapViewEnteredForegroundDate = v29;
  }

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 postNotificationName:@"ChromeViewControllerDidLoadMapViewNotification" object:self];

  v32 = +[GEOOfflineService shared];
  [v32 registerMapView:self->_mapView withPriority:0.0];
}

- (void)_addWatermarkView
{
  v3 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall)
  {
    watermarkView = self->_watermarkView;
    if (!watermarkView)
    {
      v6 = [[WatermarkView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v7 = self->_watermarkView;
      self->_watermarkView = v6;

      [(WatermarkView *)self->_watermarkView setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [NSString stringWithFormat:@"%@.watermark", v9];
      [(WatermarkView *)self->_watermarkView setAccessibilityIdentifier:v10];

      watermarkView = self->_watermarkView;
    }

    superview = [(WatermarkView *)watermarkView superview];
    view = [(ChromeViewController *)self view];

    if (superview != view)
    {
      view2 = [(ChromeViewController *)self view];
      [view2 addSubview:self->_watermarkView];

      v14 = self->_watermarkView;
      view3 = [(ChromeViewController *)self view];
      LODWORD(v15) = 1148846080;
      v16 = [(WatermarkView *)v14 _maps_constraintsEqualToEdgesOfView:view3 priority:v15];
      allConstraints = [v16 allConstraints];
      [NSLayoutConstraint activateConstraints:allConstraints];
    }
  }
}

- (void)loadMapViewIfNeeded
{
  if (self->_mapView || [(ChromeViewController *)self isSuppressed])
  {
    return;
  }

  createMapView = [(ChromeViewController *)self createMapView];
  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

    _mapLayer = [createMapView _mapLayer];
    *buf = 138543874;
    v16 = selfCopy;
    v17 = 2114;
    v18 = createMapView;
    v19 = 2114;
    v20 = _mapLayer;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] loadMapViewIfNeeded, mapView: %{public}@, mapLayer: %{public}@", buf, 0x20u);
  }

  v12 = [(ChromeDelegateProxy *)[ChromeMapViewDelegateProxy alloc] initWithChromeViewController:self];
  mapViewDelegateProxy = self->_mapViewDelegateProxy;
  self->_mapViewDelegateProxy = v12;

  [createMapView setDelegate:self->_mapViewDelegateProxy];
  objc_storeStrong(&self->_mapView, createMapView);
  if (createMapView)
  {
    [(MapCameraController *)self->_mapCameraController setMapView:createMapView];
    mapCameraController = [(ChromeViewController *)self mapCameraController];
    [(SearchPinsManager *)self->_searchPinsManager setMapCameraController:mapCameraController];

    [(CustomPOIsController *)self->_customPOIsController setMapView:createMapView];
  }

  [(ChromeViewController *)self prepareMapViewForFirstUse];
  if (![(ChromeViewController *)self isInactive]|| ![(ChromeViewController *)self removesMapViewWhenInactive])
  {
    [(ChromeViewController *)self installMapView:createMapView];
  }
}

- (id)createMapView
{
  v3 = [MKMapView alloc];
  view = [(ChromeViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  BOOL = GEOConfigGetBOOL();
  v14 = [v3 _initWithFrame:0 gestureRecognizerHostView:BOOL showsAttribution:GEOConfigGetBOOL() showsAppleLogo:1 allowsAntialiasing:0 carDisplayType:{v6, v8, v10, v12}];

  return v14;
}

- (id)mapViewDelegate
{
  topContext = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    mapViewDelegate = [topContext mapViewDelegate];
    v4 = mapViewDelegate;
    if (mapViewDelegate)
    {
      v5 = mapViewDelegate;

      topContext = v5;
    }
  }

  if ((sub_100010C34(topContext, &OBJC_PROTOCOL___MKMapViewDelegate) & 1) != 0 || sub_100010C34(topContext, &OBJC_PROTOCOL___MKMapViewDelegatePrivate))
  {
    v6 = topContext;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UserLocationView)userLocationView
{
  userLocationView = self->_userLocationView;
  if (!userLocationView)
  {
    v4 = [objc_alloc(objc_msgSend(objc_opt_class() "userLocationViewClass"))];
    v5 = self->_userLocationView;
    self->_userLocationView = v4;

    userLocationView = self->_userLocationView;
  }

  return userLocationView;
}

- (SearchPinsManager)searchPinsManager
{
  searchPinsManager = self->_searchPinsManager;
  if (searchPinsManager)
  {
    goto LABEL_11;
  }

  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

    *buf = 138543362;
    v20 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating searchPinsManager", buf, 0xCu);
  }

  v11 = [SearchPinsManager alloc];
  mapCameraController = [(ChromeViewController *)self mapCameraController];
  v13 = [(SearchPinsManager *)v11 initWithMapViewCameraController:mapCameraController];
  v14 = self->_searchPinsManager;
  self->_searchPinsManager = v13;

  mapSelectionManager = [(ChromeViewController *)self mapSelectionManager];
  [(SearchPinsManager *)self->_searchPinsManager setMapSelectionManager:mapSelectionManager];

  customPOIsController = [(ChromeViewController *)self customPOIsController];
  [(SearchPinsManager *)self->_searchPinsManager setCustomPOIsController:customPOIsController];

  v17 = objc_opt_respondsToSelector();
  searchPinsManager = self->_searchPinsManager;
  if (v17)
  {
    [(SearchPinsManager *)searchPinsManager setDelegate:self];
    searchPinsManager = self->_searchPinsManager;
  }

LABEL_11:

  return searchPinsManager;
}

- (MapSelectionManager)mapSelectionManager
{
  mapSelectionManager = self->_mapSelectionManager;
  if (!mapSelectionManager)
  {
    v4 = sub_10000B11C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v11 = [MapSelectionManager alloc];
      mapCameraController = [(ChromeViewController *)self mapCameraController];
      v13 = [(MapSelectionManager *)v11 initWithCameraController:mapCameraController];
      v14 = self->_mapSelectionManager;
      self->_mapSelectionManager = v13;

      v15 = [[ChromeMapSelectionHandler alloc] initWithChromeViewController:self];
      mapSelectionHandler = self->_mapSelectionHandler;
      self->_mapSelectionHandler = v15;

      [(MapSelectionManager *)self->_mapSelectionManager setDelegate:self->_mapSelectionHandler];
      customPOIsController = [(ChromeViewController *)self customPOIsController];
      [(MapSelectionManager *)self->_mapSelectionManager setCustomPOIsController:customPOIsController];

      mapSelectionManager = self->_mapSelectionManager;
      goto LABEL_10;
    }

    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

    *buf = 138543362;
    v20 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating mapSelectionManager", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:

  return mapSelectionManager;
}

- (CustomPOIsController)customPOIsController
{
  if (self->_customPOIsController)
  {
    goto LABEL_13;
  }

  mapView = [(ChromeViewController *)self mapView];

  if (!mapView)
  {
    goto LABEL_13;
  }

  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

    *buf = 138543362;
    v23 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating customPOIsController", buf, 0xCu);
  }

  v11 = objc_alloc_init(CustomPOIsController);
  customPOIsController = self->_customPOIsController;
  self->_customPOIsController = v11;

  traitCollection = [(ChromeViewController *)self traitCollection];
  -[CustomPOIsController setAllowSingleSearchResult:](self->_customPOIsController, "setAllowSingleSearchResult:", [traitCollection userInterfaceIdiom] == 3);

  mapView2 = [(ChromeViewController *)self mapView];
  [(CustomPOIsController *)self->_customPOIsController setMapView:mapView2];

  personalizedItemManager = self->_personalizedItemManager;
  if (personalizedItemManager)
  {
    [(PersonalizedItemManager *)personalizedItemManager addObserver:self->_customPOIsController];
    v16 = self->_customPOIsController;
    v17 = self->_personalizedItemManager;
    allItems = [(PersonalizedItemManager *)v17 allItems];
    itemGroups = [(PersonalizedItemManager *)self->_personalizedItemManager itemGroups];
    [(CustomPOIsController *)v16 personalizedItemManager:v17 didChangeItems:allItems itemGroups:itemGroups];
  }

  [(SearchPinsManager *)self->_searchPinsManager setCustomPOIsController:self->_customPOIsController];
  [(MapSelectionManager *)self->_mapSelectionManager setCustomPOIsController:self->_customPOIsController];
LABEL_13:
  v20 = self->_customPOIsController;

  return v20;
}

- (id)_contextCoordinatedScheduler
{
  contextCoordinatedScheduler = self->_contextCoordinatedScheduler;
  if (!contextCoordinatedScheduler)
  {
    v4 = [[ChromeContextCoordinationScheduler alloc] initWithChromeViewController:self];
    v5 = self->_contextCoordinatedScheduler;
    self->_contextCoordinatedScheduler = v4;

    contextCoordinatedScheduler = self->_contextCoordinatedScheduler;
  }

  return contextCoordinatedScheduler;
}

- (void)_scheduleComponentUpdateTimerIfNeeded
{
  if (!self->_scheduledComponentUpdateTimer)
  {
    v3 = sub_10000B11C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      v10 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateComponentsIfNeeded" selector:0 userInfo:0 repeats:0.1];
      scheduledComponentUpdateTimer = self->_scheduledComponentUpdateTimer;
      self->_scheduledComponentUpdateTimer = v10;

      return;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2048;
    v15 = 0x3FB999999999999ALL;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Scheduling coalesced component update in %#.1lfs", buf, 0x16u);

    goto LABEL_9;
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ChromeViewController;
  [(ChromeViewController *)&v8 viewDidLayoutSubviews];
  [(ChromeViewController *)self _updateDebugLayoutGuidesView];
  view = [(ChromeViewController *)self view];
  [view bringSubviewToFront:self->_watermarkView];

  view2 = [(ChromeViewController *)self view];
  [view2 bounds];
  v10 = CGRectIntegral(v9);
  width = v10.size.width;
  height = v10.size.height;

  if (self->_lastLayoutSize.width != width || self->_lastLayoutSize.height != height)
  {
    self->_lastLayoutSize.width = width;
    self->_lastLayoutSize.height = height;
    [(ChromeViewController *)self setNeedsUpdateMapInsets];
  }
}

- (void)_updateDebugLayoutGuidesView
{
  if (![(ChromeViewController *)self isViewLoaded])
  {
    return;
  }

  if (!+[NSThread isMainThread])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E51E84;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    return;
  }

  debugLayoutGuidesView = self->_debugLayoutGuidesView;
  if (self->_debugLayoutGuides)
  {
    if (!debugLayoutGuidesView)
    {
      v4 = [DebugFramesView alloc];
      view = [(ChromeViewController *)self view];
      [view bounds];
      v6 = [(DebugFramesView *)v4 initWithFrame:?];

      [(DebugFramesView *)v6 setAutoresizingMask:18];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [NSString stringWithFormat:@"%@.debugFramesView", v8];
      [(DebugFramesView *)v6 setAccessibilityIdentifier:v9];

      view2 = [(ChromeViewController *)self view];
      [view2 addSubview:v6];

      v11 = self->_debugLayoutGuidesView;
      self->_debugLayoutGuidesView = v6;
      v12 = v6;

      [(ChromeViewController *)self registerFramesInDebugFramesView:v12];
      debugLayoutGuidesView = self->_debugLayoutGuidesView;
    }

    [(ChromeViewController *)self updateFramesInDebugFramesView:debugLayoutGuidesView];
    view3 = [(ChromeViewController *)self view];
    [view3 bringSubviewToFront:self->_debugLayoutGuidesView];

    v14 = self->_debugLayoutGuidesView;
    goto LABEL_14;
  }

  if (!debugLayoutGuidesView)
  {
    v14 = 0;
LABEL_14:

    [(DebugFramesView *)v14 setNeedsDisplay];
    return;
  }

  [(DebugFramesView *)self->_debugLayoutGuidesView removeFromSuperview];
  v15 = self->_debugLayoutGuidesView;
  self->_debugLayoutGuidesView = 0;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect
{
  x = self->_visibleMapRect.origin.x;
  y = self->_visibleMapRect.origin.y;
  width = self->_visibleMapRect.size.width;
  height = self->_visibleMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (BOOL)isTransitioning
{
  currentContextTransition = self->_currentContextTransition;
  if (currentContextTransition)
  {
    LOBYTE(currentContextTransition) = [(ChromeContextTransition *)currentContextTransition hasStarted];
  }

  return currentContextTransition;
}

- (PersonalizedItemManager)personalizedItemManager
{
  personalizedItemManager = self->_personalizedItemManager;
  if (personalizedItemManager)
  {
    goto LABEL_12;
  }

  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

    *buf = 138543362;
    v19 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating personalizedItemManager", buf, 0xCu);
  }

  customPOIsController = [(ChromeViewController *)self customPOIsController];
  v12 = objc_alloc_init(PersonalizedItemManager);
  v13 = self->_personalizedItemManager;
  self->_personalizedItemManager = v12;

  if (customPOIsController)
  {
    [(PersonalizedItemManager *)self->_personalizedItemManager addObserver:customPOIsController];
    v14 = self->_personalizedItemManager;
    allItems = [(PersonalizedItemManager *)v14 allItems];
    itemGroups = [(PersonalizedItemManager *)self->_personalizedItemManager itemGroups];
    [customPOIsController personalizedItemManager:v14 didChangeItems:allItems itemGroups:itemGroups];
  }

  personalizedItemManager = self->_personalizedItemManager;
LABEL_12:

  return personalizedItemManager;
}

- (id)allComponents
{
  v4[0] = @"mapInsets";
  v4[1] = @"labelInsetsAndWidths";
  v4[2] = @"personalizedItemSources";
  v4[3] = @"navigationDisplay";
  v4[4] = @"routeAnnotations";
  v4[5] = @"fullscreenViewController";
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (BOOL)isRunningNavigationDisplay
{
  navigationDisplay = [(ChromeViewController *)self navigationDisplay];
  v3 = navigationDisplay != 0;

  return v3;
}

- (RouteAnnotationsController)routeAnnotationsController
{
  if (!self->_routeAnnotationsController)
  {
    mapView = [(ChromeViewController *)self mapView];

    if (mapView)
    {
      v4 = sub_10000B11C();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        v11 = objc_alloc_init(RouteAnnotationsController);
        routeAnnotationsController = self->_routeAnnotationsController;
        self->_routeAnnotationsController = v11;

        mapView2 = [(ChromeViewController *)self mapView];
        [(RouteAnnotationsController *)self->_routeAnnotationsController setMapView:mapView2];

        goto LABEL_11;
      }

      selfCopy = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      if (objc_opt_respondsToSelector())
      {
        v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
        v9 = v8;
        if (v8 && ![v8 isEqualToString:v7])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

          goto LABEL_9;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

      *buf = 138543362;
      v17 = selfCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating routeAnnotationsController", buf, 0xCu);

      goto LABEL_10;
    }
  }

LABEL_11:
  v14 = self->_routeAnnotationsController;

  return v14;
}

- (id)personalizedItemSourcesForCurrentState
{
  nextTopContext = [(ChromeViewController *)self nextTopContext];
  v4 = nextTopContext;
  if (nextTopContext)
  {
    topContext = nextTopContext;
  }

  else
  {
    topContext = [(ChromeViewController *)self topContext];
  }

  v6 = topContext;

  if (objc_opt_respondsToSelector())
  {
    personalizedItemSources = [v6 personalizedItemSources];
  }

  else
  {
    personalizedItemSources = &__NSArray0__struct;
  }

  return personalizedItemSources;
}

- (id)mapViewEnteredForegroundDate
{
  mapViewEnteredForegroundDate = self->_mapViewEnteredForegroundDate;
  if (!mapViewEnteredForegroundDate)
  {
    v4 = sub_10000EAD0();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      mapViewEnteredForegroundDate = self->_mapViewEnteredForegroundDate;
      goto LABEL_10;
    }

    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

    *buf = 138543362;
    v13 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] mapViewEnteredForegroundDate is nil when requested", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:

  return mapViewEnteredForegroundDate;
}

- (id)lastMapViewportChangedDate
{
  lastViewportChangeDate = self->_lastViewportChangeDate;
  if (!lastViewportChangeDate)
  {
    v4 = sub_10000EAD0();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      v11 = +[NSDate date];
      v12 = self->_lastViewportChangeDate;
      self->_lastViewportChangeDate = v11;

      lastViewportChangeDate = self->_lastViewportChangeDate;
      goto LABEL_10;
    }

    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

    *buf = 138543362;
    v15 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] lastViewportChangeDate is nil. Setting current date for now.", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:

  return lastViewportChangeDate;
}

- (void)_removeMapReplacementViewIfNeeded
{
  if (self->_mapReplacementView)
  {
    v3 = sub_10000B11C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      [(ChromeViewController *)self removeMapReplacementView:self->_mapReplacementView];
      mapReplacementView = self->_mapReplacementView;
      self->_mapReplacementView = 0;

      return;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    v10 = self->_mapReplacementView;
    mapView = selfCopy->_mapView;
    *buf = 138543874;
    v14 = selfCopy;
    v15 = 2048;
    v16 = v10;
    v17 = 2048;
    v18 = mapView;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] _removeMapReplacementViewIfNeeded %p (current _mapView: %p)", buf, 0x20u);

    goto LABEL_9;
  }
}

- (UIEdgeInsets)mapAttributionInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)unobscuredMapContentBoundsInContainingView
{
  mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
  [mapInsetsLayoutGuide layoutFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)deactivationReasonsDidChange
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"ChromeViewControllerDidChangeDeactivationReasonsNotification" object:self];
}

- (id)presentInterruptionOfKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v10 = sub_100CD25CC();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_8:

LABEL_10:
  if ((kind - 1) > 0x16)
  {
    v17 = @"kMapsInterruptionNone";
  }

  else
  {
    v17 = off_1016507E0[kind - 1];
  }

  *buf = 138543618;
  v52 = selfCopy;
  v53 = 2112;
  v54 = v17;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting interruption of kind: %@", buf, 0x16u);

LABEL_14:
  topContext = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v19 = topContext;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(__CFString *)v20 canPresentInterruptionOfKind:kind])
  {
    if ([(ChromeViewController *)self conformsToProtocol:&OBJC_PROTOCOL___InterruptionManagerProtocol])
    {
      selfCopy2 = self;
      v29 = sub_100CD25CC();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_48:

        interruptionManager = [(ChromeViewController *)selfCopy2 interruptionManager];
        v43 = [interruptionManager presentUnhandledInterruptionOfKind:kind userInfo:infoCopy completionHandler:handlerCopy];

        goto LABEL_57;
      }

      v30 = selfCopy2;
      v49 = infoCopy;
      if (!v30)
      {
        v35 = @"<nil>";
        goto LABEL_47;
      }

      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      if (objc_opt_respondsToSelector())
      {
        v33 = [(ChromeViewController *)v30 performSelector:"accessibilityIdentifier"];
        v34 = v33;
        if (v33 && ![v33 isEqualToString:v32])
        {
          v35 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];

          goto LABEL_35;
        }
      }

      v35 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
LABEL_35:

LABEL_47:
      interruptionManager2 = [(ChromeViewController *)v30 interruptionManager];
      *buf = 138543618;
      v52 = v35;
      v53 = 2112;
      v54 = interruptionManager2;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Asking interruption manager %@ to present the interruption", buf, 0x16u);

      infoCopy = v49;
      goto LABEL_48;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v43 = 0;
      goto LABEL_57;
    }

    v36 = sub_100CD25CC();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
LABEL_55:

      v46 = [(ChromeViewController *)self presentUnhandledInterruptionOfKind:kind userInfo:infoCopy completionHandler:handlerCopy];
      goto LABEL_56;
    }

    selfCopy3 = self;
    v50 = infoCopy;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_54;
    }

    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    if (objc_opt_respondsToSelector())
    {
      v40 = [(ChromeViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v41 = v40;
      if (v40 && ![v40 isEqualToString:v39])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v39, selfCopy3, v41];

        goto LABEL_44;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v39, selfCopy3];
LABEL_44:

LABEL_54:
    *buf = 138543362;
    v52 = selfCopy3;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling the interruption ourselves", buf, 0xCu);

    infoCopy = v50;
    goto LABEL_55;
  }

  v21 = sub_100CD25CC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy4 = self;
    if (!selfCopy4)
    {
      selfCopy4 = @"<nil>";
      goto LABEL_51;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v48 = infoCopy;
      v25 = [(ChromeViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v24, selfCopy4, v26];

        infoCopy = v48;
        goto LABEL_26;
      }

      infoCopy = v48;
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v24, selfCopy4];
LABEL_26:

LABEL_51:
    *buf = 138543618;
    v52 = selfCopy4;
    v53 = 2112;
    v54 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Asking context %@ to present the interruption", buf, 0x16u);
  }

  v46 = [(__CFString *)v20 presentInterruptionOfKind:kind userInfo:infoCopy completionHandler:handlerCopy];
LABEL_56:
  v43 = v46;
LABEL_57:

  return v43;
}

+ (id)localizedLocationAuthorizationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Allow '%@' to use your location?" value:@"localized string not found" table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v6 = [NSString stringWithFormat:v3, v5];

  return v6;
}

+ (id)localizedLocationAuthorizationMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"NSLocationWhenInUseUsageDescription"];

  return v3;
}

- (BOOL)transitionFromViewController:(id)controller fromContext:(id)context toViewController:(id)viewController toContext:(id)toContext withAnimation:(id)animation dismissing:(BOOL)dismissing
{
  dismissingCopy = dismissing;
  controllerCopy = controller;
  contextCopy = context;
  viewControllerCopy = viewController;
  toContextCopy = toContext;
  animationCopy = animation;
  if (animationCopy)
  {
    v19 = controllerCopy;
    v20 = viewControllerCopy;
    if (v19 | v20)
    {
      v21 = v20;
      v22 = [v19 isEqual:v20];

      if ((v22 & 1) == 0)
      {
        v45 = dismissingCopy;
        v47 = controllerCopy;
        v53 = contextCopy;
        viewControllerForFullscreenTransitions = [(ChromeViewController *)self viewControllerForFullscreenTransitions];
        view = [viewControllerForFullscreenTransitions view];
        view2 = [v21 view];
        view3 = [v19 view];
        v28 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
        [v28 _setIsAnimated:{objc_msgSend(animationCopy, "isAnimated")}];
        [v28 _setContainerView:view];
        [v28 _setFromViewController:v19];
        v48 = view3;
        [v28 _setFromView:view3];
        [view bounds];
        [v28 _setFromStartFrame:?];
        [view bounds];
        [v28 _setFromEndFrame:?];
        [v28 _setToViewController:v21];
        v49 = view2;
        [v28 _setToView:view2];
        [view bounds];
        [v28 _setToStartFrame:?];
        v50 = view;
        [view bounds];
        [v28 _setToEndFrame:?];
        v52 = toContextCopy;
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([toContextCopy fullscreenViewControllerPresentationTransition], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v53 fullscreenViewControllerDismissalTransition], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v29 = [(ChromeViewController *)self fullscreenViewControllerTransitionFromController:v19 toController:v21 isDismissTransition:v45];
          }
        }

        v30 = v29;
        [v29 transitionDuration:v28];
        [v28 _setDuration:?];
        [v28 _setAnimator:v30];
        selfCopy = self;
        if (!selfCopy)
        {
          selfCopy = @"<nil>";
          goto LABEL_19;
        }

        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        if (objc_opt_respondsToSelector())
        {
          v34 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
          v35 = v34;
          if (v34 && ![v34 isEqualToString:v33])
          {
            selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v33, selfCopy, v35];

            goto LABEL_17;
          }
        }

        selfCopy = [NSString stringWithFormat:@"%@<%p>", v33, selfCopy];
LABEL_17:

LABEL_19:
        v37 = [NSString stringWithFormat:@"%@: waiting for chrome full-screen view controller transition to complete", selfCopy];
        v38 = [animationCopy addCompletionWaitBlockWithReason:v37];

        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100D743A8;
        v54[3] = &unk_1016530A8;
        v54[4] = selfCopy;
        v55 = v21;
        toContextCopy = v52;
        v56 = v52;
        v57 = viewControllerForFullscreenTransitions;
        v58 = v49;
        v59 = v50;
        v60 = v19;
        v61 = v48;
        v62 = v28;
        v63 = v30;
        v64 = v38;
        v46 = v30;
        v44 = v28;
        v39 = v38;
        v40 = v48;
        v41 = v50;
        v42 = v49;
        v43 = viewControllerForFullscreenTransitions;
        [animationCopy addPreparation:v54 animations:0 completion:0];

        v23 = 1;
        contextCopy = v53;
        controllerCopy = v47;
        goto LABEL_5;
      }
    }
  }

  v23 = 0;
LABEL_5:

  return v23;
}

- (UIEdgeInsets)labelEdgeWidths
{
  top = self->_labelEdgeWidths.top;
  left = self->_labelEdgeWidths.left;
  bottom = self->_labelEdgeWidths.bottom;
  right = self->_labelEdgeWidths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)labelEdgeInsets
{
  top = self->_labelEdgeInsets.top;
  left = self->_labelEdgeInsets.left;
  bottom = self->_labelEdgeInsets.bottom;
  right = self->_labelEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  if (!completionCopy)
  {
    v52 = sub_10006D178();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v59 = "[ChromeViewController generateAttachmentsForRadarDraft:withCompletion:]";
      v60 = 2080;
      v61 = "ChromeViewController.m";
      v62 = 1024;
      v63 = 2966;
      v64 = 2080;
      v65 = "completion != nil";
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v53 = sub_10006D178();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v59 = v54;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v47 = sub_10006D178();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = dispatch_queue_get_label(&_dispatch_main_q);
        v49 = dispatch_queue_get_label(0);
        *buf = 136316418;
        v59 = "[ChromeViewController generateAttachmentsForRadarDraft:withCompletion:]";
        v60 = 2080;
        v61 = "ChromeViewController.m";
        v62 = 1024;
        v63 = 2967;
        v64 = 2080;
        v65 = "dispatch_get_main_queue()";
        v66 = 2080;
        v67 = v48;
        v68 = 2080;
        v69 = v49;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v50 = sub_10006D178();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v59 = v51;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  viewIfLoaded = [(ChromeViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    v22 = sub_10000B11C();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_55;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_46;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v31, selfCopy, v33];

        goto LABEL_27;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v31, selfCopy];
LABEL_27:

LABEL_46:
    *buf = 138543362;
    v59 = selfCopy;
    v46 = "[%{public}@] View is not loaded yet; not generating radar attachments";
LABEL_54:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, v46, buf, 0xCu);

    goto LABEL_55;
  }

  view = [(ChromeViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (!windowScene)
  {
    v22 = sub_10000B11C();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_55;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy = @"<nil>";
      goto LABEL_51;
    }

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v36, selfCopy2, v38];

        goto LABEL_35;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v36, selfCopy2];
LABEL_35:

LABEL_51:
    *buf = 138543362;
    v59 = selfCopy;
    v46 = "[%{public}@] No window scene; not generating radar attachments";
    goto LABEL_54;
  }

  view2 = [(ChromeViewController *)self view];
  window2 = [view2 window];
  windowScene2 = [window2 windowScene];
  if ([windowScene2 activationState])
  {
    view3 = [(ChromeViewController *)self view];
    window3 = [view3 window];
    windowScene3 = [window3 windowScene];
    activationState = [windowScene3 activationState];

    if (activationState != 1)
    {
      v22 = sub_10000B11C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        selfCopy3 = self;
        if (!selfCopy3)
        {
          selfCopy = @"<nil>";
          goto LABEL_53;
        }

        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        if (objc_opt_respondsToSelector())
        {
          v26 = [(ChromeViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
          v27 = v26;
          if (v26 && ![v26 isEqualToString:v25])
          {
            selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v25, selfCopy3, v27];

            goto LABEL_19;
          }
        }

        selfCopy = [NSString stringWithFormat:@"%@<%p>", v25, selfCopy3];
LABEL_19:

LABEL_53:
        *buf = 138543362;
        v59 = selfCopy;
        v46 = "[%{public}@] Activation state is not foreground; not generating radar attachments";
        goto LABEL_54;
      }

LABEL_55:

      completionCopy[2](completionCopy);
      goto LABEL_56;
    }
  }

  else
  {
  }

  v39 = sub_10000B11C();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    selfCopy4 = self;
    if (!selfCopy4)
    {
      selfCopy4 = @"<nil>";
      goto LABEL_48;
    }

    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    if (objc_opt_respondsToSelector())
    {
      v43 = [(ChromeViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v44 = v43;
      if (v43 && ![v43 isEqualToString:v42])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v42, selfCopy4, v44];

        goto LABEL_44;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v42, selfCopy4];
LABEL_44:

LABEL_48:
    *buf = 138543362;
    v59 = selfCopy4;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "[%{public}@] Start generating radar attachments", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E3EB58;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v56 = draftCopy;
  v57 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);

LABEL_56:
}

- (unint64_t)desiredRadarScreenshotTypes
{
  if ([(ChromeViewController *)self isRunningNavigationDisplay])
  {
    return 23;
  }

  else
  {
    return 7;
  }
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  v4 = [(ChromeViewController *)self mapSelectionManager:view];
  [v4 mapDidSelectAnnotationView:0];
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  mapSelectionManager = [(ChromeViewController *)self mapSelectionManager];
  [mapSelectionManager mapDidSelectAnnotationView:annotationViewCopy];
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  v4 = [(ChromeViewController *)self mapSelectionManager:view];
  [v4 mapDidSelectLabelMarker:0];
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  mapSelectionManager = [(ChromeViewController *)self mapSelectionManager];
  [mapSelectionManager mapDidSelectLabelMarker:markerCopy];
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  mapSelectionManager = [(ChromeViewController *)self mapSelectionManager];
  v7 = [mapSelectionManager mapShouldSelectLabelMarker:markerCopy];

  return v7;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  userLocation = [viewCopy userLocation];

  if (userLocation == annotationCopy)
  {
    userLocationView = [(ChromeViewController *)self userLocationView];
  }

  else
  {
    v10 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
    userLocationView = [v10 mapView:viewCopy viewForAnnotation:annotationCopy];
  }

  return userLocationView;
}

- (BOOL)_shouldSaveLastViewportChangeDateInDefaults
{
  searchContextDefaultsKeysPrefix = [(ChromeViewController *)self searchContextDefaultsKeysPrefix];
  v3 = [searchContextDefaultsKeysPrefix length] != 0;

  return v3;
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if (qword_10195D5F8 != -1)
  {
    dispatch_once(&qword_10195D5F8, &stru_101629820);
  }

  v7 = qword_10195D5F0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
LABEL_12:

      v14 = selfCopy;
      v15 = viewCopy;
      if (!v15)
      {
        v20 = @"<nil>";
        goto LABEL_20;
      }

      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      if (objc_opt_respondsToSelector())
      {
        v18 = [v15 performSelector:"accessibilityIdentifier"];
        v19 = v18;
        if (v18 && ![v18 isEqualToString:v17])
        {
          v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

          goto LABEL_18;
        }
      }

      v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_18:

LABEL_20:
      v21 = @"NO";
      if (animatedCopy)
      {
        v21 = @"YES";
      }

      v22 = v21;
      *buf = 138543874;
      v90 = v14;
      v91 = 2112;
      v92 = v20;
      v93 = 2112;
      v94 = v22;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] mapView: (%@) regionDidChangeAnimated: (%@)", buf, 0x20u);

      goto LABEL_23;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_10:

    goto LABEL_12;
  }

LABEL_23:

  if (!self->_lastViewportChangeDate)
  {
    v70 = +[NSDate date];
    v71 = sub_10000EAD0();
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }

    selfCopy2 = self;
    v83 = objc_opt_class();
    v84 = NSStringFromClass(v83);
    if (objc_opt_respondsToSelector())
    {
      v85 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v86 = v85;
      if (v85 && ![v85 isEqualToString:v84])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v84, selfCopy2, v86];

        goto LABEL_55;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v84, selfCopy2];
LABEL_55:

    *buf = 138543618;
    v90 = selfCopy2;
    v91 = 2112;
    v92 = v70;
    v79 = "[%{public}@] No value found for lastViewportChangeDate in mapView:regionDidChangeAnimated. This will only happen once as all other changes would happen in mapViewDidStartUserInteraction. Setting lastViewportChangeDate to %@. ";
    v80 = v71;
    v81 = 22;
    goto LABEL_56;
  }

  [viewCopy visibleMapRect];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(ChromeViewController *)self visibleMapRect];
  if (v24 != v34 || v26 != v31 || v28 != v32 || v30 != v33)
  {
    v42 = sub_10000EAD0();
    v43 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_42;
    }

    selfCopy3 = self;
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    if (objc_opt_respondsToSelector())
    {
      v47 = [(ChromeViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v48 = v47;
      if (v47 && ![v47 isEqualToString:v46])
      {
        v49 = viewCopy;
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v46, selfCopy3, v48];

        goto LABEL_41;
      }
    }

    v49 = viewCopy;
    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v46, selfCopy3];
LABEL_41:
    v87 = selfCopy3;

    v88 = selfCopy3;
    [(ChromeViewController *)selfCopy3 visibleMapRect];
    v52 = v51;
    v54 = v53;
    v57 = [NSString stringWithFormat:@"{%.1f, %.1f}", v55, v56];
    v58 = [NSString stringWithFormat:@"{%.1f, %.1f}", v52, v54];
    v59 = [NSString stringWithFormat:@"{%@, %@}", v57, v58];

    v60 = v59;
    [v49 visibleMapRect];
    v62 = v61;
    v64 = v63;
    v67 = [NSString stringWithFormat:@"{%.1f, %.1f}", v65, v66];
    v68 = [NSString stringWithFormat:@"{%.1f, %.1f}", v62, v64];
    v69 = [NSString stringWithFormat:@"{%@, %@}", v67, v68];

    v43 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
    *buf = 138543874;
    v90 = v87;
    v91 = 2112;
    v92 = v59;
    v93 = 2112;
    v94 = v69;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "[%{public}@] Got a new region (%@ -> %@)", buf, 0x20u);

    viewCopy = v49;
LABEL_42:

    [viewCopy visibleMapRect];
    [(ChromeViewController *)self setVisibleMapRect:?];
    v70 = +[NSDate date];
    v71 = sub_10000EAD0();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      selfCopy4 = self;
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      if (objc_opt_respondsToSelector())
      {
        v75 = [(ChromeViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
        v76 = v75;
        if (v75 && ![v75 isEqualToString:v74])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v74, selfCopy4, v76];

          goto LABEL_48;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v74, selfCopy4];
LABEL_48:

      lastViewportChangeDate = self->_lastViewportChangeDate;
      *buf = *(v43 + 200);
      v90 = selfCopy2;
      v91 = 2112;
      v92 = lastViewportChangeDate;
      v93 = 2112;
      v94 = v70;
      v79 = "[%{public}@] Changing the view port last change date (%@ -> %@)";
      v80 = v71;
      v81 = 32;
LABEL_56:
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEBUG, v79, buf, v81);
    }

LABEL_57:

    p_super = &self->_lastViewportChangeDate->super;
    self->_lastViewportChangeDate = v70;
    goto LABEL_58;
  }

  p_super = sub_10000EAD0();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
  {
    selfCopy5 = self;
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    if (objc_opt_respondsToSelector())
    {
      v39 = [(ChromeViewController *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v40 = v39;
      if (v39 && ![v39 isEqualToString:v38])
      {
        selfCopy5 = [NSString stringWithFormat:@"%@<%p, %@>", v38, selfCopy5, v40];

        goto LABEL_34;
      }
    }

    selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v38, selfCopy5];
LABEL_34:

    *buf = 138543362;
    v90 = selfCopy5;
    _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEBUG, "[%{public}@] Requested region is equal to existing region, ignoring.", buf, 0xCu);
  }

LABEL_58:
}

- (void)_fillNewTraitsWithMapViewRelatedData:(id)data
{
  dataCopy = data;
  mapView = [(ChromeViewController *)self mapView];

  if (!mapView)
  {
    goto LABEL_18;
  }

  mapView2 = [(ChromeViewController *)self mapView];
  mapType = [mapView2 mapType];
  v7 = 1;
  if (mapType <= 2)
  {
    switch(mapType)
    {
      case 0:
LABEL_15:

        [dataCopy setMode:v7];
        goto LABEL_16;
      case 1:
        goto LABEL_14;
      case 2:
LABEL_10:
        v7 = 3;
        goto LABEL_15;
    }
  }

  else
  {
    if (mapType <= 101)
    {
      if (mapType != 3)
      {
        if (mapType != 4)
        {
          goto LABEL_21;
        }

        goto LABEL_10;
      }

LABEL_14:
      v7 = 2;
      goto LABEL_15;
    }

    if (mapType == 102)
    {
      goto LABEL_15;
    }

    if (mapType == 104)
    {
      v7 = 4;
      goto LABEL_15;
    }
  }

LABEL_21:

LABEL_16:
  mapView3 = [(ChromeViewController *)self mapView];
  [mapView3 visibleMapRect];
  v13 = [[GEOMapRegion alloc] initWithMapRect:{v9, v10, v11, v12}];
  [dataCopy setMapRegion:v13];

  mapView4 = [(ChromeViewController *)self mapView];
  [mapView4 _zoomLevel];
  v16 = v15;

  if (v16 > 0.0)
  {
    [dataCopy setMapZoomLevel:v16];
  }

LABEL_18:
}

- (GEOMapServiceTraits)currentTraits
{
  v3 = +[MKMapService sharedService];
  defaultTraits = [v3 defaultTraits];

  mapView = [(ChromeViewController *)self mapView];
  if (mapView)
  {
    v6 = mapView;
    v7 = +[NSThread isMainThread];

    if (v7)
    {
      [(ChromeViewController *)self _fillNewTraitsWithMapViewRelatedData:defaultTraits];
    }
  }

  return defaultTraits;
}

- (void)_setupNavigationDisplayForContext:(id)context withAnimation:(id)animation
{
  contextCopy = context;
  animationCopy = animation;
  [(ChromeViewController *)self loadMapViewIfNeeded];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E40768;
  v10[3] = &unk_101661A40;
  v10[4] = self;
  v11 = animationCopy;
  v12 = contextCopy;
  v8 = contextCopy;
  v9 = animationCopy;
  [v9 addPreparation:v10];
}

- (void)_teardownNavigationDisplayWithAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E41294;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  animationCopy = animation;
  v3 = animationCopy;
  [v3 addPreparation:v4];
}

- (BOOL)_shouldEnableNavigationDisplayForContextStack:(id)stack requestingContext:(id *)context
{
  stackCopy = stack;
  lastObject = [stackCopy lastObject];
  wantsNavigationDisplayByDefault = [(ChromeViewController *)self wantsNavigationDisplayByDefault];
  v9 = sub_10000B11C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v12, selfCopy, v14];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v12, selfCopy];
LABEL_8:

LABEL_10:
    v16 = @"NO";
    if (wantsNavigationDisplayByDefault)
    {
      v16 = @"YES";
    }

    v17 = v16;
    *buf = 138543618;
    v50 = selfCopy;
    v51 = 2114;
    v52 = v17;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Wants navigation display by default: %{public}@", buf, 0x16u);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![lastObject showsMapView])
  {
    LOBYTE(wantsNavigationDisplayByDefault) = 0;
    goto LABEL_49;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  reverseObjectEnumerator = [stackCopy reverseObjectEnumerator];
  v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (!v19)
  {
    goto LABEL_48;
  }

  v20 = v19;
  v44 = wantsNavigationDisplayByDefault;
  v21 = *v46;
  while (2)
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v46 != v21)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v23 = *(*(&v45 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        wantsNavigationDisplayByDefault = [v23 wantsNavigationDisplay];
        if (context)
        {
          v24 = v23;
          *context = v23;
        }

        v25 = sub_10000B11C();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          goto LABEL_47;
        }

        selfCopy2 = self;
        v27 = &selRef__updatePIPLayout;
        if (!selfCopy2)
        {
          selfCopy2 = @"<nil>";
LABEL_36:

          v33 = selfCopy2;
          v34 = v23;
          if (!v34)
          {
            v40 = @"<nil>";
            goto LABEL_44;
          }

          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = v27[456];
          if (objc_opt_respondsToSelector())
          {
            v38 = [v34 performSelector:v37];
            v39 = v38;
            if (v38 && ![v38 isEqualToString:v36])
            {
              v40 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v39];

              goto LABEL_42;
            }
          }

          v40 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
LABEL_42:

LABEL_44:
          v41 = @"NO";
          if (wantsNavigationDisplayByDefault)
          {
            v41 = @"YES";
          }

          v42 = v41;
          *buf = 138543874;
          v50 = v33;
          v51 = 2112;
          v52 = v40;
          v53 = 2114;
          v54 = v42;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}@] context %@ responded %{public}@ to wantsNavigationDisplay", buf, 0x20u);

LABEL_47:
          goto LABEL_48;
        }

        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        if (objc_opt_respondsToSelector())
        {
          v30 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
          v31 = v30;
          if (v30 && ![v30 isEqualToString:v29])
          {
            selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v29, selfCopy2, v31];

            goto LABEL_33;
          }
        }

        selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v29, selfCopy2];
LABEL_33:

        v27 = &selRef__updatePIPLayout;
        goto LABEL_36;
      }
    }

    v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

  LOBYTE(wantsNavigationDisplayByDefault) = v44;
LABEL_48:

LABEL_49:
  return wantsNavigationDisplayByDefault;
}

- (void)_updateNavigationDisplayWithTiming:(unint64_t)timing animation:(id)animation
{
  timingCopy = timing;
  animationCopy = animation;
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  v8 = pendingContexts;
  if (pendingContexts)
  {
    contexts = pendingContexts;
  }

  else
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  v10 = contexts;

  v11 = [(ChromeViewController *)self _shouldEnableNavigationDisplayForContextStack:v10 requestingContext:0];
  v12 = v11;
  if ((timingCopy & 2) != 0 && (v11 & 1) == 0)
  {
    v13 = sub_10000B11C();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_16:

      [(ChromeViewController *)self _teardownNavigationDisplayWithAnimation:animationCopy];
      goto LABEL_17;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

        goto LABEL_13;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_13:

LABEL_15:
    *buf = 138543362;
    v30 = selfCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] - will tear down navigation display", buf, 0xCu);

    goto LABEL_16;
  }

LABEL_17:
  if ((((timingCopy & 4) != 0) & v12) != 1)
  {
    goto LABEL_32;
  }

  v20 = sub_10000B11C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_27;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy2, v25];

        goto LABEL_25;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy2];
LABEL_25:

LABEL_27:
    *buf = 138543362;
    v30 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] - will setup/configure navigation display", buf, 0xCu);
  }

  nextTopContext = [(ChromeViewController *)self nextTopContext];
  if (nextTopContext)
  {
    [(ChromeViewController *)self _setupNavigationDisplayForContext:nextTopContext withAnimation:animationCopy];
  }

  else
  {
    topContext = [(ChromeViewController *)self topContext];
    [(ChromeViewController *)self _setupNavigationDisplayForContext:topContext withAnimation:animationCopy];
  }

LABEL_32:
}

- (GEOMapServiceTraits)navigationAwareTraits
{
  currentTraits = [(ChromeViewController *)self currentTraits];
  if ([(ChromeViewController *)self isDisplayingNavigation])
  {
    [currentTraits setNavigating:1];
    v4 = +[MNNavigationService sharedService];
    if ([v4 isInNavigatingState])
    {
      navigationTransportType = [v4 navigationTransportType];
    }

    else
    {
      navigationTransportType = [v4 desiredTransportType];
    }

    [currentTraits setNavigationTransportType:navigationTransportType];
  }

  return currentTraits;
}

- (void)_unsuppress
{
  if (!self->_suppressionAnimation)
  {
    v3 = [GroupAnimation animationForAnimatedFlag:0];
    objc_initWeak(&location, v3);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100E4234C;
    v20[3] = &unk_101661B18;
    v20[4] = self;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100E424B0;
    v18[3] = &unk_10165FC50;
    objc_copyWeak(&v19, &location);
    v18[4] = self;
    [v3 addPreparation:v20 animations:0 completion:v18];
    topContext = [(ChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      [topContext becomeTopContextInChromeViewController:self withAnimation:v3];
    }

    objc_storeStrong(&self->_suppressionAnimation, v3);
    v11 = sub_10000B11C();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    selfCopy = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ([v15 isEqualToString:v14] & 1) == 0)
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_17;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_17:

    *buf = 138543618;
    v23 = selfCopy;
    v24 = 2048;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing unsuppress animation: %p", buf, 0x16u);

LABEL_18:
    [v3 runWithCurrentOptions];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy2, v8];

        goto LABEL_8;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy2];
LABEL_8:

    *buf = 138543362;
    v23 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] already in the middle of suppress/unsuppress animation, ignoring _unsuppress and will check after animation", buf, 0xCu);
  }

LABEL_19:
}

- (void)_suppress
{
  if (!self->_suppressionAnimation)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:NSUserDefaultsDidChangeNotification object:0];
    v10 = [GroupAnimation animationForAnimatedFlag:0];
    topContext = [(ChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      [topContext resignTopContextInChromeViewController:self withAnimation:v10];
    }

    objc_initWeak(&location, v10);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100E42C48;
    v22 = &unk_10165FC50;
    objc_copyWeak(&v24, &location);
    selfCopy = self;
    [v10 addAnimations:0 completion:&v19];
    objc_storeStrong(&self->_suppressionAnimation, v10);
    v12 = sub_10000B11C();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    selfCopy2 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ([v16 isEqualToString:v15] & 1) == 0)
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy2, v17, v19, v20, v21, v22];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy2];
LABEL_17:

    *buf = 138543618;
    v27 = selfCopy2;
    v28 = 2048;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing suppress animation: %p", buf, 0x16u);

LABEL_18:
    [v10 runWithCurrentOptions];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);

    goto LABEL_19;
  }

  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy3 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy3, v8];

        goto LABEL_8;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy3];
LABEL_8:

    *buf = 138543362;
    v27 = selfCopy3;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] already in the middle of suppress/unsuppress animation, ignoring _suppress and will check after animation", buf, 0xCu);
  }

LABEL_19:
}

- (void)_setSuppressed:(BOOL)suppressed
{
  suppressedCopy = suppressed;
  self->_suppressed = suppressed;
  v5 = sub_10000B11C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (suppressedCopy)
  {
    if (!v6)
    {
LABEL_9:

      [(ChromeViewController *)self _suppress];
      return;
    }

    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    *buf = 138543362;
    v20 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will suppress", buf, 0xCu);

    goto LABEL_9;
  }

  if (v6)
  {
    selfCopy2 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy2, v17];

        goto LABEL_16;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy2];
LABEL_16:

    *buf = 138543362;
    v20 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will unsuppress", buf, 0xCu);
  }

  [(ChromeViewController *)self _unsuppress];
}

- (void)setSuppressed:(BOOL)suppressed
{
  if (self->_suppressed != suppressed)
  {
    [(ChromeViewController *)self _setSuppressed:?];
  }
}

- (id)defaultFullscreenViewControllerDismissalTransition
{
  v2 = objc_alloc_init(ChromeMapToMapTransition);

  return v2;
}

- (id)defaultFullscreenViewControllerPresentationTransition
{
  v2 = objc_alloc_init(ChromeMapToMapTransition);

  return v2;
}

- (id)fullscreenViewControllerTransitionFromController:(id)controller toController:(id)toController isDismissTransition:(BOOL)transition
{
  if (transition)
  {
    [(ChromeViewController *)self defaultFullscreenViewControllerDismissalTransition:controller];
  }

  else
  {
    [(ChromeViewController *)self defaultFullscreenViewControllerPresentationTransition:controller];
  }
  v5 = ;

  return v5;
}

- (void)_transitionToFullscreenViewController:(id)controller forContext:(id)context previousIsLeaving:(BOOL)leaving withAnimation:(id)animation
{
  leavingCopy = leaving;
  controllerCopy = controller;
  contextCopy = context;
  animationCopy = animation;
  v14 = sub_10000B11C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v24 = leavingCopy;
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy, v19];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v26 = selfCopy;
    v27 = 2112;
    v28 = controllerCopy;
    v29 = 2112;
    v30 = contextCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] _transitionToFullscreenViewController %@ for context %@", buf, 0x20u);

    leavingCopy = v24;
  }

  v21 = self->_fullscreenViewController;
  previousTopContext = [(ChromeViewController *)self previousTopContext];
  v23 = [(ChromeViewController *)self transitionFromViewController:v21 fromContext:previousTopContext toViewController:controllerCopy toContext:contextCopy withAnimation:animationCopy dismissing:leavingCopy];

  if (v23)
  {
    objc_storeStrong(&self->_fullscreenViewController, controller);
    [(ChromeViewController *)self fullscreenViewControllerDidChange:self->_fullscreenViewController];
  }
}

- (void)_updateFullscreenViewControllerWithAnimation:(id)animation
{
  animationCopy = animation;
  if ([(ChromeViewController *)self supportsDefaultFullscreenViewControllerPresentation])
  {
    objc_initWeak(&location, animationCopy);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100E43834;
    v5[3] = &unk_101661340;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [animationCopy addPreparation:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updatePersonalizedItemSourcesForContext:(id)context withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E43EAC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4 animations:0 completion:0];
}

- (void)_updateRouteAnnotationsWithAnimation:(id)animation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100E44338;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [animation addPreparation:v3];
}

- (void)removeMapReplacementView:(id)view
{
  viewCopy = view;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2048;
    v15 = viewCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] removeMapReplacementView %p", buf, 0x16u);
  }

  [viewCopy removeFromSuperview];
}

- (void)installMapReplacementView:(id)view
{
  viewCopy = view;
  isViewLoaded = [(ChromeViewController *)self isViewLoaded];
  if (viewCopy && isViewLoaded)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100E45808;
    v6[3] = &unk_101661A90;
    v7 = viewCopy;
    selfCopy = self;
    [UIView performWithoutAnimation:v6];
  }
}

- (void)_installMapReplacementView:(id)view
{
  viewCopy = view;
  [(ChromeViewController *)self _removeMapReplacementViewIfNeeded];
  v6 = sub_10000B11C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

LABEL_10:
    mapView = selfCopy->_mapView;
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2048;
    v17 = viewCopy;
    v18 = 2048;
    v19 = mapView;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] _installMapReplacementView %p (current _mapView: %p)", buf, 0x20u);
  }

  objc_storeStrong(&self->_mapReplacementView, view);
  if (viewCopy)
  {
    [(ChromeViewController *)self installMapReplacementView:viewCopy];
  }
}

- (void)prepareToRemoveMapView:(id)view
{
  customPOIsController = self->_customPOIsController;
  self->_customPOIsController = 0;

  mapCameraController = self->_mapCameraController;
  self->_mapCameraController = 0;

  routeAnnotationsController = self->_routeAnnotationsController;
  self->_routeAnnotationsController = 0;
}

- (void)evictMapView
{
  v3 = sub_10000B11C();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
  mapView = selfCopy->_mapView;
  mapReplacementView = selfCopy->_mapReplacementView;
  *buf = 138543874;
  v15 = selfCopy;
  v16 = 2048;
  v17 = mapView;
  v18 = 2048;
  v19 = mapReplacementView;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] evictMapView mapView: %p (current _mapReplacementView: %p)", buf, 0x20u);

LABEL_11:
  v12 = self->_mapView;
  if (v12)
  {
    v13 = v12;
    [(ChromeViewController *)self prepareToRemoveMapView:v13];
    [(MKMapView *)v13 removeFromSuperview];
  }
}

- (void)restoreMapInViewHierarchy
{
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    mapView = selfCopy->_mapView;
    mapReplacementView = selfCopy->_mapReplacementView;
    *buf = 138543874;
    v13 = selfCopy;
    v14 = 2048;
    v15 = mapView;
    v16 = 2048;
    v17 = mapReplacementView;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] restoreMapInViewHierarchy mapView: %p (current _mapReplacementView: %p)", buf, 0x20u);
  }

  if (self->_mapView)
  {
    if ([(ChromeViewController *)self isViewLoaded])
    {
      [(ChromeViewController *)self installMapView:self->_mapView];
      [(ChromeViewController *)self _removeMapReplacementViewIfNeeded];
      [(ChromeViewController *)self setNeedsUpdateComponent:@"mapInsets" animated:0];
      [(ChromeViewController *)self setNeedsUpdateComponent:@"labelInsetsAndWidths" animated:0];
      [(ChromeViewController *)self setNeedsUpdateComponent:@"personalizedItemSources" animated:0];
      [(ChromeViewController *)self updateComponentsIfNeeded];
    }
  }
}

- (void)decrementForToken:(id)token
{
  tokenCopy = token;
  tokenGroupName = [(__CFString *)tokenCopy tokenGroupName];
  v6 = [tokenGroupName isEqualToString:@"ChromeDeactivation"];

  if (v6)
  {
    v7 = sub_10000B11C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_29;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_9:

LABEL_29:
    *buf = 138543618;
    v101 = selfCopy;
    v102 = 2114;
    v103 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deactivation token removed: %{public}@", buf, 0x16u);

LABEL_30:
    if (![(MapsTokenStorage *)self->_deactivationTokens count])
    {
      [(ChromeViewController *)self _setInactive:0];
LABEL_66:
      [(ChromeViewController *)self deactivationReasonsDidChange];
      goto LABEL_67;
    }

    v32 = sub_10000B11C();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
LABEL_65:

      goto LABEL_66;
    }

    selfCopy2 = self;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    if (objc_opt_respondsToSelector())
    {
      v36 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v37 = v36;
      if (v36 && ![v36 isEqualToString:v35])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v35, selfCopy2, v37];

        goto LABEL_37;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v35, selfCopy2];
LABEL_37:

    v39 = selfCopy2;
    allTokenReasons = [(MapsTokenStorage *)self->_deactivationTokens allTokenReasons];
    v41 = allTokenReasons;
    if (allTokenReasons)
    {
      if ([allTokenReasons count])
      {
        v88 = v39;
        v90 = v32;
        selfCopy3 = self;
        v94 = tokenCopy;
        v42 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v41 count]);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v87 = v41;
        v43 = v41;
        v44 = [v43 countByEnumeratingWithState:&v96 objects:buf count:16];
        if (!v44)
        {
          goto LABEL_56;
        }

        v45 = v44;
        v46 = *v97;
        while (1)
        {
          v47 = 0;
          do
          {
            if (*v97 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v96 + 1) + 8 * v47);
            if (v48)
            {
              v49 = objc_opt_class();
              v50 = NSStringFromClass(v49);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_49;
              }

              v51 = [v48 performSelector:"accessibilityIdentifier"];
              v52 = v51;
              if (v51 && ![v51 isEqualToString:v50])
              {
                v53 = [NSString stringWithFormat:@"%@<%p, %@>", v50, v48, v52];
              }

              else
              {

LABEL_49:
                v53 = [NSString stringWithFormat:@"%@<%p>", v50, v48];
              }

              goto LABEL_52;
            }

            v53 = @"<nil>";
LABEL_52:

            [v42 addObject:v53];
            v47 = v47 + 1;
          }

          while (v45 != v47);
          v54 = [v43 countByEnumeratingWithState:&v96 objects:buf count:16];
          v45 = v54;
          if (!v54)
          {
LABEL_56:

            v55 = [v43 componentsJoinedByString:{@", "}];
            v56 = [NSString stringWithFormat:@"<%p> [%@]", v43, v55];

            self = selfCopy3;
            tokenCopy = v94;
            v39 = v88;
            v32 = v90;
            v41 = v87;
            goto LABEL_64;
          }
        }
      }

      v56 = [NSString stringWithFormat:@"<%p> (empty)", v41];
    }

    else
    {
      v56 = @"<nil>";
    }

LABEL_64:

    *buf = 138543618;
    v101 = v39;
    v102 = 2114;
    v103 = v56;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[%{public}@] Remaining deactivated for reasons: %{public}@", buf, 0x16u);

    goto LABEL_65;
  }

  tokenGroupName2 = [(__CFString *)tokenCopy tokenGroupName];
  v15 = [tokenGroupName2 isEqualToString:@"ChromeHiking"];

  if (v15)
  {
    v16 = sub_10000B11C();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    selfCopy4 = self;
    if (!selfCopy4)
    {
      selfCopy4 = @"<nil>";
      goto LABEL_60;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(ChromeViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy4, v21];

        goto LABEL_18;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy4];
LABEL_18:

LABEL_60:
    *buf = 138543618;
    v101 = selfCopy4;
    v102 = 2114;
    v103 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hiking token removed: %{public}@", buf, 0x16u);

LABEL_61:
    mapView = [(ChromeViewController *)self mapView];

    if (mapView)
    {
      [(ChromeViewController *)self updateHikingMapConfiguration];
    }

    goto LABEL_67;
  }

  tokenGroupName3 = [(__CFString *)tokenCopy tokenGroupName];
  v24 = [tokenGroupName3 isEqualToString:@"ChromeMapInsetPropagationSuspension"];

  if (!v24)
  {
    goto LABEL_67;
  }

  v25 = sub_10000B11C();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy5 = self;
    if (!selfCopy5)
    {
      selfCopy5 = @"<nil>";
      goto LABEL_71;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(ChromeViewController *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        selfCopy5 = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy5, v30];

        goto LABEL_27;
      }
    }

    selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy5];
LABEL_27:

LABEL_71:
    *buf = 138543618;
    v101 = selfCopy5;
    v102 = 2114;
    v103 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Map inset propagation suspension removed: %{public}@", buf, 0x16u);
  }

  if ([(MapsTokenStorage *)self->_mapInsetPropagationSuspensionTokens count])
  {
    v58 = sub_10000B11C();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      goto LABEL_106;
    }

    selfCopy6 = self;
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    if (objc_opt_respondsToSelector())
    {
      v62 = [(ChromeViewController *)selfCopy6 performSelector:"accessibilityIdentifier"];
      v63 = v62;
      if (v62 && ![v62 isEqualToString:v61])
      {
        selfCopy6 = [NSString stringWithFormat:@"%@<%p, %@>", v61, selfCopy6, v63];

        goto LABEL_79;
      }
    }

    selfCopy6 = [NSString stringWithFormat:@"%@<%p>", v61, selfCopy6];
LABEL_79:

    v65 = selfCopy6;
    allTokenReasons2 = [(MapsTokenStorage *)self->_mapInsetPropagationSuspensionTokens allTokenReasons];
    v67 = allTokenReasons2;
    if (allTokenReasons2)
    {
      if ([allTokenReasons2 count])
      {
        v91 = v65;
        v93 = v58;
        v95 = tokenCopy;
        v68 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v67 count]);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v89 = v67;
        v69 = v67;
        v70 = [v69 countByEnumeratingWithState:&v96 objects:buf count:16];
        v71 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        if (!v70)
        {
          goto LABEL_98;
        }

        v72 = v70;
        v73 = *v97;
        while (1)
        {
          v74 = 0;
          do
          {
            if (*v97 != v73)
            {
              objc_enumerationMutation(v69);
            }

            v75 = *(*(&v96 + 1) + 8 * v74);
            if (v75)
            {
              v76 = objc_opt_class();
              v77 = NSStringFromClass(v76);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_91;
              }

              v78 = [v75 performSelector:"accessibilityIdentifier"];
              v79 = v78;
              if (v78 && ![v78 isEqualToString:v77])
              {
                v80 = [NSString stringWithFormat:@"%@<%p, %@>", v77, v75, v79];

                v71 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
              }

              else
              {

                v71 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
LABEL_91:
                v80 = [v71[459] stringWithFormat:@"%@<%p>", v77, v75];
              }

              goto LABEL_94;
            }

            v80 = @"<nil>";
LABEL_94:

            [v68 addObject:v80];
            v74 = v74 + 1;
          }

          while (v72 != v74);
          v81 = [v69 countByEnumeratingWithState:&v96 objects:buf count:16];
          v72 = v81;
          if (!v81)
          {
LABEL_98:

            v82 = [v69 componentsJoinedByString:{@", "}];
            v83 = v71;
            v84 = v82;
            v85 = [v83[459] stringWithFormat:@"<%p> [%@]", v69, v82];

            v58 = v93;
            tokenCopy = v95;
            v67 = v89;
            v65 = v91;
            goto LABEL_105;
          }
        }
      }

      v85 = [NSString stringWithFormat:@"<%p> (empty)", v67];
    }

    else
    {
      v85 = @"<nil>";
    }

LABEL_105:

    *buf = 138543618;
    v101 = v65;
    v102 = 2114;
    v103 = v85;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[%{public}@] Still suspending map inset propagation for reasons: %{public}@", buf, 0x16u);

LABEL_106:
    goto LABEL_67;
  }

  if (self->_frozenMapInsetsConstraints)
  {
    [(ChromeViewController *)self _freezeMapInsetsLayoutGuideIfPermitted:0];
    [(ChromeViewController *)self setNeedsUpdateComponent:@"mapInsets" animated:0];
    [(ChromeViewController *)self updateComponentsIfNeeded];
  }

  mapView2 = [(ChromeViewController *)self mapView];
  [mapView2 _resumePropagatingEdgeInsets];

LABEL_67:
}

- (void)incrementForToken:(id)token
{
  tokenCopy = token;
  tokenGroupName = [tokenCopy tokenGroupName];
  v6 = [tokenGroupName isEqualToString:@"ChromeDeactivation"];

  if (v6)
  {
    v7 = sub_10000B11C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_29;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_9:

LABEL_29:
    *buf = 138543618;
    v111 = selfCopy;
    v112 = 2114;
    v113 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deactivation token added: %{public}@", buf, 0x16u);

LABEL_30:
    v32 = [(MapsTokenStorage *)self->_deactivationTokens count];
    if (v32 == 1)
    {
      [(ChromeViewController *)self _setInactive:1];
LABEL_67:
      [(ChromeViewController *)self deactivationReasonsDidChange];
      goto LABEL_68;
    }

    if (!v32)
    {
      v89 = sub_10006D178();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        v90 = [NSString stringWithFormat:@"incremented token, we should have >1 now (actually have %lu)", 0];
        *buf = 136316162;
        v111 = "[ChromeViewController incrementForToken:]";
        v112 = 2080;
        v113 = "ChromeViewController.m";
        v114 = 1024;
        v115 = 1933;
        v116 = 2080;
        v117 = "count > 0";
        v118 = 2112;
        v119 = v90;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v91 = sub_10006D178();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v92 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v111 = v92;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v33 = sub_10000B11C();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
LABEL_66:

      goto LABEL_67;
    }

    selfCopy2 = self;
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v36, selfCopy2, v38];

        goto LABEL_38;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v36, selfCopy2];
LABEL_38:

    v40 = selfCopy2;
    allTokenReasons = [(MapsTokenStorage *)self->_deactivationTokens allTokenReasons];
    v42 = allTokenReasons;
    if (allTokenReasons)
    {
      if ([allTokenReasons count])
      {
        v98 = v40;
        v100 = v33;
        selfCopy3 = self;
        v104 = tokenCopy;
        v43 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v42 count]);
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v97 = v42;
        v44 = v42;
        v45 = [v44 countByEnumeratingWithState:&v106 objects:buf count:16];
        if (!v45)
        {
          goto LABEL_57;
        }

        v46 = v45;
        v47 = *v107;
        while (1)
        {
          v48 = 0;
          do
          {
            if (*v107 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v106 + 1) + 8 * v48);
            if (v49)
            {
              v50 = objc_opt_class();
              v51 = NSStringFromClass(v50);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_50;
              }

              v52 = [v49 performSelector:"accessibilityIdentifier"];
              v53 = v52;
              if (v52 && ![v52 isEqualToString:v51])
              {
                v54 = [NSString stringWithFormat:@"%@<%p, %@>", v51, v49, v53];
              }

              else
              {

LABEL_50:
                v54 = [NSString stringWithFormat:@"%@<%p>", v51, v49];
              }

              goto LABEL_53;
            }

            v54 = @"<nil>";
LABEL_53:

            [v43 addObject:v54];
            v48 = v48 + 1;
          }

          while (v46 != v48);
          v55 = [v44 countByEnumeratingWithState:&v106 objects:buf count:16];
          v46 = v55;
          if (!v55)
          {
LABEL_57:

            v56 = [v44 componentsJoinedByString:{@", "}];
            v57 = [NSString stringWithFormat:@"<%p> [%@]", v44, v56];

            self = selfCopy3;
            tokenCopy = v104;
            v40 = v98;
            v33 = v100;
            v42 = v97;
            goto LABEL_65;
          }
        }
      }

      v57 = [NSString stringWithFormat:@"<%p> (empty)", v42];
    }

    else
    {
      v57 = @"<nil>";
    }

LABEL_65:

    *buf = 138543618;
    v111 = v40;
    v112 = 2114;
    v113 = v57;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}@] Remaining deactivated for reasons: %{public}@", buf, 0x16u);

    goto LABEL_66;
  }

  tokenGroupName2 = [tokenCopy tokenGroupName];
  v15 = [tokenGroupName2 isEqualToString:@"ChromeHiking"];

  if (!v15)
  {
    tokenGroupName3 = [tokenCopy tokenGroupName];
    v24 = [tokenGroupName3 isEqualToString:@"ChromeMapInsetPropagationSuspension"];

    if (!v24)
    {
      goto LABEL_68;
    }

    v25 = sub_10000B11C();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
LABEL_72:

      v59 = [(MapsTokenStorage *)self->_mapInsetPropagationSuspensionTokens count];
      if (v59 == 1)
      {
        mapView = [(ChromeViewController *)self mapView];
        [mapView _suspendPropagatingEdgeInsets];

        [(ChromeViewController *)self _freezeMapInsetsLayoutGuideIfPermitted:1];
        goto LABEL_68;
      }

      if (!v59)
      {
        v93 = sub_10006D178();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v94 = [NSString stringWithFormat:@"incremented token, we should have >1 now (actually have %lu)", 0];
          *buf = 136316162;
          v111 = "[ChromeViewController incrementForToken:]";
          v112 = 2080;
          v113 = "ChromeViewController.m";
          v114 = 1024;
          v115 = 1958;
          v116 = 2080;
          v117 = "count > 0";
          v118 = 2112;
          v119 = v94;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
        }

        if (sub_100E03634())
        {
          v95 = sub_10006D178();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            v96 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v111 = v96;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v60 = sub_10000B11C();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        goto LABEL_106;
      }

      selfCopy4 = self;
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      if (objc_opt_respondsToSelector())
      {
        v64 = [(ChromeViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
        v65 = v64;
        if (v64 && ![v64 isEqualToString:v63])
        {
          selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v63, selfCopy4, v65];

          goto LABEL_80;
        }
      }

      selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v63, selfCopy4];
LABEL_80:

      v67 = selfCopy4;
      allTokenReasons2 = [(MapsTokenStorage *)self->_mapInsetPropagationSuspensionTokens allTokenReasons];
      v69 = allTokenReasons2;
      if (allTokenReasons2)
      {
        if ([allTokenReasons2 count])
        {
          v101 = v67;
          v103 = v60;
          v105 = tokenCopy;
          v70 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v69 count]);
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v99 = v69;
          v71 = v69;
          v72 = [v71 countByEnumeratingWithState:&v106 objects:buf count:16];
          v73 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
          if (!v72)
          {
            goto LABEL_99;
          }

          v74 = v72;
          v75 = *v107;
          while (1)
          {
            v76 = 0;
            do
            {
              if (*v107 != v75)
              {
                objc_enumerationMutation(v71);
              }

              v77 = *(*(&v106 + 1) + 8 * v76);
              if (v77)
              {
                v78 = objc_opt_class();
                v79 = NSStringFromClass(v78);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_92;
                }

                v80 = [v77 performSelector:"accessibilityIdentifier"];
                v81 = v80;
                if (v80 && ![v80 isEqualToString:v79])
                {
                  v82 = [NSString stringWithFormat:@"%@<%p, %@>", v79, v77, v81];

                  v73 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
                }

                else
                {

                  v73 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
LABEL_92:
                  v82 = [v73[459] stringWithFormat:@"%@<%p>", v79, v77];
                }

                goto LABEL_95;
              }

              v82 = @"<nil>";
LABEL_95:

              [v70 addObject:v82];
              v76 = v76 + 1;
            }

            while (v74 != v76);
            v83 = [v71 countByEnumeratingWithState:&v106 objects:buf count:16];
            v74 = v83;
            if (!v83)
            {
LABEL_99:

              v84 = [v71 componentsJoinedByString:{@", "}];
              v85 = v73;
              v86 = v84;
              v87 = [v85[459] stringWithFormat:@"<%p> [%@]", v71, v84];

              v60 = v103;
              tokenCopy = v105;
              v69 = v99;
              v67 = v101;
              goto LABEL_105;
            }
          }
        }

        v87 = [NSString stringWithFormat:@"<%p> (empty)", v69];
      }

      else
      {
        v87 = @"<nil>";
      }

LABEL_105:

      *buf = 138543618;
      v111 = v67;
      v112 = 2114;
      v113 = v87;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "[%{public}@] Still suspending map inset propagation for reasons: %{public}@", buf, 0x16u);

LABEL_106:
      goto LABEL_68;
    }

    selfCopy5 = self;
    if (!selfCopy5)
    {
      selfCopy5 = @"<nil>";
      goto LABEL_71;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(ChromeViewController *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        selfCopy5 = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy5, v30];

        goto LABEL_27;
      }
    }

    selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy5];
LABEL_27:

LABEL_71:
    *buf = 138543618;
    v111 = selfCopy5;
    v112 = 2114;
    v113 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Map inset propagation suspension token added: %{public}@", buf, 0x16u);

    goto LABEL_72;
  }

  v16 = sub_10000B11C();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_62;
  }

  selfCopy6 = self;
  if (!selfCopy6)
  {
    selfCopy6 = @"<nil>";
    goto LABEL_61;
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  if (objc_opt_respondsToSelector())
  {
    v20 = [(ChromeViewController *)selfCopy6 performSelector:"accessibilityIdentifier"];
    v21 = v20;
    if (v20 && ![v20 isEqualToString:v19])
    {
      selfCopy6 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy6, v21];

      goto LABEL_18;
    }
  }

  selfCopy6 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy6];
LABEL_18:

LABEL_61:
  *buf = 138543618;
  v111 = selfCopy6;
  v112 = 2114;
  v113 = tokenCopy;
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hiking token added: %{public}@", buf, 0x16u);

LABEL_62:
  mapView2 = [(ChromeViewController *)self mapView];

  if (mapView2)
  {
    [(ChromeViewController *)self updateHikingMapConfiguration];
  }

LABEL_68:
}

- (id)mapReplacementColor
{
  traitCollection = [(ChromeViewController *)self traitCollection];
  v3 = [UIColor _mapkit_colorNamed:@"CartographyBackgroundColor" compatibleWithTraitCollection:traitCollection];

  return v3;
}

- (id)createMapReplacementView
{
  v3 = [UIView alloc];
  view = [(ChromeViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];

  mapReplacementColor = [(ChromeViewController *)self mapReplacementColor];
  [v5 setBackgroundColor:mapReplacementColor];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [NSString stringWithFormat:@"%@.mapReplacementView", v8];
  [v5 setAccessibilityIdentifier:v9];

  return v5;
}

- (void)removeMapViewFromViewHierarchy
{
  mapView = [(ChromeViewController *)self mapView];
  [mapView removeFromSuperview];
}

- (void)_setInactive:(BOOL)inactive
{
  inactiveCopy = inactive;
  selfCopy = self;
  inactive = self->_inactive;
  self->_inactive = inactive;
  if (![(ChromeViewController *)self isViewLoaded]|| [(ChromeViewController *)selfCopy isSuppressed])
  {
    v6 = sub_10000B11C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:

      goto LABEL_20;
    }

    v7 = selfCopy;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    inactiveCopy2 = inactive;
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

    if (inactiveCopy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    if ([(ChromeViewController *)v7 isViewLoaded])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v15;
    *buf = 138544130;
    if ([(ChromeViewController *)v7 isSuppressed])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v99 = v12;
    v100 = 2114;
    v101 = v13;
    v102 = 2114;
    *v103 = v15;
    *&v103[8] = 2114;
    *&v103[10] = v17;
    v18 = v17;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting chrome inactive: %{public}@, but view not loaded (loaded? %{public}@) or suppressed (%{public}@)", buf, 0x2Au);

    inactive = inactiveCopy2;
    goto LABEL_19;
  }

  v19 = sub_10000B11C();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (inactive == inactiveCopy)
  {
    if (!v20)
    {
      goto LABEL_88;
    }

    v21 = selfCopy;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_30;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_30:

    v27 = v26;
    v28 = @"NO";
    if (inactiveCopy)
    {
      v28 = @"YES";
    }

    v29 = v28;
    allTokenReasons = [v21[41] allTokenReasons];
    v87 = allTokenReasons;
    if (allTokenReasons)
    {
      v31 = allTokenReasons;
      if ([allTokenReasons count])
      {
        v79 = v29;
        v81 = v27;
        v83 = v19;
        inactiveCopy3 = inactive;
        v92 = selfCopy;
        v85 = inactiveCopy;
        v32 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v31 count]);
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v33 = v31;
        v34 = [v33 countByEnumeratingWithState:&v94 objects:buf count:16];
        if (!v34)
        {
          goto LABEL_51;
        }

        v35 = v34;
        v36 = *v95;
        while (1)
        {
          v37 = 0;
          do
          {
            if (*v95 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v94 + 1) + 8 * v37);
            if (v38)
            {
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_44;
              }

              v41 = [v38 performSelector:"accessibilityIdentifier"];
              v42 = v41;
              if (v41 && ![v41 isEqualToString:v40])
              {
                v43 = [NSString stringWithFormat:@"%@<%p, %@>", v40, v38, v42];
              }

              else
              {

LABEL_44:
                v43 = [NSString stringWithFormat:@"%@<%p>", v40, v38];
              }

              goto LABEL_47;
            }

            v43 = @"<nil>";
LABEL_47:

            [v32 addObject:v43];
            v37 = v37 + 1;
          }

          while (v35 != v37);
          v44 = [v33 countByEnumeratingWithState:&v94 objects:buf count:16];
          v35 = v44;
          if (!v44)
          {
LABEL_51:

            v45 = [v33 componentsJoinedByString:{@", "}];
            v46 = [NSString stringWithFormat:@"<%p> [%@]", v33, v45];

            inactiveCopy = v85;
            selfCopy = v92;
            inactive = inactiveCopy3;
            v19 = v83;
            v29 = v79;
            v27 = v81;
            goto LABEL_84;
          }
        }
      }

      v46 = [NSString stringWithFormat:@"<%p> (empty)", v31];
    }

    else
    {
      v46 = @"<nil>";
    }

LABEL_84:
    v70 = v87;

    *buf = 138543874;
    v99 = v27;
    v100 = 2114;
    v101 = v29;
    v102 = 2114;
    *v103 = v46;
    v71 = "[%{public}@] Reapplying chrome inactive: %{public}@ (reasons: %{public}@)";
    goto LABEL_87;
  }

  if (!v20)
  {
    goto LABEL_88;
  }

  v47 = selfCopy;
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_57;
  }

  v50 = [v47 performSelector:"accessibilityIdentifier"];
  v51 = v50;
  if (!v50 || [v50 isEqualToString:v49])
  {

LABEL_57:
    v52 = [NSString stringWithFormat:@"%@<%p>", v49, v47];
    goto LABEL_58;
  }

  v52 = [NSString stringWithFormat:@"%@<%p, %@>", v49, v47, v51];

LABEL_58:
  v27 = v52;
  v53 = @"NO";
  if (inactiveCopy)
  {
    v53 = @"YES";
  }

  v29 = v53;
  allTokenReasons2 = [v47[41] allTokenReasons];
  v88 = allTokenReasons2;
  if (allTokenReasons2)
  {
    v55 = allTokenReasons2;
    if ([allTokenReasons2 count])
    {
      v80 = v29;
      v82 = v27;
      v84 = v19;
      inactiveCopy4 = inactive;
      v93 = selfCopy;
      v86 = inactiveCopy;
      v56 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v55 count]);
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v57 = v55;
      v58 = [v57 countByEnumeratingWithState:&v94 objects:buf count:16];
      if (!v58)
      {
        goto LABEL_79;
      }

      v59 = v58;
      v60 = *v95;
      while (1)
      {
        v61 = 0;
        do
        {
          if (*v95 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v94 + 1) + 8 * v61);
          if (v62)
          {
            v63 = objc_opt_class();
            v64 = NSStringFromClass(v63);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_72;
            }

            v65 = [v62 performSelector:"accessibilityIdentifier"];
            v66 = v65;
            if (v65 && ![v65 isEqualToString:v64])
            {
              v67 = [NSString stringWithFormat:@"%@<%p, %@>", v64, v62, v66];
            }

            else
            {

LABEL_72:
              v67 = [NSString stringWithFormat:@"%@<%p>", v64, v62];
            }

            goto LABEL_75;
          }

          v67 = @"<nil>";
LABEL_75:

          [v56 addObject:v67];
          v61 = v61 + 1;
        }

        while (v59 != v61);
        v68 = [v57 countByEnumeratingWithState:&v94 objects:buf count:16];
        v59 = v68;
        if (!v68)
        {
LABEL_79:

          v69 = [v57 componentsJoinedByString:{@", "}];
          v46 = [NSString stringWithFormat:@"<%p> [%@]", v57, v69];

          inactiveCopy = v86;
          selfCopy = v93;
          inactive = inactiveCopy4;
          v19 = v84;
          v29 = v80;
          v27 = v82;
          goto LABEL_86;
        }
      }
    }

    v46 = [NSString stringWithFormat:@"<%p> (empty)", v55];
  }

  else
  {
    v46 = @"<nil>";
  }

LABEL_86:
  v70 = v88;

  *buf = 138543874;
  v99 = v27;
  v100 = 2114;
  v101 = v29;
  v102 = 2114;
  *v103 = v46;
  v71 = "[%{public}@] Setting chrome inactive: %{public}@ (reasons: %{public}@)";
LABEL_87:
  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v71, buf, 0x20u);

LABEL_88:
  if (selfCopy->_inactive)
  {
    if (![(MapsTokenStorage *)selfCopy->_deactivationTokens count])
    {
      v75 = sub_10006D178();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = [NSString stringWithFormat:@"_setInactive:YES was called without having any deactivation tokens! You must deactivate the chrome using tokens."];
        *buf = 136316162;
        v99 = "[ChromeViewController _setInactive:]";
        v100 = 2080;
        v101 = "ChromeViewController.m";
        v102 = 1024;
        *v103 = 1864;
        *&v103[4] = 2080;
        *&v103[6] = "_deactivationTokens.count > 0";
        *&v103[14] = 2112;
        *&v103[16] = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v77 = sub_10006D178();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v99 = v78;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    createMapReplacementView = [(ChromeViewController *)selfCopy createMapReplacementView];
    [(ChromeViewController *)selfCopy _installMapReplacementView:createMapReplacementView];

    mapView = [(ChromeViewController *)selfCopy mapView];
    [mapView _setInactive:1];

    if ([(ChromeViewController *)selfCopy removesMapViewWhenInactive])
    {
      [(ChromeViewController *)selfCopy removeMapViewFromViewHierarchy];
    }
  }

  else
  {
    mapView2 = [(ChromeViewController *)selfCopy mapView];
    [mapView2 _setInactive:0];

    [(ChromeViewController *)selfCopy restoreMapInViewHierarchy];
  }

LABEL_20:
  if (inactive != inactiveCopy)
  {
    [(ChromeViewController *)selfCopy didBecomeInactive:inactiveCopy];
  }
}

- (void)_checkHikingCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  objc_initWeak(&location, self);
  v6 = sub_10000B11C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349569;
    selfCopy = self;
    v13 = 2049;
    v14 = latitude;
    v15 = 2049;
    v16 = longitude;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Checking hiking coordinate: %{private}f, %{private}f", buf, 0x20u);
  }

  mapView = [(ChromeViewController *)self mapView];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E48744;
  v8[3] = &unk_101656178;
  objc_copyWeak(&v9, &location);
  [mapView checkIfCoordinate:v8 isInHikingContextualRegionWithCompletionHandler:{latitude, longitude}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)checkIfCoordinate:(CLLocationCoordinate2D)coordinate isInHikingContextualRegionWithCompletionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  handlerCopy = handler;
  v8 = sub_10000B11C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v20 = 134349569;
    selfCopy3 = self;
    v22 = 2049;
    v23 = latitude;
    v24 = 2049;
    v25 = longitude;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Queueing up hiking coordinate check for: %{private}f, %{private}f", &v20, 0x20u);
  }

  longitude = [_MapsCoordinateKey coordinateKeyFromCoordinate:latitude, longitude];
  keyEnumerator = [(NSMapTable *)self->_hikingCoordinateChecks keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v12 = [allObjects containsObject:longitude];

  v13 = sub_10000B11C();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v20 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Existing check for this coordinate is already in flight; adding completion block to the list", &v20, 0xCu);
    }

    v15 = [(NSMapTable *)self->_hikingCoordinateChecks objectForKey:longitude];
    v16 = [handlerCopy copy];
    v17 = objc_retainBlock(v16);
    [v15 addObject:v17];
  }

  else
  {
    if (v14)
    {
      v20 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] There are no existing checks for this coordinate in flight; creating new task", &v20, 0xCu);
    }

    v18 = [(NSMapTable *)self->_hikingCoordinateChecks count];
    v19 = [handlerCopy copy];
    v15 = [NSMutableSet setWithObject:v19];

    [(NSMapTable *)self->_hikingCoordinateChecks setObject:v15 forKey:longitude];
    if (!v18)
    {
      [(ChromeViewController *)self _checkHikingCoordinate:latitude, longitude];
    }
  }
}

- (void)updateHikingMapConfiguration
{
  shouldUseHikingMap = [(ChromeViewController *)self shouldUseHikingMap];
  shouldForceExploreMap = [(ChromeViewController *)self shouldForceExploreMap];
  if (shouldForceExploreMap)
  {
    if (self->_hasForcedExploreModernMap)
    {
      goto LABEL_16;
    }

    v5 = sub_10000B11C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forcing mapType to Explore + Modern Map", buf, 2u);
    }

    mapView = [(ChromeViewController *)self mapView];
    v7 = mapView;
    if (mapView)
    {
      [mapView _cartographicConfiguration];
    }

    else
    {
      v33 = 0;
      v32 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v15 = *&buf[16];
    *&self->_originalConfiguration.style = *buf;
    *&self->_originalConfiguration.projection = v15;
    *&self->_originalConfiguration.mapkitUsage = v32;
    v16 = v33;
    *&self->_originalConfiguration.gridOnly = v33;
    v29 = *&self->_originalConfiguration.mapkitUsage;
    v30 = v16;

    if (sub_10000FA08(self) != 5)
    {
      mapView2 = [(ChromeViewController *)self mapView];
      [mapView2 setOverrideUserInterfaceStyle:0];

      _maps_mapsSceneDelegate = [(ChromeViewController *)self _maps_mapsSceneDelegate];
      window = [_maps_mapsSceneDelegate window];
      [window setOverrideUserInterfaceStyle:0];
    }

    mapView3 = [(ChromeViewController *)self mapView];
    *buf = xmmword_1011F07A0;
    *&buf[16] = xmmword_1011E1D30;
    v32 = v29;
    v33 = v30;
    [mapView3 _setCartographicConfiguration:buf];
    v14 = 1;
  }

  else
  {
    if (!self->_hasForcedExploreModernMap)
    {
      goto LABEL_16;
    }

    style = self->_originalConfiguration.style;
    emphasis = self->_originalConfiguration.emphasis;
    projection = self->_originalConfiguration.projection;
    terrainMode = self->_originalConfiguration.terrainMode;
    v27 = *&self->_originalConfiguration.mapkitUsage;
    v28 = *&self->_originalConfiguration.gridOnly;
    v12 = sub_10000B11C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      *&buf[4] = style;
      *&buf[12] = 2048;
      *&buf[14] = emphasis;
      *&buf[22] = 2048;
      *&buf[24] = projection;
      LOWORD(v32) = 2048;
      *(&v32 + 2) = terrainMode;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Restoring configuration, style %ld, emphasis %ld, projection %ld, terrainMode %ld", buf, 0x2Au);
    }

    mapView3 = [(ChromeViewController *)self mapView];
    *buf = style;
    *&buf[8] = emphasis;
    *&buf[16] = projection;
    *&buf[24] = terrainMode;
    v32 = v27;
    v33 = v28;
    [mapView3 _setCartographicConfiguration:buf];
    v14 = 0;
  }

  self->_hasForcedExploreModernMap = v14;
  [(ChromeViewController *)self didUpdateForcedExploreMapConfiguration:shouldForceExploreMap];
LABEL_16:
  v20 = [(ChromeViewController *)self mapView:v27];
  preferredConfiguration = [v20 preferredConfiguration];

  if ([preferredConfiguration conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
  {
    v22 = preferredConfiguration;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if (v23)
  {
    v24 = sub_10000B11C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"NO";
      if (shouldUseHikingMap)
      {
        v25 = @"YES";
      }

      v26 = v25;
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "updateHikingMapConfiguration showsTopographicFeatures: %{public}@", buf, 0xCu);
    }

    [v23 setShowsTopographicFeatures:shouldUseHikingMap];
  }
}

- (BOOL)shouldForceExploreMap
{
  allTokenReasons = [(MapsTokenStorage *)self->_hikingMapTokens allTokenReasons];
  v3 = [allTokenReasons containsObject:@"mapType"];

  return v3;
}

- (void)resetForcedExploreModernMapFlag
{
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing forced Explore + Modern Map flag", v4, 2u);
  }

  self->_hasForcedExploreModernMap = 0;
  [(ChromeViewController *)self didUpdateForcedExploreMapConfiguration:0];
}

- (id)acquireExploreMapHikingMapToken
{
  hikingMapTokens = self->_hikingMapTokens;
  v6 = @"reason";
  v7 = @"mapType";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [(MapsTokenStorage *)hikingMapTokens tokenWithUserInfo:v3];

  return v4;
}

- (id)acquireHikingMapToken
{
  hikingMapTokens = self->_hikingMapTokens;
  v6 = @"reason";
  v7 = @"none";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [(MapsTokenStorage *)hikingMapTokens tokenWithUserInfo:v3];

  return v4;
}

- (void)_freezeMapInsetsLayoutGuideIfPermitted:(BOOL)permitted
{
  v4 = [(ChromeViewController *)self freezesMapInsetsLayoutGuide]&& permitted;
  if (self->_frozenMapInsetsConstraints)
  {
    v5 = sub_10000B11C();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      [NSLayoutConstraint deactivateConstraints:self->_frozenMapInsetsConstraints];
      frozenMapInsetsConstraints = self->_frozenMapInsetsConstraints;
      self->_frozenMapInsetsConstraints = 0;

      goto LABEL_10;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    *buf = 138543362;
    v51 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Unfreezing map insets layout guide", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  if (!v4)
  {
    return;
  }

  mapView = [(ChromeViewController *)self mapView];
  [mapView _edgeInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = sub_10000B11C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    selfCopy2 = self;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v25, selfCopy2, v27];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v25, selfCopy2];
LABEL_17:

    v54.top = v15;
    v54.left = v17;
    v54.bottom = v19;
    v54.right = v21;
    v29 = NSStringFromUIEdgeInsets(v54);
    *buf = 138543618;
    v51 = selfCopy2;
    v52 = 2114;
    v53 = v29;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}@] Freezing map insets layout guide to %{public}@", buf, 0x16u);
  }

  view = [(ChromeViewController *)self view];
  mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
  topAnchor = [mapInsetsLayoutGuide topAnchor];
  topAnchor2 = [view topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v15];
  mapInsetsLayoutGuide2 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  leftAnchor = [mapInsetsLayoutGuide2 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v40 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v17];
  bottomAnchor = [view bottomAnchor];
  mapInsetsLayoutGuide3 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  bottomAnchor2 = [mapInsetsLayoutGuide3 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v19];
  rightAnchor = [view rightAnchor];
  mapInsetsLayoutGuide4 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  rightAnchor2 = [mapInsetsLayoutGuide4 rightAnchor];
  v36 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v21];
  v37 = [MapsEdgeConstraints edgeConstraintsWithTop:v41 leading:v40 bottom:v32 trailing:v36];
  allConstraints = [v37 allConstraints];
  v39 = self->_frozenMapInsetsConstraints;
  self->_frozenMapInsetsConstraints = allConstraints;

  [NSLayoutConstraint activateConstraints:self->_frozenMapInsetsConstraints];
}

- (void)clearMapGesturesAndAnimations
{
  mapView = [(ChromeViewController *)self mapView];
  [mapView _clearGesturesAndAnimations];
}

- (void)setLabelEdgeWidths:(UIEdgeInsets)widths
{
  if (self->_usesFadingLabels)
  {
    right = widths.right;
    bottom = widths.bottom;
    left = widths.left;
    top = widths.top;
    mapView = [(ChromeViewController *)self mapView];
    [mapView _labelEdgeWidths];
    if (left == v11 && top == v8 && right == v10 && bottom == v9)
    {
    }

    else
    {
      if (left == self->_labelEdgeWidths.left && top == self->_labelEdgeWidths.top && right == self->_labelEdgeWidths.right)
      {
        v17 = self->_labelEdgeWidths.bottom;

        if (bottom == v17)
        {
          return;
        }
      }

      else
      {
      }

      self->_labelEdgeWidths.top = top;
      self->_labelEdgeWidths.left = left;
      self->_labelEdgeWidths.bottom = bottom;
      self->_labelEdgeWidths.right = right;

      [(ChromeViewController *)self setNeedsUpdateComponent:@"labelInsetsAndWidths" animated:1];
    }
  }
}

- (void)setLabelEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  mapView = [(ChromeViewController *)self mapView];
  [mapView _labelEdgeInsets];
  if (left == v11 && top == v8 && right == v10 && bottom == v9)
  {
  }

  else
  {
    if (left == self->_labelEdgeInsets.left && top == self->_labelEdgeInsets.top && right == self->_labelEdgeInsets.right)
    {
      v17 = self->_labelEdgeInsets.bottom;

      if (bottom == v17)
      {
        return;
      }
    }

    else
    {
    }

    self->_labelEdgeInsets.top = top;
    self->_labelEdgeInsets.left = left;
    self->_labelEdgeInsets.bottom = bottom;
    self->_labelEdgeInsets.right = right;

    [(ChromeViewController *)self setNeedsUpdateComponent:@"labelInsetsAndWidths" animated:1];
  }
}

- (void)_updateMapLabelInsetsWithAnimation:(id)animation
{
  v3 = *&self->_labelEdgeInsets.bottom;
  v6 = *&self->_labelEdgeInsets.top;
  v7 = v3;
  v4 = *&self->_labelEdgeWidths.bottom;
  v8 = *&self->_labelEdgeWidths.top;
  v9 = v4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E49B90;
  v5[3] = &unk_101656150;
  v5[4] = self;
  [animation addPreparation:v5 animations:0 completion:0];
}

- (void)_updateMapEdgeInsetsForContext:(id)context withAnimation:(id)animation
{
  contextCopy = context;
  animationCopy = animation;
  v72 = 0;
  v73 = &v72;
  v74 = 0x4010000000;
  v75 = &unk_1014C0133;
  v8 = UIEdgeInsetsNull[1];
  v76 = UIEdgeInsetsNull[0];
  v77 = v8;
  v9 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![contextCopy showsMapView])
  {
    goto LABEL_19;
  }

  v10 = [(ChromeViewController *)self contextMapInsetsEdgesRespectingSafeAreaInsets:contextCopy];
  v11 = v10;
  if (v10)
  {
    topConstraint = [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints topConstraint];
    if ((v11 & 2) == 0)
    {
LABEL_5:
      leadingConstraint = 0;
      if ((v11 & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      bottomConstraint = [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints bottomConstraint];
      if ((v11 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    topConstraint = 0;
    if ((v10 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  leadingConstraint = [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints leadingConstraint];
  if ((v11 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  bottomConstraint = 0;
  if ((v11 & 8) == 0)
  {
LABEL_7:
    trailingConstraint = 0;
    goto LABEL_12;
  }

LABEL_11:
  trailingConstraint = [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints trailingConstraint];
LABEL_12:
  mapView = [MapsEdgeConstraints edgeConstraintsWithTop:topConstraint leading:leadingConstraint bottom:bottomConstraint trailing:trailingConstraint];
  if ((v11 & 8) != 0)
  {

    if ((v11 & 4) == 0)
    {
LABEL_14:
      if ((v11 & 2) == 0)
      {
        goto LABEL_15;
      }

LABEL_29:

      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_14;
  }

  if ((v11 & 2) != 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  if (v11)
  {
LABEL_16:
  }

LABEL_17:
  allConstraints = [mapView allConstraints];
  [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints activeConstraints];
  v18 = v9 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
  v19 = [v18 count];
  if (v19 != [allConstraints count])
  {
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100E4A494;
    v68[3] = &unk_1016560E8;
    v68[4] = self;
    v49 = allConstraints;
    v69 = v49;
    v70 = &v72;
    v71 = v11;
    [animationCopy addPreparation:v68];

LABEL_32:
LABEL_33:
    [animationCopy setOptions:{objc_msgSend(animationCopy, "options", *&v51, *&v52, *&v53, *&v54) | 0x50006}];
    [(ChromeViewController *)self mapInsetsUpdateAnimationDuration];
    [animationCopy setDuration:?];
    isAnimated = [animationCopy isAnimated];
    v61 = _NSConcreteStackBlock;
    v62 = *(v9 + 180);
    v63 = sub_100E4AAF8;
    v64 = &unk_1016613E0;
    selfCopy = self;
    v66 = &v72;
    v67 = isAnimated;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = v62;
    v59[2] = sub_100E4AEF4;
    v59[3] = &unk_1016574C0;
    v59[4] = self;
    v60 = isAnimated;
    [animationCopy addAnimations:&v61 completion:v59];
    goto LABEL_34;
  }

LABEL_19:
  mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
  [mapInsetsLayoutGuide layoutFrame];
  v57 = v22;
  v58 = v21;
  rect1 = v23;
  v25 = v24;
  view = [(ChromeViewController *)self view];
  [view bounds];
  v53 = v28;
  v54 = v27;
  v51 = v30;
  v52 = v29;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v78.origin.y = v57;
  v78.origin.x = v58;
  v78.size.width = rect1;
  v78.size.height = v25;
  v86.origin.x = CGRectZero.origin.x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  v34 = CGRectEqualToRect(v78, v86);
  left = UIEdgeInsetsZero.left;
  top = UIEdgeInsetsZero.top;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  if (!v34)
  {
    v79.origin.y = v53;
    v79.origin.x = v54;
    v79.size.height = v51;
    v79.size.width = v52;
    v87.origin.x = CGRectZero.origin.x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    if (!CGRectEqualToRect(v79, v87))
    {
      v80.origin.y = v57;
      v80.origin.x = v58;
      v80.size.width = rect1;
      v80.size.height = v25;
      top = CGRectGetMinY(v80);
      v81.origin.y = v57;
      v81.origin.x = v58;
      v81.size.width = rect1;
      v81.size.height = v25;
      left = CGRectGetMinX(v81);
      v82.origin.y = v53;
      v82.origin.x = v54;
      v82.size.height = v51;
      v82.size.width = v52;
      v38 = CGRectGetHeight(v82);
      v83.origin.y = v57;
      v83.origin.x = v58;
      v83.size.width = rect1;
      v83.size.height = v25;
      MaxY = CGRectGetMaxY(v83);
      v84.origin.y = v53;
      v84.origin.x = v54;
      v84.size.height = v51;
      v84.size.width = v52;
      v40 = CGRectGetWidth(v84);
      v85.origin.y = v57;
      v85.origin.x = v58;
      v85.size.width = rect1;
      v85.size.height = v25;
      bottom = v38 - MaxY;
      right = v40 - CGRectGetMaxX(v85);
    }
  }

  v41 = v73;
  v73[4] = top;
  v41[5] = left;
  v41[6] = bottom;
  v41[7] = right;

  v42 = v73;
  mapView = [(ChromeViewController *)self mapView];
  [mapView _edgeInsets];
  v46 = v45;
  if (v42[5] != v47 || v42[4] != v43 || v42[7] != v44)
  {
    goto LABEL_32;
  }

  v48 = v42[6];

  if (v48 != v46)
  {
    goto LABEL_33;
  }

LABEL_34:
  _Block_object_dispose(&v72, 8);
}

- (void)_refreshMapInsetsConstraintsForContext:(id)context animated:(BOOL)animated updateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  animatedCopy = animated;
  contextCopy = context;
  v8 = [(ChromeViewController *)self isTopContext:contextCopy];
  v9 = contextCopy;
  if (v8)
  {
    v10 = [(NSMapTable *)self->_mapInsetsConstraintsByContext objectForKey:contextCopy];
    currentContextMapInsetsEdgeConstraints = self->_currentContextMapInsetsEdgeConstraints;
    if (currentContextMapInsetsEdgeConstraints != v10)
    {
      if (currentContextMapInsetsEdgeConstraints)
      {
        allConstraints = [(MapsEdgeConstraints *)currentContextMapInsetsEdgeConstraints allConstraints];
        [NSLayoutConstraint deactivateConstraints:allConstraints];

        v13 = self->_currentContextMapInsetsEdgeConstraints == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v10)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      objc_storeStrong(&self->_currentContextMapInsetsEdgeConstraints, v10);
      if (v10)
      {
        allConstraints2 = [(MapsEdgeConstraints *)v10 allConstraints];
        [NSLayoutConstraint activateConstraints:allConstraints2];
      }

      if (!v14 && neededCopy)
      {
        [(ChromeViewController *)self setNeedsUpdateComponent:@"mapInsets" animated:animatedCopy];
      }
    }

    v9 = contextCopy;
  }
}

- (void)setMapEdgeInsets:(UIEdgeInsets)insets animated:(BOOL)animated forContext:(id)context
{
  animatedCopy = animated;
  bottom = insets.bottom;
  right = insets.right;
  top = insets.top;
  left = insets.left;
  contextCopy = context;
  v8.f64[0] = top;
  v8.f64[1] = left;
  v9.f64[0] = bottom;
  v9.f64[1] = right;
  v55 = contextCopy;
  if (vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *&UIEdgeInsetsZero.top), vceqq_f64(v9, *&UIEdgeInsetsZero.bottom))), 0xFuLL))))
  {
    v23 = [(NSMapTable *)self->_mapInsetsConstraintsByContext objectForKey:contextCopy];
    [(NSMapTable *)self->_mapInsetsConstraintsByContext removeObjectForKey:v55];
    if (v23)
    {
      [(ChromeViewController *)self _refreshMapInsetsConstraintsForContext:v55 animated:animatedCopy updateIfNeeded:1];
      [(ChromeViewController *)self updateComponentsIfNeeded];
    }
  }

  else
  {
    [(ChromeViewController *)self mapEdgeInsetsForContext:contextCopy];
    v15 = left == v13;
    v14 = top;
    v15 = v15 && top == v10;
    v16 = bottom;
    if (v15 && right == v12 && bottom == v11)
    {
      goto LABEL_24;
    }

    mapInsetsConstraintsByContext = self->_mapInsetsConstraintsByContext;
    v20 = v55;
    if (!mapInsetsConstraintsByContext)
    {
      v21 = [NSMapTable weakToStrongObjectsMapTable:bottom];
      v22 = self->_mapInsetsConstraintsByContext;
      self->_mapInsetsConstraintsByContext = v21;

      v20 = v55;
      mapInsetsConstraintsByContext = self->_mapInsetsConstraintsByContext;
    }

    v23 = [(NSMapTable *)mapInsetsConstraintsByContext objectForKey:v20, v16, v14, *&top];
    mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
    owningView = [mapInsetsLayoutGuide owningView];

    if (v23)
    {
      topConstraint = [v23 topConstraint];
      [topConstraint setConstant:*&v51];

      leftConstraint = [v23 leftConstraint];
      [leftConstraint setConstant:left];

      bottomConstraint = [v23 bottomConstraint];
      [bottomConstraint setConstant:bottom];

      rightConstraint = [v23 rightConstraint];
      [rightConstraint setConstant:right];

      if ([(ChromeViewController *)self isTopContext:v55])
      {
        [(ChromeViewController *)self setNeedsUpdateComponent:@"mapInsets" animated:animatedCopy];
      }
    }

    else
    {
      mapInsetsLayoutGuide2 = [(ChromeViewController *)self mapInsetsLayoutGuide];
      topAnchor = [mapInsetsLayoutGuide2 topAnchor];
      topAnchor2 = [owningView topAnchor];
      LODWORD(v33) = 1148846080;
      v51 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:*&v51 priority:v33];

      mapInsetsLayoutGuide3 = [(ChromeViewController *)self mapInsetsLayoutGuide];
      leftAnchor = [mapInsetsLayoutGuide3 leftAnchor];
      leftAnchor2 = [owningView leftAnchor];
      LODWORD(v37) = 1148846080;
      v38 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:left priority:v37];

      bottomAnchor = [owningView bottomAnchor];
      mapInsetsLayoutGuide4 = [(ChromeViewController *)self mapInsetsLayoutGuide];
      bottomAnchor2 = [mapInsetsLayoutGuide4 bottomAnchor];
      LODWORD(v42) = 1148846080;
      v43 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:bottom priority:v42];

      rightAnchor = [owningView rightAnchor];
      mapInsetsLayoutGuide5 = [(ChromeViewController *)self mapInsetsLayoutGuide];
      rightAnchor2 = [mapInsetsLayoutGuide5 rightAnchor];
      LODWORD(v47) = 1148846080;
      [rightAnchor constraintGreaterThanOrEqualToAnchor:rightAnchor2 constant:right priority:v47];
      v49 = v48 = owningView;

      v23 = [MapsEdgeConstraints edgeConstraintsWithTop:v51 left:v38 bottom:v43 right:v49];
      [(NSMapTable *)self->_mapInsetsConstraintsByContext setObject:v23 forKey:v55];
      [(ChromeViewController *)self _refreshMapInsetsConstraintsForContext:v55 animated:animatedCopy updateIfNeeded:1];

      owningView = v48;
    }

    if (![(ChromeViewController *)self isTransitioning])
    {
      [(ChromeViewController *)self updateComponentsIfNeeded];
    }
  }

LABEL_24:
}

- (unint64_t)contextMapInsetsEdgesRespectingSafeAreaInsets:(id)insets
{
  insetsCopy = insets;
  mapInsetEdgesRespectingSafeAreaInsets = [(ChromeViewController *)self mapInsetEdgesRespectingSafeAreaInsets];
  if (objc_opt_respondsToSelector())
  {
    mapInsetEdgesRespectingSafeAreaInsets = [insetsCopy mapInsetEdgesRespectingSafeAreaInsets];
  }

  return mapInsetEdgesRespectingSafeAreaInsets;
}

- (UIEdgeInsets)mapEdgeInsetsForContext:(id)context
{
  v3 = [(NSMapTable *)self->_mapInsetsConstraintsByContext objectForKey:context];
  v4 = v3;
  if (v3)
  {
    topConstraint = [v3 topConstraint];
    [topConstraint constant];
    top = v6;
    leftConstraint = [v4 leftConstraint];
    [leftConstraint constant];
    left = v9;
    bottomConstraint = [v4 bottomConstraint];
    [bottomConstraint constant];
    bottom = v12;
    rightConstraint = [v4 rightConstraint];
    [rightConstraint constant];
    right = v15;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v17 = top;
  v18 = left;
  v19 = bottom;
  v20 = right;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (!+[ChromeDelegateProxy selectorIsProxiedDelegateMethod:](ChromeMapViewDelegateProxy, "selectorIsProxiedDelegateMethod:", [invocationCopy selector]) || objc_msgSend(objc_opt_class(), "instancesRespondToSelector:", objc_msgSend(invocationCopy, "selector")))
  {
    v5.receiver = self;
    v5.super_class = ChromeViewController;
    [(ChromeViewController *)&v5 forwardInvocation:invocationCopy];
  }
}

- (void)unregisterAdditionalMapViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
LABEL_10:

      v12 = selfCopy;
      v13 = delegateCopy;
      if (!v13)
      {
        v18 = @"<nil>";
        goto LABEL_18;
      }

      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      if (objc_opt_respondsToSelector())
      {
        v16 = [v13 performSelector:"accessibilityIdentifier"];
        v17 = v16;
        if (v16 && ![v16 isEqualToString:v15])
        {
          v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

          goto LABEL_16;
        }
      }

      v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_16:

LABEL_18:
      *buf = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering additional map view delegate: %@", buf, 0x16u);

      goto LABEL_19;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    goto LABEL_10;
  }

LABEL_19:

  [(ChromeDelegateProxy *)self->_mapViewDelegateProxy removeAdditionalDelegate:delegateCopy forProtocol:&OBJC_PROTOCOL___MKMapViewDelegatePrivate];
}

- (void)registerAdditionalMapViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = &OBJC_PROTOCOL___MKMapViewDelegatePrivate;
  if (sub_100010C34(delegateCopy, v5))
  {
    goto LABEL_2;
  }

  v20 = sub_10006D178();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = delegateCopy;
    if (!v21)
    {
      v26 = @"<nil>";
      goto LABEL_32;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_30;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_30:

LABEL_32:
    v27 = [NSString stringWithFormat:@"Trying to register additional map view delegate %@ but it does not conform to protocol", v26];
    *buf = 136316162;
    v31 = "[ChromeViewController registerAdditionalMapViewDelegate:]";
    v32 = 2080;
    v33 = "ChromeViewController.m";
    v34 = 1024;
    v35 = 1387;
    v36 = 2080;
    v37 = "MapsCachedConformsToProtocol(delegate, protocol)";
    v38 = 2112;
    v39 = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
  }

  if (sub_100E03634())
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v31 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

LABEL_2:
  v6 = sub_10000B11C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
LABEL_11:

      v13 = selfCopy;
      v14 = delegateCopy;
      if (!v14)
      {
        v19 = @"<nil>";
        goto LABEL_19;
      }

      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      if (objc_opt_respondsToSelector())
      {
        v17 = [v14 performSelector:"accessibilityIdentifier"];
        v18 = v17;
        if (v17 && ![v17 isEqualToString:v16])
        {
          v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

          goto LABEL_17;
        }
      }

      v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

LABEL_19:
      *buf = 138543618;
      v31 = v13;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering additional map view delegate: %@", buf, 0x16u);

      goto LABEL_20;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_9:

    goto LABEL_11;
  }

LABEL_20:

  [(ChromeDelegateProxy *)self->_mapViewDelegateProxy addAdditionalDelegate:delegateCopy forProtocol:v5];
}

- (id)mapViewDelegateForSelector:(SEL)selector
{
  mapViewDelegate = [(ChromeViewController *)self mapViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = mapViewDelegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setVKApplicationUILayout:(int64_t)layout
{
  mapView = [(ChromeViewController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  applicationUILayout = [_mapLayer applicationUILayout];

  if (applicationUILayout != layout)
  {
    mapView2 = [(ChromeViewController *)self mapView];
    _mapLayer2 = [mapView2 _mapLayer];
    [_mapLayer2 setApplicationUILayout:layout];
  }
}

- (void)_setLocalizedStringsForMapView:(id)view
{
  viewCopy = view;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("ChromeViewController.workerQueue", v4);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E4C084;
  block[3] = &unk_101661B18;
  v8 = viewCopy;
  v6 = viewCopy;
  dispatch_async(v5, block);
}

- (void)installMapView:(id)view
{
  viewCopy = view;
  isViewLoaded = [(ChromeViewController *)self isViewLoaded];
  view2 = sub_10000B11C();
  v7 = os_log_type_enabled(view2, OS_LOG_TYPE_INFO);
  if ((isViewLoaded & 1) == 0)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_24;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

        goto LABEL_17;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_17:

LABEL_24:
    *buf = 138543362;
    v27 = selfCopy;
    _os_log_impl(&_mh_execute_header, view2, OS_LOG_TYPE_INFO, "[%{public}@] _installMapView: view not yet loaded", buf, 0xCu);

    goto LABEL_25;
  }

  if (v7)
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_19;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy2, v12];

        goto LABEL_9;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy2];
LABEL_9:

LABEL_19:
    mapReplacementView = selfCopy2->_mapReplacementView;
    *buf = 138543874;
    v27 = selfCopy2;
    v28 = 2048;
    v29 = viewCopy;
    v30 = 2048;
    v31 = mapReplacementView;
    _os_log_impl(&_mh_execute_header, view2, OS_LOG_TYPE_INFO, "[%{public}@] _installMapView: installing %p (current _mapReplacementView: %p)", buf, 0x20u);
  }

  superview = [viewCopy superview];
  view = [(ChromeViewController *)self view];

  if (superview != view)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100E4C788;
    v23[3] = &unk_101661A90;
    v24 = viewCopy;
    selfCopy3 = self;
    [UIView performWithoutAnimation:v23];
  }

  view2 = [(ChromeViewController *)self view];
  [view2 sendSubviewToBack:viewCopy];
LABEL_25:
}

- (void)_updateComponentsIfNeeded:(BOOL)needed forceImmediateUpdate:(BOOL)update forTiming:(unint64_t)timing withAnimation:(id)animation
{
  updateCopy = update;
  animationCopy = animation;
  [(NSTimer *)self->_scheduledComponentUpdateTimer invalidate];
  scheduledComponentUpdateTimer = self->_scheduledComponentUpdateTimer;
  self->_scheduledComponentUpdateTimer = 0;

  v11 = sub_10000B11C();
  selfCopy = self;
  timingCopy = timing;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    selfCopy2 = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = animationCopy;
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy2, v16];

        timing = timingCopy;
LABEL_7:

        v19 = selfCopy2;
        if (timing > 3)
        {
          v20 = v17;
          if (timing != 4)
          {
            if (timing == 0xFFFFFFFF)
            {
              v21 = "any";
              goto LABEL_17;
            }

            goto LABEL_14;
          }

          v21 = "context becoming top";
        }

        else
        {
          v20 = v17;
          if (timing != 1)
          {
            if (timing == 2)
            {
              v21 = "context resigning top";
              goto LABEL_17;
            }

LABEL_14:
            v21 = "unknown";
            goto LABEL_17;
          }

          v21 = "on-demand";
        }

LABEL_17:
        v22 = v20;
        v23 = v20;
        if (!v23)
        {
          v28 = @"<nil>";
          goto LABEL_25;
        }

        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        if (objc_opt_respondsToSelector())
        {
          v26 = [v23 performSelector:"accessibilityIdentifier"];
          v27 = v26;
          if (v26 && ![v26 isEqualToString:v25])
          {
            v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

            goto LABEL_23;
          }
        }

        v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_23:

LABEL_25:
        *buf = 138543874;
        v109 = v19;
        v110 = 2080;
        v111 = v21;
        v112 = 2114;
        v113 = v28;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Evaluate component update for timing '%s', animation %{public}@...", buf, 0x20u);

        animationCopy = v22;
        timing = timingCopy;
        goto LABEL_26;
      }

      timing = timingCopy;
    }

    v17 = animationCopy;
    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy2];
    goto LABEL_7;
  }

LABEL_26:

  componentsNeedingUpdate = self->_componentsNeedingUpdate;
  if (!componentsNeedingUpdate)
  {
    v30 = objc_alloc_init(NSMutableDictionary);
    v31 = self->_componentsNeedingUpdate;
    self->_componentsNeedingUpdate = v30;

    componentsNeedingUpdate = self->_componentsNeedingUpdate;
  }

  v32 = [(NSMutableDictionary *)componentsNeedingUpdate mutableCopy];
  if (![(NSMutableSet *)self->_componentsBeingUpdated count])
  {
    goto LABEL_46;
  }

  allObjects = sub_10000B11C();
  v34 = os_log_type_enabled(allObjects, OS_LOG_TYPE_DEBUG);
  if (!updateCopy)
  {
    if (!v34)
    {
LABEL_44:

      allObjects = [(NSMutableSet *)self->_componentsBeingUpdated allObjects];
      [v32 removeObjectsForKeys:allObjects];
      goto LABEL_45;
    }

    selfCopy3 = self;
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    if (objc_opt_respondsToSelector())
    {
      v45 = [(ChromeViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v46 = v45;
      if (v45 && ![v45 isEqualToString:v44])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v44, selfCopy3, v46];

        goto LABEL_43;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v44, selfCopy3];
LABEL_43:

    componentsBeingUpdated = self->_componentsBeingUpdated;
    *buf = 138543618;
    v109 = selfCopy3;
    v110 = 2112;
    v111 = componentsBeingUpdated;
    _os_log_impl(&_mh_execute_header, allObjects, OS_LOG_TYPE_DEBUG, "[%{public}@] - Skipping components in the middle of updates (they may update again later): %@", buf, 0x16u);

    timing = timingCopy;
    goto LABEL_44;
  }

  if (v34)
  {
    selfCopy4 = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    if (objc_opt_respondsToSelector())
    {
      v38 = [(ChromeViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v39 = v38;
      if (v38 && ![v38 isEqualToString:v37])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v37, selfCopy4, v39];

        goto LABEL_36;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v37, selfCopy4];
LABEL_36:

    v41 = self->_componentsBeingUpdated;
    *buf = 138543618;
    v109 = selfCopy4;
    v110 = 2112;
    v111 = v41;
    _os_log_impl(&_mh_execute_header, allObjects, OS_LOG_TYPE_DEBUG, "[%{public}@] - Forcing immediate update, not skipping components in the middle of updates: %@", buf, 0x16u);

    timing = timingCopy;
  }

LABEL_45:

LABEL_46:
  if (needed)
  {
    goto LABEL_79;
  }

  v93 = animationCopy;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obja = [(ChromeViewController *)self allComponents];
  v49 = [obja countByEnumeratingWithState:&v102 objects:v107 count:16];
  if (!v49)
  {
    goto LABEL_78;
  }

  v50 = v49;
  v51 = *v103;
  do
  {
    v52 = 0;
    do
    {
      if (*v103 != v51)
      {
        objc_enumerationMutation(obja);
      }

      v53 = *(*(&v102 + 1) + 8 * v52);
      v54 = [v32 objectForKeyedSubscript:v53];

      if (!v54)
      {
        v55 = v32;
        v56 = [(ChromeViewController *)self preferredUpdateTimingForComponent:v53];
        if ((v56 & timing) != 0)
        {
          v57 = objc_alloc_init(ChromeComponentUpdateInfo);
          v106 = v57;
          v58 = [NSArray arrayWithObjects:&v106 count:1];
          [v32 setObject:v58 forKeyedSubscript:v53];

LABEL_73:
          goto LABEL_74;
        }

        v59 = v56;
        v57 = sub_10000B11C();
        if (!os_log_type_enabled(&v57->super, OS_LOG_TYPE_DEBUG))
        {
          v32 = v55;
          goto LABEL_73;
        }

        selfCopy5 = self;
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        if (objc_opt_respondsToSelector())
        {
          v63 = [(ChromeViewController *)selfCopy5 performSelector:"accessibilityIdentifier"];
          v64 = v63;
          if (!v63 || [v63 isEqualToString:v62])
          {

            goto LABEL_60;
          }

          v94 = [NSString stringWithFormat:@"%@<%p, %@>", v62, selfCopy5, v64];

          selfCopy5 = v94;
        }

        else
        {
LABEL_60:
          selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v62, selfCopy5];
        }

        if (v59 > 3)
        {
          timing = timingCopy;
          if (v59 == 4)
          {
            v66 = "context becoming top";
            goto LABEL_72;
          }

          if (v59 == 0xFFFFFFFFLL)
          {
            v66 = "any";
            goto LABEL_72;
          }
        }

        else
        {
          timing = timingCopy;
          if (v59 == 1)
          {
            v66 = "on-demand";
            goto LABEL_72;
          }

          if (v59 == 2)
          {
            v66 = "context resigning top";
LABEL_72:
            v32 = v55;
            *buf = 138543874;
            v109 = selfCopy5;
            v110 = 2112;
            v111 = v53;
            v112 = 2080;
            v113 = v66;
            _os_log_impl(&_mh_execute_header, &v57->super, OS_LOG_TYPE_DEBUG, "[%{public}@] - Skipping component %@, not the right timing (wants '%s')", buf, 0x20u);

            self = selfCopy;
            goto LABEL_73;
          }
        }

        v66 = "unknown";
        goto LABEL_72;
      }

LABEL_74:
      v52 = v52 + 1;
    }

    while (v50 != v52);
    v67 = [obja countByEnumeratingWithState:&v102 objects:v107 count:16];
    v50 = v67;
  }

  while (v67);
LABEL_78:

  animationCopy = v93;
LABEL_79:
  v68 = [v32 count];
  v69 = self->_componentsNeedingUpdate;
  if (!v68)
  {
    if (![(NSMutableDictionary *)self->_componentsNeedingUpdate count])
    {
      goto LABEL_110;
    }

    v83 = sub_10000B11C();
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
LABEL_100:

      goto LABEL_110;
    }

    selfCopy6 = self;
    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);
    if (objc_opt_respondsToSelector())
    {
      v87 = [(ChromeViewController *)selfCopy6 performSelector:"accessibilityIdentifier"];
      v88 = v87;
      if (v87 && ![v87 isEqualToString:v86])
      {
        selfCopy6 = [NSString stringWithFormat:@"%@<%p, %@>", v86, selfCopy6, v88];

        goto LABEL_99;
      }
    }

    selfCopy6 = [NSString stringWithFormat:@"%@<%p>", v86, selfCopy6];
LABEL_99:

    *buf = 138543362;
    v109 = selfCopy6;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEBUG, "[%{public}@] - No components left to update after skipping those in-flight, returning early", buf, 0xCu);

    goto LABEL_100;
  }

  allKeys = [v32 allKeys];
  [(NSMutableDictionary *)v69 removeObjectsForKeys:allKeys];

  self->_componentUpdateIsAnimated = 0;
  v71 = self->_componentsBeingUpdated;
  if (!v71)
  {
    v72 = objc_alloc_init(NSMutableSet);
    v73 = self->_componentsBeingUpdated;
    self->_componentsBeingUpdated = v72;

    v71 = self->_componentsBeingUpdated;
  }

  allKeys2 = [v32 allKeys];
  [(NSMutableSet *)v71 addObjectsFromArray:allKeys2];

  v75 = sub_10000B11C();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    selfCopy7 = self;
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_87;
    }

    v79 = [(ChromeViewController *)selfCopy7 performSelector:"accessibilityIdentifier"];
    v80 = v79;
    if (v79 && ![v79 isEqualToString:v78])
    {
      selfCopy7 = [NSString stringWithFormat:@"%@<%p, %@>", v78, selfCopy7, v80];
    }

    else
    {

LABEL_87:
      selfCopy7 = [NSString stringWithFormat:@"%@<%p>", v78, selfCopy7];
    }

    if (timingCopy > 3)
    {
      if (timingCopy == 4)
      {
        v82 = "context becoming top";
      }

      else
      {
        if (timingCopy != 0xFFFFFFFFLL)
        {
          goto LABEL_105;
        }

        v82 = "any";
      }
    }

    else if (timingCopy == 1)
    {
      v82 = "on-demand";
    }

    else
    {
      if (timingCopy == 2)
      {
        v82 = "context resigning top";
        goto LABEL_108;
      }

LABEL_105:
      v82 = "unknown";
    }

LABEL_108:
    allKeys3 = [v32 allKeys];
    *buf = 138543874;
    v109 = selfCopy7;
    v110 = 2080;
    v111 = v82;
    v112 = 2112;
    v113 = allKeys3;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "[%{public}@] - Commit update for timing '%s' with %@", buf, 0x20u);

    self = selfCopy;
  }

  allKeys4 = [v32 allKeys];
  v92 = [NSSet setWithArray:allKeys4];
  [(ChromeViewController *)self willUpdateComponents:v92 withAnimation:animationCopy];

  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_100E4D4FC;
  v99[3] = &unk_1016560A0;
  v99[4] = self;
  v101 = timingCopy;
  v100 = animationCopy;
  [v32 enumerateKeysAndObjectsUsingBlock:v99];

LABEL_110:
}

- (void)updateComponentsIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v5 = [GroupAnimation animationForAnimatedFlag:self->_componentUpdateIsAnimated];
  [(ChromeViewController *)self updateComponentsIfNeeded:neededCopy withAnimation:v5];
  [v5 runWithCurrentOptions];
}

- (unint64_t)preferredUpdateTimingForComponent:(id)component
{
  if (component == @"navigationDisplay")
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation
{
  componentCopy = component;
  animationCopy = animation;
  nextTopContext = [(ChromeViewController *)self nextTopContext];
  v11 = nextTopContext;
  if (nextTopContext)
  {
    topContext = nextTopContext;
  }

  else
  {
    topContext = [(ChromeViewController *)self topContext];
  }

  v13 = topContext;

  topContext2 = [(ChromeViewController *)self topContext];
  v15 = sub_10000B11C();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if ((timing & 4) != 0 && v13)
  {
    if (!v16)
    {
LABEL_49:

      goto LABEL_64;
    }

    v57 = topContext2;
    selfCopy = self;
    v61 = animationCopy;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
LABEL_31:

      v33 = selfCopy;
      v34 = "unknown";
      if (timing == 4)
      {
        v34 = "context becoming top";
      }

      timingCopy = timing;
      if (timing == 0xFFFFFFFF)
      {
        v34 = "any";
      }

      v56 = v34;
      topContext3 = [(ChromeViewController *)selfCopy topContext];
      if (!topContext3)
      {
        v40 = @"<nil>";
LABEL_43:

        v41 = v40;
        v42 = v13;
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        if (objc_opt_respondsToSelector())
        {
          v55 = v33;
          v45 = [v42 performSelector:"accessibilityIdentifier"];
          v46 = v45;
          if (v45 && ![v45 isEqualToString:v44])
          {
            v47 = [NSString stringWithFormat:@"%@<%p, %@>", v44, v42, v46];

            v33 = v55;
            goto LABEL_48;
          }

          v33 = v55;
        }

        v47 = [NSString stringWithFormat:@"%@<%p>", v44, v42];
LABEL_48:

        *buf = 138544386;
        v64 = v33;
        v65 = 2112;
        v66 = componentCopy;
        v67 = 2080;
        v68 = v56;
        v69 = 2112;
        v70 = v41;
        v71 = 2112;
        v72 = v47;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] Update component: %@ with timing %s (outgoing: %@ -> incoming: %@)", buf, 0x34u);

        timing = timingCopy;
        animationCopy = v61;
        topContext2 = v57;
        goto LABEL_49;
      }

      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      if (objc_opt_respondsToSelector())
      {
        v38 = [topContext3 performSelector:"accessibilityIdentifier"];
        v39 = v38;
        if (v38 && ![v38 isEqualToString:v37])
        {
          v40 = [NSString stringWithFormat:@"%@<%p, %@>", v37, topContext3, v39];

          goto LABEL_41;
        }
      }

      v40 = [NSString stringWithFormat:@"%@<%p>", v37, topContext3];
LABEL_41:

      goto LABEL_43;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy, v21];

        goto LABEL_13;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy];
LABEL_13:

    goto LABEL_31;
  }

  if (v16)
  {
    v62 = animationCopy;
    selfCopy2 = self;
    v24 = &selRef__updatePIPLayout;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
LABEL_23:

      v31 = selfCopy2;
      timingCopy2 = timing;
      if (timing > 3)
      {
        if (timing != 4)
        {
          if (timing == 0xFFFFFFFF)
          {
            v32 = "any";
            goto LABEL_53;
          }

          goto LABEL_50;
        }

        v32 = "context becoming top";
      }

      else
      {
        if (timing != 1)
        {
          if (timing == 2)
          {
            v32 = "context resigning top";
            goto LABEL_53;
          }

LABEL_50:
          v32 = "unknown";
          goto LABEL_53;
        }

        v32 = "on-demand";
      }

LABEL_53:
      topContext4 = [(ChromeViewController *)selfCopy2 topContext];
      if (!topContext4)
      {
        v54 = @"<nil>";
        goto LABEL_61;
      }

      v58 = topContext2;
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = v24[456];
      if (objc_opt_respondsToSelector())
      {
        v52 = [topContext4 performSelector:v51];
        v53 = v52;
        if (v52 && ![v52 isEqualToString:v50])
        {
          v54 = [NSString stringWithFormat:@"%@<%p, %@>", v50, topContext4, v53];

          goto LABEL_59;
        }
      }

      v54 = [NSString stringWithFormat:@"%@<%p>", v50, topContext4];
LABEL_59:

      topContext2 = v58;
LABEL_61:

      *buf = 138544130;
      v64 = v31;
      v65 = 2112;
      v66 = componentCopy;
      v67 = 2080;
      v68 = v32;
      v69 = 2112;
      v70 = v54;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] Update component: %@ with timing %s (top context: %@)", buf, 0x2Au);

      timing = timingCopy2;
      animationCopy = v62;
      goto LABEL_62;
    }

    v25 = topContext2;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    if (objc_opt_respondsToSelector())
    {
      v28 = [(ChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v27])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v27, selfCopy2, v29];

        goto LABEL_21;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v27, selfCopy2];
LABEL_21:

    topContext2 = v25;
    v24 = &selRef__updatePIPLayout;
    goto LABEL_23;
  }

LABEL_62:

  if (!v13)
  {
    v13 = topContext2;
  }

LABEL_64:
  if (componentCopy == @"mapInsets")
  {
    [(ChromeViewController *)self _updateMapEdgeInsetsForContext:v13 withAnimation:animationCopy];
  }

  else if (componentCopy == @"labelInsetsAndWidths")
  {
    [(ChromeViewController *)self _updateMapLabelInsetsWithAnimation:animationCopy];
  }

  else if (componentCopy == @"personalizedItemSources")
  {
    [(ChromeViewController *)self _updatePersonalizedItemSourcesForContext:v13 withAnimation:animationCopy];
  }

  else if (componentCopy == @"navigationDisplay")
  {
    [(ChromeViewController *)self _updateNavigationDisplayWithTiming:timing animation:animationCopy];
  }

  else if (componentCopy == @"routeAnnotations")
  {
    [(ChromeViewController *)self _updateRouteAnnotationsWithAnimation:animationCopy];
  }

  else if (componentCopy == @"fullscreenViewController")
  {
    [(ChromeViewController *)self _updateFullscreenViewControllerWithAnimation:animationCopy];
  }
}

- (void)setNeedsUpdateComponent:(id)component animated:(BOOL)animated completion:(id)completion
{
  componentCopy = component;
  completionCopy = completion;
  v10 = sub_10000B11C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v23 = selfCopy;
    v24 = 2112;
    v25 = componentCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Set needs update: %@", buf, 0x16u);
  }

  if (!self->_componentsNeedingUpdate)
  {
    v17 = objc_alloc_init(NSMutableDictionary);
    componentsNeedingUpdate = self->_componentsNeedingUpdate;
    self->_componentsNeedingUpdate = v17;
  }

  v19 = animated || self->_componentUpdateIsAnimated;
  self->_componentUpdateIsAnimated = v19;
  v20 = [(NSMutableDictionary *)self->_componentsNeedingUpdate objectForKeyedSubscript:componentCopy];
  if (!v20)
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:1];
    [(NSMutableDictionary *)self->_componentsNeedingUpdate setObject:v20 forKeyedSubscript:componentCopy];
  }

  v21 = [[ChromeComponentUpdateInfo alloc] initWithCompletionHandler:completionCopy];

  [v20 addObject:v21];
  [(ChromeViewController *)self _scheduleComponentUpdateTimerIfNeeded];
}

- (void)cancelDeferredAction:(id)action forContext:(id)context
{
  actionCopy = action;
  v6 = [(NSMapTable *)self->_deferredActionsByContext objectForKey:context];
  v7 = v6;
  if (v6)
  {
    [v6 removeObjectForKey:actionCopy];
  }
}

- (BOOL)hasDeferredAction:(id)action forContext:(id)context
{
  deferredActionsByContext = self->_deferredActionsByContext;
  if (!deferredActionsByContext)
  {
    return 0;
  }

  actionCopy = action;
  v7 = [(NSMapTable *)deferredActionsByContext objectForKey:context];
  v8 = [v7 objectForKeyedSubscript:actionCopy];

  v9 = v8 != 0;
  return v9;
}

- (void)whenContextNextBecomesCurrent:(id)current performAction:(id)action withBlock:(id)block
{
  currentCopy = current;
  actionCopy = action;
  blockCopy = block;
  if ([(ChromeViewController *)self isCurrentContext:currentCopy])
  {
    blockCopy[2](blockCopy, 1);
  }

  else
  {
    deferredActionsByContext = self->_deferredActionsByContext;
    if (!deferredActionsByContext)
    {
      v11 = +[NSMapTable weakToStrongObjectsMapTable];
      v12 = self->_deferredActionsByContext;
      self->_deferredActionsByContext = v11;

      deferredActionsByContext = self->_deferredActionsByContext;
    }

    v13 = [(NSMapTable *)deferredActionsByContext objectForKey:currentCopy];
    if (!v13)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      [(NSMapTable *)self->_deferredActionsByContext setObject:v13 forKey:currentCopy];
    }

    v14 = [blockCopy copy];
    [v13 setObject:v14 forKeyedSubscript:actionCopy];
  }
}

- (void)commitCoordinatedContextChange
{
  _contextCoordinatedScheduler = [(ChromeViewController *)self _contextCoordinatedScheduler];
  [_contextCoordinatedScheduler commit];
}

- (void)setFallbackContextCoordinationBlock:(id)block
{
  blockCopy = block;
  _contextCoordinatedScheduler = [(ChromeViewController *)self _contextCoordinatedScheduler];
  [_contextCoordinatedScheduler setFallbackBlock:blockCopy];
}

- (void)scheduleCoordinatedContextChange:(id)change completionHandler:(id)handler
{
  handlerCopy = handler;
  changeCopy = change;
  _contextCoordinatedScheduler = [(ChromeViewController *)self _contextCoordinatedScheduler];
  [_contextCoordinatedScheduler scheduleBlock:changeCopy completionHandler:handlerCopy];
}

- (void)removeContextStackObserver:(id)observer
{
  if (observer)
  {
    [(GEOObserverHashTable *)self->_stackObservers unregisterObserver:?];
  }
}

- (void)addContextStackObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    stackObservers = self->_stackObservers;
    v8 = observerCopy;
    if (!stackObservers)
    {
      v6 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___ChromeContextStackObserver queue:&_dispatch_main_q];
      v7 = self->_stackObservers;
      self->_stackObservers = v6;

      stackObservers = self->_stackObservers;
    }

    [(GEOObserverHashTable *)stackObservers registerObserver:v8];
    observerCopy = v8;
  }
}

- (void)_getContextsLeaving:(id *)leaving entering:(id *)entering fromPrevious:(id)previous incoming:(id)incoming
{
  previousCopy = previous;
  incomingCopy = incoming;
  if (leaving)
  {
    v11 = [[NSMutableSet alloc] initWithArray:previousCopy];
    if ([v11 count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = incomingCopy;
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        do
        {
          v16 = 0;
          do
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v11 removeObject:*(*(&v29 + 1) + 8 * v16)];
            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v14);
      }
    }

    v17 = v11;
    *leaving = v11;
  }

  if (entering)
  {
    v18 = [[NSMutableSet alloc] initWithArray:incomingCopy];
    if ([v18 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = previousCopy;
      v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v26;
        do
        {
          v23 = 0;
          do
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [v18 removeObject:{*(*(&v25 + 1) + 8 * v23), v25}];
            v23 = v23 + 1;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v21);
      }
    }

    v24 = v18;
    *entering = v18;
  }
}

- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  fromCopy = from;
  toCopy = to;
  animationCopy = animation;
  isAnimated = [animationCopy isAnimated];
  lastObject = [toCopy lastObject];
  lastObject2 = [fromCopy lastObject];
  objc_initWeak(&location, self);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [lastObject showsMapView])
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100E4F1C0;
    v39[3] = &unk_101661B98;
    objc_copyWeak(&v40, &location);
    [animationCopy addPreparation:v39];
    objc_destroyWeak(&v40);
  }

  v37 = 0;
  v38 = 0;
  [(ChromeViewController *)self _getContextsLeaving:&v38 entering:&v37 fromPrevious:fromCopy incoming:toCopy];
  v23 = isAnimated;
  v24 = toCopy;
  v25 = lastObject2;
  v22 = v38;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v37;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v15)
  {
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 enterStackInChromeViewController:self withAnimation:{animationCopy, v22}];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v15);
  }

  if (lastObject && lastObject != lastObject2)
  {
    if (![(ChromeViewController *)self isSuppressed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [lastObject becomeTopContextInChromeViewController:self withAnimation:animationCopy];
    }

    [(ChromeViewController *)self _refreshMapInsetsConstraintsForContext:lastObject animated:v23 updateIfNeeded:0, v22];
    [(ChromeViewController *)self _updateComponentsIfNeeded:0 forTiming:4 withAnimation:animationCopy];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100E4F21C;
    v30[3] = &unk_101656010;
    v30[4] = self;
    v31 = lastObject;
    v32 = v23;
    [animationCopy addAnimations:0 completion:v30];
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100E4F2F4;
  v26[3] = &unk_101656038;
  v26[4] = self;
  v19 = fromCopy;
  v27 = v19;
  v20 = v24;
  v28 = v20;
  v21 = v22;
  v29 = v21;
  [animationCopy addAnimations:0 completion:v26];

  objc_destroyWeak(&location);
}

- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  fromCopy = from;
  toCopy = to;
  animationCopy = animation;
  v44 = 0;
  v45 = 0;
  [(ChromeViewController *)self _getContextsLeaving:&v45 entering:&v44 fromPrevious:fromCopy incoming:toCopy];
  v11 = v45;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100E4FB84;
  v42[3] = &unk_101661A90;
  v42[4] = self;
  v12 = v44;
  v43 = v12;
  [animationCopy addPreparation:v42];
  [(GEOObserverHashTable *)self->_stackObservers chromeViewController:self willMoveFromContextStack:fromCopy toContextStack:toCopy];
  lastObject = [toCopy lastObject];
  lastObject2 = [fromCopy lastObject];
  objc_initWeak(&location, self);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([lastObject showsMapView] & 1) == 0)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100E4FCC4;
    v39[3] = &unk_1016619A8;
    objc_copyWeak(&v40, &location);
    [animationCopy addCompletion:v39];
    objc_destroyWeak(&v40);
  }

  if (lastObject2 && lastObject2 != lastObject && ![(ChromeViewController *)self isSuppressed]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [lastObject2 resignTopContextInChromeViewController:self withAnimation:animationCopy];
  }

  v27 = fromCopy;
  v28 = v12;
  v24 = lastObject2;
  v25 = lastObject;
  v26 = toCopy;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v15)
  {
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 leaveStackInChromeViewController:self withAnimation:animationCopy];
        }

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100E4FD30;
        v34[3] = &unk_101661738;
        v34[4] = v18;
        [animationCopy addCompletion:{v34, v24, v25}];
      }

      v15 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v15);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v28;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v20)
  {
    v21 = *v31;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v23 setChromeViewController:self];
        }

        if (objc_opt_respondsToSelector())
        {
          [v23 prepareToEnterStackInChromeViewController:self];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v20);
  }

  if (v25 != 0 && v24 != v25)
  {
    [(ChromeViewController *)self _updateComponentsIfNeeded:0 forTiming:2 withAnimation:animationCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_teardownContextTransition:(id)transition
{
  transitionCopy = transition;
  if (self->_currentContextTransition != transitionCopy)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [NSString stringWithFormat:@"Transition provided is not the same as the current transition"];
      v10 = 136316162;
      v11 = "[ChromeViewController _teardownContextTransition:]";
      v12 = 2080;
      v13 = "ChromeViewController.m";
      v14 = 1024;
      v15 = 719;
      v16 = 2080;
      v17 = "_currentContextTransition == transition";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v10, 0x30u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }
  }

  currentContextTransition = self->_currentContextTransition;
  if (currentContextTransition == transitionCopy)
  {
    self->_currentContextTransition = 0;
  }
}

- (void)_setContexts:(id)contexts animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  contextsCopy = contexts;
  completionCopy = completion;
  if ([(ChromeViewController *)self isTransitioning])
  {
    v10 = sub_10000B11C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      objc_initWeak(&buf, self);
      enterAnimation = [(ChromeContextTransition *)self->_currentContextTransition enterAnimation];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100E503DC;
      v30[3] = &unk_101655F98;
      objc_copyWeak(&v33, &buf);
      v31 = contextsCopy;
      v34 = animatedCopy;
      v32 = completionCopy;
      [enterAnimation addCompletion:v30];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&buf);
      goto LABEL_14;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_12;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_9:

LABEL_12:
    LODWORD(buf) = 138543362;
    *(&buf + 4) = selfCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Already transitioning; queueing up context change", &buf, 0xCu);

    goto LABEL_13;
  }

  [(ChromeViewController *)self loadViewIfNeeded];
  v17 = self->_contexts;
  v18 = [[ChromeContextTransition alloc] initForTransitionFromContexts:v17 toContexts:contextsCopy animated:animatedCopy];
  objc_storeStrong(&self->_currentContextTransition, v18);
  leaveAnimation = [v18 leaveAnimation];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = sub_100E454E0;
  v38 = sub_100E454F0;
  v39 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100E504B4;
  v29[3] = &unk_101661600;
  v29[4] = self;
  v29[5] = &buf;
  [leaveAnimation addPreparation:v29];
  [(ChromeViewController *)self contextStackWillUpdateFrom:v17 to:contextsCopy withAnimation:leaveAnimation];
  v20 = [contextsCopy copy];
  contexts = self->_contexts;
  self->_contexts = v20;

  enterAnimation2 = [v18 enterAnimation];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100E50508;
  v25[3] = &unk_101655FC0;
  v25[4] = self;
  v23 = v18;
  v26 = v23;
  p_buf = &buf;
  v28 = animatedCopy;
  [enterAnimation2 addCompletion:v25];
  [(ChromeViewController *)self contextStackDidUpdateFrom:v17 to:contextsCopy withAnimation:enterAnimation2];
  [v23 runWithCompletion:completionCopy];

  _Block_object_dispose(&buf, 8);
LABEL_14:
}

- (void)setContexts:(id)contexts animated:(BOOL)animated completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100E506B8;
  v11[3] = &unk_101655F20;
  selfCopy = self;
  contextsCopy = contexts;
  animatedCopy = animated;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E50AB4;
  v9[3] = &unk_101655F48;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = contextsCopy;
  [(ChromeViewController *)selfCopy scheduleCoordinatedContextChange:v11 completionHandler:v9];
}

- (void)popContextAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  contexts = [(ChromeViewController *)self contexts];
  lastObject = [contexts lastObject];
  [(ChromeViewController *)self popContext:lastObject animated:animatedCopy completion:completionCopy];
}

- (void)popContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100E50C6C;
  v12[3] = &unk_101655F20;
  contextCopy = context;
  selfCopy = self;
  animatedCopy = animated;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E50FA0;
  v10[3] = &unk_101655F48;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = contextCopy;
  [(ChromeViewController *)self scheduleCoordinatedContextChange:v12 completionHandler:v10];
}

- (void)popToRootContextAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  contexts = [(ChromeViewController *)self contexts];
  firstObject = [contexts firstObject];
  [(ChromeViewController *)self popToContext:firstObject animated:animatedCopy completion:completionCopy];
}

- (void)popToContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100E51168;
  v12[3] = &unk_101655F20;
  contextCopy = context;
  selfCopy = self;
  animatedCopy = animated;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E51434;
  v10[3] = &unk_101655F48;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = contextCopy;
  [(ChromeViewController *)self scheduleCoordinatedContextChange:v12 completionHandler:v10];
}

- (void)pushContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100E51554;
  v11[3] = &unk_101655F20;
  animatedCopy = animated;
  contextCopy = context;
  selfCopy = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E51A4C;
  v9[3] = &unk_101655F48;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = contextCopy;
  [(ChromeViewController *)self scheduleCoordinatedContextChange:v11 completionHandler:v9];
}

- (BOOL)hasDuplicatesOfContext:(id)context
{
  contextCopy = context;
  contexts = [(ChromeViewController *)self contexts];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E51B38;
  v9[3] = &unk_101655EF8;
  v10 = contextCopy;
  v6 = contextCopy;
  v7 = [contexts indexesOfObjectsPassingTest:v9];

  LOBYTE(contexts) = [v7 count] > 1;
  return contexts;
}

- (BOOL)isCurrentContext:(id)context
{
  contextCopy = context;
  if ([(ChromeViewController *)self isSuppressed])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ChromeViewController *)self isTopContext:contextCopy];
  }

  return v5;
}

- (BOOL)isTopContext:(id)context
{
  if (!context)
  {
    return 0;
  }

  contextCopy = context;
  topContext = [(ChromeViewController *)self topContext];
  v6 = topContext == contextCopy;

  return v6;
}

- (id)uniqueIdentifierForContext:(id)context
{
  contextCopy = context;
  contextCopy = [NSString stringWithFormat:@"%@.%p", objc_opt_class(), contextCopy];

  return contextCopy;
}

- (void)updateFramesInDebugFramesView:(id)view
{
  viewCopy = view;
  view = [(ChromeViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [viewCopy setLayoutGuide:safeAreaLayoutGuide forName:@"safe area"];

  viewportLayoutGuide = [(ChromeViewController *)self viewportLayoutGuide];
  [viewCopy setLayoutGuide:viewportLayoutGuide forName:@"viewport"];

  mapInsetsLayoutGuide = [(ChromeViewController *)self mapInsetsLayoutGuide];
  [viewCopy setLayoutGuide:mapInsetsLayoutGuide forName:@"map insets"];

  [viewCopy setLayoutGuide:self->_overlayContentLayoutGuide forName:@"overlay content"];
}

- (void)registerFramesInDebugFramesView:(id)view
{
  viewCopy = view;
  v4 = +[UIColor systemGrayColor];
  [viewCopy registerName:@"safe area" color:v4 weight:15 edges:1.0];

  v5 = +[UIColor systemBlueColor];
  [viewCopy registerName:@"viewport" color:v5 weight:15 edges:1.0];

  v6 = +[UIColor systemDarkGreenColor];
  [viewCopy registerName:@"map insets" color:v6 weight:15 edges:1.0];

  v7 = +[UIColor systemDarkYellowColor];
  [viewCopy registerName:@"overlay content" color:v7 weight:15 edges:1.0];
}

- (void)userDefaultsDidChange:(id)change
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v4 = [v8 BOOLForKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];
  if (self->_debugLayoutGuides != v4)
  {
    self->_debugLayoutGuides = v4;
    [(ChromeViewController *)self _updateDebugLayoutGuidesView];
  }

  v5 = [v8 BOOLForKey:@"__internal_MapsDebugForceChromeMapViewInactive"];
  debugForceDeactivationToken = self->_debugForceDeactivationToken;
  if (v5)
  {
    if (debugForceDeactivationToken)
    {
      goto LABEL_9;
    }

    v7 = [(ChromeViewController *)self acquireChromeDeactivationTokenForReason:@"forced"];
    debugForceDeactivationToken = self->_debugForceDeactivationToken;
  }

  else
  {
    if (!debugForceDeactivationToken)
    {
      goto LABEL_9;
    }

    v7 = 0;
  }

  self->_debugForceDeactivationToken = v7;

LABEL_9:
}

- (void)_removeWatermarkView
{
  [(WatermarkView *)self->_watermarkView removeFromSuperview];
  watermarkView = self->_watermarkView;
  self->_watermarkView = 0;
}

- (void)_updateConstraintsWithContainer:(id)container layoutGuide:(id)guide safeAreaEdges:(unint64_t)edges flexible:(BOOL)flexible
{
  flexibleCopy = flexible;
  v10 = ~edges;
  containerCopy = container;
  guideCopy = guide;
  [NSLayoutConstraint deactivateConstraints:containerCopy];
  [containerCopy removeAllObjects];
  if (flexibleCopy)
  {
    view = [(ChromeViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    LODWORD(v14) = 1148829696;
    v15 = [safeAreaLayoutGuide _maps_flexibleConstraintsForLayoutGuide:guideCopy insideEdges:edges withFillingPriority:v14];
    [containerCopy addObjectsFromArray:v15];

    view2 = [(ChromeViewController *)self view];
    LODWORD(v17) = 1148829696;
    v18 = [view2 _maps_flexibleConstraintsForLayoutGuide:guideCopy insideEdges:v10 & 0xF withFillingPriority:v17];
    [containerCopy addObjectsFromArray:v18];
  }

  else
  {
    overlayContentLayoutGuide = self->_overlayContentLayoutGuide;
    view3 = [(ChromeViewController *)self view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    LODWORD(v22) = 1148846080;
    v23 = [(UILayoutGuide *)overlayContentLayoutGuide _maps_constraintsEqualToEdges:edges ofLayoutGuide:safeAreaLayoutGuide2 priority:v22];
    allConstraints = [v23 allConstraints];
    [containerCopy addObjectsFromArray:allConstraints];

    v25 = self->_overlayContentLayoutGuide;
    view2 = [(ChromeViewController *)self view];
    LODWORD(v26) = 1148846080;
    v18 = [(UILayoutGuide *)v25 _maps_constraintsEqualToEdges:v10 & 0xF ofView:view2 priority:v26];
    allConstraints2 = [v18 allConstraints];
    [containerCopy addObjectsFromArray:allConstraints2];
  }

  [NSLayoutConstraint activateConstraints:containerCopy];
}

- (void)updateOverlayContentConstraints
{
  overlayContentLayoutGuideConstraints = self->_overlayContentLayoutGuideConstraints;
  overlayContentLayoutGuide = self->_overlayContentLayoutGuide;
  overlayContentEdgesRespectingSafeAreaInsets = [(ChromeViewController *)self overlayContentEdgesRespectingSafeAreaInsets];

  [(ChromeViewController *)self _updateConstraintsWithContainer:overlayContentLayoutGuideConstraints layoutGuide:overlayContentLayoutGuide safeAreaEdges:overlayContentEdgesRespectingSafeAreaInsets flexible:0];
}

- (void)updateViewportConstraints
{
  viewportLayoutGuideConstraints = self->_viewportLayoutGuideConstraints;
  viewportLayoutGuide = self->_viewportLayoutGuide;
  viewportEdgesRespectingSafeAreaInsets = [(ChromeViewController *)self viewportEdgesRespectingSafeAreaInsets];

  [(ChromeViewController *)self _updateConstraintsWithContainer:viewportLayoutGuideConstraints layoutGuide:viewportLayoutGuide safeAreaEdges:viewportEdgesRespectingSafeAreaInsets flexible:1];
}

- (void)dealloc
{
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v13 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Deallocating", buf, 0xCu);
  }

  if (self->_sceneForegroundingNotificationToken)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self->_sceneForegroundingNotificationToken];
  }

  v11.receiver = self;
  v11.super_class = ChromeViewController;
  [(ChromeViewController *)&v11 dealloc];
}

@end