@interface ChromeViewController
+ (id)localizedLocationAuthorizationMessage;
+ (id)localizedLocationAuthorizationTitle;
- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect;
- (BOOL)_shouldEnableNavigationDisplayForContextStack:(id)a3 requestingContext:(id *)a4;
- (BOOL)_shouldSaveLastViewportChangeDateInDefaults;
- (BOOL)hasDeferredAction:(id)a3 forContext:(id)a4;
- (BOOL)hasDuplicatesOfContext:(id)a3;
- (BOOL)isCurrentContext:(id)a3;
- (BOOL)isRunningNavigationDisplay;
- (BOOL)isTopContext:(id)a3;
- (BOOL)isTransitioning;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (BOOL)shouldForceExploreMap;
- (BOOL)transitionFromViewController:(id)a3 fromContext:(id)a4 toViewController:(id)a5 toContext:(id)a6 withAnimation:(id)a7 dismissing:(BOOL)a8;
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
- (UIEdgeInsets)mapEdgeInsetsForContext:(id)a3;
- (UserLocationView)userLocationView;
- (id)_contextCoordinatedScheduler;
- (id)acquireExploreMapHikingMapToken;
- (id)acquireHikingMapToken;
- (id)allComponents;
- (id)createMapReplacementView;
- (id)createMapView;
- (id)defaultFullscreenViewControllerDismissalTransition;
- (id)defaultFullscreenViewControllerPresentationTransition;
- (id)fullscreenViewControllerTransitionFromController:(id)a3 toController:(id)a4 isDismissTransition:(BOOL)a5;
- (id)lastMapViewportChangedDate;
- (id)mapReplacementColor;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)mapViewDelegate;
- (id)mapViewDelegateForSelector:(SEL)a3;
- (id)mapViewEnteredForegroundDate;
- (id)personalizedItemSourcesForCurrentState;
- (id)presentInterruptionOfKind:(int64_t)a3 userInfo:(id)a4 completionHandler:(id)a5;
- (id)uniqueIdentifierForContext:(id)a3;
- (unint64_t)contextMapInsetsEdgesRespectingSafeAreaInsets:(id)a3;
- (unint64_t)desiredRadarScreenshotTypes;
- (unint64_t)preferredUpdateTimingForComponent:(id)a3;
- (void)_addWatermarkView;
- (void)_checkHikingCoordinate:(CLLocationCoordinate2D)a3;
- (void)_fillNewTraitsWithMapViewRelatedData:(id)a3;
- (void)_freezeMapInsetsLayoutGuideIfPermitted:(BOOL)a3;
- (void)_getContextsLeaving:(id *)a3 entering:(id *)a4 fromPrevious:(id)a5 incoming:(id)a6;
- (void)_installMapReplacementView:(id)a3;
- (void)_refreshMapInsetsConstraintsForContext:(id)a3 animated:(BOOL)a4 updateIfNeeded:(BOOL)a5;
- (void)_removeMapReplacementViewIfNeeded;
- (void)_removeWatermarkView;
- (void)_scheduleComponentUpdateTimerIfNeeded;
- (void)_setContexts:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_setInactive:(BOOL)a3;
- (void)_setLocalizedStringsForMapView:(id)a3;
- (void)_setSuppressed:(BOOL)a3;
- (void)_setupNavigationDisplayForContext:(id)a3 withAnimation:(id)a4;
- (void)_suppress;
- (void)_teardownContextTransition:(id)a3;
- (void)_teardownNavigationDisplayWithAnimation:(id)a3;
- (void)_transitionToFullscreenViewController:(id)a3 forContext:(id)a4 previousIsLeaving:(BOOL)a5 withAnimation:(id)a6;
- (void)_unsuppress;
- (void)_updateComponentsIfNeeded:(BOOL)a3 forceImmediateUpdate:(BOOL)a4 forTiming:(unint64_t)a5 withAnimation:(id)a6;
- (void)_updateConstraintsWithContainer:(id)a3 layoutGuide:(id)a4 safeAreaEdges:(unint64_t)a5 flexible:(BOOL)a6;
- (void)_updateDebugLayoutGuidesView;
- (void)_updateFullscreenViewControllerWithAnimation:(id)a3;
- (void)_updateMapEdgeInsetsForContext:(id)a3 withAnimation:(id)a4;
- (void)_updateMapLabelInsetsWithAnimation:(id)a3;
- (void)_updateNavigationDisplayWithTiming:(unint64_t)a3 animation:(id)a4;
- (void)_updatePersonalizedItemSourcesForContext:(id)a3 withAnimation:(id)a4;
- (void)_updateRouteAnnotationsWithAnimation:(id)a3;
- (void)addContextStackObserver:(id)a3;
- (void)cancelDeferredAction:(id)a3 forContext:(id)a4;
- (void)checkIfCoordinate:(CLLocationCoordinate2D)a3 isInHikingContextualRegionWithCompletionHandler:(id)a4;
- (void)clearMapGesturesAndAnimations;
- (void)commitCoordinatedContextChange;
- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)deactivationReasonsDidChange;
- (void)dealloc;
- (void)decrementForToken:(id)a3;
- (void)evictMapView;
- (void)forwardInvocation:(id)a3;
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (void)incrementForToken:(id)a3;
- (void)installMapReplacementView:(id)a3;
- (void)installMapView:(id)a3;
- (void)loadMapViewIfNeeded;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)popContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)popContextAnimated:(BOOL)a3 completion:(id)a4;
- (void)popToContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)popToRootContextAnimated:(BOOL)a3 completion:(id)a4;
- (void)prepareMapViewForFirstUse;
- (void)prepareToRemoveMapView:(id)a3;
- (void)pushContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)registerAdditionalMapViewDelegate:(id)a3;
- (void)registerFramesInDebugFramesView:(id)a3;
- (void)removeContextStackObserver:(id)a3;
- (void)removeMapReplacementView:(id)a3;
- (void)removeMapViewFromViewHierarchy;
- (void)resetForcedExploreModernMapFlag;
- (void)restoreMapInViewHierarchy;
- (void)scheduleCoordinatedContextChange:(id)a3 completionHandler:(id)a4;
- (void)setContexts:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setFallbackContextCoordinationBlock:(id)a3;
- (void)setLabelEdgeInsets:(UIEdgeInsets)a3;
- (void)setLabelEdgeWidths:(UIEdgeInsets)a3;
- (void)setMapEdgeInsets:(UIEdgeInsets)a3 animated:(BOOL)a4 forContext:(id)a5;
- (void)setNeedsUpdateComponent:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setSuppressed:(BOOL)a3;
- (void)setVKApplicationUILayout:(int64_t)a3;
- (void)unregisterAdditionalMapViewDelegate:(id)a3;
- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5;
- (void)updateComponentsIfNeeded:(BOOL)a3;
- (void)updateFramesInDebugFramesView:(id)a3;
- (void)updateHikingMapConfiguration;
- (void)updateOverlayContentConstraints;
- (void)updateViewportConstraints;
- (void)userDefaultsDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)whenContextNextBecomesCurrent:(id)a3 performAction:(id)a4 withBlock:(id)a5;
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
  v4 = [(ChromeViewController *)self view];
  [v4 setBackgroundColor:v3];

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

  v12 = [(ChromeViewController *)self view];
  [v12 addLayoutGuide:self->_viewportLayoutGuide];

  [(ChromeViewController *)self updateViewportConstraints];
  v13 = [(ChromeViewController *)self view];
  v14 = [v13 _maps_flexibleLayoutGuideInsideEdges:15];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"%@.mapInsetsLayoutGuide", v16];
  [v14 setIdentifier:v17];

  objc_storeStrong(&self->_mapInsetsLayoutGuide, v14);
  v18 = [PassThroughView alloc];
  v19 = [(ChromeViewController *)self view];
  [v19 bounds];
  v20 = [(PassThroughView *)v18 initWithFrame:?];

  [(PassThroughView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [NSString stringWithFormat:@"%@.Viewport", v22];
  [(PassThroughView *)v20 setAccessibilityIdentifier:v23];

  v24 = [(ChromeViewController *)self view];
  [v24 addSubview:v20];

  objc_storeStrong(&self->_viewport, v20);
  v25 = objc_alloc_init(NSMutableArray);
  LODWORD(v26) = 1148846080;
  v27 = [(PassThroughView *)v20 _maps_constraintsEqualToEdgesOfLayoutGuide:self->_viewportLayoutGuide priority:v26];
  v28 = [v27 allConstraints];
  [v25 addObjectsFromArray:v28];

  v29 = [(ChromeViewController *)self view];
  v30 = [v29 safeAreaLayoutGuide];
  LODWORD(v31) = 1112276992;
  v32 = [v14 _maps_constraintsEqualToEdgesOfLayoutGuide:v30 priority:v31];
  safeAreaMapEdgeInsetsConstraints = self->_safeAreaMapEdgeInsetsConstraints;
  self->_safeAreaMapEdgeInsetsConstraints = v32;

  [NSLayoutConstraint activateConstraints:v25];
  [(ChromeViewController *)self _addWatermarkView];
  v34 = objc_alloc_init(ChromeOverlayController);
  overlayController = self->_overlayController;
  self->_overlayController = v34;

  v36 = [(ChromeViewController *)self overlayController];
  [v36 setDelegate:self];

  v37 = objc_alloc_init(NSMutableArray);
  overlayContentLayoutGuideConstraints = self->_overlayContentLayoutGuideConstraints;
  self->_overlayContentLayoutGuideConstraints = v37;

  v39 = objc_alloc_init(UILayoutGuide);
  overlayContentLayoutGuide = self->_overlayContentLayoutGuide;
  self->_overlayContentLayoutGuide = v39;

  v41 = [(ChromeViewController *)self view];
  [v41 addLayoutGuide:self->_overlayContentLayoutGuide];

  [(ChromeViewController *)self updateOverlayContentConstraints];
  if (![(ChromeViewController *)self isSuppressed])
  {
    v42 = [(ChromeViewController *)self overlayController];
    v43 = [(ChromeViewController *)self view];
    v44 = self->_overlayContentLayoutGuide;
    v45 = [(ChromeViewController *)self mapInsetsLayoutGuide];
    v46 = [(ChromeViewController *)self viewportLayoutGuide];
    [v42 installInView:v43 containingViewController:self contentLayoutGuide:v44 mapInsetsLayoutGuide:v45 viewportLayoutGuide:v46];
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
  v2 = [(ChromeViewController *)self contexts];
  v3 = [v2 lastObject];

  return v3;
}

- (MapCameraController)mapCameraController
{
  if (!self->_mapCameraController)
  {
    v3 = [(ChromeViewController *)self mapView];

    if (v3)
    {
      v4 = sub_10000B11C();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        v11 = [MapCameraController alloc];
        v12 = [(ChromeViewController *)self mapView];
        v13 = [(MapCameraController *)v11 initWithMapView:v12];
        mapCameraController = self->_mapCameraController;
        self->_mapCameraController = v13;

        [(SearchPinsManager *)self->_searchPinsManager setMapCameraController:self->_mapCameraController];
        goto LABEL_11;
      }

      v5 = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      if (objc_opt_respondsToSelector())
      {
        v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
        v9 = v8;
        if (v8 && ![v8 isEqualToString:v7])
        {
          v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

          goto LABEL_9;
        }
      }

      v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

      *buf = 138543362;
      v18 = v10;
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
    v4 = self;
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
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Preparing map view for first use", buf, 0xCu);
  }

  [(MKMapView *)self->_mapView _setShowsVenues:1];
  [(MKMapView *)self->_mapView _setLoadLookAroundAvailability:1];
  [(ChromeViewController *)self _setLocalizedStringsForMapView:self->_mapView];
  [(MKMapView *)self->_mapView setBackdropViewQualityChangingDisabled:1];
  [(MKMapView *)self->_mapView _setInactive:self->_inactive];
  [(MKMapView *)self->_mapView _setAllowsPopoverWhenNotInWindow:1];
  v10 = [(MKMapView *)self->_mapView preferredConfiguration];
  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
  {
    v11 = v10;
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
    v17 = [v16 mapCamera];
    if (_GEOConfigHasValue())
    {
      GEOConfigGetDouble();
      [v17 setPitch:?];
    }

    [v17 centerCoordinate];
    if (fabs(v19) <= 180.0 && v18 >= -90.0 && v18 <= 90.0)
    {
      [(MKMapView *)self->_mapView setCamera:v17];
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

  v26 = [(ChromeViewController *)self view];
  v27 = [v26 window];
  v28 = [v27 windowScene];

  if (v28)
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
  v4 = [v3 isInternalInstall];

  if (v4)
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

    v11 = [(WatermarkView *)watermarkView superview];
    v12 = [(ChromeViewController *)self view];

    if (v11 != v12)
    {
      v13 = [(ChromeViewController *)self view];
      [v13 addSubview:self->_watermarkView];

      v14 = self->_watermarkView;
      v18 = [(ChromeViewController *)self view];
      LODWORD(v15) = 1148846080;
      v16 = [(WatermarkView *)v14 _maps_constraintsEqualToEdgesOfView:v18 priority:v15];
      v17 = [v16 allConstraints];
      [NSLayoutConstraint activateConstraints:v17];
    }
  }
}

- (void)loadMapViewIfNeeded
{
  if (self->_mapView || [(ChromeViewController *)self isSuppressed])
  {
    return;
  }

  v3 = [(ChromeViewController *)self createMapView];
  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

    v11 = [v3 _mapLayer];
    *buf = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = v3;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] loadMapViewIfNeeded, mapView: %{public}@, mapLayer: %{public}@", buf, 0x20u);
  }

  v12 = [(ChromeDelegateProxy *)[ChromeMapViewDelegateProxy alloc] initWithChromeViewController:self];
  mapViewDelegateProxy = self->_mapViewDelegateProxy;
  self->_mapViewDelegateProxy = v12;

  [v3 setDelegate:self->_mapViewDelegateProxy];
  objc_storeStrong(&self->_mapView, v3);
  if (v3)
  {
    [(MapCameraController *)self->_mapCameraController setMapView:v3];
    v14 = [(ChromeViewController *)self mapCameraController];
    [(SearchPinsManager *)self->_searchPinsManager setMapCameraController:v14];

    [(CustomPOIsController *)self->_customPOIsController setMapView:v3];
  }

  [(ChromeViewController *)self prepareMapViewForFirstUse];
  if (![(ChromeViewController *)self isInactive]|| ![(ChromeViewController *)self removesMapViewWhenInactive])
  {
    [(ChromeViewController *)self installMapView:v3];
  }
}

- (id)createMapView
{
  v3 = [MKMapView alloc];
  v4 = [(ChromeViewController *)self view];
  [v4 bounds];
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
  v2 = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 mapViewDelegate];
    v4 = v3;
    if (v3)
    {
      v5 = v3;

      v2 = v5;
    }
  }

  if ((sub_100010C34(v2, &OBJC_PROTOCOL___MKMapViewDelegate) & 1) != 0 || sub_100010C34(v2, &OBJC_PROTOCOL___MKMapViewDelegatePrivate))
  {
    v6 = v2;
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
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating searchPinsManager", buf, 0xCu);
  }

  v11 = [SearchPinsManager alloc];
  v12 = [(ChromeViewController *)self mapCameraController];
  v13 = [(SearchPinsManager *)v11 initWithMapViewCameraController:v12];
  v14 = self->_searchPinsManager;
  self->_searchPinsManager = v13;

  v15 = [(ChromeViewController *)self mapSelectionManager];
  [(SearchPinsManager *)self->_searchPinsManager setMapSelectionManager:v15];

  v16 = [(ChromeViewController *)self customPOIsController];
  [(SearchPinsManager *)self->_searchPinsManager setCustomPOIsController:v16];

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
      v12 = [(ChromeViewController *)self mapCameraController];
      v13 = [(MapSelectionManager *)v11 initWithCameraController:v12];
      v14 = self->_mapSelectionManager;
      self->_mapSelectionManager = v13;

      v15 = [[ChromeMapSelectionHandler alloc] initWithChromeViewController:self];
      mapSelectionHandler = self->_mapSelectionHandler;
      self->_mapSelectionHandler = v15;

      [(MapSelectionManager *)self->_mapSelectionManager setDelegate:self->_mapSelectionHandler];
      v17 = [(ChromeViewController *)self customPOIsController];
      [(MapSelectionManager *)self->_mapSelectionManager setCustomPOIsController:v17];

      mapSelectionManager = self->_mapSelectionManager;
      goto LABEL_10;
    }

    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v20 = v10;
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

  v3 = [(ChromeViewController *)self mapView];

  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating customPOIsController", buf, 0xCu);
  }

  v11 = objc_alloc_init(CustomPOIsController);
  customPOIsController = self->_customPOIsController;
  self->_customPOIsController = v11;

  v13 = [(ChromeViewController *)self traitCollection];
  -[CustomPOIsController setAllowSingleSearchResult:](self->_customPOIsController, "setAllowSingleSearchResult:", [v13 userInterfaceIdiom] == 3);

  v14 = [(ChromeViewController *)self mapView];
  [(CustomPOIsController *)self->_customPOIsController setMapView:v14];

  personalizedItemManager = self->_personalizedItemManager;
  if (personalizedItemManager)
  {
    [(PersonalizedItemManager *)personalizedItemManager addObserver:self->_customPOIsController];
    v16 = self->_customPOIsController;
    v17 = self->_personalizedItemManager;
    v18 = [(PersonalizedItemManager *)v17 allItems];
    v19 = [(PersonalizedItemManager *)self->_personalizedItemManager itemGroups];
    [(CustomPOIsController *)v16 personalizedItemManager:v17 didChangeItems:v18 itemGroups:v19];
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

    v4 = self;
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

    *buf = 138543618;
    v13 = v9;
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
  v3 = [(ChromeViewController *)self view];
  [v3 bringSubviewToFront:self->_watermarkView];

  v4 = [(ChromeViewController *)self view];
  [v4 bounds];
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
      v5 = [(ChromeViewController *)self view];
      [v5 bounds];
      v6 = [(DebugFramesView *)v4 initWithFrame:?];

      [(DebugFramesView *)v6 setAutoresizingMask:18];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [NSString stringWithFormat:@"%@.debugFramesView", v8];
      [(DebugFramesView *)v6 setAccessibilityIdentifier:v9];

      v10 = [(ChromeViewController *)self view];
      [v10 addSubview:v6];

      v11 = self->_debugLayoutGuidesView;
      self->_debugLayoutGuidesView = v6;
      v12 = v6;

      [(ChromeViewController *)self registerFramesInDebugFramesView:v12];
      debugLayoutGuidesView = self->_debugLayoutGuidesView;
    }

    [(ChromeViewController *)self updateFramesInDebugFramesView:debugLayoutGuidesView];
    v13 = [(ChromeViewController *)self view];
    [v13 bringSubviewToFront:self->_debugLayoutGuidesView];

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
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating personalizedItemManager", buf, 0xCu);
  }

  v11 = [(ChromeViewController *)self customPOIsController];
  v12 = objc_alloc_init(PersonalizedItemManager);
  v13 = self->_personalizedItemManager;
  self->_personalizedItemManager = v12;

  if (v11)
  {
    [(PersonalizedItemManager *)self->_personalizedItemManager addObserver:v11];
    v14 = self->_personalizedItemManager;
    v15 = [(PersonalizedItemManager *)v14 allItems];
    v16 = [(PersonalizedItemManager *)self->_personalizedItemManager itemGroups];
    [v11 personalizedItemManager:v14 didChangeItems:v15 itemGroups:v16];
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
  v2 = [(ChromeViewController *)self navigationDisplay];
  v3 = v2 != 0;

  return v3;
}

- (RouteAnnotationsController)routeAnnotationsController
{
  if (!self->_routeAnnotationsController)
  {
    v3 = [(ChromeViewController *)self mapView];

    if (v3)
    {
      v4 = sub_10000B11C();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        v11 = objc_alloc_init(RouteAnnotationsController);
        routeAnnotationsController = self->_routeAnnotationsController;
        self->_routeAnnotationsController = v11;

        v13 = [(ChromeViewController *)self mapView];
        [(RouteAnnotationsController *)self->_routeAnnotationsController setMapView:v13];

        goto LABEL_11;
      }

      v5 = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      if (objc_opt_respondsToSelector())
      {
        v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
        v9 = v8;
        if (v8 && ![v8 isEqualToString:v7])
        {
          v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

          goto LABEL_9;
        }
      }

      v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

      *buf = 138543362;
      v17 = v10;
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
  v3 = [(ChromeViewController *)self nextTopContext];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ChromeViewController *)self topContext];
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 personalizedItemSources];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
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

    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v13 = v10;
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

    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v15 = v10;
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

    v4 = self;
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

    v10 = self->_mapReplacementView;
    mapView = v4->_mapView;
    *buf = 138543874;
    v14 = v9;
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
  v2 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  [v2 layoutFrame];
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

- (id)presentInterruptionOfKind:(int64_t)a3 userInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100CD25CC();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

  v11 = self;
  if (!v11)
  {
    v16 = @"<nil>";
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(ChromeViewController *)v11 performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

      goto LABEL_8;
    }
  }

  v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_8:

LABEL_10:
  if ((a3 - 1) > 0x16)
  {
    v17 = @"kMapsInterruptionNone";
  }

  else
  {
    v17 = off_1016507E0[a3 - 1];
  }

  *buf = 138543618;
  v52 = v16;
  v53 = 2112;
  v54 = v17;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting interruption of kind: %@", buf, 0x16u);

LABEL_14:
  v18 = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(__CFString *)v20 canPresentInterruptionOfKind:a3])
  {
    if ([(ChromeViewController *)self conformsToProtocol:&OBJC_PROTOCOL___InterruptionManagerProtocol])
    {
      v28 = self;
      v29 = sub_100CD25CC();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_48:

        v45 = [(ChromeViewController *)v28 interruptionManager];
        v43 = [v45 presentUnhandledInterruptionOfKind:a3 userInfo:v8 completionHandler:v9];

        goto LABEL_57;
      }

      v30 = v28;
      v49 = v8;
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
      v44 = [(ChromeViewController *)v30 interruptionManager];
      *buf = 138543618;
      v52 = v35;
      v53 = 2112;
      v54 = v44;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Asking interruption manager %@ to present the interruption", buf, 0x16u);

      v8 = v49;
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

      v46 = [(ChromeViewController *)self presentUnhandledInterruptionOfKind:a3 userInfo:v8 completionHandler:v9];
      goto LABEL_56;
    }

    v37 = self;
    v50 = v8;
    if (!v37)
    {
      v42 = @"<nil>";
      goto LABEL_54;
    }

    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    if (objc_opt_respondsToSelector())
    {
      v40 = [(ChromeViewController *)v37 performSelector:"accessibilityIdentifier"];
      v41 = v40;
      if (v40 && ![v40 isEqualToString:v39])
      {
        v42 = [NSString stringWithFormat:@"%@<%p, %@>", v39, v37, v41];

        goto LABEL_44;
      }
    }

    v42 = [NSString stringWithFormat:@"%@<%p>", v39, v37];
LABEL_44:

LABEL_54:
    *buf = 138543362;
    v52 = v42;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling the interruption ourselves", buf, 0xCu);

    v8 = v50;
    goto LABEL_55;
  }

  v21 = sub_100CD25CC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self;
    if (!v22)
    {
      v27 = @"<nil>";
      goto LABEL_51;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v48 = v8;
      v25 = [(ChromeViewController *)v22 performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

        v8 = v48;
        goto LABEL_26;
      }

      v8 = v48;
    }

    v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_26:

LABEL_51:
    *buf = 138543618;
    v52 = v27;
    v53 = 2112;
    v54 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Asking context %@ to present the interruption", buf, 0x16u);
  }

  v46 = [(__CFString *)v20 presentInterruptionOfKind:a3 userInfo:v8 completionHandler:v9];
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

- (BOOL)transitionFromViewController:(id)a3 fromContext:(id)a4 toViewController:(id)a5 toContext:(id)a6 withAnimation:(id)a7 dismissing:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v18)
  {
    v19 = v14;
    v20 = v16;
    if (v19 | v20)
    {
      v21 = v20;
      v22 = [v19 isEqual:v20];

      if ((v22 & 1) == 0)
      {
        v45 = v8;
        v47 = v14;
        v53 = v15;
        v51 = [(ChromeViewController *)self viewControllerForFullscreenTransitions];
        v25 = [v51 view];
        v26 = [v21 view];
        v27 = [v19 view];
        v28 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
        [v28 _setIsAnimated:{objc_msgSend(v18, "isAnimated")}];
        [v28 _setContainerView:v25];
        [v28 _setFromViewController:v19];
        v48 = v27;
        [v28 _setFromView:v27];
        [v25 bounds];
        [v28 _setFromStartFrame:?];
        [v25 bounds];
        [v28 _setFromEndFrame:?];
        [v28 _setToViewController:v21];
        v49 = v26;
        [v28 _setToView:v26];
        [v25 bounds];
        [v28 _setToStartFrame:?];
        v50 = v25;
        [v25 bounds];
        [v28 _setToEndFrame:?];
        v52 = v17;
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v17 fullscreenViewControllerPresentationTransition], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
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
        v31 = self;
        if (!v31)
        {
          v36 = @"<nil>";
          goto LABEL_19;
        }

        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        if (objc_opt_respondsToSelector())
        {
          v34 = [(ChromeViewController *)v31 performSelector:"accessibilityIdentifier"];
          v35 = v34;
          if (v34 && ![v34 isEqualToString:v33])
          {
            v36 = [NSString stringWithFormat:@"%@<%p, %@>", v33, v31, v35];

            goto LABEL_17;
          }
        }

        v36 = [NSString stringWithFormat:@"%@<%p>", v33, v31];
LABEL_17:

LABEL_19:
        v37 = [NSString stringWithFormat:@"%@: waiting for chrome full-screen view controller transition to complete", v36];
        v38 = [v18 addCompletionWaitBlockWithReason:v37];

        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100D743A8;
        v54[3] = &unk_1016530A8;
        v54[4] = v31;
        v55 = v21;
        v17 = v52;
        v56 = v52;
        v57 = v51;
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
        v43 = v51;
        [v18 addPreparation:v54 animations:0 completion:0];

        v23 = 1;
        v15 = v53;
        v14 = v47;
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

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
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

  v11 = [(ChromeViewController *)self viewIfLoaded];

  if (!v11)
  {
    v22 = sub_10000B11C();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_55;
    }

    v29 = self;
    if (!v29)
    {
      v28 = @"<nil>";
      goto LABEL_46;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(ChromeViewController *)v29 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];

        goto LABEL_27;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
LABEL_27:

LABEL_46:
    *buf = 138543362;
    v59 = v28;
    v46 = "[%{public}@] View is not loaded yet; not generating radar attachments";
LABEL_54:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, v46, buf, 0xCu);

    goto LABEL_55;
  }

  v12 = [(ChromeViewController *)self view];
  v13 = [v12 window];
  v14 = [v13 windowScene];

  if (!v14)
  {
    v22 = sub_10000B11C();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_55;
    }

    v34 = self;
    if (!v34)
    {
      v28 = @"<nil>";
      goto LABEL_51;
    }

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [(ChromeViewController *)v34 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v38];

        goto LABEL_35;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
LABEL_35:

LABEL_51:
    *buf = 138543362;
    v59 = v28;
    v46 = "[%{public}@] No window scene; not generating radar attachments";
    goto LABEL_54;
  }

  v15 = [(ChromeViewController *)self view];
  v16 = [v15 window];
  v17 = [v16 windowScene];
  if ([v17 activationState])
  {
    v18 = [(ChromeViewController *)self view];
    v19 = [v18 window];
    v20 = [v19 windowScene];
    v21 = [v20 activationState];

    if (v21 != 1)
    {
      v22 = sub_10000B11C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = self;
        if (!v23)
        {
          v28 = @"<nil>";
          goto LABEL_53;
        }

        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        if (objc_opt_respondsToSelector())
        {
          v26 = [(ChromeViewController *)v23 performSelector:"accessibilityIdentifier"];
          v27 = v26;
          if (v26 && ![v26 isEqualToString:v25])
          {
            v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

            goto LABEL_19;
          }
        }

        v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_19:

LABEL_53:
        *buf = 138543362;
        v59 = v28;
        v46 = "[%{public}@] Activation state is not foreground; not generating radar attachments";
        goto LABEL_54;
      }

LABEL_55:

      v7[2](v7);
      goto LABEL_56;
    }
  }

  else
  {
  }

  v39 = sub_10000B11C();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v40 = self;
    if (!v40)
    {
      v45 = @"<nil>";
      goto LABEL_48;
    }

    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    if (objc_opt_respondsToSelector())
    {
      v43 = [(ChromeViewController *)v40 performSelector:"accessibilityIdentifier"];
      v44 = v43;
      if (v43 && ![v43 isEqualToString:v42])
      {
        v45 = [NSString stringWithFormat:@"%@<%p, %@>", v42, v40, v44];

        goto LABEL_44;
      }
    }

    v45 = [NSString stringWithFormat:@"%@<%p>", v42, v40];
LABEL_44:

LABEL_48:
    *buf = 138543362;
    v59 = v45;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "[%{public}@] Start generating radar attachments", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E3EB58;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v56 = v6;
  v57 = v7;
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

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v4 = [(ChromeViewController *)self mapSelectionManager:a3];
  [v4 mapDidSelectAnnotationView:0];
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v5 = a4;
  v6 = [(ChromeViewController *)self mapSelectionManager];
  [v6 mapDidSelectAnnotationView:v5];
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v4 = [(ChromeViewController *)self mapSelectionManager:a3];
  [v4 mapDidSelectLabelMarker:0];
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(ChromeViewController *)self mapSelectionManager];
  [v6 mapDidSelectLabelMarker:v5];
}

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(ChromeViewController *)self mapSelectionManager];
  v7 = [v6 mapShouldSelectLabelMarker:v5];

  return v7;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 userLocation];

  if (v9 == v8)
  {
    v11 = [(ChromeViewController *)self userLocationView];
  }

  else
  {
    v10 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
    v11 = [v10 mapView:v7 viewForAnnotation:v8];
  }

  return v11;
}

- (BOOL)_shouldSaveLastViewportChangeDateInDefaults
{
  v2 = [(ChromeViewController *)self searchContextDefaultsKeysPrefix];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (qword_10195D5F8 != -1)
  {
    dispatch_once(&qword_10195D5F8, &stru_101629820);
  }

  v7 = qword_10195D5F0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
LABEL_12:

      v14 = v13;
      v15 = v6;
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
      if (v4)
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
      v11 = [(ChromeViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_10;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
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

    v82 = self;
    v83 = objc_opt_class();
    v84 = NSStringFromClass(v83);
    if (objc_opt_respondsToSelector())
    {
      v85 = [(ChromeViewController *)v82 performSelector:"accessibilityIdentifier"];
      v86 = v85;
      if (v85 && ![v85 isEqualToString:v84])
      {
        v77 = [NSString stringWithFormat:@"%@<%p, %@>", v84, v82, v86];

        goto LABEL_55;
      }
    }

    v77 = [NSString stringWithFormat:@"%@<%p>", v84, v82];
LABEL_55:

    *buf = 138543618;
    v90 = v77;
    v91 = 2112;
    v92 = v70;
    v79 = "[%{public}@] No value found for lastViewportChangeDate in mapView:regionDidChangeAnimated. This will only happen once as all other changes would happen in mapViewDidStartUserInteraction. Setting lastViewportChangeDate to %@. ";
    v80 = v71;
    v81 = 22;
    goto LABEL_56;
  }

  [v6 visibleMapRect];
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

    v44 = self;
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    if (objc_opt_respondsToSelector())
    {
      v47 = [(ChromeViewController *)v44 performSelector:"accessibilityIdentifier"];
      v48 = v47;
      if (v47 && ![v47 isEqualToString:v46])
      {
        v49 = v6;
        v50 = [NSString stringWithFormat:@"%@<%p, %@>", v46, v44, v48];

        goto LABEL_41;
      }
    }

    v49 = v6;
    v50 = [NSString stringWithFormat:@"%@<%p>", v46, v44];
LABEL_41:
    v87 = v50;

    v88 = v50;
    [(ChromeViewController *)v44 visibleMapRect];
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

    v6 = v49;
LABEL_42:

    [v6 visibleMapRect];
    [(ChromeViewController *)self setVisibleMapRect:?];
    v70 = +[NSDate date];
    v71 = sub_10000EAD0();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      v72 = self;
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      if (objc_opt_respondsToSelector())
      {
        v75 = [(ChromeViewController *)v72 performSelector:"accessibilityIdentifier"];
        v76 = v75;
        if (v75 && ![v75 isEqualToString:v74])
        {
          v77 = [NSString stringWithFormat:@"%@<%p, %@>", v74, v72, v76];

          goto LABEL_48;
        }
      }

      v77 = [NSString stringWithFormat:@"%@<%p>", v74, v72];
LABEL_48:

      lastViewportChangeDate = self->_lastViewportChangeDate;
      *buf = *(v43 + 200);
      v90 = v77;
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
    v36 = self;
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    if (objc_opt_respondsToSelector())
    {
      v39 = [(ChromeViewController *)v36 performSelector:"accessibilityIdentifier"];
      v40 = v39;
      if (v39 && ![v39 isEqualToString:v38])
      {
        v41 = [NSString stringWithFormat:@"%@<%p, %@>", v38, v36, v40];

        goto LABEL_34;
      }
    }

    v41 = [NSString stringWithFormat:@"%@<%p>", v38, v36];
LABEL_34:

    *buf = 138543362;
    v90 = v41;
    _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEBUG, "[%{public}@] Requested region is equal to existing region, ignoring.", buf, 0xCu);
  }

LABEL_58:
}

- (void)_fillNewTraitsWithMapViewRelatedData:(id)a3
{
  v17 = a3;
  v4 = [(ChromeViewController *)self mapView];

  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [(ChromeViewController *)self mapView];
  v6 = [v5 mapType];
  v7 = 1;
  if (v6 <= 2)
  {
    switch(v6)
    {
      case 0:
LABEL_15:

        [v17 setMode:v7];
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
    if (v6 <= 101)
    {
      if (v6 != 3)
      {
        if (v6 != 4)
        {
          goto LABEL_21;
        }

        goto LABEL_10;
      }

LABEL_14:
      v7 = 2;
      goto LABEL_15;
    }

    if (v6 == 102)
    {
      goto LABEL_15;
    }

    if (v6 == 104)
    {
      v7 = 4;
      goto LABEL_15;
    }
  }

LABEL_21:

LABEL_16:
  v8 = [(ChromeViewController *)self mapView];
  [v8 visibleMapRect];
  v13 = [[GEOMapRegion alloc] initWithMapRect:{v9, v10, v11, v12}];
  [v17 setMapRegion:v13];

  v14 = [(ChromeViewController *)self mapView];
  [v14 _zoomLevel];
  v16 = v15;

  if (v16 > 0.0)
  {
    [v17 setMapZoomLevel:v16];
  }

LABEL_18:
}

- (GEOMapServiceTraits)currentTraits
{
  v3 = +[MKMapService sharedService];
  v4 = [v3 defaultTraits];

  v5 = [(ChromeViewController *)self mapView];
  if (v5)
  {
    v6 = v5;
    v7 = +[NSThread isMainThread];

    if (v7)
    {
      [(ChromeViewController *)self _fillNewTraitsWithMapViewRelatedData:v4];
    }
  }

  return v4;
}

- (void)_setupNavigationDisplayForContext:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ChromeViewController *)self loadMapViewIfNeeded];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E40768;
  v10[3] = &unk_101661A40;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [v9 addPreparation:v10];
}

- (void)_teardownNavigationDisplayWithAnimation:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E41294;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  [v3 addPreparation:v4];
}

- (BOOL)_shouldEnableNavigationDisplayForContextStack:(id)a3 requestingContext:(id *)a4
{
  v6 = a3;
  v7 = [v6 lastObject];
  v8 = [(ChromeViewController *)self wantsNavigationDisplayByDefault];
  v9 = sub_10000B11C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = self;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_10;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(ChromeViewController *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_8;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_8:

LABEL_10:
    v16 = @"NO";
    if (v8)
    {
      v16 = @"YES";
    }

    v17 = v16;
    *buf = 138543618;
    v50 = v15;
    v51 = 2114;
    v52 = v17;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Wants navigation display by default: %{public}@", buf, 0x16u);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v7 showsMapView])
  {
    LOBYTE(v8) = 0;
    goto LABEL_49;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = [v6 reverseObjectEnumerator];
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (!v19)
  {
    goto LABEL_48;
  }

  v20 = v19;
  v44 = v8;
  v21 = *v46;
  while (2)
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v46 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v45 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v8 = [v23 wantsNavigationDisplay];
        if (a4)
        {
          v24 = v23;
          *a4 = v23;
        }

        v25 = sub_10000B11C();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          goto LABEL_47;
        }

        v26 = self;
        v27 = &selRef__updatePIPLayout;
        if (!v26)
        {
          v32 = @"<nil>";
LABEL_36:

          v33 = v32;
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
          if (v8)
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
          v30 = [(ChromeViewController *)v26 performSelector:"accessibilityIdentifier"];
          v31 = v30;
          if (v30 && ![v30 isEqualToString:v29])
          {
            v32 = [NSString stringWithFormat:@"%@<%p, %@>", v29, v26, v31];

            goto LABEL_33;
          }
        }

        v32 = [NSString stringWithFormat:@"%@<%p>", v29, v26];
LABEL_33:

        v27 = &selRef__updatePIPLayout;
        goto LABEL_36;
      }
    }

    v20 = [v18 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

  LOBYTE(v8) = v44;
LABEL_48:

LABEL_49:
  return v8;
}

- (void)_updateNavigationDisplayWithTiming:(unint64_t)a3 animation:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(ChromeViewController *)self pendingContexts];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(ChromeViewController *)self contexts];
  }

  v10 = v9;

  v11 = [(ChromeViewController *)self _shouldEnableNavigationDisplayForContextStack:v10 requestingContext:0];
  v12 = v11;
  if ((v4 & 2) != 0 && (v11 & 1) == 0)
  {
    v13 = sub_10000B11C();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_16:

      [(ChromeViewController *)self _teardownNavigationDisplayWithAnimation:v6];
      goto LABEL_17;
    }

    v14 = self;
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(ChromeViewController *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_13;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_13:

LABEL_15:
    *buf = 138543362;
    v30 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] - will tear down navigation display", buf, 0xCu);

    goto LABEL_16;
  }

LABEL_17:
  if ((((v4 & 4) != 0) & v12) != 1)
  {
    goto LABEL_32;
  }

  v20 = sub_10000B11C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = self;
    if (!v21)
    {
      v26 = @"<nil>";
      goto LABEL_27;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(ChromeViewController *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_25;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_25:

LABEL_27:
    *buf = 138543362;
    v30 = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] - will setup/configure navigation display", buf, 0xCu);
  }

  v27 = [(ChromeViewController *)self nextTopContext];
  if (v27)
  {
    [(ChromeViewController *)self _setupNavigationDisplayForContext:v27 withAnimation:v6];
  }

  else
  {
    v28 = [(ChromeViewController *)self topContext];
    [(ChromeViewController *)self _setupNavigationDisplayForContext:v28 withAnimation:v6];
  }

LABEL_32:
}

- (GEOMapServiceTraits)navigationAwareTraits
{
  v3 = [(ChromeViewController *)self currentTraits];
  if ([(ChromeViewController *)self isDisplayingNavigation])
  {
    [v3 setNavigating:1];
    v4 = +[MNNavigationService sharedService];
    if ([v4 isInNavigatingState])
    {
      v5 = [v4 navigationTransportType];
    }

    else
    {
      v5 = [v4 desiredTransportType];
    }

    [v3 setNavigationTransportType:v5];
  }

  return v3;
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
    v10 = [(ChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      [v10 becomeTopContextInChromeViewController:self withAnimation:v3];
    }

    objc_storeStrong(&self->_suppressionAnimation, v3);
    v11 = sub_10000B11C();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v12 = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(ChromeViewController *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ([v15 isEqualToString:v14] & 1) == 0)
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_17;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_17:

    *buf = 138543618;
    v23 = v17;
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
    v4 = self;
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
    v23 = v9;
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
    v11 = [(ChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      [v11 resignTopContextInChromeViewController:self withAnimation:v10];
    }

    objc_initWeak(&location, v10);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100E42C48;
    v22 = &unk_10165FC50;
    objc_copyWeak(&v24, &location);
    v23 = self;
    [v10 addAnimations:0 completion:&v19];
    objc_storeStrong(&self->_suppressionAnimation, v10);
    v12 = sub_10000B11C();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v13 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(ChromeViewController *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ([v16 isEqualToString:v15] & 1) == 0)
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17, v19, v20, v21, v22];

        goto LABEL_17;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_17:

    *buf = 138543618;
    v27 = v18;
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
    v4 = self;
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
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] already in the middle of suppress/unsuppress animation, ignoring _suppress and will check after animation", buf, 0xCu);
  }

LABEL_19:
}

- (void)_setSuppressed:(BOOL)a3
{
  v3 = a3;
  self->_suppressed = a3;
  v5 = sub_10000B11C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (!v6)
    {
LABEL_9:

      [(ChromeViewController *)self _suppress];
      return;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    *buf = 138543362;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will suppress", buf, 0xCu);

    goto LABEL_9;
  }

  if (v6)
  {
    v13 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(ChromeViewController *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_16;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_16:

    *buf = 138543362;
    v20 = v18;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] will unsuppress", buf, 0xCu);
  }

  [(ChromeViewController *)self _unsuppress];
}

- (void)setSuppressed:(BOOL)a3
{
  if (self->_suppressed != a3)
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

- (id)fullscreenViewControllerTransitionFromController:(id)a3 toController:(id)a4 isDismissTransition:(BOOL)a5
{
  if (a5)
  {
    [(ChromeViewController *)self defaultFullscreenViewControllerDismissalTransition:a3];
  }

  else
  {
    [(ChromeViewController *)self defaultFullscreenViewControllerPresentationTransition:a3];
  }
  v5 = ;

  return v5;
}

- (void)_transitionToFullscreenViewController:(id)a3 forContext:(id)a4 previousIsLeaving:(BOOL)a5 withAnimation:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = sub_10000B11C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v24 = v7;
    v15 = self;
    if (!v15)
    {
      v20 = @"<nil>";
      goto LABEL_10;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(ChromeViewController *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_8;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v26 = v20;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] _transitionToFullscreenViewController %@ for context %@", buf, 0x20u);

    v7 = v24;
  }

  v21 = self->_fullscreenViewController;
  v22 = [(ChromeViewController *)self previousTopContext];
  v23 = [(ChromeViewController *)self transitionFromViewController:v21 fromContext:v22 toViewController:v11 toContext:v12 withAnimation:v13 dismissing:v7];

  if (v23)
  {
    objc_storeStrong(&self->_fullscreenViewController, a3);
    [(ChromeViewController *)self fullscreenViewControllerDidChange:self->_fullscreenViewController];
  }
}

- (void)_updateFullscreenViewControllerWithAnimation:(id)a3
{
  v4 = a3;
  if ([(ChromeViewController *)self supportsDefaultFullscreenViewControllerPresentation])
  {
    objc_initWeak(&location, v4);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100E43834;
    v5[3] = &unk_101661340;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [v4 addPreparation:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updatePersonalizedItemSourcesForContext:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E43EAC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4 animations:0 completion:0];
}

- (void)_updateRouteAnnotationsWithAnimation:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100E44338;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [a3 addPreparation:v3];
}

- (void)removeMapReplacementView:(id)a3
{
  v4 = a3;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ChromeViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = v11;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] removeMapReplacementView %p", buf, 0x16u);
  }

  [v4 removeFromSuperview];
}

- (void)installMapReplacementView:(id)a3
{
  v4 = a3;
  v5 = [(ChromeViewController *)self isViewLoaded];
  if (v4 && v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100E45808;
    v6[3] = &unk_101661A90;
    v7 = v4;
    v8 = self;
    [UIView performWithoutAnimation:v6];
  }
}

- (void)_installMapReplacementView:(id)a3
{
  v5 = a3;
  [(ChromeViewController *)self _removeMapReplacementViewIfNeeded];
  v6 = sub_10000B11C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = self;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_10;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

LABEL_10:
    mapView = v7->_mapView;
    *buf = 138543874;
    v15 = v12;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = mapView;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] _installMapReplacementView %p (current _mapView: %p)", buf, 0x20u);
  }

  objc_storeStrong(&self->_mapReplacementView, a3);
  if (v5)
  {
    [(ChromeViewController *)self installMapReplacementView:v5];
  }
}

- (void)prepareToRemoveMapView:(id)a3
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

  v4 = self;
  if (!v4)
  {
    v9 = @"<nil>";
    goto LABEL_10;
  }

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

LABEL_10:
  mapView = v4->_mapView;
  mapReplacementView = v4->_mapReplacementView;
  *buf = 138543874;
  v15 = v9;
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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

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

LABEL_10:
    mapView = v4->_mapView;
    mapReplacementView = v4->_mapReplacementView;
    *buf = 138543874;
    v13 = v9;
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

- (void)decrementForToken:(id)a3
{
  v4 = a3;
  v5 = [(__CFString *)v4 tokenGroupName];
  v6 = [v5 isEqualToString:@"ChromeDeactivation"];

  if (v6)
  {
    v7 = sub_10000B11C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_29;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ChromeViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_9;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_9:

LABEL_29:
    *buf = 138543618;
    v101 = v13;
    v102 = 2114;
    v103 = v4;
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

    v33 = self;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    if (objc_opt_respondsToSelector())
    {
      v36 = [(ChromeViewController *)v33 performSelector:"accessibilityIdentifier"];
      v37 = v36;
      if (v36 && ![v36 isEqualToString:v35])
      {
        v38 = [NSString stringWithFormat:@"%@<%p, %@>", v35, v33, v37];

        goto LABEL_37;
      }
    }

    v38 = [NSString stringWithFormat:@"%@<%p>", v35, v33];
LABEL_37:

    v39 = v38;
    v40 = [(MapsTokenStorage *)self->_deactivationTokens allTokenReasons];
    v41 = v40;
    if (v40)
    {
      if ([v40 count])
      {
        v88 = v39;
        v90 = v32;
        v92 = self;
        v94 = v4;
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

            self = v92;
            v4 = v94;
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

  v14 = [(__CFString *)v4 tokenGroupName];
  v15 = [v14 isEqualToString:@"ChromeHiking"];

  if (v15)
  {
    v16 = sub_10000B11C();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_60;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(ChromeViewController *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_18;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_18:

LABEL_60:
    *buf = 138543618;
    v101 = v22;
    v102 = 2114;
    v103 = v4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hiking token removed: %{public}@", buf, 0x16u);

LABEL_61:
    v57 = [(ChromeViewController *)self mapView];

    if (v57)
    {
      [(ChromeViewController *)self updateHikingMapConfiguration];
    }

    goto LABEL_67;
  }

  v23 = [(__CFString *)v4 tokenGroupName];
  v24 = [v23 isEqualToString:@"ChromeMapInsetPropagationSuspension"];

  if (!v24)
  {
    goto LABEL_67;
  }

  v25 = sub_10000B11C();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self;
    if (!v26)
    {
      v31 = @"<nil>";
      goto LABEL_71;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(ChromeViewController *)v26 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

        goto LABEL_27;
      }
    }

    v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_27:

LABEL_71:
    *buf = 138543618;
    v101 = v31;
    v102 = 2114;
    v103 = v4;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Map inset propagation suspension removed: %{public}@", buf, 0x16u);
  }

  if ([(MapsTokenStorage *)self->_mapInsetPropagationSuspensionTokens count])
  {
    v58 = sub_10000B11C();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      goto LABEL_106;
    }

    v59 = self;
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    if (objc_opt_respondsToSelector())
    {
      v62 = [(ChromeViewController *)v59 performSelector:"accessibilityIdentifier"];
      v63 = v62;
      if (v62 && ![v62 isEqualToString:v61])
      {
        v64 = [NSString stringWithFormat:@"%@<%p, %@>", v61, v59, v63];

        goto LABEL_79;
      }
    }

    v64 = [NSString stringWithFormat:@"%@<%p>", v61, v59];
LABEL_79:

    v65 = v64;
    v66 = [(MapsTokenStorage *)self->_mapInsetPropagationSuspensionTokens allTokenReasons];
    v67 = v66;
    if (v66)
    {
      if ([v66 count])
      {
        v91 = v65;
        v93 = v58;
        v95 = v4;
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
            v4 = v95;
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

  v86 = [(ChromeViewController *)self mapView];
  [v86 _resumePropagatingEdgeInsets];

LABEL_67:
}

- (void)incrementForToken:(id)a3
{
  v4 = a3;
  v5 = [v4 tokenGroupName];
  v6 = [v5 isEqualToString:@"ChromeDeactivation"];

  if (v6)
  {
    v7 = sub_10000B11C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_29;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ChromeViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_9;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_9:

LABEL_29:
    *buf = 138543618;
    v111 = v13;
    v112 = 2114;
    v113 = v4;
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

    v34 = self;
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [(ChromeViewController *)v34 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        v39 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v38];

        goto LABEL_38;
      }
    }

    v39 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
LABEL_38:

    v40 = v39;
    v41 = [(MapsTokenStorage *)self->_deactivationTokens allTokenReasons];
    v42 = v41;
    if (v41)
    {
      if ([v41 count])
      {
        v98 = v40;
        v100 = v33;
        v102 = self;
        v104 = v4;
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

            self = v102;
            v4 = v104;
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

  v14 = [v4 tokenGroupName];
  v15 = [v14 isEqualToString:@"ChromeHiking"];

  if (!v15)
  {
    v23 = [v4 tokenGroupName];
    v24 = [v23 isEqualToString:@"ChromeMapInsetPropagationSuspension"];

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
        v88 = [(ChromeViewController *)self mapView];
        [v88 _suspendPropagatingEdgeInsets];

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

      v61 = self;
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      if (objc_opt_respondsToSelector())
      {
        v64 = [(ChromeViewController *)v61 performSelector:"accessibilityIdentifier"];
        v65 = v64;
        if (v64 && ![v64 isEqualToString:v63])
        {
          v66 = [NSString stringWithFormat:@"%@<%p, %@>", v63, v61, v65];

          goto LABEL_80;
        }
      }

      v66 = [NSString stringWithFormat:@"%@<%p>", v63, v61];
LABEL_80:

      v67 = v66;
      v68 = [(MapsTokenStorage *)self->_mapInsetPropagationSuspensionTokens allTokenReasons];
      v69 = v68;
      if (v68)
      {
        if ([v68 count])
        {
          v101 = v67;
          v103 = v60;
          v105 = v4;
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
              v4 = v105;
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

    v26 = self;
    if (!v26)
    {
      v31 = @"<nil>";
      goto LABEL_71;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(ChromeViewController *)v26 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

        goto LABEL_27;
      }
    }

    v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_27:

LABEL_71:
    *buf = 138543618;
    v111 = v31;
    v112 = 2114;
    v113 = v4;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Map inset propagation suspension token added: %{public}@", buf, 0x16u);

    goto LABEL_72;
  }

  v16 = sub_10000B11C();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_62;
  }

  v17 = self;
  if (!v17)
  {
    v22 = @"<nil>";
    goto LABEL_61;
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  if (objc_opt_respondsToSelector())
  {
    v20 = [(ChromeViewController *)v17 performSelector:"accessibilityIdentifier"];
    v21 = v20;
    if (v20 && ![v20 isEqualToString:v19])
    {
      v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

      goto LABEL_18;
    }
  }

  v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_18:

LABEL_61:
  *buf = 138543618;
  v111 = v22;
  v112 = 2114;
  v113 = v4;
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hiking token added: %{public}@", buf, 0x16u);

LABEL_62:
  v58 = [(ChromeViewController *)self mapView];

  if (v58)
  {
    [(ChromeViewController *)self updateHikingMapConfiguration];
  }

LABEL_68:
}

- (id)mapReplacementColor
{
  v2 = [(ChromeViewController *)self traitCollection];
  v3 = [UIColor _mapkit_colorNamed:@"CartographyBackgroundColor" compatibleWithTraitCollection:v2];

  return v3;
}

- (id)createMapReplacementView
{
  v3 = [UIView alloc];
  v4 = [(ChromeViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  v6 = [(ChromeViewController *)self mapReplacementColor];
  [v5 setBackgroundColor:v6];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [NSString stringWithFormat:@"%@.mapReplacementView", v8];
  [v5 setAccessibilityIdentifier:v9];

  return v5;
}

- (void)removeMapViewFromViewHierarchy
{
  v2 = [(ChromeViewController *)self mapView];
  [v2 removeFromSuperview];
}

- (void)_setInactive:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  inactive = self->_inactive;
  self->_inactive = a3;
  if (![(ChromeViewController *)self isViewLoaded]|| [(ChromeViewController *)v4 isSuppressed])
  {
    v6 = sub_10000B11C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:

      goto LABEL_20;
    }

    v7 = v4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v89 = inactive;
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

    if (v3)
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

    inactive = v89;
    goto LABEL_19;
  }

  v19 = sub_10000B11C();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (inactive == v3)
  {
    if (!v20)
    {
      goto LABEL_88;
    }

    v21 = v4;
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
    if (v3)
    {
      v28 = @"YES";
    }

    v29 = v28;
    v30 = [v21[41] allTokenReasons];
    v87 = v30;
    if (v30)
    {
      v31 = v30;
      if ([v30 count])
      {
        v79 = v29;
        v81 = v27;
        v83 = v19;
        v90 = inactive;
        v92 = v4;
        v85 = v3;
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

            v3 = v85;
            v4 = v92;
            inactive = v90;
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

  v47 = v4;
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
  if (v3)
  {
    v53 = @"YES";
  }

  v29 = v53;
  v54 = [v47[41] allTokenReasons];
  v88 = v54;
  if (v54)
  {
    v55 = v54;
    if ([v54 count])
    {
      v80 = v29;
      v82 = v27;
      v84 = v19;
      v91 = inactive;
      v93 = v4;
      v86 = v3;
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

          v3 = v86;
          v4 = v93;
          inactive = v91;
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
  if (v4->_inactive)
  {
    if (![(MapsTokenStorage *)v4->_deactivationTokens count])
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

    v72 = [(ChromeViewController *)v4 createMapReplacementView];
    [(ChromeViewController *)v4 _installMapReplacementView:v72];

    v73 = [(ChromeViewController *)v4 mapView];
    [v73 _setInactive:1];

    if ([(ChromeViewController *)v4 removesMapViewWhenInactive])
    {
      [(ChromeViewController *)v4 removeMapViewFromViewHierarchy];
    }
  }

  else
  {
    v74 = [(ChromeViewController *)v4 mapView];
    [v74 _setInactive:0];

    [(ChromeViewController *)v4 restoreMapInViewHierarchy];
  }

LABEL_20:
  if (inactive != v3)
  {
    [(ChromeViewController *)v4 didBecomeInactive:v3];
  }
}

- (void)_checkHikingCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  objc_initWeak(&location, self);
  v6 = sub_10000B11C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349569;
    v12 = self;
    v13 = 2049;
    v14 = latitude;
    v15 = 2049;
    v16 = longitude;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Checking hiking coordinate: %{private}f, %{private}f", buf, 0x20u);
  }

  v7 = [(ChromeViewController *)self mapView];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E48744;
  v8[3] = &unk_101656178;
  objc_copyWeak(&v9, &location);
  [v7 checkIfCoordinate:v8 isInHikingContextualRegionWithCompletionHandler:{latitude, longitude}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)checkIfCoordinate:(CLLocationCoordinate2D)a3 isInHikingContextualRegionWithCompletionHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v8 = sub_10000B11C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v20 = 134349569;
    v21 = self;
    v22 = 2049;
    v23 = latitude;
    v24 = 2049;
    v25 = longitude;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Queueing up hiking coordinate check for: %{private}f, %{private}f", &v20, 0x20u);
  }

  v9 = [_MapsCoordinateKey coordinateKeyFromCoordinate:latitude, longitude];
  v10 = [(NSMapTable *)self->_hikingCoordinateChecks keyEnumerator];
  v11 = [v10 allObjects];
  v12 = [v11 containsObject:v9];

  v13 = sub_10000B11C();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v20 = 134349056;
      v21 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Existing check for this coordinate is already in flight; adding completion block to the list", &v20, 0xCu);
    }

    v15 = [(NSMapTable *)self->_hikingCoordinateChecks objectForKey:v9];
    v16 = [v7 copy];
    v17 = objc_retainBlock(v16);
    [v15 addObject:v17];
  }

  else
  {
    if (v14)
    {
      v20 = 134349056;
      v21 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] There are no existing checks for this coordinate in flight; creating new task", &v20, 0xCu);
    }

    v18 = [(NSMapTable *)self->_hikingCoordinateChecks count];
    v19 = [v7 copy];
    v15 = [NSMutableSet setWithObject:v19];

    [(NSMapTable *)self->_hikingCoordinateChecks setObject:v15 forKey:v9];
    if (!v18)
    {
      [(ChromeViewController *)self _checkHikingCoordinate:latitude, longitude];
    }
  }
}

- (void)updateHikingMapConfiguration
{
  v3 = [(ChromeViewController *)self shouldUseHikingMap];
  v4 = [(ChromeViewController *)self shouldForceExploreMap];
  if (v4)
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

    v6 = [(ChromeViewController *)self mapView];
    v7 = v6;
    if (v6)
    {
      [v6 _cartographicConfiguration];
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
      v17 = [(ChromeViewController *)self mapView];
      [v17 setOverrideUserInterfaceStyle:0];

      v18 = [(ChromeViewController *)self _maps_mapsSceneDelegate];
      v19 = [v18 window];
      [v19 setOverrideUserInterfaceStyle:0];
    }

    v13 = [(ChromeViewController *)self mapView];
    *buf = xmmword_1011F07A0;
    *&buf[16] = xmmword_1011E1D30;
    v32 = v29;
    v33 = v30;
    [v13 _setCartographicConfiguration:buf];
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

    v13 = [(ChromeViewController *)self mapView];
    *buf = style;
    *&buf[8] = emphasis;
    *&buf[16] = projection;
    *&buf[24] = terrainMode;
    v32 = v27;
    v33 = v28;
    [v13 _setCartographicConfiguration:buf];
    v14 = 0;
  }

  self->_hasForcedExploreModernMap = v14;
  [(ChromeViewController *)self didUpdateForcedExploreMapConfiguration:v4];
LABEL_16:
  v20 = [(ChromeViewController *)self mapView:v27];
  v21 = [v20 preferredConfiguration];

  if ([v21 conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
  {
    v22 = v21;
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
      if (v3)
      {
        v25 = @"YES";
      }

      v26 = v25;
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "updateHikingMapConfiguration showsTopographicFeatures: %{public}@", buf, 0xCu);
    }

    [v23 setShowsTopographicFeatures:v3];
  }
}

- (BOOL)shouldForceExploreMap
{
  v2 = [(MapsTokenStorage *)self->_hikingMapTokens allTokenReasons];
  v3 = [v2 containsObject:@"mapType"];

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

- (void)_freezeMapInsetsLayoutGuideIfPermitted:(BOOL)a3
{
  v4 = [(ChromeViewController *)self freezesMapInsetsLayoutGuide]&& a3;
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

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ChromeViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    *buf = 138543362;
    v51 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Unfreezing map insets layout guide", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  if (!v4)
  {
    return;
  }

  v13 = [(ChromeViewController *)self mapView];
  [v13 _edgeInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = sub_10000B11C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = self;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(ChromeViewController *)v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_17;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_17:

    v54.top = v15;
    v54.left = v17;
    v54.bottom = v19;
    v54.right = v21;
    v29 = NSStringFromUIEdgeInsets(v54);
    *buf = 138543618;
    v51 = v28;
    v52 = 2114;
    v53 = v29;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}@] Freezing map insets layout guide to %{public}@", buf, 0x16u);
  }

  v30 = [(ChromeViewController *)self view];
  v49 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  v48 = [v49 topAnchor];
  v47 = [v30 topAnchor];
  v41 = [v48 constraintEqualToAnchor:v47 constant:v15];
  v46 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  v45 = [v46 leftAnchor];
  v44 = [v30 leftAnchor];
  v40 = [v45 constraintEqualToAnchor:v44 constant:v17];
  v42 = [v30 bottomAnchor];
  v43 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  v31 = [v43 bottomAnchor];
  v32 = [v42 constraintEqualToAnchor:v31 constant:v19];
  v33 = [v30 rightAnchor];
  v34 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  v35 = [v34 rightAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:v21];
  v37 = [MapsEdgeConstraints edgeConstraintsWithTop:v41 leading:v40 bottom:v32 trailing:v36];
  v38 = [v37 allConstraints];
  v39 = self->_frozenMapInsetsConstraints;
  self->_frozenMapInsetsConstraints = v38;

  [NSLayoutConstraint activateConstraints:self->_frozenMapInsetsConstraints];
}

- (void)clearMapGesturesAndAnimations
{
  v2 = [(ChromeViewController *)self mapView];
  [v2 _clearGesturesAndAnimations];
}

- (void)setLabelEdgeWidths:(UIEdgeInsets)a3
{
  if (self->_usesFadingLabels)
  {
    right = a3.right;
    bottom = a3.bottom;
    left = a3.left;
    top = a3.top;
    v18 = [(ChromeViewController *)self mapView];
    [v18 _labelEdgeWidths];
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

- (void)setLabelEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v18 = [(ChromeViewController *)self mapView];
  [v18 _labelEdgeInsets];
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

- (void)_updateMapLabelInsetsWithAnimation:(id)a3
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
  [a3 addPreparation:v5 animations:0 completion:0];
}

- (void)_updateMapEdgeInsetsForContext:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v72 = 0;
  v73 = &v72;
  v74 = 0x4010000000;
  v75 = &unk_1014C0133;
  v8 = UIEdgeInsetsNull[1];
  v76 = UIEdgeInsetsNull[0];
  v77 = v8;
  v9 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 showsMapView])
  {
    goto LABEL_19;
  }

  v10 = [(ChromeViewController *)self contextMapInsetsEdgesRespectingSafeAreaInsets:v6];
  v11 = v10;
  if (v10)
  {
    v12 = [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints topConstraint];
    if ((v11 & 2) == 0)
    {
LABEL_5:
      v13 = 0;
      if ((v11 & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      v14 = [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints bottomConstraint];
      if ((v11 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if ((v10 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  v13 = [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints leadingConstraint];
  if ((v11 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v14 = 0;
  if ((v11 & 8) == 0)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v15 = [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints trailingConstraint];
LABEL_12:
  v16 = [MapsEdgeConstraints edgeConstraintsWithTop:v12 leading:v13 bottom:v14 trailing:v15];
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
  v17 = [v16 allConstraints];
  [(MapsEdgeConstraints *)self->_safeAreaMapEdgeInsetsConstraints activeConstraints];
  v18 = v9 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
  v19 = [v18 count];
  if (v19 != [v17 count])
  {
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100E4A494;
    v68[3] = &unk_1016560E8;
    v68[4] = self;
    v49 = v17;
    v69 = v49;
    v70 = &v72;
    v71 = v11;
    [v7 addPreparation:v68];

LABEL_32:
LABEL_33:
    [v7 setOptions:{objc_msgSend(v7, "options", *&v51, *&v52, *&v53, *&v54) | 0x50006}];
    [(ChromeViewController *)self mapInsetsUpdateAnimationDuration];
    [v7 setDuration:?];
    v50 = [v7 isAnimated];
    v61 = _NSConcreteStackBlock;
    v62 = *(v9 + 180);
    v63 = sub_100E4AAF8;
    v64 = &unk_1016613E0;
    v65 = self;
    v66 = &v72;
    v67 = v50;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = v62;
    v59[2] = sub_100E4AEF4;
    v59[3] = &unk_1016574C0;
    v59[4] = self;
    v60 = v50;
    [v7 addAnimations:&v61 completion:v59];
    goto LABEL_34;
  }

LABEL_19:
  v20 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  [v20 layoutFrame];
  v57 = v22;
  v58 = v21;
  rect1 = v23;
  v25 = v24;
  v26 = [(ChromeViewController *)self view];
  [v26 bounds];
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
  v16 = [(ChromeViewController *)self mapView];
  [v16 _edgeInsets];
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

- (void)_refreshMapInsetsConstraintsForContext:(id)a3 animated:(BOOL)a4 updateIfNeeded:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v16 = a3;
  v8 = [(ChromeViewController *)self isTopContext:v16];
  v9 = v16;
  if (v8)
  {
    v10 = [(NSMapTable *)self->_mapInsetsConstraintsByContext objectForKey:v16];
    currentContextMapInsetsEdgeConstraints = self->_currentContextMapInsetsEdgeConstraints;
    if (currentContextMapInsetsEdgeConstraints != v10)
    {
      if (currentContextMapInsetsEdgeConstraints)
      {
        v12 = [(MapsEdgeConstraints *)currentContextMapInsetsEdgeConstraints allConstraints];
        [NSLayoutConstraint deactivateConstraints:v12];

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
        v15 = [(MapsEdgeConstraints *)v10 allConstraints];
        [NSLayoutConstraint activateConstraints:v15];
      }

      if (!v14 && v5)
      {
        [(ChromeViewController *)self setNeedsUpdateComponent:@"mapInsets" animated:v6];
      }
    }

    v9 = v16;
  }
}

- (void)setMapEdgeInsets:(UIEdgeInsets)a3 animated:(BOOL)a4 forContext:(id)a5
{
  v5 = a4;
  bottom = a3.bottom;
  right = a3.right;
  top = a3.top;
  left = a3.left;
  v7 = a5;
  v8.f64[0] = top;
  v8.f64[1] = left;
  v9.f64[0] = bottom;
  v9.f64[1] = right;
  v55 = v7;
  if (vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *&UIEdgeInsetsZero.top), vceqq_f64(v9, *&UIEdgeInsetsZero.bottom))), 0xFuLL))))
  {
    v23 = [(NSMapTable *)self->_mapInsetsConstraintsByContext objectForKey:v7];
    [(NSMapTable *)self->_mapInsetsConstraintsByContext removeObjectForKey:v55];
    if (v23)
    {
      [(ChromeViewController *)self _refreshMapInsetsConstraintsForContext:v55 animated:v5 updateIfNeeded:1];
      [(ChromeViewController *)self updateComponentsIfNeeded];
    }
  }

  else
  {
    [(ChromeViewController *)self mapEdgeInsetsForContext:v7];
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
    v24 = [(ChromeViewController *)self mapInsetsLayoutGuide];
    v25 = [v24 owningView];

    if (v23)
    {
      v26 = [v23 topConstraint];
      [v26 setConstant:*&v51];

      v27 = [v23 leftConstraint];
      [v27 setConstant:left];

      v28 = [v23 bottomConstraint];
      [v28 setConstant:bottom];

      v29 = [v23 rightConstraint];
      [v29 setConstant:right];

      if ([(ChromeViewController *)self isTopContext:v55])
      {
        [(ChromeViewController *)self setNeedsUpdateComponent:@"mapInsets" animated:v5];
      }
    }

    else
    {
      v30 = [(ChromeViewController *)self mapInsetsLayoutGuide];
      v31 = [v30 topAnchor];
      v32 = [v25 topAnchor];
      LODWORD(v33) = 1148846080;
      v51 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:*&v51 priority:v33];

      v34 = [(ChromeViewController *)self mapInsetsLayoutGuide];
      v35 = [v34 leftAnchor];
      v36 = [v25 leftAnchor];
      LODWORD(v37) = 1148846080;
      v38 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:left priority:v37];

      v39 = [v25 bottomAnchor];
      v40 = [(ChromeViewController *)self mapInsetsLayoutGuide];
      v41 = [v40 bottomAnchor];
      LODWORD(v42) = 1148846080;
      v43 = [v39 constraintGreaterThanOrEqualToAnchor:v41 constant:bottom priority:v42];

      v44 = [v25 rightAnchor];
      v45 = [(ChromeViewController *)self mapInsetsLayoutGuide];
      v46 = [v45 rightAnchor];
      LODWORD(v47) = 1148846080;
      [v44 constraintGreaterThanOrEqualToAnchor:v46 constant:right priority:v47];
      v49 = v48 = v25;

      v23 = [MapsEdgeConstraints edgeConstraintsWithTop:v51 left:v38 bottom:v43 right:v49];
      [(NSMapTable *)self->_mapInsetsConstraintsByContext setObject:v23 forKey:v55];
      [(ChromeViewController *)self _refreshMapInsetsConstraintsForContext:v55 animated:v5 updateIfNeeded:1];

      v25 = v48;
    }

    if (![(ChromeViewController *)self isTransitioning])
    {
      [(ChromeViewController *)self updateComponentsIfNeeded];
    }
  }

LABEL_24:
}

- (unint64_t)contextMapInsetsEdgesRespectingSafeAreaInsets:(id)a3
{
  v4 = a3;
  v5 = [(ChromeViewController *)self mapInsetEdgesRespectingSafeAreaInsets];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 mapInsetEdgesRespectingSafeAreaInsets];
  }

  return v5;
}

- (UIEdgeInsets)mapEdgeInsetsForContext:(id)a3
{
  v3 = [(NSMapTable *)self->_mapInsetsConstraintsByContext objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 topConstraint];
    [v5 constant];
    top = v6;
    v8 = [v4 leftConstraint];
    [v8 constant];
    left = v9;
    v11 = [v4 bottomConstraint];
    [v11 constant];
    bottom = v12;
    v14 = [v4 rightConstraint];
    [v14 constant];
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

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if (!+[ChromeDelegateProxy selectorIsProxiedDelegateMethod:](ChromeMapViewDelegateProxy, "selectorIsProxiedDelegateMethod:", [v4 selector]) || objc_msgSend(objc_opt_class(), "instancesRespondToSelector:", objc_msgSend(v4, "selector")))
  {
    v5.receiver = self;
    v5.super_class = ChromeViewController;
    [(ChromeViewController *)&v5 forwardInvocation:v4];
  }
}

- (void)unregisterAdditionalMapViewDelegate:(id)a3
{
  v4 = a3;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
LABEL_10:

      v12 = v11;
      v13 = v4;
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
      v9 = [(ChromeViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    goto LABEL_10;
  }

LABEL_19:

  [(ChromeDelegateProxy *)self->_mapViewDelegateProxy removeAdditionalDelegate:v4 forProtocol:&OBJC_PROTOCOL___MKMapViewDelegatePrivate];
}

- (void)registerAdditionalMapViewDelegate:(id)a3
{
  v4 = a3;
  v5 = &OBJC_PROTOCOL___MKMapViewDelegatePrivate;
  if (sub_100010C34(v4, v5))
  {
    goto LABEL_2;
  }

  v20 = sub_10006D178();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = v4;
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
    v7 = self;
    if (!v7)
    {
      v12 = @"<nil>";
LABEL_11:

      v13 = v12;
      v14 = v4;
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

    goto LABEL_11;
  }

LABEL_20:

  [(ChromeDelegateProxy *)self->_mapViewDelegateProxy addAdditionalDelegate:v4 forProtocol:v5];
}

- (id)mapViewDelegateForSelector:(SEL)a3
{
  v3 = [(ChromeViewController *)self mapViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setVKApplicationUILayout:(int64_t)a3
{
  v5 = [(ChromeViewController *)self mapView];
  v6 = [v5 _mapLayer];
  v7 = [v6 applicationUILayout];

  if (v7 != a3)
  {
    v9 = [(ChromeViewController *)self mapView];
    v8 = [v9 _mapLayer];
    [v8 setApplicationUILayout:a3];
  }
}

- (void)_setLocalizedStringsForMapView:(id)a3
{
  v3 = a3;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("ChromeViewController.workerQueue", v4);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E4C084;
  block[3] = &unk_101661B18;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, block);
}

- (void)installMapView:(id)a3
{
  v4 = a3;
  v5 = [(ChromeViewController *)self isViewLoaded];
  v6 = sub_10000B11C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if ((v5 & 1) == 0)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    v14 = self;
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_24;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(ChromeViewController *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_17;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

LABEL_24:
    *buf = 138543362;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] _installMapView: view not yet loaded", buf, 0xCu);

    goto LABEL_25;
  }

  if (v7)
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_19;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ChromeViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_9;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_9:

LABEL_19:
    mapReplacementView = v8->_mapReplacementView;
    *buf = 138543874;
    v27 = v13;
    v28 = 2048;
    v29 = v4;
    v30 = 2048;
    v31 = mapReplacementView;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] _installMapView: installing %p (current _mapReplacementView: %p)", buf, 0x20u);
  }

  v21 = [v4 superview];
  v22 = [(ChromeViewController *)self view];

  if (v21 != v22)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100E4C788;
    v23[3] = &unk_101661A90;
    v24 = v4;
    v25 = self;
    [UIView performWithoutAnimation:v23];
  }

  v6 = [(ChromeViewController *)self view];
  [v6 sendSubviewToBack:v4];
LABEL_25:
}

- (void)_updateComponentsIfNeeded:(BOOL)a3 forceImmediateUpdate:(BOOL)a4 forTiming:(unint64_t)a5 withAnimation:(id)a6
{
  v7 = a4;
  v9 = a6;
  [(NSTimer *)self->_scheduledComponentUpdateTimer invalidate];
  scheduledComponentUpdateTimer = self->_scheduledComponentUpdateTimer;
  self->_scheduledComponentUpdateTimer = 0;

  v11 = sub_10000B11C();
  v95 = self;
  v96 = a5;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(ChromeViewController *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = v9;
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        a5 = v96;
LABEL_7:

        v19 = v18;
        if (a5 > 3)
        {
          v20 = v17;
          if (a5 != 4)
          {
            if (a5 == 0xFFFFFFFF)
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
          if (a5 != 1)
          {
            if (a5 == 2)
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

        v9 = v22;
        a5 = v96;
        goto LABEL_26;
      }

      a5 = v96;
    }

    v17 = v9;
    v18 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
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

  v33 = sub_10000B11C();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
  if (!v7)
  {
    if (!v34)
    {
LABEL_44:

      v33 = [(NSMutableSet *)self->_componentsBeingUpdated allObjects];
      [v32 removeObjectsForKeys:v33];
      goto LABEL_45;
    }

    v42 = self;
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    if (objc_opt_respondsToSelector())
    {
      v45 = [(ChromeViewController *)v42 performSelector:"accessibilityIdentifier"];
      v46 = v45;
      if (v45 && ![v45 isEqualToString:v44])
      {
        v47 = [NSString stringWithFormat:@"%@<%p, %@>", v44, v42, v46];

        goto LABEL_43;
      }
    }

    v47 = [NSString stringWithFormat:@"%@<%p>", v44, v42];
LABEL_43:

    componentsBeingUpdated = self->_componentsBeingUpdated;
    *buf = 138543618;
    v109 = v47;
    v110 = 2112;
    v111 = componentsBeingUpdated;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "[%{public}@] - Skipping components in the middle of updates (they may update again later): %@", buf, 0x16u);

    a5 = v96;
    goto LABEL_44;
  }

  if (v34)
  {
    v35 = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    if (objc_opt_respondsToSelector())
    {
      v38 = [(ChromeViewController *)v35 performSelector:"accessibilityIdentifier"];
      v39 = v38;
      if (v38 && ![v38 isEqualToString:v37])
      {
        v40 = [NSString stringWithFormat:@"%@<%p, %@>", v37, v35, v39];

        goto LABEL_36;
      }
    }

    v40 = [NSString stringWithFormat:@"%@<%p>", v37, v35];
LABEL_36:

    v41 = self->_componentsBeingUpdated;
    *buf = 138543618;
    v109 = v40;
    v110 = 2112;
    v111 = v41;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "[%{public}@] - Forcing immediate update, not skipping components in the middle of updates: %@", buf, 0x16u);

    a5 = v96;
  }

LABEL_45:

LABEL_46:
  if (a3)
  {
    goto LABEL_79;
  }

  v93 = v9;
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
        if ((v56 & a5) != 0)
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

        v60 = self;
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        if (objc_opt_respondsToSelector())
        {
          v63 = [(ChromeViewController *)v60 performSelector:"accessibilityIdentifier"];
          v64 = v63;
          if (!v63 || [v63 isEqualToString:v62])
          {

            goto LABEL_60;
          }

          v94 = [NSString stringWithFormat:@"%@<%p, %@>", v62, v60, v64];

          v65 = v94;
        }

        else
        {
LABEL_60:
          v65 = [NSString stringWithFormat:@"%@<%p>", v62, v60];
        }

        if (v59 > 3)
        {
          a5 = v96;
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
          a5 = v96;
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
            v109 = v65;
            v110 = 2112;
            v111 = v53;
            v112 = 2080;
            v113 = v66;
            _os_log_impl(&_mh_execute_header, &v57->super, OS_LOG_TYPE_DEBUG, "[%{public}@] - Skipping component %@, not the right timing (wants '%s')", buf, 0x20u);

            self = v95;
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

  v9 = v93;
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

    v84 = self;
    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);
    if (objc_opt_respondsToSelector())
    {
      v87 = [(ChromeViewController *)v84 performSelector:"accessibilityIdentifier"];
      v88 = v87;
      if (v87 && ![v87 isEqualToString:v86])
      {
        v89 = [NSString stringWithFormat:@"%@<%p, %@>", v86, v84, v88];

        goto LABEL_99;
      }
    }

    v89 = [NSString stringWithFormat:@"%@<%p>", v86, v84];
LABEL_99:

    *buf = 138543362;
    v109 = v89;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEBUG, "[%{public}@] - No components left to update after skipping those in-flight, returning early", buf, 0xCu);

    goto LABEL_100;
  }

  v70 = [v32 allKeys];
  [(NSMutableDictionary *)v69 removeObjectsForKeys:v70];

  self->_componentUpdateIsAnimated = 0;
  v71 = self->_componentsBeingUpdated;
  if (!v71)
  {
    v72 = objc_alloc_init(NSMutableSet);
    v73 = self->_componentsBeingUpdated;
    self->_componentsBeingUpdated = v72;

    v71 = self->_componentsBeingUpdated;
  }

  v74 = [v32 allKeys];
  [(NSMutableSet *)v71 addObjectsFromArray:v74];

  v75 = sub_10000B11C();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    v76 = self;
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_87;
    }

    v79 = [(ChromeViewController *)v76 performSelector:"accessibilityIdentifier"];
    v80 = v79;
    if (v79 && ![v79 isEqualToString:v78])
    {
      v81 = [NSString stringWithFormat:@"%@<%p, %@>", v78, v76, v80];
    }

    else
    {

LABEL_87:
      v81 = [NSString stringWithFormat:@"%@<%p>", v78, v76];
    }

    if (v96 > 3)
    {
      if (v96 == 4)
      {
        v82 = "context becoming top";
      }

      else
      {
        if (v96 != 0xFFFFFFFFLL)
        {
          goto LABEL_105;
        }

        v82 = "any";
      }
    }

    else if (v96 == 1)
    {
      v82 = "on-demand";
    }

    else
    {
      if (v96 == 2)
      {
        v82 = "context resigning top";
        goto LABEL_108;
      }

LABEL_105:
      v82 = "unknown";
    }

LABEL_108:
    v90 = [v32 allKeys];
    *buf = 138543874;
    v109 = v81;
    v110 = 2080;
    v111 = v82;
    v112 = 2112;
    v113 = v90;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "[%{public}@] - Commit update for timing '%s' with %@", buf, 0x20u);

    self = v95;
  }

  v91 = [v32 allKeys];
  v92 = [NSSet setWithArray:v91];
  [(ChromeViewController *)self willUpdateComponents:v92 withAnimation:v9];

  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_100E4D4FC;
  v99[3] = &unk_1016560A0;
  v99[4] = self;
  v101 = v96;
  v100 = v9;
  [v32 enumerateKeysAndObjectsUsingBlock:v99];

LABEL_110:
}

- (void)updateComponentsIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [GroupAnimation animationForAnimatedFlag:self->_componentUpdateIsAnimated];
  [(ChromeViewController *)self updateComponentsIfNeeded:v3 withAnimation:v5];
  [v5 runWithCurrentOptions];
}

- (unint64_t)preferredUpdateTimingForComponent:(id)a3
{
  if (a3 == @"navigationDisplay")
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ChromeViewController *)self nextTopContext];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(ChromeViewController *)self topContext];
  }

  v13 = v12;

  v14 = [(ChromeViewController *)self topContext];
  v15 = sub_10000B11C();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if ((a4 & 4) != 0 && v13)
  {
    if (!v16)
    {
LABEL_49:

      goto LABEL_64;
    }

    v57 = v14;
    v17 = self;
    v61 = v9;
    if (!v17)
    {
      v22 = @"<nil>";
LABEL_31:

      v33 = v22;
      v34 = "unknown";
      if (a4 == 4)
      {
        v34 = "context becoming top";
      }

      v60 = a4;
      if (a4 == 0xFFFFFFFF)
      {
        v34 = "any";
      }

      v56 = v34;
      v35 = [(ChromeViewController *)v17 topContext];
      if (!v35)
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
        v66 = v8;
        v67 = 2080;
        v68 = v56;
        v69 = 2112;
        v70 = v41;
        v71 = 2112;
        v72 = v47;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] Update component: %@ with timing %s (outgoing: %@ -> incoming: %@)", buf, 0x34u);

        a4 = v60;
        v9 = v61;
        v14 = v57;
        goto LABEL_49;
      }

      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      if (objc_opt_respondsToSelector())
      {
        v38 = [v35 performSelector:"accessibilityIdentifier"];
        v39 = v38;
        if (v38 && ![v38 isEqualToString:v37])
        {
          v40 = [NSString stringWithFormat:@"%@<%p, %@>", v37, v35, v39];

          goto LABEL_41;
        }
      }

      v40 = [NSString stringWithFormat:@"%@<%p>", v37, v35];
LABEL_41:

      goto LABEL_43;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(ChromeViewController *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_13;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_13:

    goto LABEL_31;
  }

  if (v16)
  {
    v62 = v9;
    v23 = self;
    v24 = &selRef__updatePIPLayout;
    if (!v23)
    {
      v30 = @"<nil>";
LABEL_23:

      v31 = v30;
      v59 = a4;
      if (a4 > 3)
      {
        if (a4 != 4)
        {
          if (a4 == 0xFFFFFFFF)
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
        if (a4 != 1)
        {
          if (a4 == 2)
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
      v48 = [(ChromeViewController *)v23 topContext];
      if (!v48)
      {
        v54 = @"<nil>";
        goto LABEL_61;
      }

      v58 = v14;
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = v24[456];
      if (objc_opt_respondsToSelector())
      {
        v52 = [v48 performSelector:v51];
        v53 = v52;
        if (v52 && ![v52 isEqualToString:v50])
        {
          v54 = [NSString stringWithFormat:@"%@<%p, %@>", v50, v48, v53];

          goto LABEL_59;
        }
      }

      v54 = [NSString stringWithFormat:@"%@<%p>", v50, v48];
LABEL_59:

      v14 = v58;
LABEL_61:

      *buf = 138544130;
      v64 = v31;
      v65 = 2112;
      v66 = v8;
      v67 = 2080;
      v68 = v32;
      v69 = 2112;
      v70 = v54;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] Update component: %@ with timing %s (top context: %@)", buf, 0x2Au);

      a4 = v59;
      v9 = v62;
      goto LABEL_62;
    }

    v25 = v14;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    if (objc_opt_respondsToSelector())
    {
      v28 = [(ChromeViewController *)v23 performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v27])
      {
        v30 = [NSString stringWithFormat:@"%@<%p, %@>", v27, v23, v29];

        goto LABEL_21;
      }
    }

    v30 = [NSString stringWithFormat:@"%@<%p>", v27, v23];
LABEL_21:

    v14 = v25;
    v24 = &selRef__updatePIPLayout;
    goto LABEL_23;
  }

LABEL_62:

  if (!v13)
  {
    v13 = v14;
  }

LABEL_64:
  if (v8 == @"mapInsets")
  {
    [(ChromeViewController *)self _updateMapEdgeInsetsForContext:v13 withAnimation:v9];
  }

  else if (v8 == @"labelInsetsAndWidths")
  {
    [(ChromeViewController *)self _updateMapLabelInsetsWithAnimation:v9];
  }

  else if (v8 == @"personalizedItemSources")
  {
    [(ChromeViewController *)self _updatePersonalizedItemSourcesForContext:v13 withAnimation:v9];
  }

  else if (v8 == @"navigationDisplay")
  {
    [(ChromeViewController *)self _updateNavigationDisplayWithTiming:a4 animation:v9];
  }

  else if (v8 == @"routeAnnotations")
  {
    [(ChromeViewController *)self _updateRouteAnnotationsWithAnimation:v9];
  }

  else if (v8 == @"fullscreenViewController")
  {
    [(ChromeViewController *)self _updateFullscreenViewControllerWithAnimation:v9];
  }
}

- (void)setNeedsUpdateComponent:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_10000B11C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_10;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(ChromeViewController *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_8;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v23 = v16;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Set needs update: %@", buf, 0x16u);
  }

  if (!self->_componentsNeedingUpdate)
  {
    v17 = objc_alloc_init(NSMutableDictionary);
    componentsNeedingUpdate = self->_componentsNeedingUpdate;
    self->_componentsNeedingUpdate = v17;
  }

  v19 = a4 || self->_componentUpdateIsAnimated;
  self->_componentUpdateIsAnimated = v19;
  v20 = [(NSMutableDictionary *)self->_componentsNeedingUpdate objectForKeyedSubscript:v8];
  if (!v20)
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:1];
    [(NSMutableDictionary *)self->_componentsNeedingUpdate setObject:v20 forKeyedSubscript:v8];
  }

  v21 = [[ChromeComponentUpdateInfo alloc] initWithCompletionHandler:v9];

  [v20 addObject:v21];
  [(ChromeViewController *)self _scheduleComponentUpdateTimerIfNeeded];
}

- (void)cancelDeferredAction:(id)a3 forContext:(id)a4
{
  v8 = a3;
  v6 = [(NSMapTable *)self->_deferredActionsByContext objectForKey:a4];
  v7 = v6;
  if (v6)
  {
    [v6 removeObjectForKey:v8];
  }
}

- (BOOL)hasDeferredAction:(id)a3 forContext:(id)a4
{
  deferredActionsByContext = self->_deferredActionsByContext;
  if (!deferredActionsByContext)
  {
    return 0;
  }

  v6 = a3;
  v7 = [(NSMapTable *)deferredActionsByContext objectForKey:a4];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = v8 != 0;
  return v9;
}

- (void)whenContextNextBecomesCurrent:(id)a3 performAction:(id)a4 withBlock:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if ([(ChromeViewController *)self isCurrentContext:v15])
  {
    v9[2](v9, 1);
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

    v13 = [(NSMapTable *)deferredActionsByContext objectForKey:v15];
    if (!v13)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      [(NSMapTable *)self->_deferredActionsByContext setObject:v13 forKey:v15];
    }

    v14 = [v9 copy];
    [v13 setObject:v14 forKeyedSubscript:v8];
  }
}

- (void)commitCoordinatedContextChange
{
  v2 = [(ChromeViewController *)self _contextCoordinatedScheduler];
  [v2 commit];
}

- (void)setFallbackContextCoordinationBlock:(id)a3
{
  v4 = a3;
  v5 = [(ChromeViewController *)self _contextCoordinatedScheduler];
  [v5 setFallbackBlock:v4];
}

- (void)scheduleCoordinatedContextChange:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ChromeViewController *)self _contextCoordinatedScheduler];
  [v8 scheduleBlock:v7 completionHandler:v6];
}

- (void)removeContextStackObserver:(id)a3
{
  if (a3)
  {
    [(GEOObserverHashTable *)self->_stackObservers unregisterObserver:?];
  }
}

- (void)addContextStackObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    stackObservers = self->_stackObservers;
    v8 = v4;
    if (!stackObservers)
    {
      v6 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___ChromeContextStackObserver queue:&_dispatch_main_q];
      v7 = self->_stackObservers;
      self->_stackObservers = v6;

      stackObservers = self->_stackObservers;
    }

    [(GEOObserverHashTable *)stackObservers registerObserver:v8];
    v4 = v8;
  }
}

- (void)_getContextsLeaving:(id *)a3 entering:(id *)a4 fromPrevious:(id)a5 incoming:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a3)
  {
    v11 = [[NSMutableSet alloc] initWithArray:v9];
    if ([v11 count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = v10;
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
    *a3 = v11;
  }

  if (a4)
  {
    v18 = [[NSMutableSet alloc] initWithArray:v10];
    if ([v18 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = v9;
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
    *a4 = v18;
  }
}

- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 isAnimated];
  v12 = [v9 lastObject];
  v13 = [v8 lastObject];
  objc_initWeak(&location, self);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v12 showsMapView])
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100E4F1C0;
    v39[3] = &unk_101661B98;
    objc_copyWeak(&v40, &location);
    [v10 addPreparation:v39];
    objc_destroyWeak(&v40);
  }

  v37 = 0;
  v38 = 0;
  [(ChromeViewController *)self _getContextsLeaving:&v38 entering:&v37 fromPrevious:v8 incoming:v9];
  v23 = v11;
  v24 = v9;
  v25 = v13;
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
          [v18 enterStackInChromeViewController:self withAnimation:{v10, v22}];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v15);
  }

  if (v12 && v12 != v13)
  {
    if (![(ChromeViewController *)self isSuppressed]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v12 becomeTopContextInChromeViewController:self withAnimation:v10];
    }

    [(ChromeViewController *)self _refreshMapInsetsConstraintsForContext:v12 animated:v23 updateIfNeeded:0, v22];
    [(ChromeViewController *)self _updateComponentsIfNeeded:0 forTiming:4 withAnimation:v10];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100E4F21C;
    v30[3] = &unk_101656010;
    v30[4] = self;
    v31 = v12;
    v32 = v23;
    [v10 addAnimations:0 completion:v30];
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100E4F2F4;
  v26[3] = &unk_101656038;
  v26[4] = self;
  v19 = v8;
  v27 = v19;
  v20 = v24;
  v28 = v20;
  v21 = v22;
  v29 = v21;
  [v10 addAnimations:0 completion:v26];

  objc_destroyWeak(&location);
}

- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v44 = 0;
  v45 = 0;
  [(ChromeViewController *)self _getContextsLeaving:&v45 entering:&v44 fromPrevious:v8 incoming:v9];
  v11 = v45;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100E4FB84;
  v42[3] = &unk_101661A90;
  v42[4] = self;
  v12 = v44;
  v43 = v12;
  [v10 addPreparation:v42];
  [(GEOObserverHashTable *)self->_stackObservers chromeViewController:self willMoveFromContextStack:v8 toContextStack:v9];
  v13 = [v9 lastObject];
  v14 = [v8 lastObject];
  objc_initWeak(&location, self);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 showsMapView] & 1) == 0)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100E4FCC4;
    v39[3] = &unk_1016619A8;
    objc_copyWeak(&v40, &location);
    [v10 addCompletion:v39];
    objc_destroyWeak(&v40);
  }

  if (v14 && v14 != v13 && ![(ChromeViewController *)self isSuppressed]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 resignTopContextInChromeViewController:self withAnimation:v10];
  }

  v27 = v8;
  v28 = v12;
  v24 = v14;
  v25 = v13;
  v26 = v9;
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
          [v18 leaveStackInChromeViewController:self withAnimation:v10];
        }

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100E4FD30;
        v34[3] = &unk_101661738;
        v34[4] = v18;
        [v10 addCompletion:{v34, v24, v25}];
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
    [(ChromeViewController *)self _updateComponentsIfNeeded:0 forTiming:2 withAnimation:v10];
  }

  objc_destroyWeak(&location);
}

- (void)_teardownContextTransition:(id)a3
{
  v4 = a3;
  if (self->_currentContextTransition != v4)
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
  if (currentContextTransition == v4)
  {
    self->_currentContextTransition = 0;
  }
}

- (void)_setContexts:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ([(ChromeViewController *)self isTransitioning])
  {
    v10 = sub_10000B11C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      objc_initWeak(&buf, self);
      v24 = [(ChromeContextTransition *)self->_currentContextTransition enterAnimation];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100E503DC;
      v30[3] = &unk_101655F98;
      objc_copyWeak(&v33, &buf);
      v31 = v8;
      v34 = v6;
      v32 = v9;
      [v24 addCompletion:v30];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&buf);
      goto LABEL_14;
    }

    v11 = self;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_12;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(ChromeViewController *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_9;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_9:

LABEL_12:
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Already transitioning; queueing up context change", &buf, 0xCu);

    goto LABEL_13;
  }

  [(ChromeViewController *)self loadViewIfNeeded];
  v17 = self->_contexts;
  v18 = [[ChromeContextTransition alloc] initForTransitionFromContexts:v17 toContexts:v8 animated:v6];
  objc_storeStrong(&self->_currentContextTransition, v18);
  v19 = [v18 leaveAnimation];
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
  [v19 addPreparation:v29];
  [(ChromeViewController *)self contextStackWillUpdateFrom:v17 to:v8 withAnimation:v19];
  v20 = [v8 copy];
  contexts = self->_contexts;
  self->_contexts = v20;

  v22 = [v18 enterAnimation];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100E50508;
  v25[3] = &unk_101655FC0;
  v25[4] = self;
  v23 = v18;
  v26 = v23;
  p_buf = &buf;
  v28 = v6;
  [v22 addCompletion:v25];
  [(ChromeViewController *)self contextStackDidUpdateFrom:v17 to:v8 withAnimation:v22];
  [v23 runWithCompletion:v9];

  _Block_object_dispose(&buf, 8);
LABEL_14:
}

- (void)setContexts:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100E506B8;
  v11[3] = &unk_101655F20;
  v12 = self;
  v13 = a3;
  v14 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E50AB4;
  v9[3] = &unk_101655F48;
  v10 = a5;
  v7 = v10;
  v8 = v13;
  [(ChromeViewController *)v12 scheduleCoordinatedContextChange:v11 completionHandler:v9];
}

- (void)popContextAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = [(ChromeViewController *)self contexts];
  v7 = [v8 lastObject];
  [(ChromeViewController *)self popContext:v7 animated:v4 completion:v6];
}

- (void)popContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100E50C6C;
  v12[3] = &unk_101655F20;
  v13 = a3;
  v14 = self;
  v15 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E50FA0;
  v10[3] = &unk_101655F48;
  v11 = a5;
  v8 = v11;
  v9 = v13;
  [(ChromeViewController *)self scheduleCoordinatedContextChange:v12 completionHandler:v10];
}

- (void)popToRootContextAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = [(ChromeViewController *)self contexts];
  v7 = [v8 firstObject];
  [(ChromeViewController *)self popToContext:v7 animated:v4 completion:v6];
}

- (void)popToContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100E51168;
  v12[3] = &unk_101655F20;
  v13 = a3;
  v14 = self;
  v15 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E51434;
  v10[3] = &unk_101655F48;
  v11 = a5;
  v8 = v11;
  v9 = v13;
  [(ChromeViewController *)self scheduleCoordinatedContextChange:v12 completionHandler:v10];
}

- (void)pushContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100E51554;
  v11[3] = &unk_101655F20;
  v14 = a4;
  v12 = a3;
  v13 = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E51A4C;
  v9[3] = &unk_101655F48;
  v10 = a5;
  v7 = v10;
  v8 = v12;
  [(ChromeViewController *)self scheduleCoordinatedContextChange:v11 completionHandler:v9];
}

- (BOOL)hasDuplicatesOfContext:(id)a3
{
  v4 = a3;
  v5 = [(ChromeViewController *)self contexts];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E51B38;
  v9[3] = &unk_101655EF8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:v9];

  LOBYTE(v5) = [v7 count] > 1;
  return v5;
}

- (BOOL)isCurrentContext:(id)a3
{
  v4 = a3;
  if ([(ChromeViewController *)self isSuppressed])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ChromeViewController *)self isTopContext:v4];
  }

  return v5;
}

- (BOOL)isTopContext:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(ChromeViewController *)self topContext];
  v6 = v5 == v4;

  return v6;
}

- (id)uniqueIdentifierForContext:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%@.%p", objc_opt_class(), v3];

  return v4;
}

- (void)updateFramesInDebugFramesView:(id)a3
{
  v8 = a3;
  v4 = [(ChromeViewController *)self view];
  v5 = [v4 safeAreaLayoutGuide];
  [v8 setLayoutGuide:v5 forName:@"safe area"];

  v6 = [(ChromeViewController *)self viewportLayoutGuide];
  [v8 setLayoutGuide:v6 forName:@"viewport"];

  v7 = [(ChromeViewController *)self mapInsetsLayoutGuide];
  [v8 setLayoutGuide:v7 forName:@"map insets"];

  [v8 setLayoutGuide:self->_overlayContentLayoutGuide forName:@"overlay content"];
}

- (void)registerFramesInDebugFramesView:(id)a3
{
  v3 = a3;
  v4 = +[UIColor systemGrayColor];
  [v3 registerName:@"safe area" color:v4 weight:15 edges:1.0];

  v5 = +[UIColor systemBlueColor];
  [v3 registerName:@"viewport" color:v5 weight:15 edges:1.0];

  v6 = +[UIColor systemDarkGreenColor];
  [v3 registerName:@"map insets" color:v6 weight:15 edges:1.0];

  v7 = +[UIColor systemDarkYellowColor];
  [v3 registerName:@"overlay content" color:v7 weight:15 edges:1.0];
}

- (void)userDefaultsDidChange:(id)a3
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

- (void)_updateConstraintsWithContainer:(id)a3 layoutGuide:(id)a4 safeAreaEdges:(unint64_t)a5 flexible:(BOOL)a6
{
  v6 = a6;
  v10 = ~a5;
  v28 = a3;
  v11 = a4;
  [NSLayoutConstraint deactivateConstraints:v28];
  [v28 removeAllObjects];
  if (v6)
  {
    v12 = [(ChromeViewController *)self view];
    v13 = [v12 safeAreaLayoutGuide];
    LODWORD(v14) = 1148829696;
    v15 = [v13 _maps_flexibleConstraintsForLayoutGuide:v11 insideEdges:a5 withFillingPriority:v14];
    [v28 addObjectsFromArray:v15];

    v16 = [(ChromeViewController *)self view];
    LODWORD(v17) = 1148829696;
    v18 = [v16 _maps_flexibleConstraintsForLayoutGuide:v11 insideEdges:v10 & 0xF withFillingPriority:v17];
    [v28 addObjectsFromArray:v18];
  }

  else
  {
    overlayContentLayoutGuide = self->_overlayContentLayoutGuide;
    v20 = [(ChromeViewController *)self view];
    v21 = [v20 safeAreaLayoutGuide];
    LODWORD(v22) = 1148846080;
    v23 = [(UILayoutGuide *)overlayContentLayoutGuide _maps_constraintsEqualToEdges:a5 ofLayoutGuide:v21 priority:v22];
    v24 = [v23 allConstraints];
    [v28 addObjectsFromArray:v24];

    v25 = self->_overlayContentLayoutGuide;
    v16 = [(ChromeViewController *)self view];
    LODWORD(v26) = 1148846080;
    v18 = [(UILayoutGuide *)v25 _maps_constraintsEqualToEdges:v10 & 0xF ofView:v16 priority:v26];
    v27 = [v18 allConstraints];
    [v28 addObjectsFromArray:v27];
  }

  [NSLayoutConstraint activateConstraints:v28];
}

- (void)updateOverlayContentConstraints
{
  overlayContentLayoutGuideConstraints = self->_overlayContentLayoutGuideConstraints;
  overlayContentLayoutGuide = self->_overlayContentLayoutGuide;
  v5 = [(ChromeViewController *)self overlayContentEdgesRespectingSafeAreaInsets];

  [(ChromeViewController *)self _updateConstraintsWithContainer:overlayContentLayoutGuideConstraints layoutGuide:overlayContentLayoutGuide safeAreaEdges:v5 flexible:0];
}

- (void)updateViewportConstraints
{
  viewportLayoutGuideConstraints = self->_viewportLayoutGuideConstraints;
  viewportLayoutGuide = self->_viewportLayoutGuide;
  v5 = [(ChromeViewController *)self viewportEdgesRespectingSafeAreaInsets];

  [(ChromeViewController *)self _updateConstraintsWithContainer:viewportLayoutGuideConstraints layoutGuide:viewportLayoutGuide safeAreaEdges:v5 flexible:1];
}

- (void)dealloc
{
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

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

LABEL_10:
    *buf = 138543362;
    v13 = v9;
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