@interface IOSBasedChromeViewController
- (AppCoordinator)appCoordinator;
- (BOOL)_canShowLookAroundButton;
- (BOOL)_canShowWeather;
- (BOOL)_defaultPrefersStatusBarHidden;
- (BOOL)_internal_createPostLaunchOverlaysIfNeeded;
- (BOOL)_internal_createPostMapFullyDrawnOverlaysIfNeeded;
- (BOOL)_internal_isChromeDisabled;
- (BOOL)_internal_topContextWantsCompassLayoutControl;
- (BOOL)_isCurrentContainerChromeOwned;
- (BOOL)_isNavigationMode;
- (BOOL)_shouldCollapseLookAroundPreview;
- (BOOL)_shouldShowBrowseVenueFloatingControl;
- (BOOL)_shouldShowSearchFloatingControl;
- (BOOL)_shouldShowTrafficForViewMode:(int64_t)mode;
- (BOOL)_suppressOverlaysForActiveFullscreenContainer;
- (BOOL)canDropPin;
- (BOOL)canEnter3dMode;
- (BOOL)canEnterLookAroundMode;
- (BOOL)canExitLookAroundMode;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canRemovePin;
- (BOOL)canSnapToNorth;
- (BOOL)displayNavigationAlertAndShouldContinue;
- (BOOL)isHidingCardsForContext:(id)context;
- (BOOL)isNightMode;
- (BOOL)isSnappedToNorth;
- (BOOL)locationPulseEnabled;
- (BOOL)mapViewShouldHandleTapToDeselect:(id)deselect;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)pptTestIsTrayType:(int64_t)type;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)willMoveToOrFromSecureLockScreenUI:(BOOL)i;
- (CGRect)popoverPresentationRectForPrintController:(id)controller;
- (DefaultTransportTypeFinder)defaultTransportTypeFinder;
- (IOSBasedChromeContext)currentIOSBasedContext;
- (IOSBasedChromeViewController)init;
- (InterruptionManager)interruptionManager;
- (MapsUserLocationView)userLocationView;
- (OverlayManager)overlayManager;
- (RidesharingAnnotationsManager)ridesharingAnnotationsManager;
- (SettingsController)settingsController;
- (SharedTripsAnnotationsController)sharedTripsAnnotationsController;
- (UIScrollView)pptTestScrollView;
- (VenuesManager)venuesManager;
- (ViewModeDelegate)viewModeDelegate;
- (double)statusBarHeight;
- (id)_containerViewControllerWithContext:(id)context;
- (id)_currentContainerViewController;
- (id)_currentLogContextDelegateForSelector:(SEL)selector;
- (id)_defaultStatusBarBackgroundViewStyle;
- (id)_lookAroundButtonPlaceCardItem;
- (id)_prevailingSearchButtonOverlay;
- (id)acquireModernMapTokenForReason:(unint64_t)reason;
- (id)allComponents;
- (id)allVisibleMapViewsButNotCarPlayForDebugController:(id)controller;
- (id)allVisibleMapViewsForDebugController:(id)controller;
- (id)baseModeController;
- (id)coordinator;
- (id)currentCollectionShareItemSource;
- (id)currentShareItemSource;
- (id)currentTraits;
- (id)fullscreenViewControllerTransitionFromController:(id)controller toController:(id)toController isDismissTransition:(BOOL)transition;
- (id)lookAroundCoordinator;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)mapViewResponder;
- (id)navActionCoordinator;
- (id)personalizedItemSourcesForCurrentState;
- (id)routeCreationContext;
- (id)topmostContaineeForVenuesManager:(id)manager;
- (id)viewsToRenderMapsScreenshotService:(id)service;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int)displayedMapType;
- (int64_t)_desiredFloatingControlsForCurrentState;
- (int64_t)_internal_topContextMapScaleFeatureVisibility;
- (int64_t)modernMapProjectionType;
- (int64_t)modernMapTerrainMode;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_freezeInnerLayoutGuide;
- (void)_handleLogTileState:(id)state;
- (void)_initializePrintingController;
- (void)_loadInternalDebugSetting;
- (void)_mapFullyDrawn:(id)drawn;
- (void)_refreshHiddenCards;
- (void)_resetTracking:(BOOL)tracking;
- (void)_sceneConnectionsDidChange;
- (void)_teardownViewHierarchyForTesting;
- (void)_teardownViewHierarchyWithActionCoordinator:(id)coordinator shouldAnimate:(BOOL)animate;
- (void)_updateBrowseVenueButtonWithAnimation:(id)animation;
- (void)_updateCardsForCurrentStateWithAnimation:(id)animation;
- (void)_updateFloatingControlsDidChangePitching:(BOOL)pitching animated:(BOOL)animated;
- (void)_updateFloatingControlsDidChangeYaw:(BOOL)yaw animated:(BOOL)animated;
- (void)_updateFloatingControlsForCurrentStateWithAnimation:(id)animation;
- (void)_updateInnerLayoutGuideWithTopViewController:(id)controller;
- (void)_updateLookAroundButtonWithAnimation:(id)animation;
- (void)_updateMapScaleVisibilityWithAnimation:(id)animation;
- (void)_updateMapViewResponderTargetForObject:(id)object;
- (void)_updateMapViewWithEVChargingConfig;
- (void)_updateModernMapCartographicConfiguration;
- (void)_updateOfflineModernMapToken;
- (void)_updateRedoSearchButtonWithAnimation:(id)animation;
- (void)_updateStatusBarForCurrentStateWithAnimation:(id)animation;
- (void)_updateStatusBarSupplementaryViewWithAnimation:(id)animation;
- (void)_updateViewModeForLabelsDisplayIfNeeded;
- (void)_updateViewModeForTrafficDisplayIfNeeded;
- (void)_updateWeatherWithAnimation:(id)animation;
- (void)_windowUserInterfaceStyleDidChange;
- (void)browseVenueChromeOverlayDidSelectFocusedVenueWithOverlay:(id)overlay;
- (void)centerMapToUserLocation;
- (void)chromeNavigationDisplayDidRenderRoute:(id)route;
- (void)cleanUIandHideSearch;
- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)copy:(id)copy;
- (void)createCustomSearchResultForDroppedPinAtCenterPoint;
- (void)createCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)point floorOrdinal:(int)ordinal animated:(BOOL)animated;
- (void)createScreenshotService;
- (void)dealloc;
- (void)debugController:(id)controller choseTraceAtPath:(id)path startNav:(BOOL)nav;
- (void)decrementForToken:(id)token;
- (void)defaultZoom;
- (void)didUpdateForcedExploreMapConfiguration:(BOOL)configuration;
- (void)directionsTypeForMapItem:(id)item handler:(id)handler;
- (void)dismissAllModalViewsIfPresentAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissLastVenuesPlaceCardForVenuesManager:(id)manager;
- (void)displayNavShareETA;
- (void)displayNearbySearch;
- (void)enterLookAroundForMapItem:(id)item isMarkedLocation:(BOOL)location lookAroundView:(id)view;
- (void)enterLookAroundPIP:(id)p;
- (void)exitLookAround;
- (void)find:(id)find;
- (void)floatingControlsOverlay:(id)overlay didTapEnterPedestrianARFromButton:(id)button;
- (void)floatingControlsOverlayDidTapEnter3DMode:(id)mode;
- (void)floatingControlsOverlayDidTapExit3DMode:(id)mode;
- (void)floatingControlsOverlayDidTapOpenSettings:(id)settings;
- (void)floatingControlsOverlayDidTapOpenUserProfile:(id)profile;
- (void)floatingControlsOverlayDidTapRefreshCurrentSearch:(id)search;
- (void)floatingControlsOverlayDidTapTTRButton:(id)button;
- (void)fullscreenViewControllerDidChange:(id)change;
- (void)incrementForToken:(id)token;
- (void)mapStylePickerContaineeViewControllerDidChangeMapTypeWithViewController:(id)controller mapType:(unint64_t)type skipConfiguration:(BOOL)configuration;
- (void)mapStylePickerContaineeViewControllerDismissByGestureWithViewController:(id)controller;
- (void)mapStylePickerContaineeViewControllerPresentDebugPanelIfEnabledWithViewController:(id)controller;
- (void)mapStylePickerContaineeViewControllerWantsDismissWithViewController:(id)controller;
- (void)mapView:(id)view calloutPrimaryActionTriggeredForAnnotationView:(id)annotationView;
- (void)mapView:(id)view calloutPrimaryActionTriggeredForLabelMarker:(id)marker;
- (void)mapView:(id)view didChangeDisplayedFloorOrdinal:(signed __int16)ordinal forVenue:(id)venue;
- (void)mapView:(id)view didChangeFocusedVenue:(id)venue focusedBuilding:(id)building;
- (void)mapView:(id)view didChangeMapType:(unint64_t)type;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapView:(id)view didFailToLocateUserWithError:(id)error;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view didUpdateYaw:(double)yaw;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)mapViewDidFailLoadingMap:(id)map withError:(id)error;
- (void)mapViewDidFinishLoadingMap:(id)map;
- (void)mapViewWillStartLoadingMap:(id)map;
- (void)openUserProfile;
- (void)overlayControllerDidUpdateMapInsets:(id)insets fromOverlay:(id)overlay;
- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type;
- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated;
- (void)prepareMapViewForFirstUse;
- (void)presentMapsDebugControllerIfEnabled;
- (void)printCurrentState;
- (void)printRoute:(id)route;
- (void)printSearchResultFromSession:(id)session;
- (void)registerFramesInDebugFramesView:(id)view;
- (void)removeDroppedPin;
- (void)reportCurrentLocationFailure;
- (void)requestCardLayout:(unint64_t)layout animated:(BOOL)animated forCard:(id)card;
- (void)resetForEditingShortcut:(id)shortcut;
- (void)resetForLaunchURLWithOptions:(id)options;
- (void)resetForTestingAction;
- (void)routeFromSearchResult:(id)result toSearchResult:(id)searchResult directionsType:(unint64_t)type drivePreferences:(id)preferences routeHandle:(id)handle timePoint:(id)point withFeedback:(id)feedback origin:(int64_t)self0 options:(id)self1;
- (void)searchForAddress:(id)address source:(int)source;
- (void)searchForAddressString:(id)string source:(int)source;
- (void)searchForExternalURLQuery:(id)query coordinate:(CLLocationCoordinate2D)coordinate muid:(unint64_t)muid resultProviderId:(int)id contentProvider:(id)provider;
- (void)searchForRouteFromAddress:(id)address toAddress:(id)toAddress directionsMode:(unint64_t)mode userInfo:(id)info;
- (void)searchForSearchItem:(id)item traits:(id)traits source:(int)source;
- (void)searchForString:(id)string traits:(id)traits scrollToResults:(BOOL)results source:(int)source;
- (void)searchWithSearchInfo:(id)info source:(int)source;
- (void)select3dMode;
- (void)selectLookAroundMode;
- (void)selectParkedCarAndPerformAction:(int64_t)action;
- (void)setConnectedToCarPlay:(BOOL)play;
- (void)setLocationPulseEnabled:(BOOL)enabled;
- (void)setNeedsUserActivityUpdate;
- (void)setNeedsUserInterfaceAppearanceUpdate;
- (void)setSearchHereFloatingControlBottomPadding:(double)padding;
- (void)setStatusBarAdditionalColor:(id)color;
- (void)setSuggestedApplicationState:(int)state;
- (void)shouldStartRedoSearch;
- (void)showAnnouncementForFlyover:(id)flyover;
- (void)showFavoritesType:(int64_t)type;
- (void)showRedoSearchOverlay:(BOOL)overlay;
- (void)showTransitLine:(unint64_t)line withName:(id)name;
- (void)snapToNorth;
- (void)switchMapMode:(id)mode;
- (void)toggleLabels;
- (void)toggleTraffic;
- (void)undo:(id)undo;
- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation;
- (void)updateComponentsIfNeededWithTansitionCoordinator:(id)coordinator;
- (void)updateFramesInDebugFramesView:(id)view;
- (void)updateHistoricalLocations;
- (void)updateLightLevelAnimated:(BOOL)animated lightLevel:(int64_t)level;
- (void)updateMapViewDisplayOptions;
- (void)updateThemeForVisualEffectStyle:(unint64_t)style;
- (void)updateThemeViewAndControllers;
- (void)updateViewMode:(int64_t)displayedViewMode animated:(BOOL)animated skipSettingMapConfiguration:(BOOL)configuration;
- (void)updateViewMode:(int64_t)mode animated:(BOOL)animated preserveMapSelection:(BOOL)selection;
- (void)validateCommand:(id)command;
- (void)venuesManager:(id)manager dismissFloorCardViewController:(id)controller;
- (void)venuesManager:(id)manager presentFloorCardViewController:(id)controller;
- (void)venuesManager:(id)manager presentPlaceCardForMapItem:(id)item addToHistory:(BOOL)history presentationActionSource:(unint64_t)source;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)virtualGarageDidUpdate:(id)update;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation IOSBasedChromeViewController

- (IOSBasedChromeViewController)init
{
  v33.receiver = self;
  v33.super_class = IOSBasedChromeViewController;
  v2 = [(ChromeViewController *)&v33 init];
  v3 = v2;
  if (v2)
  {
    [(ChromeViewController *)v2 setSearchContextDefaultsKeysPrefix:@"Main"];
    v3->_displayedViewMode = -1;
    v4 = [[MapsTokenStorage alloc] initWithDelegate:v3 tokenGroupName:@"IOSBasedChromeMetros" callbackQueue:&_dispatch_main_q];
    modernMapTokens = v3->_modernMapTokens;
    v3->_modernMapTokens = v4;

    v6 = [[MapsTokenStorage alloc] initWithDelegate:v3 tokenGroupName:@"IOSBasedChromeForceCardsHidden" callbackQueue:&_dispatch_main_q];
    forceCardsHiddenTokenStorage = v3->_forceCardsHiddenTokenStorage;
    v3->_forceCardsHiddenTokenStorage = v6;

    v8 = objc_alloc_init(EnvironmentObserver);
    environmentObserver = v3->_environmentObserver;
    v3->_environmentObserver = v8;

    v10 = +[GEOResourceManifestManager modernManager];
    [v10 addTileGroupObserver:v3->_environmentObserver queue:&_dispatch_main_q];

    [MKUserLocation _setAnnotationClass:objc_opt_class()];
    v11 = +[BrowseManager sharedManager];
    [v11 setUserInterfaceDelegate:v3];

    v12 = +[MapsUIImageCache sharedCache];
    [v12 setUserInterfaceDelegate:v3];

    objc_initWeak(&location, v3);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100DC4208;
    v30[3] = &unk_101654688;
    objc_copyWeak(&v31, &location);
    v13 = +[CollectionManager sharedManager];
    [v13 setTraitsCreationBlock:v30];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v3 selector:"_sceneConnectionsDidChange" name:UISceneWillConnectNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v3 selector:"_sceneConnectionsDidChange" name:UISceneDidDisconnectNotification object:0];

    [(IOSBasedChromeViewController *)v3 _sceneConnectionsDidChange];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v3 selector:"offlineStateChanged:" name:GEOOfflineStateChangedNotification object:0];

    traitCollection = [(IOSBasedChromeViewController *)v3 traitCollection];
    v3->_currentUserInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v34 = objc_opt_class();
    v18 = [NSArray arrayWithObjects:&v34 count:1];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100DC4254;
    v28[3] = &unk_1016546B0;
    objc_copyWeak(&v29, &location);
    v19 = [(IOSBasedChromeViewController *)v3 registerForTraitChanges:v18 withHandler:v28];
    traitChangeRegistration = v3->_traitChangeRegistration;
    v3->_traitChangeRegistration = v19;

    v21 = +[NSMutableArray array];
    v22 = +[GEOPlatform sharedPlatform];
    isInternalInstall = [v22 isInternalInstall];

    if (isInternalInstall)
    {
      v3->_testing_hide2D3DFloatingControls = GEOConfigGetBOOL();
      objc_copyWeak(&v27, &location);
      v24 = _GEOConfigAddBlockListenerForKey();
      [(NSArray *)v21 addObject:v24, _NSConcreteStackBlock, 3221225472, sub_100DC42D0, &unk_101657B58];

      objc_destroyWeak(&v27);
    }

    else
    {
      v3->_testing_hide2D3DFloatingControls = 0;
    }

    configKeyListeners = v3->_configKeyListeners;
    v3->_configKeyListeners = v21;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)_sceneConnectionsDidChange
{
  v3 = [UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay];

  [(IOSBasedChromeViewController *)self setConnectedToCarPlay:v3];
}

- (void)viewDidLoad
{
  MKSetControlsShouldUseMapsAppSpecificNonStandardControlSizeResolution();
  v93.receiver = self;
  v93.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v93 viewDidLoad];
  v3 = objc_alloc_init(UILayoutGuide);
  [(IOSBasedChromeViewController *)self setInnerLayoutGuide:v3];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"%@.innerLayoutGuide", v5];
  innerLayoutGuide = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  [innerLayoutGuide setIdentifier:v6];

  view = [(IOSBasedChromeViewController *)self view];
  innerLayoutGuide2 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  [view addLayoutGuide:innerLayoutGuide2];

  v10 = objc_alloc_init(UILayoutGuide);
  [(IOSBasedChromeViewController *)self setWeatherLayoutGuide:v10];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [NSString stringWithFormat:@"%@.weatherLayoutGuide", v12];
  weatherLayoutGuide = [(IOSBasedChromeViewController *)self weatherLayoutGuide];
  [weatherLayoutGuide setIdentifier:v13];

  view2 = [(IOSBasedChromeViewController *)self view];
  weatherLayoutGuide2 = [(IOSBasedChromeViewController *)self weatherLayoutGuide];
  [view2 addLayoutGuide:weatherLayoutGuide2];

  v17 = objc_alloc_init(IOSCardsOverlay);
  cardsOverlay = self->_cardsOverlay;
  self->_cardsOverlay = v17;

  [(ContainerViewController *)self->_cardsOverlay setAllowOnlyStandardStyle:0];
  [(ContainerViewController *)self->_cardsOverlay setChromeViewController:self];
  v19 = [[ChromeContainerDelegateProxy alloc] initWithChromeViewController:self];
  containerDelegateProxy = self->_containerDelegateProxy;
  self->_containerDelegateProxy = v19;

  [(ContainerViewController *)self->_cardsOverlay setContainerDelegate:self->_containerDelegateProxy];
  objc_storeWeak(&self->_currentContainerViewController, self->_cardsOverlay);
  overlayController = [(ChromeViewController *)self overlayController];
  [overlayController addOverlay:self->_cardsOverlay];

  v22 = objc_alloc_init(FloatingControlsOverlay);
  [(IOSBasedChromeViewController *)self setFloatingControlsOverlay:v22];

  floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [floatingControlsOverlay setMapViewProvider:self];

  v24 = [[FloatingControlsOverlayDelegateProxy alloc] initWithChromeViewController:self];
  floatingControlsOverlayDelegateProxy = self->_floatingControlsOverlayDelegateProxy;
  self->_floatingControlsOverlayDelegateProxy = v24;

  v26 = self->_floatingControlsOverlayDelegateProxy;
  floatingControlsOverlay2 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [floatingControlsOverlay2 setDelegate:v26];

  overlayController2 = [(ChromeViewController *)self overlayController];
  floatingControlsOverlay3 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  innerLayoutGuide3 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  [overlayController2 addOverlay:floatingControlsOverlay3 inLayoutGuide:innerLayoutGuide3];

  floatingControlsOverlay4 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  mapViewDelegate = [floatingControlsOverlay4 mapViewDelegate];
  [(ChromeViewController *)self registerAdditionalMapViewDelegate:mapViewDelegate];

  self->_statusBarHidden = [(IOSBasedChromeViewController *)self _defaultPrefersStatusBarHidden];
  self->_statusBarStyle = [(IOSBasedChromeViewController *)self _defaultPreferredStatusBarStyle];
  v33 = [StatusBarBackgroundView alloc];
  view3 = [(IOSBasedChromeViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  v37 = [(StatusBarBackgroundView *)v33 initWithSafeAreaTopLayoutAnchor:topAnchor];
  statusBarBackgroundView = self->_statusBarBackgroundView;
  self->_statusBarBackgroundView = v37;

  [(StatusBarBackgroundView *)self->_statusBarBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_permitCustomStatusBarBackgroundViewStyle = GEOConfigGetBOOL() ^ 1;
  _defaultStatusBarBackgroundViewStyle = [(IOSBasedChromeViewController *)self _defaultStatusBarBackgroundViewStyle];
  [(StatusBarBackgroundView *)self->_statusBarBackgroundView setStyle:_defaultStatusBarBackgroundViewStyle];

  view4 = [(IOSBasedChromeViewController *)self view];
  [view4 addSubview:self->_statusBarBackgroundView];

  if (GEOConfigGetBOOL())
  {
    v41 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
    scrollPocketCollectorInteraction = self->_scrollPocketCollectorInteraction;
    self->_scrollPocketCollectorInteraction = v41;

    view5 = [(IOSBasedChromeViewController *)self view];
    [view5 addInteraction:self->_scrollPocketCollectorInteraction];

    v44 = [_UIScrollPocketContainerInteraction alloc];
    mapView = [(ChromeViewController *)self mapView];
    v46 = [v44 initWithScrollView:mapView edge:1];

    [v46 _setCollectorInteraction:self->_scrollPocketCollectorInteraction];
    [(StatusBarBackgroundView *)self->_statusBarBackgroundView addInteraction:v46];
    if (GEOConfigGetBOOL())
    {
      v47 = [[_UIScrollPocketInteraction alloc] initWithStyle:0];
      [(StatusBarBackgroundView *)self->_statusBarBackgroundView addInteraction:v47];
    }
  }

  viewportLayoutGuide = [(ChromeViewController *)self viewportLayoutGuide];
  topAnchor2 = [viewportLayoutGuide topAnchor];
  bottomAnchor = [(StatusBarBackgroundView *)self->_statusBarBackgroundView bottomAnchor];
  LODWORD(v51) = 1148829696;
  v52 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:0.0 priority:v51];
  viewportTopEqualToStatusBarBottomConstraint = self->_viewportTopEqualToStatusBarBottomConstraint;
  self->_viewportTopEqualToStatusBarBottomConstraint = v52;

  viewportLayoutGuide2 = [(ChromeViewController *)self viewportLayoutGuide];
  topAnchor3 = [viewportLayoutGuide2 topAnchor];
  view6 = [(IOSBasedChromeViewController *)self view];
  safeAreaLayoutGuide2 = [view6 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  v59 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  viewportTopEqualToSafeAreaBottomConstraint = self->_viewportTopEqualToSafeAreaBottomConstraint;
  self->_viewportTopEqualToSafeAreaBottomConstraint = v59;

  leadingAnchor = [(StatusBarBackgroundView *)self->_statusBarBackgroundView leadingAnchor];
  view7 = [(IOSBasedChromeViewController *)self view];
  leadingAnchor2 = [view7 leadingAnchor];
  v89 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v94[0] = v89;
  trailingAnchor = [(StatusBarBackgroundView *)self->_statusBarBackgroundView trailingAnchor];
  view8 = [(IOSBasedChromeViewController *)self view];
  trailingAnchor2 = [view8 trailingAnchor];
  v85 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v94[1] = v85;
  topAnchor5 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView topAnchor];
  view9 = [(IOSBasedChromeViewController *)self view];
  topAnchor6 = [view9 topAnchor];
  v81 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v94[2] = v81;
  bottomAnchor2 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView bottomAnchor];
  view10 = [(IOSBasedChromeViewController *)self view];
  safeAreaLayoutGuide3 = [view10 safeAreaLayoutGuide];
  topAnchor7 = [safeAreaLayoutGuide3 topAnchor];
  v76 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor7];
  v94[3] = v76;
  bottomAnchor3 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView bottomAnchor];
  view11 = [(IOSBasedChromeViewController *)self view];
  safeAreaLayoutGuide4 = [view11 safeAreaLayoutGuide];
  topAnchor8 = [safeAreaLayoutGuide4 topAnchor];
  LODWORD(v64) = 1132068864;
  v65 = [bottomAnchor3 constraintEqualToAnchor:topAnchor8 constant:0.0 priority:v64];
  v94[4] = v65;
  viewportLayoutGuide3 = [(ChromeViewController *)self viewportLayoutGuide];
  topAnchor9 = [viewportLayoutGuide3 topAnchor];
  bottomAnchor4 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView bottomAnchor];
  v69 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
  v70 = self->_viewportTopEqualToSafeAreaBottomConstraint;
  v94[5] = v69;
  v94[6] = v70;
  v71 = [NSArray arrayWithObjects:v94 count:7];
  [NSLayoutConstraint activateConstraints:v71];

  theme = [(IOSBasedChromeViewController *)self theme];
  [theme applyAppearance];

  [(EnvironmentObserver *)self->_environmentObserver updateCurrentEnvironmentName];
  [(IOSBasedChromeViewController *)self _loadInternalDebugSetting];
  v73 = +[NSNotificationCenter defaultCenter];
  [v73 addObserver:self selector:"_windowUserInterfaceStyleDidChange" name:@"MapsWindowUserInterfaceStyleDidChangeNotification" object:0];

  v74 = +[VGVirtualGarageService sharedService];
  [v74 registerObserver:self];

  [(IOSBasedChromeViewController *)self _updateMapViewWithEVChargingConfig];
}

- (int64_t)preferredUserInterfaceStyle
{
  viewIfLoaded = [(IOSBasedChromeViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  traitCollection = [screen traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if ([(IOSBasedChromeViewController *)self _isNavigationMode])
  {
    v9 = +[MapsLightLevelController sharedController];
    currentLightLevel = [v9 currentLightLevel];

    if (currentLightLevel == 2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    result = self->_interfaceStyleForMapType;
    if (!result)
    {
      if (self->_interfaceStyleForLight)
      {
        return self->_interfaceStyleForLight;
      }

      else
      {
        return userInterfaceStyle;
      }
    }
  }

  return result;
}

- (BOOL)_isNavigationMode
{
  currentIOSBasedContext = [(IOSBasedChromeViewController *)self currentIOSBasedContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (IOSBasedChromeContext)currentIOSBasedContext
{
  if ([(ChromeViewController *)self isSuppressed])
  {
    topContext = 0;
  }

  else
  {
    topContext = [(ChromeViewController *)self topContext];
  }

  return topContext;
}

- (MapsUserLocationView)userLocationView
{
  v4.receiver = self;
  v4.super_class = IOSBasedChromeViewController;
  userLocationView = [(ChromeViewController *)&v4 userLocationView];

  return userLocationView;
}

- (void)prepareMapViewForFirstUse
{
  v45.receiver = self;
  v45.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v45 prepareMapViewForFirstUse];
  mapView = [(ChromeViewController *)self mapView];
  [mapView _setUseBalloonCalloutsForLabels:1];
  [mapView setTintAdjustmentMode:1];
  [mapView setShowsScale:0];
  [mapView setShowsCompass:0];
  [mapView _setShowsScaleDuringZoom:0];
  [mapView _setScrollEdgeEffectViewInteractionDisabled:GEOConfigGetBOOL() ^ 1];
  [(IOSBasedChromeViewController *)self _updateOfflineModernMapToken];
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  if (mapView)
  {
    [mapView _cartographicConfiguration];
  }

  if ([(IOSBasedChromeViewController *)self shouldUseModernMap])
  {
    modernMapTerrainMode = [(IOSBasedChromeViewController *)self modernMapTerrainMode];
  }

  else
  {
    modernMapTerrainMode = 1;
  }

  *(&v42 + 1) = modernMapTerrainMode;
  if ([(IOSBasedChromeViewController *)self shouldUseModernMap])
  {
    modernMapProjectionType = [(IOSBasedChromeViewController *)self modernMapProjectionType];
  }

  else
  {
    modernMapProjectionType = 1;
  }

  *&v42 = modernMapProjectionType;
  *&v43 = 0;
  v6 = [[MapViewResponder alloc] initWithMapView:mapView];
  mapViewResponder = self->_mapViewResponder;
  self->_mapViewResponder = v6;

  [(EnvironmentObserver *)self->_environmentObserver setMapView:mapView];
  mapType = [mapView mapType];
  v9 = 3;
  v10 = 7;
  if (mapType != 108)
  {
    v10 = 0;
  }

  if (mapType != 104)
  {
    v9 = v10;
  }

  v11 = 5;
  v12 = -1;
  if (mapType != 103)
  {
    v12 = 0;
  }

  if (mapType != 4)
  {
    v11 = v12;
  }

  if (mapType <= 103)
  {
    v9 = v11;
  }

  v13 = 2;
  v14 = 1;
  v15 = 6;
  if (mapType != 3)
  {
    v15 = 0;
  }

  if (mapType != 2)
  {
    v14 = v15;
  }

  if (mapType != 1)
  {
    v13 = v14;
  }

  if (mapType <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = v9;
  }

  self->_displayedViewMode = v16;
  userLocationView = [(IOSBasedChromeViewController *)self userLocationView];
  [userLocationView setViewMode:v16];

  if (self->_logTileStateRecognizer)
  {
    goto LABEL_32;
  }

  v18 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v18 isInternalInstall];

  if (isInternalInstall)
  {
    v20 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleLogTileState:"];
    logTileStateRecognizer = self->_logTileStateRecognizer;
    self->_logTileStateRecognizer = v20;

    [(UITapGestureRecognizer *)self->_logTileStateRecognizer setNumberOfTouchesRequired:3];
    [(UITapGestureRecognizer *)self->_logTileStateRecognizer setNumberOfTapsRequired:3];
    [(UITapGestureRecognizer *)self->_logTileStateRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)self->_logTileStateRecognizer setDelaysTouchesBegan:0];
  }

  if (self->_logTileStateRecognizer)
  {
LABEL_32:
    mapView2 = [(ChromeViewController *)self mapView];
    [mapView2 addGestureRecognizer:self->_logTileStateRecognizer];
  }

  [mapView _setDebugConsoleAdditionalInfoProvider:&stru_101654748];
  if (self->_mapFullyDrawnObserver)
  {
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 removeObserver:self->_mapFullyDrawnObserver];
  }

  mapFullyDrawnFallbackTimer = self->_mapFullyDrawnFallbackTimer;
  if (mapFullyDrawnFallbackTimer)
  {
    [(GCDTimer *)mapFullyDrawnFallbackTimer invalidate];
  }

  objc_initWeak(&location, self);
  v25 = +[NSNotificationCenter defaultCenter];
  _mapLayer = [mapView _mapLayer];
  v27 = +[NSOperationQueue mainQueue];
  v28 = VKMapViewDidBecomeFullyDrawnNotification;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100DC09B0;
  v38[3] = &unk_10165FBE8;
  objc_copyWeak(&v39, &location);
  v29 = [v25 addObserverForName:v28 object:_mapLayer queue:v27 usingBlock:v38];
  mapFullyDrawnObserver = self->_mapFullyDrawnObserver;
  self->_mapFullyDrawnObserver = v29;

  GEOConfigGetDouble();
  v32 = v31;
  v33 = &_dispatch_main_q;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100DC0A14;
  v36[3] = &unk_101654770;
  objc_copyWeak(v37, &location);
  v37[1] = v32;
  v34 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:0 repeating:v36 block:*&v32];
  v35 = self->_mapFullyDrawnFallbackTimer;
  self->_mapFullyDrawnFallbackTimer = v34;

  objc_destroyWeak(v37);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

- (void)_updateOfflineModernMapToken
{
  usingOfflineDataModernMapToken = self->_usingOfflineDataModernMapToken;
  v4 = +[GEOOfflineService shared];
  isUsingOffline = [v4 isUsingOffline];

  if ((((usingOfflineDataModernMapToken == 0) ^ isUsingOffline) & 1) == 0)
  {
    if (isUsingOffline)
    {
      v6 = [(IOSBasedChromeViewController *)self acquireModernMapTokenForReason:4];
    }

    else
    {
      v6 = 0;
    }

    v7 = self->_usingOfflineDataModernMapToken;
    self->_usingOfflineDataModernMapToken = v6;

    mapView = [(ChromeViewController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    [_mapLayer clearScene];
  }
}

- (BOOL)_defaultPrefersStatusBarHidden
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    if ([v5 userInterfaceIdiom] == 5)
    {
      v4 = 0;
    }

    else
    {
      viewIfLoaded = [(IOSBasedChromeViewController *)self viewIfLoaded];
      traitCollection = [viewIfLoaded traitCollection];
      v4 = [traitCollection verticalSizeClass] == 1;
    }
  }

  return v4;
}

- (id)_defaultStatusBarBackgroundViewStyle
{
  defaultStatusBarBackgroundViewStyle = self->_defaultStatusBarBackgroundViewStyle;
  if (!defaultStatusBarBackgroundViewStyle)
  {
    if (self->_permitCustomStatusBarBackgroundViewStyle)
    {
      [StatusBarBackgroundViewStyle defaultBlurredStyleWithDefaultColorProvider:&stru_1016309F0];
    }

    else
    {
      +[StatusBarBackgroundViewStyle clear];
    }
    v4 = ;
    v5 = self->_defaultStatusBarBackgroundViewStyle;
    self->_defaultStatusBarBackgroundViewStyle = v4;

    defaultStatusBarBackgroundViewStyle = self->_defaultStatusBarBackgroundViewStyle;
  }

  return defaultStatusBarBackgroundViewStyle;
}

- (void)_loadInternalDebugSetting
{
  v7 = +[NSUserDefaults standardUserDefaults];
  v3 = [v7 BOOLForKey:@"DisableLocationPulse"];
  mapView = [(ChromeViewController *)self mapView];
  [mapView _setLocationPulseEnabled:v3 ^ 1];

  v5 = [v7 BOOLForKey:@"DebugConsoleEnabled"];
  mapView2 = [(ChromeViewController *)self mapView];
  [mapView2 setLocationConsoleEnabled:v5];
}

- (VenuesManager)venuesManager
{
  venuesManager = self->_venuesManager;
  if (!venuesManager)
  {
    v4 = sub_10000B11C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v11 = [VenuesManager alloc];
      mapView = [(ChromeViewController *)self mapView];
      userLocationView = [(IOSBasedChromeViewController *)self userLocationView];
      v14 = [(VenuesManager *)v11 initWithDelegate:self mapView:mapView userLocationView:userLocationView];
      v15 = self->_venuesManager;
      self->_venuesManager = v14;

      v16 = self->_venuesManager;
      searchPinsManager = [(ChromeViewController *)self searchPinsManager];
      [searchPinsManager setVenuesManager:v16];

      v18 = self->_venuesManager;
      searchPinsManager2 = [(ChromeViewController *)self searchPinsManager];
      [(VenuesManager *)v18 addChangeObserver:searchPinsManager2];

      venuesManager = self->_venuesManager;
      goto LABEL_10;
    }

    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v22 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating venuesManager", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:

  return venuesManager;
}

- (void)viewLayoutMarginsDidChange
{
  v7.receiver = self;
  v7.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v7 viewLayoutMarginsDidChange];
  _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  [_currentContainerViewController edgePadding];
  v5 = v4;
  floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [floatingControlsOverlay setMargin:v5];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  topContext = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    fullscreenViewController = [topContext fullscreenViewController];
  }

  else
  {
    fullscreenViewController = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    prefersHomeIndicatorAutoHidden = [fullscreenViewController prefersHomeIndicatorAutoHidden];
  }

  else
  {
    prefersHomeIndicatorAutoHidden = 0;
  }

  return prefersHomeIndicatorAutoHidden;
}

- (void)viewDidLayoutSubviews
{
  v50.receiver = self;
  v50.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v50 viewDidLayoutSubviews];
  if (![(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac]&& ![(IOSBasedChromeViewController *)self _internal_topContextWantsCompassLayoutControl])
  {
    mapView = [(ChromeViewController *)self mapView];
    innerLayoutGuide = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [innerLayoutGuide layoutFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    innerLayoutGuide2 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    owningView = [innerLayoutGuide2 owningView];
    [mapView convertRect:owningView fromView:{v6, v8, v10, v12}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v45 = v21;

    mapView2 = [(ChromeViewController *)self mapView];
    [mapView2 _edgeInsets];
    v48 = v24;
    v49 = v23;

    mapView3 = [(ChromeViewController *)self mapView];
    [mapView3 bounds];
    v43 = v27;
    v44 = v26;
    v42 = v28;
    rect1 = v29;
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v51.origin.x = v16;
    v51.origin.y = v18;
    v51.size.width = v20;
    v51.size.height = v45;
    v59.origin.x = CGRectZero.origin.x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    if (CGRectEqualToRect(v51, v59))
    {
      MinX = left;
    }

    else
    {
      v52.origin.y = v43;
      v52.origin.x = v44;
      v52.size.width = v42;
      v52.size.height = rect1;
      v60.origin.x = CGRectZero.origin.x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      MinX = left;
      if (!CGRectEqualToRect(v52, v60))
      {
        v53.origin.x = v16;
        v53.origin.y = v18;
        v53.size.width = v20;
        v53.size.height = v45;
        CGRectGetMinY(v53);
        v54.origin.x = v16;
        v54.origin.y = v18;
        v54.size.width = v20;
        v54.size.height = v45;
        MinX = CGRectGetMinX(v54);
        v55.origin.x = v44;
        v55.origin.y = v43;
        v55.size.width = v42;
        v55.size.height = rect1;
        CGRectGetHeight(v55);
        v56.origin.x = v16;
        v56.origin.y = v18;
        v56.size.width = v20;
        v56.size.height = v45;
        CGRectGetMaxY(v56);
        v57.origin.x = v44;
        v57.origin.y = v43;
        v57.size.width = v42;
        v57.size.height = rect1;
        v35 = CGRectGetWidth(v57);
        v58.origin.x = v16;
        v58.origin.y = v18;
        v58.size.width = v20;
        v58.size.height = v45;
        right = v35 - CGRectGetMaxX(v58);
      }
    }

    mapView4 = [(ChromeViewController *)self mapView];
    [mapView4 _compassInsets];
    v38 = v37;
    v40 = v39;

    mapView5 = [(ChromeViewController *)self mapView];
    [mapView5 _setCompassInsets:{v38, MinX - v49, v40, right - v48}];
  }
}

- (void)_updateMapViewWithEVChargingConfig
{
  if (MapsFeature_IsEnabled_RealTimeEVCharger())
  {
    if (self->_displayedViewMode == 7)
    {
      objc_initWeak(&location, self);
      v3 = +[VGVirtualGarageService sharedService];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100DBB8E4;
      v5[3] = &unk_101655840;
      objc_copyWeak(&v6, &location);
      [v3 virtualGarageGetGarageWithReply:v5];

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {
      mapView = [(ChromeViewController *)self mapView];
      [mapView setShowsLiveEVData:0];
    }
  }
}

- (id)_currentContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentContainerViewController);

  return WeakRetained;
}

- (unint64_t)supportedInterfaceOrientations
{
  topContext = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    topContext2 = [(ChromeViewController *)self topContext];
    fullscreenViewController = [topContext2 fullscreenViewController];
  }

  else
  {
    fullscreenViewController = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    supportedInterfaceOrientations = [fullscreenViewController supportedInterfaceOrientations];
  }

  else
  {
    cardsOverlay = [(IOSBasedChromeViewController *)self cardsOverlay];
    currentViewController = [cardsOverlay currentViewController];

    if (objc_opt_respondsToSelector())
    {
      supportedInterfaceOrientations = [currentViewController supportedInterfaceOrientations];
    }

    else
    {
      topContext3 = [(ChromeViewController *)self topContext];
      if (objc_opt_respondsToSelector())
      {
        topContext4 = [(ChromeViewController *)self topContext];
        customContainerViewController = [topContext4 customContainerViewController];
      }

      else
      {
        customContainerViewController = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        supportedInterfaceOrientations = [customContainerViewController supportedInterfaceOrientations];
      }

      else
      {
        supportedInterfaceOrientations = 26;
      }
    }
  }

  return supportedInterfaceOrientations;
}

- (BOOL)_internal_topContextWantsCompassLayoutControl
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
    wantsCompassLayoutControl = [v6 wantsCompassLayoutControl];
  }

  else
  {
    wantsCompassLayoutControl = 0;
  }

  return wantsCompassLayoutControl;
}

- (int64_t)_desiredFloatingControlsForCurrentState
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  v4 = pendingContexts;
  if (pendingContexts)
  {
    contexts = pendingContexts;
  }

  else
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  v6 = contexts;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (!v8)
  {
LABEL_27:
    desiredFloatingControls = 0;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = *v26;
  v11 = &selRef_userRequestedWaypoints;
  while (2)
  {
    v12 = 0;
    v13 = v11;
    do
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v14 = *(*(&v25 + 1) + 8 * v12);
      if (objc_opt_respondsToSelector())
      {
        desiredFloatingControls = [v14 desiredFloatingControls];
        goto LABEL_28;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0 || [v14 wantsExclusiveFloatingControls])
      {
        v16 = sub_10000B11C();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
LABEL_26:

          goto LABEL_27;
        }

        v17 = v14;
        if (!v17)
        {
          v22 = @"<nil>";
          goto LABEL_25;
        }

        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = [v17 performSelector:"accessibilityIdentifier"];
          v21 = v20;
          if (v20 && ![v20 isEqualToString:v19])
          {
            v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

            goto LABEL_22;
          }
        }

        v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_22:

LABEL_25:
        *buf = 138543362;
        v30 = v22;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[FloatingControls] %{public}@ wants exclusive floating controls", buf, 0xCu);

        goto LABEL_26;
      }

      v12 = v12 + 1;
    }

    while (v9 != v12);
    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v31 count:16];
    desiredFloatingControls = 0;
    v11 = v13;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_28:

  if (self->_testing_hide2D3DFloatingControls)
  {
    v23 = desiredFloatingControls & 0xFFFFFFFFFFFFFFCFLL;
  }

  else
  {
    v23 = desiredFloatingControls;
  }

  return v23;
}

- (double)statusBarHeight
{
  view = [(IOSBasedChromeViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  [(StatusBarBackgroundView *)self->_statusBarBackgroundView frame];
  if (v5 <= CGRectGetHeight(v10))
  {
    [(StatusBarBackgroundView *)self->_statusBarBackgroundView frame];
    Height = CGRectGetHeight(v11);
  }

  else
  {
    view2 = [(IOSBasedChromeViewController *)self view];
    [view2 safeAreaInsets];
    Height = v7;
  }

  return Height;
}

- (id)allComponents
{
  v6.receiver = self;
  v6.super_class = IOSBasedChromeViewController;
  allComponents = [(ChromeViewController *)&v6 allComponents];
  v7[0] = @"floatingControls";
  v7[1] = @"cards";
  v7[2] = @"lookAroundButton";
  v7[3] = @"statusBarStyle";
  v7[4] = @"statusBarSupplementaryView";
  v7[5] = @"weatherOverlay";
  v7[6] = @"mapScale";
  v7[7] = @"floatingSearchButton";
  v3 = [NSArray arrayWithObjects:v7 count:8];
  v4 = [allComponents arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (void)_freezeInnerLayoutGuide
{
  innerLayoutGuide = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  [innerLayoutGuide layoutFrame];
  v45 = v5;
  v47 = v4;
  v43 = v6;
  rect1 = v7;

  if (self->_innerLayoutGuideConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  innerLayoutGuide2 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  owningView = [innerLayoutGuide2 owningView];

  [owningView bounds];
  v36 = v9;
  rect = v10;
  v39 = v12;
  v41 = v11;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v53.origin.y = v45;
  v53.origin.x = v47;
  v53.size.width = v43;
  v53.size.height = rect1;
  v61.origin.x = CGRectZero.origin.x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  if (CGRectEqualToRect(v53, v61))
  {
    v19 = bottom;
    MinX = left;
    top = UIEdgeInsetsZero.top;
  }

  else
  {
    v54.origin.x = v36;
    v54.size.height = rect;
    v54.size.width = v39;
    v54.origin.y = v41;
    v62.origin.x = CGRectZero.origin.x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v19 = bottom;
    MinX = left;
    top = UIEdgeInsetsZero.top;
    if (!CGRectEqualToRect(v54, v62))
    {
      v55.origin.x = v47;
      v55.origin.y = v45;
      v55.size.width = v43;
      v55.size.height = rect1;
      top = CGRectGetMinY(v55);
      v56.origin.x = v47;
      v56.origin.y = v45;
      v56.size.width = v43;
      v56.size.height = rect1;
      MinX = CGRectGetMinX(v56);
      v57.size.height = rect;
      v57.origin.x = v36;
      v57.size.width = v39;
      v57.origin.y = v41;
      v22 = CGRectGetHeight(v57);
      v58.origin.x = v47;
      v58.origin.y = v45;
      v58.size.width = v43;
      v58.size.height = rect1;
      v19 = v22 - CGRectGetMaxY(v58);
      v59.origin.x = v36;
      v59.size.width = v39;
      v59.origin.y = v41;
      v59.size.height = rect;
      v23 = CGRectGetWidth(v59);
      v60.origin.x = v47;
      v60.origin.y = v45;
      v60.size.width = v43;
      v60.size.height = rect1;
      right = v23 - CGRectGetMaxX(v60);
    }
  }

  rect1a = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  topAnchor = [rect1a topAnchor];
  topAnchor2 = [owningView topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
  innerLayoutGuide3 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  leftAnchor = [innerLayoutGuide3 leftAnchor];
  leftAnchor2 = [owningView leftAnchor];
  v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:MinX];
  bottomAnchor = [owningView bottomAnchor];
  innerLayoutGuide4 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  bottomAnchor2 = [innerLayoutGuide4 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v19];
  rightAnchor = [owningView rightAnchor];
  innerLayoutGuide5 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  rightAnchor2 = [innerLayoutGuide5 rightAnchor];
  v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:right];
  v31 = [MapsEdgeConstraints edgeConstraintsWithTop:v35 leading:v34 bottom:v26 trailing:v30];
  allConstraints = [v31 allConstraints];
  innerLayoutGuideConstraints = self->_innerLayoutGuideConstraints;
  self->_innerLayoutGuideConstraints = allConstraints;

  [NSLayoutConstraint activateConstraints:self->_innerLayoutGuideConstraints];
}

- (void)createScreenshotService
{
  if (!self->_screenshotService)
  {
    v3 = [MapsScreenshotService alloc];
    view = [(IOSBasedChromeViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    v6 = [(MapsScreenshotService *)v3 initWithDelegate:self windowScene:windowScene];
    screenshotService = self->_screenshotService;
    self->_screenshotService = v6;
  }
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (id)coordinator
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionCoordinator = [topContext actionCoordinator];
  }

  else
  {
    actionCoordinator = 0;
  }

  return actionCoordinator;
}

- (BOOL)_canShowLookAroundButton
{
  v3 = +[GEOResourceManifestManager modernManager];
  isMuninEnabled = [v3 isMuninEnabled];

  if (isMuninEnabled)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    contexts = [(ChromeViewController *)self contexts];
    reverseObjectEnumerator = [contexts reverseObjectEnumerator];

    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v12 permitsLookAroundShowing])
        {
          break;
        }

        if (objc_opt_respondsToSelector())
        {
          v9 |= [v12 wantsLookAroundShowing];
        }

        if (v8 == ++v11)
        {
          v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }
    }

    LOBYTE(v9) = 0;
LABEL_16:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (id)_lookAroundButtonPlaceCardItem
{
  topContext = [(ChromeViewController *)self topContext];
  if ([(IOSBasedChromeViewController *)self _shouldCollapseLookAroundPreview]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    placeCardItemForLookAroundButton = 0;
  }

  else
  {
    placeCardItemForLookAroundButton = [topContext placeCardItemForLookAroundButton];
  }

  return placeCardItemForLookAroundButton;
}

- (BOOL)_shouldCollapseLookAroundPreview
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  containerViewController = [coordinator containerViewController];

  currentViewController = [containerViewController currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];

  containerStyle = [cardPresentationController containerStyle];
  v7 = (containerStyle >= 8 || ((0xE3u >> containerStyle) & 1) == 0) && [cardPresentationController containeeLayout] == 1;

  return v7;
}

- (void)updateMapViewDisplayOptions
{
  settingsController = [(IOSBasedChromeViewController *)self settingsController];
  if ([settingsController shouldChangeViewModeForLabels])
  {
    [(IOSBasedChromeViewController *)self _updateViewModeForLabelsDisplayIfNeeded];
  }

  if ([settingsController shouldChangeViewModeForTraffic])
  {
    [(IOSBasedChromeViewController *)self _updateViewModeForTrafficDisplayIfNeeded];
  }

  v4 = [(IOSBasedChromeViewController *)self _shouldShowTrafficForViewMode:[(IOSBasedChromeViewController *)self displayedViewMode]];
  mapView = [(ChromeViewController *)self mapView];
  [mapView setShowsTraffic:v4];

  LOBYTE(mapView) = [settingsController userDesiresLabels];
  LOBYTE(v4) = [settingsController userDesiresTraffic];
  v6 = +[MapsAnalyticStateProvider serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039B58;
  block[3] = &unk_1016547B8;
  v8 = mapView;
  v9 = v4;
  dispatch_async(v6, block);
}

- (SettingsController)settingsController
{
  settingsController = self->_settingsController;
  if (!settingsController)
  {
    v4 = objc_alloc_init(SettingsController);
    v5 = self->_settingsController;
    self->_settingsController = v4;

    [(SettingsController *)self->_settingsController setChrome:self];
    settingsController = self->_settingsController;
  }

  return settingsController;
}

- (id)personalizedItemSourcesForCurrentState
{
  v9.receiver = self;
  v9.super_class = IOSBasedChromeViewController;
  personalizedItemSourcesForCurrentState = [(ChromeViewController *)&v9 personalizedItemSourcesForCurrentState];
  v4 = [personalizedItemSourcesForCurrentState mutableCopy];

  sharedTripsAnnotationsController = [(IOSBasedChromeViewController *)self sharedTripsAnnotationsController];
  itemSource = [sharedTripsAnnotationsController itemSource];
  [v4 addObject:itemSource];

  v7 = [v4 copy];

  return v7;
}

- (SharedTripsAnnotationsController)sharedTripsAnnotationsController
{
  sharedTripsAnnotationsController = self->_sharedTripsAnnotationsController;
  if (!sharedTripsAnnotationsController)
  {
    v4 = objc_alloc_init(SharedTripsAnnotationsController);
    v5 = self->_sharedTripsAnnotationsController;
    self->_sharedTripsAnnotationsController = v4;

    [(SharedTripsAnnotationsController *)self->_sharedTripsAnnotationsController setChromeViewController:self];
    sharedTripsAnnotationsController = self->_sharedTripsAnnotationsController;
  }

  return sharedTripsAnnotationsController;
}

- (BOOL)_internal_isChromeDisabled
{
  v2 = +[MKSystemController sharedInstance];
  if ([v2 isInternalInstall])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"__internal__DisableChrome"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_refreshHiddenCards
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  v4 = pendingContexts;
  if (pendingContexts)
  {
    contexts = pendingContexts;
  }

  else
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  v6 = contexts;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(IOSBasedChromeViewController *)self _containerViewControllerWithContext:*(*(&v13 + 1) + 8 * i), v13];
        [v12 setContaineesHidden:{objc_msgSend(v12, "shouldHideCard")}];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)updateThemeViewAndControllers
{
  view = [(IOSBasedChromeViewController *)self view];
  window = [view window];
  theme = [(IOSBasedChromeViewController *)self theme];
  [window _accessibilitySetInterfaceStyleIntent:{objc_msgSend(theme, "interfaceStyleIntent")}];

  LOBYTE(theme) = self->_transitioningFromImagery;
  v6 = +[MapsLightLevelController sharedController];
  -[IOSBasedChromeViewController updateLightLevelAnimated:lightLevel:](self, "updateLightLevelAnimated:lightLevel:", (theme & 1) == 0, [v6 currentLightLevel]);

  self->_transitioningFromImagery = 0;
  [(IOSBasedChromeViewController *)self setNeedsUserInterfaceAppearanceUpdate];

  [(IOSBasedChromeViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
}

- (void)setNeedsUserInterfaceAppearanceUpdate
{
  v4.receiver = self;
  v4.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v4 setNeedsUserInterfaceAppearanceUpdate];
  WeakRetained = objc_loadWeakRetained(&self->_currentContainerViewController);
  [WeakRetained setNeedsUserInterfaceAppearanceUpdate];
}

- (id)currentTraits
{
  mapView = [(ChromeViewController *)self mapView];
  if (mapView)
  {
    v4 = +[MKMapService sharedService];
    mapViewEnteredForegroundDate = [(ChromeViewController *)self mapViewEnteredForegroundDate];
    lastMapViewportChangedDate = [(ChromeViewController *)self lastMapViewportChangedDate];
    v7 = [v4 mapsDefaultTraitsForMapView:mapView mapViewEnteredForegroundDate:mapViewEnteredForegroundDate mapViewportChangedDate:lastMapViewportChangedDate];

    v8 = [(NSArray *)self->_historicalLocations mutableCopy];
    [v7 setHistoricalLocations:v8];

    v9 = objc_alloc_init(ClientTypeResolver);
    [GEOMapServiceTraits addCommonKnownClientResolvedTypesIfAvailableWithClientTypeResolver:v9 toTraits:v7];
    v10 = +[NSLocale currentLocale];
    v11 = MKCurrencySymbolForLocale();
    [v7 setCurrentLocaleCurrencySymbol:v11];

    [v7 setWantsRouteCreationTip:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateHistoricalLocations
{
  v3 = +[DeviceRecentLocations sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DBB0B8;
  v4[3] = &unk_101655400;
  v4[4] = self;
  [v3 updateLocationsWithCompletionHandler:v4];
}

- (BOOL)isNightMode
{
  mapView = [(ChromeViewController *)self mapView];
  if (mapView)
  {
    v4 = mapView;
    [mapView _cartographicConfiguration];

    if (v6 == 1)
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  return [(IOSBasedChromeViewController *)self preferredUserInterfaceStyle:v6]== 2;
}

- (UIScrollView)pptTestScrollView
{
  _ppt_containerViewController = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
  currentViewController = [_ppt_containerViewController currentViewController];
  if (objc_opt_respondsToSelector())
  {
    pptTestScrollView = [currentViewController pptTestScrollView];
  }

  else
  {
    pptTestScrollView = 0;
  }

  return pptTestScrollView;
}

- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type
{
  animatedCopy = animated;
  if (type && ![(IOSBasedChromeViewController *)self pptTestIsTrayType:type])
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[IOSBasedChromeViewController(PPTTestChrome) pptTestDismissTrayAnimated:assertTrayType:]";
      v12 = 2080;
      v13 = "IOSBasedChromeViewController+PPTTestChrome.m";
      v14 = 1024;
      v15 = 77;
      v16 = 2080;
      v17 = "isSupportedTrayType";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    _ppt_containerViewController = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
    [_ppt_containerViewController popLastViewControllerAnimated:animatedCopy];
  }
}

- (BOOL)pptTestIsTrayType:(int64_t)type
{
  _ppt_containerViewController = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
  currentViewController = [_ppt_containerViewController currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [currentViewController pptTestIsTrayType:type];
  }

  else
  {
    v6 = type == 0;
  }

  return v6;
}

- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  if (layout < 3)
  {
    v6 = (layout + 1);
  }

  else
  {
    v6 = 0;
  }

  _ppt_containerViewController = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
  if ([_ppt_containerViewController containeeLayout] == v6)
  {
    v11[0] = @"ContainerLayout";
    v8 = [NSNumber numberWithUnsignedInteger:v6];
    v11[1] = @"ContainerContainee";
    v12[0] = v8;
    currentViewController = [_ppt_containerViewController currentViewController];
    v12[1] = currentViewController;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:v10];
  }

  else
  {
    [_ppt_containerViewController setLayoutIfSupported:v6 animated:animatedCopy];
  }
}

- (BOOL)pptTestCanUpdateTrayLayout
{
  _ppt_containerViewController = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
  v3 = [_ppt_containerViewController containeeLayout] != 5 && objc_msgSend(_ppt_containerViewController, "containeeLayout") != 4;

  return v3;
}

- (ViewModeDelegate)viewModeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModeDelegate);

  return WeakRetained;
}

- (void)mapStylePickerContaineeViewControllerWantsDismissWithViewController:(id)controller
{
  controllerCopy = controller;
  if (sub_10000FA08(self) == 5 || sub_10000FA08(self) == 1)
  {
    [controllerCopy dismissModalViewControllerAnimated:1];
  }

  else
  {
    _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
    [_currentContainerViewController popLastViewControllerAnimated:1];
  }

  [(ChromeViewController *)self unregisterAdditionalMapViewDelegate:controllerCopy];
}

- (void)mapStylePickerContaineeViewControllerDidChangeMapTypeWithViewController:(id)controller mapType:(unint64_t)type skipConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  if (type <= 3)
  {
    v9 = 2;
    v10 = 1;
    v11 = 6;
    if (type != 3)
    {
      v11 = 0;
    }

    if (type != 2)
    {
      v10 = v11;
    }

    v12 = type == 1;
    goto LABEL_14;
  }

  if (type > 103)
  {
    v9 = 3;
    v10 = 7;
    if (type != 108)
    {
      v10 = 0;
    }

    v12 = type == 104;
LABEL_14:
    if (v12)
    {
      v8 = v9;
    }

    else
    {
      v8 = v10;
    }

    goto LABEL_17;
  }

  if (type == 4)
  {
    v8 = 5;
  }

  else
  {
    if (type == 103)
    {
      v7 = 0;
      v8 = -1;
      goto LABEL_18;
    }

    v8 = 0;
  }

LABEL_17:
  v7 = v8;
LABEL_18:
  if (((v7 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = 2;
  }

  [MapsSettings setSelectedViewMode:v13];
  if (v13 == 2)
  {
    mapView = [(ChromeViewController *)self mapView];
    preferredConfiguration = [mapView preferredConfiguration];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      mapView2 = [(ChromeViewController *)self mapView];
      preferredConfiguration2 = [mapView2 preferredConfiguration];

      mapView3 = [(ChromeViewController *)self mapView];
      v20 = mapView3;
      if (mapView3)
      {
        [mapView3 _cartographicConfiguration];
        v21 = v26 != 0;
      }

      else
      {
        v21 = 0;
      }

      showsTraffic = [preferredConfiguration2 showsTraffic];
      [MapsSettings setUserDesiresLabels:v21];
      [MapsSettings setUserDesiresTraffic:showsTraffic];
    }
  }

  if ((v8 + 1) > 7)
  {
    v23 = 1;
  }

  else
  {
    v23 = dword_101215C80[v8 + 1];
  }

  v24 = MapsSuggestionsEngineForMapsProcess();
  [v24 setMapType:v23];

  v25 = +[CarDisplayController sharedInstance];
  [v25 updateMapsSuggestionsSignalForMapType:v23];

  [(IOSBasedChromeViewController *)self updateViewMode:v8 animated:1 skipSettingMapConfiguration:configurationCopy];
}

- (void)mapStylePickerContaineeViewControllerDismissByGestureWithViewController:(id)controller
{
  controllerCopy = controller;
  [(ChromeViewController *)self setNeedsUpdateComponent:@"lookAroundButton" animated:1];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"weatherOverlay" animated:1];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"floatingControls" animated:1];
  [(ChromeViewController *)self unregisterAdditionalMapViewDelegate:controllerCopy];
}

- (void)mapStylePickerContaineeViewControllerPresentDebugPanelIfEnabledWithViewController:(id)controller
{
  _maps_mapsSceneDelegate = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
  [_maps_mapsSceneDelegate presentMapsDebugControllerIfEnabled];
}

- (void)copy:(id)copy
{
  copyCopy = copy;
  currentShareItemSource = [(IOSBasedChromeViewController *)self currentShareItemSource];
  shareItemSourceForCopyAction = self->_shareItemSourceForCopyAction;
  self->_shareItemSourceForCopyAction = currentShareItemSource;

  objc_initWeak(&location, self);
  v7 = self->_shareItemSourceForCopyAction;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DB6498;
  v8[3] = &unk_101654808;
  objc_copyWeak(&v9, &location);
  [ShareItem loadURLForShareItem:v7 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)dismissAllModalViewsIfPresentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = sub_10000B11C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (animatedCopy)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v14 = 138412802;
    selfCopy2 = self;
    v16 = 2080;
    v17 = "[IOSBasedChromeViewController dismissAllModalViewsIfPresentAnimated:completion:]";
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ %s, %@", &v14, 0x20u);
  }

  presentedViewController = [(IOSBasedChromeViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v11 = presentedViewController;
    while (1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      presentedViewController2 = [(__CFString *)v11 presentedViewController];

      v11 = presentedViewController2;
      if (!presentedViewController2)
      {
        goto LABEL_9;
      }
    }

    v13 = sub_10000B11C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      selfCopy2 = self;
      v16 = 2080;
      v17 = "[IOSBasedChromeViewController dismissAllModalViewsIfPresentAnimated:completion:]";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ %s, dismissing Modal! %@", &v14, 0x20u);
    }

    [(__CFString *)v11 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
LABEL_9:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (BOOL)isHidingCardsForContext:(id)context
{
  contextCopy = context;
  if ([(IOSBasedChromeViewController *)self isHidingCards])
  {
    v5 = 1;
  }

  else
  {
    pendingContexts = [(ChromeViewController *)self pendingContexts];
    v7 = pendingContexts;
    if (pendingContexts)
    {
      contexts = pendingContexts;
    }

    else
    {
      contexts = [(ChromeViewController *)self contexts];
    }

    v9 = contexts;

    v10 = [v9 indexOfObject:contextCopy];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v10, v12 = [v9 count], v13 = v11 + 1, v13 >= v12))
    {
LABEL_12:
      v5 = 0;
    }

    else
    {
      v14 = v12;
      while (1)
      {
        v15 = [v9 objectAtIndexedSubscript:v13];
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v15 permitsPreviousCards])
        {
          break;
        }

        if (v14 == ++v13)
        {
          goto LABEL_12;
        }
      }

      v5 = 1;
    }
  }

  return v5;
}

- (id)acquireModernMapTokenForReason:(unint64_t)reason
{
  modernMapTokens = self->_modernMapTokens;
  v8 = @"reason";
  v4 = [NSNumber numberWithUnsignedInteger:reason];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [(MapsTokenStorage *)modernMapTokens tokenWithUserInfo:v5];

  return v6;
}

- (void)_updateModernMapCartographicConfiguration
{
  shouldUseModernMap = [(IOSBasedChromeViewController *)self shouldUseModernMap];
  v11 = 0u;
  v9 = 0u;
  mapView = [(ChromeViewController *)self mapView];
  v5 = mapView;
  if (mapView)
  {
    [mapView _cartographicConfiguration];
  }

  else
  {
    v11 = 0u;
    v9 = 0u;
  }

  if (shouldUseModernMap)
  {
    *(&v10 + 1) = [(IOSBasedChromeViewController *)self modernMapTerrainMode];
    modernMapProjectionType = [(IOSBasedChromeViewController *)self modernMapProjectionType];
  }

  else
  {
    modernMapProjectionType = 1;
    *(&v10 + 1) = 1;
  }

  *&v10 = modernMapProjectionType;
  v7 = sub_10000B11C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = *(&v10 + 1);
    *&buf[12] = 2048;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_updateModernMapCartographicConfiguration with terrainMode: %ld projectionType: %ld", buf, 0x16u);
  }

  mapView2 = [(ChromeViewController *)self mapView];
  *buf = v9;
  *&buf[16] = v10;
  v13 = v11;
  v14 = 0;
  [mapView2 _setCartographicConfiguration:buf];
}

- (int64_t)modernMapProjectionType
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  tokens = [(MapsTokenStorage *)self->_modernMapTokens tokens];
  v3 = [tokens countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = 1;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(tokens);
        }

        userInfo = [*(*(&v12 + 1) + 8 * i) userInfo];
        v9 = [userInfo objectForKeyedSubscript:@"reason"];

        unsignedIntegerValue = [v9 unsignedIntegerValue];
        if (unsignedIntegerValue)
        {
          v6 = 0;
          goto LABEL_12;
        }
      }

      v4 = [tokens countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_12:

  return v6;
}

- (int64_t)modernMapTerrainMode
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tokens = [(MapsTokenStorage *)self->_modernMapTokens tokens];
  v3 = [tokens countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(tokens);
        }

        userInfo = [*(*(&v13 + 1) + 8 * v6) userInfo];
        v8 = [userInfo objectForKeyedSubscript:@"reason"];

        unsignedIntegerValue = [v8 unsignedIntegerValue];
        if (unsignedIntegerValue)
        {

          return 0;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [tokens countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"__internal_MapsDebugEnableTerrainMetros"];

  if (v11)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)decrementForToken:(id)token
{
  tokenCopy = token;
  tokenGroupName = [tokenCopy tokenGroupName];
  v6 = [tokenGroupName isEqualToString:@"IOSBasedChromeMetros"];

  if (v6)
  {
    v7 = sub_10000B11C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Releasing modern map token: %@", buf, 0xCu);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:self];

    mapView = [(ChromeViewController *)self mapView];

    if (mapView)
    {
      [(IOSBasedChromeViewController *)self _updateModernMapCartographicConfiguration];
    }
  }

  else
  {
    tokenGroupName2 = [tokenCopy tokenGroupName];
    v11 = [tokenGroupName2 isEqualToString:@"IOSBasedChromeForceCardsHidden"];

    if (v11 && ![(MapsTokenStorage *)self->_forceCardsHiddenTokenStorage count])
    {
      [(IOSBasedChromeViewController *)self _refreshHiddenCards];
    }
  }

  v12.receiver = self;
  v12.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v12 decrementForToken:tokenCopy];
}

- (void)incrementForToken:(id)token
{
  tokenCopy = token;
  v23.receiver = self;
  v23.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v23 incrementForToken:tokenCopy];
  tokenGroupName = [tokenCopy tokenGroupName];
  v6 = [tokenGroupName isEqualToString:@"IOSBasedChromeMetros"];

  if (v6)
  {
    userInfo = [tokenCopy userInfo];
    contexts = [userInfo objectForKeyedSubscript:@"reason"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = sub_10000B11C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid modern map token: %@", buf, 0xCu);
      }
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:self];

    mapView = [(ChromeViewController *)self mapView];

    if (mapView)
    {
      [(IOSBasedChromeViewController *)self _updateModernMapCartographicConfiguration];
    }

LABEL_8:

    goto LABEL_19;
  }

  tokenGroupName2 = [tokenCopy tokenGroupName];
  v13 = [tokenGroupName2 isEqualToString:@"IOSBasedChromeForceCardsHidden"];

  if (v13 && [(MapsTokenStorage *)self->_forceCardsHiddenTokenStorage count]== 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    contexts = [(ChromeViewController *)self contexts];
    v14 = [contexts countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(contexts);
          }

          v18 = [(IOSBasedChromeViewController *)self _containerViewControllerWithContext:*(*(&v19 + 1) + 8 * i)];
          [v18 setContaineesHidden:1];
        }

        v15 = [contexts countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }

    goto LABEL_8;
  }

LABEL_19:
}

- (void)chromeNavigationDisplayDidRenderRoute:(id)route
{
  v5.receiver = self;
  v5.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v5 chromeNavigationDisplayDidRenderRoute:route];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:3072 onTarget:-[IOSBasedChromeViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (CGRect)popoverPresentationRectForPrintController:(id)controller
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 1.0;
  v6 = 1.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)printSearchResultFromSession:(id)session
{
  sessionCopy = session;
  [(IOSBasedChromeViewController *)self _initializePrintingController];
  [GEOAPPortal captureUserAction:17052 target:0 value:0];
  searchFieldItem = [sessionCopy searchFieldItem];
  printController = self->_printController;
  searchString = [searchFieldItem searchString];
  currentResults = [sessionCopy currentResults];
  printedPageTitle = [sessionCopy printedPageTitle];
  printedPageSubtitle = [sessionCopy printedPageSubtitle];

  [(PrintController *)printController printSearchString:searchString searchResults:currentResults title:printedPageTitle subTitle:printedPageSubtitle];
}

- (void)printRoute:(id)route
{
  routeCopy = route;
  [(IOSBasedChromeViewController *)self _initializePrintingController];
  [GEOAPPortal captureUserAction:17052 target:0 value:0];
  printController = self->_printController;
  destination = [routeCopy destination];
  name = [destination name];
  [(PrintController *)printController printRoute:routeCopy searchString:name];
}

- (void)_initializePrintingController
{
  if (!self->_printController)
  {
    v3 = [PrintController alloc];
    mapView = [(ChromeViewController *)self mapView];
    v4 = [(PrintController *)v3 initWithMapView:mapView delegate:self];
    printController = self->_printController;
    self->_printController = v4;
  }
}

- (void)printCurrentState
{
  _maps_platformController = [(IOSBasedChromeViewController *)self _maps_platformController];
  currentSession = [_maps_platformController currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentRouteCollection = [currentSession currentRouteCollection];
    currentRoute = [currentRouteCollection currentRoute];
    [(IOSBasedChromeViewController *)self printRoute:currentRoute];
  }

  else
  {
    appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    currentRouteCollection = [baseActionCoordinator currentSearchSession];

    [(IOSBasedChromeViewController *)self printSearchResultFromSession:currentRouteCollection];
  }
}

- (void)undo:(id)undo
{
  routeCreationContext = [(IOSBasedChromeViewController *)self routeCreationContext];
  [routeCreationContext pressedUndo];
}

- (void)find:(id)find
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewControllerPresentSearchEditing];
}

- (void)removeDroppedPin
{
  baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
  [baseModeController removeDroppedPin];
}

- (BOOL)canRemovePin
{
  baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
  hasDroppedPin = [baseModeController hasDroppedPin];

  return hasDroppedPin;
}

- (void)centerMapToUserLocation
{
  mapView = [(ChromeViewController *)self mapView];
  [mapView _stopFlyoverAnimation];

  mapView2 = [(ChromeViewController *)self mapView];
  [mapView2 setUserTrackingMode:1 animated:1];
}

- (void)zoomOut
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator zoomOut];
}

- (void)zoomIn
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator zoomIn];
}

- (void)defaultZoom
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator defaultZoom];
}

- (void)snapToNorth
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    lookAroundCoordinator = [(IOSBasedChromeViewController *)self lookAroundCoordinator];
    dataCoordinator = [lookAroundCoordinator dataCoordinator];
    lookAroundView = [dataCoordinator lookAroundView];
    [lookAroundView snapToNorth:self];
  }

  else
  {
    mapView = [(ChromeViewController *)self mapView];
    [mapView _stopFlyoverAnimation];

    lookAroundCoordinator = [(ChromeViewController *)self mapView];
    [lookAroundCoordinator snapToNorth:self];
  }
}

- (BOOL)isSnappedToNorth
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    lookAroundCoordinator = [(IOSBasedChromeViewController *)self lookAroundCoordinator];
    dataCoordinator = [lookAroundCoordinator dataCoordinator];
    lookAroundView = [dataCoordinator lookAroundView];
    [lookAroundView presentationYaw];
    v9 = v8;
  }

  else
  {
    lookAroundCoordinator = [(ChromeViewController *)self mapView];
    [lookAroundCoordinator presentationYaw];
    v9 = v10;
  }

  return fabs(v9) < 0.0001;
}

- (BOOL)canSnapToNorth
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    topContext2 = [(ChromeViewController *)self topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)switchMapMode:(id)mode
{
  propertyList = [mode propertyList];
  integerValue = [propertyList integerValue];
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  settingsController = [coordinator settingsController];
  [settingsController setSelectedViewMode:integerValue animated:1];
}

- (void)toggleTraffic
{
  settingsController = [(IOSBasedChromeViewController *)self settingsController];
  [settingsController toggleTraffic];
}

- (void)toggleLabels
{
  settingsController = [(IOSBasedChromeViewController *)self settingsController];
  [settingsController toggleLabels];
}

- (BOOL)canExitLookAroundMode
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)canEnterLookAroundMode
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapView = [(ChromeViewController *)self mapView];
    v5 = [mapView _lookAroundAvailability] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canEnter3dMode
{
  mapView = [(ChromeViewController *)self mapView];
  _mapLayer = [mapView _mapLayer];

  mapType = [_mapLayer mapType];
  mapView2 = [(ChromeViewController *)self mapView];
  _canEnter3DMode = [mapView2 _canEnter3DMode];

  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (mapType == 1)
  {
    v10 = 3;
    goto LABEL_5;
  }

  if (mapType == 2)
  {
    v10 = 4;
LABEL_5:
    v11 = [_mapLayer supportsMapType:v10];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  if (_canEnter3DMode & 1 | ((isKindOfClass & 1) == 0))
  {
    v12 = isKindOfClass;
  }

  else
  {
    v12 = (mapType - 3 < 2) | v11;
  }

  return v12 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == "snapToNorth")
  {
    [commandCopy setState:{-[IOSBasedChromeViewController isSnappedToNorth](self, "isSnappedToNorth")}];
  }

  else
  {
    if ([commandCopy action] == "switchMapMode:")
    {
      propertyList = [commandCopy propertyList];
      integerValue = [propertyList integerValue];
      settingsController = [(IOSBasedChromeViewController *)self settingsController];
      [commandCopy setState:{objc_msgSend(settingsController, "selectedViewMode") == integerValue}];

      topContext = [(ChromeViewController *)self topContext];
      objc_opt_class();
      LOBYTE(integerValue) = objc_opt_isKindOfClass();

      if ((integerValue & 1) == 0)
      {
        [commandCopy setAttributes:1];
      }

      goto LABEL_26;
    }

    if ([commandCopy action] == "removeDroppedPin" && !-[IOSBasedChromeViewController canRemovePin](self, "canRemovePin"))
    {
LABEL_23:
      [commandCopy setAttributes:4];
      goto LABEL_26;
    }

    if ([commandCopy action] == "select3dMode")
    {
      coordinator = [(IOSBasedChromeViewController *)self coordinator];
      is3dModeSelected = [coordinator is3dModeSelected];
      goto LABEL_25;
    }

    if ([commandCopy action] != "selectLookAroundMode")
    {
      if ([commandCopy action] == "toggleLabels")
      {
        coordinator = [(IOSBasedChromeViewController *)self settingsController];
        is3dModeSelected = [coordinator showsLabels];
        goto LABEL_25;
      }

      if ([commandCopy action] == "toggleTraffic")
      {
        settingsController2 = [(IOSBasedChromeViewController *)self settingsController];
        showsTraffic = [settingsController2 showsTraffic];

        if (showsTraffic)
        {
          coordinator = [(IOSBasedChromeViewController *)self settingsController];
          is3dModeSelected = [coordinator showsTraffic];
LABEL_25:
          [commandCopy _maps_setUseDisableFeatureTitle:is3dModeSelected];

          goto LABEL_26;
        }
      }

      v12 = [commandCopy action] == "copy:";
      v13 = commandCopy;
      if (!v12)
      {
        goto LABEL_27;
      }

      firstResponder = [(IOSBasedChromeViewController *)self firstResponder];
      objc_opt_class();
      v15 = (objc_opt_isKindOfClass() & 1) != 0 ? firstResponder : 0;
      v16 = v15;

      _fieldEditor = [v16 _fieldEditor];

      [_fieldEditor selectionRange];
      v19 = v18;

      v13 = commandCopy;
      if (v19)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    [commandCopy _maps_setUseDisableFeatureTitle:{-[IOSBasedChromeViewController canExitLookAroundMode](self, "canExitLookAroundMode")}];
  }

LABEL_26:
  v13 = commandCopy;
LABEL_27:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("find:" == action || "defaultZoom" == action || "zoomIn" == action || "zoomOut" == action || "centerMapToUserLocation" == action)
  {
    topContext = [(ChromeViewController *)self topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_16;
  }

  if ("snapToNorth" == action)
  {
    canSnapToNorth = [(IOSBasedChromeViewController *)self canSnapToNorth];
LABEL_31:
    v13 = canSnapToNorth;
    goto LABEL_32;
  }

  if ("createCustomSearchResultForDroppedPinAtCenterPoint" == action)
  {
    canSnapToNorth = [(IOSBasedChromeViewController *)self canDropPin];
    goto LABEL_31;
  }

  if ("select3dMode" == action)
  {
    canSnapToNorth = [(IOSBasedChromeViewController *)self canEnter3dMode];
    goto LABEL_31;
  }

  if ("selectLookAroundMode" == action)
  {
    if ([(IOSBasedChromeViewController *)self canEnterLookAroundMode]|| [(IOSBasedChromeViewController *)self canExitLookAroundMode])
    {
      v13 = 1;
      goto LABEL_32;
    }

    canSnapToNorth = [(IOSBasedChromeViewController *)self _canShowLookAroundButton];
    goto LABEL_31;
  }

  if ("toggleLabels" == action)
  {
    topContext = [(IOSBasedChromeViewController *)self settingsController];
    isKindOfClass = [topContext canToggleLabels];
  }

  else
  {
    if ("openUserProfile" == action)
    {
      appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
      baseActionCoordinator = [appCoordinator baseActionCoordinator];
      topContext = [baseActionCoordinator currentViewController];

      if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
        {
          topContext2 = [(ChromeViewController *)self topContext];
          objc_opt_class();
          v13 = objc_opt_isKindOfClass();
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 1;
      }

      goto LABEL_17;
    }

    if ("toggleTraffic" == action)
    {
      topContext = [(IOSBasedChromeViewController *)self settingsController];
      isKindOfClass = [topContext canToggleTraffic];
    }

    else
    {
      if ("undo:" != action)
      {
        if ("redo:" == action)
        {
          v13 = 0;
          goto LABEL_32;
        }

        v19.receiver = self;
        v19.super_class = IOSBasedChromeViewController;
        canSnapToNorth = [(IOSBasedChromeViewController *)&v19 canPerformAction:action withSender:senderCopy];
        goto LABEL_31;
      }

      topContext = [(IOSBasedChromeViewController *)self routeCreationContext];
      isKindOfClass = [topContext undoEnabled];
    }
  }

LABEL_16:
  v13 = isKindOfClass;
LABEL_17:

LABEL_32:
  return v13 & 1;
}

- (int)displayedMapType
{
  v2 = self->_displayedViewMode + 1;
  if (v2 > 7)
  {
    return 1;
  }

  else
  {
    return dword_101215C80[v2];
  }
}

- (DefaultTransportTypeFinder)defaultTransportTypeFinder
{
  defaultTransportTypeFinder = self->_defaultTransportTypeFinder;
  if (!defaultTransportTypeFinder)
  {
    v4 = [[DefaultTransportTypeFinder alloc] initWithMapTypeSource:self];
    v5 = self->_defaultTransportTypeFinder;
    self->_defaultTransportTypeFinder = v4;

    defaultTransportTypeFinder = self->_defaultTransportTypeFinder;
  }

  return defaultTransportTypeFinder;
}

- (id)_currentLogContextDelegateForSelector:(SEL)selector
{
  topContext = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    fullscreenViewController = [topContext fullscreenViewController];
  }

  else
  {
    fullscreenViewController = 0;
  }

  if (sub_100010C34(fullscreenViewController, &OBJC_PROTOCOL___GEOLogContextDelegate))
  {
    v6 = fullscreenViewController;
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_12;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentContainerViewController);
  currentViewController = [WeakRetained currentViewController];

  if (!sub_100010C34(currentViewController, &OBJC_PROTOCOL___GEOLogContextDelegate))
  {
    goto LABEL_10;
  }

  v6 = currentViewController;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_10:
    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (int)currentMapViewTargetForAnalytics
{
  v2 = [(IOSBasedChromeViewController *)self _currentLogContextDelegateForSelector:a2];
  v3 = v2;
  if (v2)
  {
    currentMapViewTargetForAnalytics = [v2 currentMapViewTargetForAnalytics];
  }

  else
  {
    currentMapViewTargetForAnalytics = 0;
  }

  return currentMapViewTargetForAnalytics;
}

- (int)currentUITargetForAnalytics
{
  v2 = [(IOSBasedChromeViewController *)self _currentLogContextDelegateForSelector:a2];
  v3 = v2;
  if (v2)
  {
    currentUITargetForAnalytics = [v2 currentUITargetForAnalytics];
  }

  else
  {
    currentUITargetForAnalytics = 0;
  }

  return currentUITargetForAnalytics;
}

- (void)reportCurrentLocationFailure
{
  interruptionManager = [(IOSBasedChromeViewController *)self interruptionManager];
  [interruptionManager reportCurrentLocationFailure];
}

- (void)showAnnouncementForFlyover:(id)flyover
{
  flyoverCopy = flyover;
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator showAnnouncementForFlyover:flyoverCopy];
}

- (void)showFavoritesType:(int64_t)type
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewController:self showFavoritesType:type];
}

- (void)showTransitLine:(unint64_t)line withName:(id)name
{
  nameCopy = name;
  v6 = [MKMapItemIdentifier alloc];
  v7 = [v6 initWithMUID:line resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
  if (v7)
  {
    v8 = [[IncompleteTransitLineItem alloc] initWithIdentifier:v7 name:nameCopy];
    coordinator = [(IOSBasedChromeViewController *)self coordinator];
    [coordinator viewController:self selectTransitLineItem:v8 zoomToMapRegion:1];
  }
}

- (void)selectParkedCarAndPerformAction:(int64_t)action
{
  v5 = +[ParkedCarManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100DB8774;
  v6[3] = &unk_1016547E0;
  v6[4] = self;
  v6[5] = action;
  [v5 fetchParkedCar:v6];
}

- (void)displayNavShareETA
{
  currentIOSBasedContext = [(IOSBasedChromeViewController *)self currentIOSBasedContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    currentIOSBasedContext2 = [(IOSBasedChromeViewController *)self currentIOSBasedContext];
    if (MSPSharedTripSharingAvailable())
    {
      route = [currentIOSBasedContext2 route];
      transportType = [route transportType];

      if (!transportType)
      {
        navActionCoordinator = [currentIOSBasedContext2 navActionCoordinator];
        [navActionCoordinator senderShareNavigation:self];
      }
    }
  }
}

- (void)displayNearbySearch
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewControllerOpenNearby:self animated:0];
}

- (BOOL)canDropPin
{
  baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
  canDropPin = [baseModeController canDropPin];

  return canDropPin;
}

- (void)createCustomSearchResultForDroppedPinAtCenterPoint
{
  baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
  [baseModeController createCustomSearchResultForDroppedPinAtCenterPoint];
}

- (void)createCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)point floorOrdinal:(int)ordinal animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = *&ordinal;
  longitude = point.longitude;
  latitude = point.latitude;
  baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
  [baseModeController createCustomSearchResultForDroppedPinAtPoint:v6 floorOrdinal:animatedCopy animated:{latitude, longitude}];
}

- (id)routeCreationContext
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  contexts = [(ChromeViewController *)self contexts];
  v3 = [contexts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(contexts);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [contexts countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)baseModeController
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  contexts = [(ChromeViewController *)self contexts];
  v3 = [contexts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(contexts);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [contexts countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)directionsTypeForMapItem:(id)item handler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = +[MKLocationManager sharedLocationManager];
    if ([v8 hasLocation])
    {
      lastLocation = [v8 lastLocation];
      [lastLocation coordinate];
      latitude = v10;
      longitude = v12;
    }

    else
    {
      latitude = kCLLocationCoordinate2DInvalid.latitude;
      longitude = kCLLocationCoordinate2DInvalid.longitude;
    }

    location = [itemCopy location];
    if (location)
    {
      location2 = [itemCopy location];
      [location2 coordinate];
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v17 = kCLLocationCoordinate2DInvalid.latitude;
      v19 = kCLLocationCoordinate2DInvalid.longitude;
    }

    defaultTransportTypeFinder = [(IOSBasedChromeViewController *)self defaultTransportTypeFinder];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100DB8DE4;
    v21[3] = &unk_101657E40;
    v22 = handlerCopy;
    [defaultTransportTypeFinder mkDirectionsTypeForOrigin:1 destination:v21 ignoreMapType:latitude completion:{longitude, v17, v19}];
  }
}

- (void)routeFromSearchResult:(id)result toSearchResult:(id)searchResult directionsType:(unint64_t)type drivePreferences:(id)preferences routeHandle:(id)handle timePoint:(id)point withFeedback:(id)feedback origin:(int64_t)self0 options:(id)self1
{
  optionsCopy = options;
  searchResultCopy = searchResult;
  resultCopy = result;
  v18 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v18 setSearchResult:resultCopy];

  v19 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v19 setSearchResult:searchResultCopy];

  v20 = [DirectionItem alloc];
  v24[0] = v18;
  v24[1] = v19;
  v21 = [NSArray arrayWithObjects:v24 count:2];
  if (type > 7)
  {
    if (type == 8)
    {
      type = 5;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (type - 1 >= 2)
  {
    if (type == 4)
    {
      type = 3;
      goto LABEL_8;
    }

LABEL_6:
    type = 0;
  }

LABEL_8:
  v22 = [(DirectionItem *)v20 initWithItems:v21 transportType:type];

  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewController:self doDirectionItem:v22 withUserInfo:optionsCopy];
}

- (void)searchWithSearchInfo:(id)info source:(int)source
{
  infoCopy = info;
  if ([infoCopy isSearchAlongRoute])
  {
    navActionCoordinator = [(IOSBasedChromeViewController *)self navActionCoordinator];
    [navActionCoordinator setCurrentSearchInfo:infoCopy];
  }
}

- (void)searchForString:(id)string traits:(id)traits scrollToResults:(BOOL)results source:(int)source
{
  v6 = *&source;
  traitsCopy = traits;
  stringCopy = string;
  v11 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v11 setSearchString:stringCopy];

  if (!traitsCopy)
  {
    traitsCopy = [(IOSBasedChromeViewController *)self currentTraits];
  }

  v15[0] = @"SearchSessionTraitsSource";
  v12 = [NSNumber numberWithInt:v6];
  v15[1] = @"SearchSessionTraits";
  v16[0] = v12;
  v16[1] = traitsCopy;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewController:self doSearchItem:v11 withUserInfo:v13];
}

- (void)searchForExternalURLQuery:(id)query coordinate:(CLLocationCoordinate2D)coordinate muid:(unint64_t)muid resultProviderId:(int)id contentProvider:(id)provider
{
  v7 = *&id;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  providerCopy = provider;
  queryCopy = query;
  v15 = objc_alloc_init(SearchFieldItem);
  longitude = [[ExternalURLQuery alloc] initWithQuery:queryCopy coordinate:muid muid:v7 resultProviderId:providerCopy contentProvider:latitude, longitude];

  [(SearchFieldItem *)v15 setExternalURLQuery:longitude];
  v19 = @"SearchSessionTraitsSource";
  v20 = &off_1016E9E18;
  v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewController:self doSearchItem:v15 withUserInfo:v17];
}

- (void)searchForRouteFromAddress:(id)address toAddress:(id)toAddress directionsMode:(unint64_t)mode userInfo:(id)info
{
  addressCopy = address;
  infoCopy = info;
  toAddressCopy = toAddress;
  v13 = objc_alloc_init(SearchFieldItem);
  if ([addressCopy length])
  {
    [(SearchFieldItem *)v13 setSearchString:addressCopy];
  }

  else
  {
    v14 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v13 setSearchResult:v14];
  }

  v15 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v15 setSearchString:toAddressCopy];

  if (mode - 1 > 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_101215C40[mode - 1];
  }

  v17 = [DirectionItem alloc];
  v21[0] = v13;
  v21[1] = v15;
  v18 = [NSArray arrayWithObjects:v21 count:2];
  v19 = [(DirectionItem *)v17 initWithItems:v18 transportType:v16];

  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewController:self doDirectionItem:v19 withUserInfo:infoCopy];
}

- (void)searchForAddressString:(id)string source:(int)source
{
  v4 = *&source;
  stringCopy = string;
  v7 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v7 setAddressString:stringCopy];

  v11 = @"SearchSessionTraitsSource";
  v8 = [NSNumber numberWithInt:v4];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewController:self doSearchItem:v7 withUserInfo:v9];
}

- (void)searchForAddress:(id)address source:(int)source
{
  v4 = *&source;
  addressCopy = address;
  v7 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v7 setAddress:addressCopy];

  v11 = @"SearchSessionTraitsSource";
  v8 = [NSNumber numberWithInt:v4];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewController:self doSearchItem:v7 withUserInfo:v9];
}

- (void)searchForSearchItem:(id)item traits:(id)traits source:(int)source
{
  v5 = *&source;
  itemCopy = item;
  traitsCopy = traits;
  v17 = @"SearchSessionTraitsSource";
  v10 = [NSNumber numberWithInt:v5];
  v18 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  if (traitsCopy)
  {
    v12 = [v11 mutableCopy];
    [v12 setObject:traitsCopy forKeyedSubscript:@"SearchSessionTraits"];

    v11 = v12;
  }

  coordinator = [(IOSBasedChromeViewController *)self coordinator];

  if (coordinator)
  {
    coordinator2 = [(IOSBasedChromeViewController *)self coordinator];
LABEL_7:
    v16 = coordinator2;
    [coordinator2 viewController:self doSearchItem:itemCopy withUserInfo:v11];

    goto LABEL_8;
  }

  navActionCoordinator = [(IOSBasedChromeViewController *)self navActionCoordinator];

  if (navActionCoordinator)
  {
    coordinator2 = [(IOSBasedChromeViewController *)self navActionCoordinator];
    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)displayNavigationAlertAndShouldContinue
{
  v3 = +[MKLocationManager sharedLocationManager];
  v8 = 0;
  v4 = [v3 isLocationServicesPossiblyAvailable:&v8];
  v5 = v8;

  if (v4)
  {
    mapView = [(ChromeViewController *)self mapView];
    [mapView setShowsUserLocation:1];
  }

  else
  {
    mapView = +[UIApplication sharedMapsDelegate];
    [mapView showLocationServicesAlertWithError:v5];
  }

  return v4;
}

- (void)cleanUIandHideSearch
{
  [(IOSBasedChromeViewController *)self resetForLaunchURLWithOptions:0];
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator viewControllerClosed:0 animated:0];
}

- (void)_teardownViewHierarchyWithActionCoordinator:(id)coordinator shouldAnimate:(BOOL)animate
{
  animateCopy = animate;
  coordinatorCopy = coordinator;
  v7 = +[UIApplication sharedMapsDelegate];
  currentInterruptionKind = [v7 currentInterruptionKind];

  if (currentInterruptionKind != 5)
  {
    [(IOSBasedChromeViewController *)self dismissAllModalViewsIfPresentAnimated:animateCopy completion:0];
  }

  v9 = +[UIPrintInteractionController sharedPrintController];
  [v9 dismissAnimated:animateCopy];

  [(ChromeViewController *)self popToRootContextAnimated:animateCopy completion:0];
  [coordinatorCopy viewControllerPresentSearchEndEditingAnimated:animateCopy];
  [coordinatorCopy viewControllerClosed:0 animated:animateCopy];
  searchPinsManager = [coordinatorCopy searchPinsManager];

  [searchPinsManager clearLinkedPlacesAndPolygon];

  [(IOSBasedChromeViewController *)self updateThemeViewAndControllers];
}

- (void)_teardownViewHierarchyForTesting
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_teardownViewHierarchyForTesting started", buf, 2u);
  }

  v4 = +[UIApplication sharedMapsDelegate];
  currentInterruptionKind = [v4 currentInterruptionKind];

  if (currentInterruptionKind != 5)
  {
    [(IOSBasedChromeViewController *)self dismissAllModalViewsIfPresentAnimated:0 completion:0];
  }

  v6 = +[UIPrintInteractionController sharedPrintController];
  [v6 dismissAnimated:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DB9AE4;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  [(ChromeViewController *)self popToRootContextAnimated:0 completion:v8];
  [(IOSBasedChromeViewController *)self updateThemeViewAndControllers];
  v7 = sub_100005610();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_teardownViewHierarchyForTesting completed", buf, 2u);
  }
}

- (void)resetForTestingAction
{
  mapView = [(ChromeViewController *)self mapView];
  _mapLayer = [mapView _mapLayer];

  if ([_mapLayer mapType] - 3 <= 1)
  {
    mapView2 = [(ChromeViewController *)self mapView];
    [mapView2 _stopFlyoverAnimation];

    mapView3 = [(ChromeViewController *)self mapView];
    [mapView3 _exitARMode];

    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setMapsIsShowingTour:0];

    appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
    [appCoordinator exitFlyover];

    v9 = sub_100005610();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "resetForTestingAction exited Flyover", buf, 2u);
    }
  }

  if ([(IOSBasedChromeViewController *)self canExitLookAroundMode])
  {
    [(IOSBasedChromeViewController *)self exitLookAround];
  }

  v10 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DB9E20;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v10, &_dispatch_main_q, block);
  v11 = dispatch_time(0, 3000000000);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100DB9E9C;
  v15[3] = &unk_101661B18;
  v15[4] = self;
  dispatch_after(v11, &_dispatch_main_q, v15);

  v12 = dispatch_time(0, 4000000000);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100DB9EF0;
  v14[3] = &unk_101661B18;
  v14[4] = self;
  dispatch_after(v12, &_dispatch_main_q, v14);

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"ResetForTestingActionNotification" object:0];
}

- (void)resetForLaunchURLWithOptions:(id)options
{
  optionsCopy = options;
  [(IOSBasedChromeViewController *)self coordinator];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100DBA120;
  v10 = &unk_101661A90;
  v5 = v11 = self;
  v12 = v5;
  [UIViewController _performWithoutDeferringTransitions:&v7];
  v6 = [optionsCopy objectForKeyedSubscript:{_MKLaunchOptionsPreserveSearchResultsKey, v7, v8, v9, v10, v11}];

  LOBYTE(optionsCopy) = [v6 BOOLValue];
  if ((optionsCopy & 1) == 0)
  {
    [v5 endSearch];
  }
}

- (void)resetForEditingShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [(IOSBasedChromeViewController *)self _teardownViewHierarchyWithActionCoordinator:coordinator shouldAnimate:1];
  v5 = [ShortcutEditSession editSessionWithShortcut:shortcutCopy];

  [coordinator viewController:self editShortcut:v5];
}

- (id)navActionCoordinator
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionCoordinator = [topContext actionCoordinator];
  }

  else
  {
    actionCoordinator = 0;
  }

  return actionCoordinator;
}

- (id)lookAroundCoordinator
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionCoordinator = [topContext actionCoordinator];
  }

  else
  {
    actionCoordinator = 0;
  }

  return actionCoordinator;
}

- (void)shouldStartRedoSearch
{
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    topContext = [(ChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      [topContext searchRedoFloatingControlPressed];
    }

    baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
    actionCoordinator = [baseModeController actionCoordinator];
    [actionCoordinator refreshCurrentSearch];
  }
}

- (void)openUserProfile
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator openUserProfile];
}

- (void)selectLookAroundMode
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(IOSBasedChromeViewController *)self enterLookAroundPIP];
  }

  else
  {
    lookAroundCoordinator = [(IOSBasedChromeViewController *)self lookAroundCoordinator];
    [lookAroundCoordinator exitLookAround];
  }
}

- (void)exitLookAround
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator exitLookAround];
}

- (void)enterLookAroundForMapItem:(id)item isMarkedLocation:(BOOL)location lookAroundView:(id)view
{
  locationCopy = location;
  viewCopy = view;
  itemCopy = item;
  window = [viewCopy window];
  [viewCopy bounds];
  [window convertRect:viewCopy fromView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v20 = [MKLookAroundEntryPoint entryPointWithMapItem:itemCopy isMarkedLocation:locationCopy wantsCloseUpView:1 cameraFrameOverride:0 triggerAction:6060];

  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator enterLookAroundWithEntryPoint:v20 lookAroundView:viewCopy showsFullScreen:1 originFrame:{v12, v14, v16, v18}];
}

- (void)enterLookAroundPIP:(id)p
{
  pCopy = p;
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  containerViewController = [coordinator containerViewController];
  view = [containerViewController view];

  if (pCopy)
  {
    [pCopy bounds];
    [view convertRect:pCopy fromView:?];
  }

  else
  {
    [view frame];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  currentMapItem = [baseActionCoordinator currentMapItem];

  if (([currentMapItem _hasLookAroundStorefront] & 1) == 0)
  {
    mapView = [(ChromeViewController *)self mapView];
    v19 = [MKPlacemark alloc];
    [mapView centerCoordinate];
    v20 = [v19 initWithCoordinate:?];
    v21 = [[MKMapItem alloc] initWithPlacemark:v20];

    currentMapItem = v21;
  }

  v22 = [MKLookAroundEntryPoint entryPointWithMapItem:currentMapItem triggerAction:6061];
  [GEOAPPortal captureUserAction:6061 target:[(IOSBasedChromeViewController *)self currentUITargetForAnalytics] value:0];
  coordinator2 = [(IOSBasedChromeViewController *)self coordinator];
  containerViewController2 = [coordinator2 containerViewController];
  [containerViewController2 setContaineesHidden:1];

  appCoordinator2 = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator2 enterLookAroundWithEntryPoint:v22 lookAroundView:0 showsFullScreen:0 originFrame:{v11, v12, v13, v14}];
}

- (void)select3dMode
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator select3dMode];
}

- (void)setLocationPulseEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mapView = [(ChromeViewController *)self mapView];
  [mapView _setLocationPulseEnabled:enabledCopy];
}

- (BOOL)locationPulseEnabled
{
  mapView = [(ChromeViewController *)self mapView];
  _isLocationPulseEnabled = [mapView _isLocationPulseEnabled];

  return _isLocationPulseEnabled;
}

- (void)debugController:(id)controller choseTraceAtPath:(id)path startNav:(BOOL)nav
{
  controllerCopy = controller;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100DBA974;
  v13[3] = &unk_101660CE8;
  navCopy = nav;
  pathCopy = path;
  selfCopy = self;
  v9 = pathCopy;
  v10 = objc_retainBlock(v13);
  presentingViewController = [controllerCopy presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [controllerCopy presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    (v10[2])(v10);
  }
}

- (id)allVisibleMapViewsButNotCarPlayForDebugController:(id)controller
{
  v3 = +[UIApplication sharedMapsDelegate];
  allVisibleMapViewsButNotCarPlay = [v3 allVisibleMapViewsButNotCarPlay];

  return allVisibleMapViewsButNotCarPlay;
}

- (id)allVisibleMapViewsForDebugController:(id)controller
{
  v3 = +[UIApplication sharedMapsDelegate];
  allVisibleMapViews = [v3 allVisibleMapViews];

  return allVisibleMapViews;
}

- (void)presentMapsDebugControllerIfEnabled
{
  _maps_mapsSceneDelegate = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
  [_maps_mapsSceneDelegate presentMapsDebugControllerIfEnabled];
}

- (void)setSuggestedApplicationState:(int)state
{
  LODWORD(v3) = state;
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  isNavigationTurnByTurnOrStepping = [appCoordinator isNavigationTurnByTurnOrStepping];

  if (isNavigationTurnByTurnOrStepping)
  {
    v3 = 2;
  }

  else
  {
    appCoordinator2 = [(IOSBasedChromeViewController *)self appCoordinator];
    isRoutePlanningPresented = [appCoordinator2 isRoutePlanningPresented];

    if (isRoutePlanningPresented)
    {
      v3 = 1;
    }

    else
    {
      v3 = v3;
    }
  }

  mapView = [(ChromeViewController *)self mapView];
  [mapView _setApplicationState:v3];
}

- (void)setNeedsUserActivityUpdate
{
  _maps_mapsSceneDelegate = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
  [_maps_mapsSceneDelegate setNeedsUserActivityUpdate];
}

- (BOOL)willMoveToOrFromSecureLockScreenUI:(BOOL)i
{
  iCopy = i;
  self->_isTransitioningToLockScreen = i;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  contexts = [(ChromeViewController *)self contexts];
  reverseObjectEnumerator = [contexts reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (sub_100010C34(v12, &OBJC_PROTOCOL___LockScreenProtocol))
        {
          if (iCopy)
          {
            [v12 willBeginDisplayingInSecureLockScreen];
          }

          else
          {
            [v12 didEndDisplayingInLockScreen];
          }

          v9 = 1;
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (iCopy && [(IOSBasedChromeViewController *)self _isCurrentContainerChromeOwned])
  {
    cardsOverlay = [(IOSBasedChromeViewController *)self cardsOverlay];
    [cardsOverlay willBeginDisplayingInSecureLockScreen];
  }

  if (v9)
  {
    [(IOSBasedChromeViewController *)self handleMoveToOrFromSecureLockscreenUI:iCopy];
    return 1;
  }

  else
  {
    self->_isTransitioningToLockScreen = 0;
    return !iCopy;
  }
}

- (BOOL)_shouldShowTrafficForViewMode:(int64_t)mode
{
  if (mode == 7)
  {
    v3 = 1;
  }

  else
  {
    settingsController = [(IOSBasedChromeViewController *)self settingsController];
    userDesiresTraffic = [settingsController userDesiresTraffic];
    v7 = 0x57u >> (mode + 1);
    if ((mode + 1) > 6)
    {
      LOBYTE(v7) = 0;
    }

    if (((mode - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (userDesiresTraffic)
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

- (void)_updateViewModeForTrafficDisplayIfNeeded
{
  displayedViewMode = [(IOSBasedChromeViewController *)self displayedViewMode];
  settingsController = [(IOSBasedChromeViewController *)self settingsController];
  shouldChangeViewModeForTraffic = [settingsController shouldChangeViewModeForTraffic];

  if (shouldChangeViewModeForTraffic)
  {
    switch(displayedViewMode)
    {
      case 2:
        v6 = 1;
        break;
      case 3:
        v6 = 0;
        break;
      case 6:
        v6 = 5;
        break;
      default:
        return;
    }

    [(IOSBasedChromeViewController *)self setViewMode:v6 animated:1];
  }
}

- (void)_updateViewModeForLabelsDisplayIfNeeded
{
  displayedViewMode = [(IOSBasedChromeViewController *)self displayedViewMode];
  settingsController = [(IOSBasedChromeViewController *)self settingsController];
  shouldChangeViewModeForLabels = [settingsController shouldChangeViewModeForLabels];

  if (shouldChangeViewModeForLabels)
  {
    v6 = displayedViewMode - 1;
    if (displayedViewMode - 1) <= 5 && ((0x33u >> v6))
    {
      v7 = qword_101215C10[v6];

      [(IOSBasedChromeViewController *)self setViewMode:v7 animated:1];
    }
  }
}

- (void)updateLightLevelAnimated:(BOOL)animated lightLevel:(int64_t)level
{
  LODWORD(v5) = animated;
  if (![(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
  {
    if (level)
    {
      v5 = v5;
    }

    else
    {
      v5 = 0;
    }

    v7 = sub_10004F508();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_14;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_12;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_12:

LABEL_14:
    v14 = selfCopy;
    if (level >= 3)
    {
      level = [NSString stringWithFormat:@"<Unknown: %ld>", level];
    }

    else
    {
      level = off_101654870[level];
    }

    *buf = 138543618;
    v31 = v14;
    v32 = 2112;
    v33 = level;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] updateLightLevelAnimated with lightLevel: %@", buf, 0x16u);

LABEL_18:
    if (![(IOSBasedChromeViewController *)self _isNavigationMode])
    {
      viewIfLoaded = [(IOSBasedChromeViewController *)self viewIfLoaded];
      window = [viewIfLoaded window];
      traitCollection = [window traitCollection];
      v19 = [traitCollection copy];

      level = [v19 userInterfaceStyle];
    }

    self->_interfaceStyleForLight = 2 * (level == 2);
    v20 = sub_10004F508();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    selfCopy2 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(IOSBasedChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy2, v25];

        goto LABEL_26;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy2];
LABEL_26:

    *buf = 138543618;
    v31 = selfCopy2;
    v32 = 1024;
    LODWORD(v33) = level == 2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] Updating map view to show night mode: %d", buf, 0x12u);

LABEL_27:
    v27 = [GroupAnimation animationForAnimatedFlag:v5];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100DBB68C;
    v28[3] = &unk_101661AE0;
    v28[4] = self;
    v29 = level == 2;
    [v27 addAnimations:v28 completion:0];
    [v27 runWithDuration:196608 delay:2.0 options:0.0];
  }
}

- (void)updateThemeForVisualEffectStyle:(unint64_t)style
{
  theme = [(IOSBasedChromeViewController *)self theme];
  [theme updateVisualEffectStyleIfNeeded:style];
}

- (void)_windowUserInterfaceStyleDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DBB7A4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)browseVenueChromeOverlayDidSelectFocusedVenueWithOverlay:(id)overlay
{
  venuesManager = [(IOSBasedChromeViewController *)self venuesManager];
  [venuesManager presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:1];
}

- (void)virtualGarageDidUpdate:(id)update
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DBB8DC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didUpdateForcedExploreMapConfiguration:(BOOL)configuration
{
  if (configuration && ![(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
  {
    mapView = [(ChromeViewController *)self mapView];
    [mapView setOverrideUserInterfaceStyle:0];

    _maps_mapsSceneDelegate = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
    window = [_maps_mapsSceneDelegate window];
    [window setOverrideUserInterfaceStyle:0];
  }
}

- (void)updateViewMode:(int64_t)mode animated:(BOOL)animated preserveMapSelection:(BOOL)selection
{
  animatedCopy = animated;
  if (selection)
  {
    mapSelectionManager = [(ChromeViewController *)self mapSelectionManager];
    v12 = [mapSelectionManager selectionStateIncludingCamera:0 includeNotCustomLabelMarkers:1];

    mapSelectionManager2 = [(ChromeViewController *)self mapSelectionManager];
    [mapSelectionManager2 setIgnoreSelectionChanges:1];

    [(IOSBasedChromeViewController *)self updateViewMode:mode animated:animatedCopy];
    if (v12)
    {
      mapSelectionManager3 = [(ChromeViewController *)self mapSelectionManager];
      [mapSelectionManager3 restoreSelectionState:v12 animated:0 restoreRegion:0 notifyDelegate:0];
    }

    mapSelectionManager4 = [(ChromeViewController *)self mapSelectionManager];
    [mapSelectionManager4 setIgnoreSelectionChanges:0];
  }

  else
  {

    [IOSBasedChromeViewController updateViewMode:"updateViewMode:animated:" animated:?];
  }
}

- (void)updateViewMode:(int64_t)displayedViewMode animated:(BOOL)animated skipSettingMapConfiguration:(BOOL)configuration
{
  animatedCopy = animated;
  v9 = +[MapsOfflineUIHelper sharedHelper];
  if ([v9 isUsingOfflineMaps])
  {

    if (((displayedViewMode - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
    {
      if (((self->_displayedViewMode - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
      {
        displayedViewMode = self->_displayedViewMode;
      }

      else
      {
        displayedViewMode = 0;
      }
    }
  }

  else
  {
  }

  v10 = sub_100798408();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_displayedViewMode + 1;
    if (v11 < 9 && ((0x1DFu >> v11) & 1) != 0)
    {
      v12 = off_101654828[v11];
    }

    else
    {
      v12 = [NSString stringWithFormat:@"<Unknown: %ld>", self->_displayedViewMode];
    }

    v13 = v12;
    v14 = displayedViewMode + 1;
    if (displayedViewMode + 1) < 9 && ((0x1DFu >> v14))
    {
      displayedViewMode = off_101654828[v14];
    }

    else
    {
      displayedViewMode = [NSString stringWithFormat:@"<Unknown: %ld>", displayedViewMode];
    }

    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = displayedViewMode;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating view mode from %{public}@ to %{public}@", buf, 0x16u);
  }

  v46 = 0;
  v45 = 0u;
  memset(buf, 0, sizeof(buf));
  _MKCartographicConfigurationDefault();
  *&buf[16] = vdupq_n_s64(1uLL);
  *&v45 = 0;
  if (displayedViewMode <= 4)
  {
    switch(displayedViewMode)
    {
      case 1:
        *buf = vdupq_n_s64(1uLL);
        *&buf[16] = 0;
        break;
      case 2:
        *&buf[8] = 0;
        *&buf[16] = 0;
        *buf = 1;
        break;
      case 3:
        *&buf[8] = 4;
        *&buf[24] = 3;
        break;
    }

    goto LABEL_31;
  }

  switch(displayedViewMode)
  {
    case 5:
      v16 = vdupq_n_s64(1uLL);
LABEL_30:
      *buf = v16;
      break;
    case 6:
      v16 = xmmword_1011FDDA0;
      goto LABEL_30;
    case 7:
      *&buf[8] = 2;
      break;
  }

LABEL_31:
  if ([(IOSBasedChromeViewController *)self shouldUseModernMap])
  {
    modernMapProjectionType = [(IOSBasedChromeViewController *)self modernMapProjectionType];
  }

  else
  {
    modernMapProjectionType = *&buf[16];
  }

  *&buf[16] = modernMapProjectionType;
  if ([(IOSBasedChromeViewController *)self shouldUseModernMap])
  {
    modernMapTerrainMode = [(IOSBasedChromeViewController *)self modernMapTerrainMode];
  }

  else
  {
    modernMapTerrainMode = *&buf[24];
  }

  v19 = self->_displayedViewMode;
  *&buf[24] = modernMapTerrainMode;
  v40 = 0u;
  v42 = 0u;
  v43 = 0;
  _MKCartographicConfigurationDefault();
  v41 = vdupq_n_s64(1uLL);
  *&v42 = 0;
  if (v19 <= 4)
  {
    switch(v19)
    {
      case 1:
        v40 = vdupq_n_s64(1uLL);
        v41.i64[0] = 0;
        break;
      case 2:
        v41.i64[0] = 0;
        v40 = 1uLL;
        break;
      case 3:
        v40.i64[1] = 4;
        v41.i64[1] = 3;
        break;
    }

    goto LABEL_51;
  }

  switch(v19)
  {
    case 5:
      v20 = vdupq_n_s64(1uLL);
LABEL_50:
      v40 = v20;
      break;
    case 6:
      v20 = xmmword_1011FDDA0;
      goto LABEL_50;
    case 7:
      v40.i64[1] = 2;
      break;
  }

LABEL_51:
  v22 = v40.i64[0] == 1 && *buf != 1;
  self->_transitioningFromImagery = v22;
  self->_displayedViewMode = displayedViewMode;
  if (!configuration)
  {
    mapView = [(ChromeViewController *)self mapView];
    v38[0] = *buf;
    v38[1] = *&buf[16];
    v38[2] = v45;
    v39 = v46;
    [mapView _setCartographicConfiguration:v38 animated:animatedCopy];

    v24 = [(IOSBasedChromeViewController *)self _shouldShowTrafficForViewMode:displayedViewMode];
    mapView2 = [(ChromeViewController *)self mapView];
    [mapView2 setShowsTraffic:v24];
  }

  userLocationView = [(IOSBasedChromeViewController *)self userLocationView];
  [userLocationView setViewMode:displayedViewMode];

  self->_interfaceStyleForMapType = 0;
  [(IOSBasedChromeViewController *)self _updateMapViewWithEVChargingConfig];
  _maps_mapsSceneDelegate = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
  window = [_maps_mapsSceneDelegate window];

  if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
  {
LABEL_63:
    v31 = 0;
    v30 = 0;
    goto LABEL_65;
  }

  mapView3 = [(ChromeViewController *)self mapView];
  v30 = mapView3;
  if (mapView3)
  {
    [mapView3 _cartographicConfiguration];

    if (v37 == 1)
    {
      v30 = 2;
      self->_interfaceStyleForMapType = 2;
      v31 = 1;
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v31 = 0;
LABEL_65:
  mapView4 = [(ChromeViewController *)self mapView];
  [mapView4 setOverrideUserInterfaceStyle:v31];

  [window setOverrideUserInterfaceStyle:v30];
  [(IOSBasedChromeViewController *)self updateThemeViewAndControllers];
  topContext = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    [topContext chromeViewController:self didUpdateViewMode:displayedViewMode];
  }

  else
  {
    viewModeDelegate = [(IOSBasedChromeViewController *)self viewModeDelegate];
    [viewModeDelegate chromeViewController:self didUpdateViewMode:displayedViewMode];
  }

  [(IOSBasedChromeViewController *)self setNeedsStatusBarAppearanceUpdate];
  v35 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  [v35 setMapViewMode:displayedViewMode];

  mapView5 = [(ChromeViewController *)self mapView];
  [MapsAnalyticStateProvider updateMapViewInformation:mapView5];

  [MapsAnalyticStateProvider updateMapViewViewMode:displayedViewMode];
  [(IOSBasedChromeViewController *)self _updateFloatingControlsDidChangePitching:0 animated:0];
}

- (void)_updateMapViewResponderTargetForObject:(id)object
{
  objectCopy = object;
  v4 = sub_100010C34(objectCopy, &OBJC_PROTOCOL___MapViewResponderHandling);
  mapViewResponder = [(IOSBasedChromeViewController *)self mapViewResponder];
  if (v4)
  {
    v6 = objectCopy;
  }

  else
  {
    v6 = 0;
  }

  [mapViewResponder setTarget:v6];
}

- (BOOL)_canShowWeather
{
  if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac]&& [(ChromeViewController *)self isTransitioning])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    contexts = [(ChromeViewController *)self contexts];
    reverseObjectEnumerator = [contexts reverseObjectEnumerator];

    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v3 = 0;
      v8 = *v13;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v10 permitsWeatherShowing])
        {
          break;
        }

        if (objc_opt_respondsToSelector())
        {
          v3 |= [v10 wantsWeatherShowing];
        }

        if (v7 == ++v9)
        {
          v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }
      }
    }

    LOBYTE(v3) = 0;
LABEL_17:
  }

  return v3 & 1;
}

- (void)_updateInnerLayoutGuideWithTopViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([controllerCopy view], v4 = objc_claimAutoreleasedReturnValue(), -[IOSBasedChromeViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isDescendantOfView:", v5), v5, v4, v6))
  {
    innerLayoutGuide = [controllerCopy innerLayoutGuide];
  }

  else
  {
    cardsOverlay = [(IOSBasedChromeViewController *)self cardsOverlay];
    currentViewController = [cardsOverlay currentViewController];

    if (currentViewController)
    {
      cardsOverlay2 = [(IOSBasedChromeViewController *)self cardsOverlay];
      [cardsOverlay2 innerLayoutGuide];
    }

    else
    {
      cardsOverlay2 = [(ChromeViewController *)self overlayController];
      [cardsOverlay2 contentLayoutGuide];
    }
    innerLayoutGuide = ;
  }

  if (self->_innerLayoutGuideConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    innerLayoutGuideConstraints = self->_innerLayoutGuideConstraints;
    self->_innerLayoutGuideConstraints = 0;
  }

  if (innerLayoutGuide)
  {
    innerLayoutGuide2 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    LODWORD(v13) = 1148846080;
    v14 = [innerLayoutGuide2 _maps_constraintsEqualToEdgesOfLayoutGuide:innerLayoutGuide priority:v13];
    allConstraints = [v14 allConstraints];
    v16 = self->_innerLayoutGuideConstraints;
    self->_innerLayoutGuideConstraints = allConstraints;

    [NSLayoutConstraint activateConstraints:self->_innerLayoutGuideConstraints];
  }
}

- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  animationCopy = animation;
  v17.receiver = self;
  v17.super_class = IOSBasedChromeViewController;
  toCopy = to;
  [(ChromeViewController *)&v17 contextStackDidUpdateFrom:from to:toCopy withAnimation:animationCopy];
  lastObject = [toCopy lastObject];

  if (objc_opt_respondsToSelector())
  {
    customContainerViewController = [lastObject customContainerViewController];
  }

  else
  {
    customContainerViewController = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100DBCA14;
  v14[3] = &unk_10165EB30;
  v14[4] = self;
  v15 = customContainerViewController;
  v16 = lastObject;
  v12 = lastObject;
  v13 = customContainerViewController;
  [animationCopy addCompletion:v14];
}

- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100DBCC00;
  v12[3] = &unk_101661B18;
  v12[4] = self;
  animationCopy = animation;
  toCopy = to;
  fromCopy = from;
  [animationCopy addPreparation:v12];
  v11.receiver = self;
  v11.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v11 contextStackWillUpdateFrom:fromCopy to:toCopy withAnimation:animationCopy];
}

- (BOOL)_internal_createPostMapFullyDrawnOverlaysIfNeeded
{
  mapView = [(ChromeViewController *)self mapView];

  if (!mapView)
  {
    return mapView != 0;
  }

  [(GCDTimer *)self->_mapFullyDrawnFallbackTimer invalidate];
  mapFullyDrawnFallbackTimer = self->_mapFullyDrawnFallbackTimer;
  self->_mapFullyDrawnFallbackTimer = 0;

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self->_mapFullyDrawnObserver];

  mapFullyDrawnObserver = self->_mapFullyDrawnObserver;
  self->_mapFullyDrawnObserver = 0;

  v7 = sub_10000B11C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

    *buf = 138543362;
    v34 = selfCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Creating map-render-dependent overlays", buf, 0xCu);
  }

  mapScaleOverlay = [(IOSBasedChromeViewController *)self mapScaleOverlay];

  if (!mapScaleOverlay)
  {
    v15 = objc_alloc_init(_TtC4Maps21MapScaleChromeOverlay);
    mapScaleOverlay = self->_mapScaleOverlay;
    self->_mapScaleOverlay = v15;

    [(MapScaleChromeOverlay *)self->_mapScaleOverlay setMapViewProvider:self];
    overlayController = [(ChromeViewController *)self overlayController];
    v18 = self->_mapScaleOverlay;
    innerLayoutGuide = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [overlayController addOverlay:v18 inLayoutGuide:innerLayoutGuide];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"mapScale" animated:0];
  }

  browseVenueOverlay = [(IOSBasedChromeViewController *)self browseVenueOverlay];

  if (!browseVenueOverlay)
  {
    v21 = objc_alloc_init(_TtC4Maps24BrowseVenueChromeOverlay);
    [(IOSBasedChromeViewController *)self setBrowseVenueOverlay:v21];

    browseVenueOverlay2 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    [browseVenueOverlay2 setDelegate:self];

    mapView2 = [(ChromeViewController *)self mapView];
    mapType = [mapView2 mapType];
    browseVenueOverlay3 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    [browseVenueOverlay3 setDisplayedMapType:mapType];

    venuesManager = [(IOSBasedChromeViewController *)self venuesManager];
    browseVenueOverlay4 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    [venuesManager addChangeObserver:browseVenueOverlay4];

    overlayController2 = [(ChromeViewController *)self overlayController];
    browseVenueOverlay5 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    innerLayoutGuide2 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [overlayController2 addOverlay:browseVenueOverlay5 inLayoutGuide:innerLayoutGuide2];

    venuesManager2 = [(IOSBasedChromeViewController *)self venuesManager];
    [(ChromeViewController *)self registerAdditionalMapViewDelegate:venuesManager2];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"floatingSearchButton" animated:0];
  }

  return mapView != 0;
}

- (BOOL)_internal_createPostLaunchOverlaysIfNeeded
{
  _appearState = [(IOSBasedChromeViewController *)self _appearState];
  if (_appearState != 2)
  {
    return _appearState == 2;
  }

  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v35 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating post-launch overlays", buf, 0xCu);
  }

  weatherOverlay = [(IOSBasedChromeViewController *)self weatherOverlay];

  if (!weatherOverlay)
  {
    v12 = objc_alloc_init(WeatherOverlay);
    [(IOSBasedChromeViewController *)self setWeatherOverlay:v12];

    weatherOverlay2 = [(IOSBasedChromeViewController *)self weatherOverlay];
    [weatherOverlay2 setMapViewProvider:self];

    overlayController = [(ChromeViewController *)self overlayController];
    weatherOverlay3 = [(IOSBasedChromeViewController *)self weatherOverlay];
    innerLayoutGuide = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [overlayController addOverlay:weatherOverlay3 inLayoutGuide:innerLayoutGuide];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"weatherOverlay" animated:0];
  }

  lookAroundOverlay = [(IOSBasedChromeViewController *)self lookAroundOverlay];

  if (!lookAroundOverlay)
  {
    v18 = objc_alloc_init(LookAroundChromeOverlay);
    [(IOSBasedChromeViewController *)self setLookAroundOverlay:v18];

    lookAroundOverlay2 = [(IOSBasedChromeViewController *)self lookAroundOverlay];
    [lookAroundOverlay2 setDelegate:self];

    overlayController2 = [(ChromeViewController *)self overlayController];
    lookAroundOverlay3 = [(IOSBasedChromeViewController *)self lookAroundOverlay];
    innerLayoutGuide2 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [overlayController2 addOverlay:lookAroundOverlay3 inLayoutGuide:innerLayoutGuide2];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"lookAroundButton" animated:0];
  }

  redoSearchOverlay = [(IOSBasedChromeViewController *)self redoSearchOverlay];

  if (!redoSearchOverlay)
  {
    v24 = objc_alloc_init(_TtC4Maps23RedoSearchChromeOverlay);
    [(IOSBasedChromeViewController *)self setRedoSearchOverlay:v24];

    redoSearchOverlay2 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    [redoSearchOverlay2 setDelegate:self];

    overlayController3 = [(ChromeViewController *)self overlayController];
    redoSearchOverlay3 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    innerLayoutGuide3 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [overlayController3 addOverlay:redoSearchOverlay3 inLayoutGuide:innerLayoutGuide3];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"floatingSearchButton" animated:0];
  }

  if (!self->_pedestrianARSessionStateManager && +[PedestrianARSessionTask isPedestrianARModeSupported])
  {
    appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
    platformController = [appCoordinator platformController];
    pedestrianARSessionStateManager = [platformController pedestrianARSessionStateManager];
    pedestrianARSessionStateManager = self->_pedestrianARSessionStateManager;
    self->_pedestrianARSessionStateManager = pedestrianARSessionStateManager;

    [(PedestrianARSessionStateManager *)self->_pedestrianARSessionStateManager addObserver:self];
  }

  return _appearState == 2;
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v13 viewDidAppear:appear];
  [(IOSBasedChromeViewController *)self createScreenshotService];
  [(IOSBasedChromeViewController *)self _internal_createPostLaunchOverlaysIfNeeded];
  mapView = [(ChromeViewController *)self mapView];
  _isInactive = [mapView _isInactive];

  if (_isInactive)
  {
    v6 = sub_10000B11C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(IOSBasedChromeViewController *)self _internal_createPostMapFullyDrawnOverlaysIfNeeded];
      goto LABEL_13;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v15 = selfCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Map is inactive at viewDidAppear, force-create all map-render-dependent overlays", buf, 0xCu);

    goto LABEL_12;
  }

LABEL_13:
  [(ChromeViewController *)self updateComponentsIfNeeded];
}

- (void)showRedoSearchOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  [(ChromeViewController *)self setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
  redoSearchOverlay = [(IOSBasedChromeViewController *)self redoSearchOverlay];
  baseModeController = redoSearchOverlay;
  if (overlayCopy)
  {
    [redoSearchOverlay updateSearchOverlayWithState:0];

    redoSearchOverlay2 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    [redoSearchOverlay2 shouldHideFloatingControl:0 animated:1];

    baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
    actionCoordinator = [baseModeController actionCoordinator];
    [actionCoordinator refreshCurrentSearch];
  }

  else
  {
    [redoSearchOverlay updateSearchOverlayWithState:1];
  }
}

- (void)setSearchHereFloatingControlBottomPadding:(double)padding
{
  redoSearchOverlay = [(IOSBasedChromeViewController *)self redoSearchOverlay];
  [redoSearchOverlay layoutSearchHereFloatingControlWithHeight:padding];
}

- (BOOL)_shouldShowBrowseVenueFloatingControl
{
  topContext = [(ChromeViewController *)self topContext];
  topContext2 = [(ChromeViewController *)self topContext];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    permitsBrowseVenueFloatingControl = [topContext permitsBrowseVenueFloatingControl];
  }

  else
  {
    permitsBrowseVenueFloatingControl = 0;
  }

  return permitsBrowseVenueFloatingControl;
}

- (BOOL)_shouldShowSearchFloatingControl
{
  topContext = [(ChromeViewController *)self topContext];
  topContext2 = [(ChromeViewController *)self topContext];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    shouldShowSearchFloatingControl = [topContext shouldShowSearchFloatingControl];
  }

  else
  {
    topContext3 = [(ChromeViewController *)self topContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
      actionCoordinator = [baseModeController actionCoordinator];
      shouldShowSearchFloatingControl = [actionCoordinator shouldShowSearchOverlay];
    }

    else
    {
      shouldShowSearchFloatingControl = 0;
    }
  }

  return shouldShowSearchFloatingControl;
}

- (void)dismissLastVenuesPlaceCardForVenuesManager:(id)manager
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator dismissLastVenuePlaceCard];
}

- (id)topmostContaineeForVenuesManager:(id)manager
{
  _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  currentViewController = [_currentContainerViewController currentViewController];

  return currentViewController;
}

- (void)venuesManager:(id)manager presentPlaceCardForMapItem:(id)item addToHistory:(BOOL)history presentationActionSource:(unint64_t)source
{
  historyCopy = history;
  itemCopy = item;
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator displayPlaceCardForMapItem:itemCopy addToHistory:historyCopy presentationActionSource:source];
}

- (void)venuesManager:(id)manager presentFloorCardViewController:(id)controller
{
  controllerCopy = controller;
  _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  currentViewController = [_currentContainerViewController currentViewController];

  if (currentViewController != controllerCopy)
  {
    _currentContainerViewController2 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
    [_currentContainerViewController2 presentController:controllerCopy animated:1];
  }
}

- (void)venuesManager:(id)manager dismissFloorCardViewController:(id)controller
{
  controllerCopy = controller;
  _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  currentViewController = [_currentContainerViewController currentViewController];

  _currentContainerViewController2 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  v8 = _currentContainerViewController2;
  if (currentViewController == controllerCopy)
  {
    [_currentContainerViewController2 popLastViewControllerAnimated:1];
  }

  else
  {
    [_currentContainerViewController2 removeControllerFromStack:controllerCopy];
  }
}

- (void)floatingControlsOverlayDidTapTTRButton:(id)button
{
  buttonCopy = button;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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
      v9 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543362;
    v34 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Tapped TTR floating control button", buf, 0xCu);
  }

  _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  currentViewController = [_currentContainerViewController currentViewController];
  v14 = objc_opt_respondsToSelector();

  v15 = sub_10000B11C();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((v14 & 1) == 0)
  {
    if (!v16)
    {
LABEL_33:

      _currentContainerViewController3 = +[MapsRadarController sharedInstance];
      [_currentContainerViewController3 launchTTR];
      goto LABEL_34;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_32;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(IOSBasedChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v25, selfCopy2, v27];

        goto LABEL_27;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v25, selfCopy2];
LABEL_27:

LABEL_32:
    *buf = 138543362;
    v34 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR from floating control", buf, 0xCu);

    goto LABEL_33;
  }

  if (v16)
  {
    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_29;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(IOSBasedChromeViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy3, v21];

        goto LABEL_19;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy3];
LABEL_19:

LABEL_29:
    _currentContainerViewController2 = [(IOSBasedChromeViewController *)selfCopy3 _currentContainerViewController];
    currentViewController2 = [_currentContainerViewController2 currentViewController];
    *buf = 138543618;
    v34 = selfCopy3;
    v35 = 2112;
    v36 = currentViewController2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handing off to %@ to handle TTR button", buf, 0x16u);
  }

  _currentContainerViewController3 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  currentViewController3 = [_currentContainerViewController3 currentViewController];
  [currentViewController3 floatingControlsOverlayDidTapTTRButton:buttonCopy];

LABEL_34:
}

- (void)floatingControlsOverlayDidTapRefreshCurrentSearch:(id)search
{
  baseModeController = [(IOSBasedChromeViewController *)self baseModeController];
  actionCoordinator = [baseModeController actionCoordinator];
  [actionCoordinator refreshCurrentSearch];
}

- (void)floatingControlsOverlayDidTapExit3DMode:(id)mode
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator exit3dMode];
}

- (void)floatingControlsOverlayDidTapEnter3DMode:(id)mode
{
  coordinator = [(IOSBasedChromeViewController *)self coordinator];
  [coordinator select3dMode];
}

- (void)floatingControlsOverlay:(id)overlay didTapEnterPedestrianARFromButton:(id)button
{
  v5 = [(IOSBasedChromeViewController *)self topIOSBasedContext:overlay];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    topIOSBasedContext = [(IOSBasedChromeViewController *)self topIOSBasedContext];
    [topIOSBasedContext enterPedestrianAR];
  }
}

- (void)floatingControlsOverlayDidTapOpenUserProfile:(id)profile
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  [appCoordinator openUserProfile];
}

- (void)floatingControlsOverlayDidTapOpenSettings:(id)settings
{
  settingsCopy = settings;
  v5 = [_TtC4Maps37MapStylePickerContaineeViewController alloc];
  mapView = [(ChromeViewController *)self mapView];
  v7 = [(MapStylePickerContaineeViewController *)v5 initWithMapView:mapView delegate:self];

  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  [(ContaineeViewController *)v7 setContaineeDelegate:baseActionCoordinator];

  [(ChromeViewController *)self registerAdditionalMapViewDelegate:v7];
  if (sub_10000FA08(v7) == 5 || sub_10000FA08(v7) == 1)
  {
    [(MapStylePickerContaineeViewController *)v7 setModalPresentationStyle:7];
    floatingControlsViewController = [settingsCopy floatingControlsViewController];
    settingsButtonPopoverSourceView = [floatingControlsViewController settingsButtonPopoverSourceView];
    popoverPresentationController = [(MapStylePickerContaineeViewController *)v7 popoverPresentationController];
    [popoverPresentationController setSourceItem:settingsButtonPopoverSourceView];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100DBE2A4;
    v17[3] = &unk_101654798;
    v18 = settingsCopy;
    v13 = [UIViewControllerTransition zoomWithOptions:0 sourceViewProvider:v17];
    [(MapStylePickerContaineeViewController *)v7 setPreferredTransition:v13];

    _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
    [_currentContainerViewController _maps_topMostPresentViewController:v7 animated:1 completion:0];
  }

  else
  {
    _currentContainerViewController2 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
    [_currentContainerViewController2 presentController:v7 animated:1];
  }

  v16 = +[MKMapService sharedService];
  [v16 captureUserAction:5001 onTarget:-[IOSBasedChromeViewController currentMapViewTargetForAnalytics](self eventValue:{"currentMapViewTargetForAnalytics"), 0}];
}

- (void)_updateFloatingControlsDidChangePitching:(BOOL)pitching animated:(BOOL)animated
{
  animatedCopy = animated;
  pitchingCopy = pitching;
  floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];

  if (!floatingControlsOverlay)
  {
    return;
  }

  v55 = pitchingCopy;
  mapView = [(ChromeViewController *)self mapView];
  _desiredFloatingControlsForCurrentState = [(IOSBasedChromeViewController *)self _desiredFloatingControlsForCurrentState];
  floatingControlsOverlay2 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  floatingControlsViewController = [floatingControlsOverlay2 floatingControlsViewController];
  visibleControls = [floatingControlsViewController visibleControls];

  if (sub_10000FA08(self) == 5)
  {
    v13 = visibleControls & ~_desiredFloatingControlsForCurrentState;
  }

  else
  {
    v13 = 0;
  }

  v14 = _desiredFloatingControlsForCurrentState & 0xFFFFFFFFFFFFFE7FLL;
  _lookAroundAvailability = [mapView _lookAroundAvailability];
  if (_lookAroundAvailability == 2)
  {
    v14 = _desiredFloatingControlsForCurrentState;
  }

  if (_lookAroundAvailability == 2 && (_desiredFloatingControlsForCurrentState & 0x80) != 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 | 0x80;
  }

  [MapsAnalyticStateProvider updateButtonsInformationLookAround:?];
  v17 = v14 & 0xFFFFFFFFFFFFFEFFLL;
  v57 = animatedCopy;
  if (-[PedestrianARSessionStateManager shouldShowPedestrianAR](self->_pedestrianARSessionStateManager, "shouldShowPedestrianAR") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 BOOLForKey:@"PedestrianARForceShowAffordanceKey"], v18, v19))
  {
    v17 |= _desiredFloatingControlsForCurrentState & 0x100;
  }

  else
  {
    v16 |= 0x100uLL;
  }

  floatingControlsOverlay3 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  compassEnabled = [floatingControlsOverlay3 compassEnabled];

  v22 = 4096;
  if (!compassEnabled)
  {
    v22 = 0;
  }

  v23 = v22 | v17 & 0xFFFFFFFFFFFFEFFFLL;
  if (compassEnabled)
  {
    v24 = v16;
  }

  else
  {
    v24 = v16 | 0x1000;
  }

  displayedViewMode = [(IOSBasedChromeViewController *)self displayedViewMode];
  v53 = (displayedViewMode - 1) & 0xFFFFFFFFFFFFFFFALL;
  v26 = v23 & 0xFFFFFFFFFFFFFF8FLL;
  if (v53)
  {
    v26 = v23;
  }

  else
  {
    v24 |= 0x40uLL;
  }

  v27 = v26 & 0xFFFFFFFFFFFFFFCFLL;
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  actionCoordinator = 0;
  if (isKindOfClass)
  {
    topContext2 = [(ChromeViewController *)self topContext];
    actionCoordinator = [topContext2 actionCoordinator];
  }

  v32 = +[SettingsController deviceSupportsGlobe];
  _isPitched = [mapView _isPitched];
  if (!v32)
  {
    [mapView _mapLayer];
    v42 = v41 = actionCoordinator;
    isPitchable = [v42 isPitchable];

    v43 = v41;
    isExiting3dMode = [v41 isExiting3dMode];
    v45 = !v55;
    if ((displayedViewMode - 7) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v45 = 0;
    }

    if (v45 || ((_isPitched ^ 1 | isExiting3dMode) & 1) == 0)
    {
      v27 |= _desiredFloatingControlsForCurrentState & 0x10;
      v24 |= 0x20uLL;
    }

    else
    {
      _canEnter3DModeFlyover = [mapView _canEnter3DModeFlyover];
      v47 = _canEnter3DModeFlyover;
      if ((displayedViewMode - 1) < 2)
      {
        v40 = v57;
        if (_canEnter3DModeFlyover)
        {
          v24 |= 0x10uLL;
          v27 |= _desiredFloatingControlsForCurrentState & 0x20;
          if (!v27)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v24 |= 0x30uLL;
          if (!v27)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_55;
      }

      if ((displayedViewMode - 5) > 1)
      {
        v24 |= 0x30uLL;
      }

      else
      {
        is3dModeSelected = [v41 is3dModeSelected];
        if (v55 && (is3dModeSelected & 1) == 0)
        {
          if (((v47 | isPitchable) & 1) == 0)
          {
            v24 |= 0x30uLL;
          }

          if (displayedViewMode == 5)
          {
            v49 = 1;
          }

          else
          {
            v49 = 2;
          }

          v50 = dispatch_time(0, 250000000);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100DBE784;
          block[3] = &unk_101661650;
          block[4] = self;
          block[5] = v49;
          dispatch_after(v50, &_dispatch_main_q, block);
        }
      }
    }

    v40 = v57;
    if (!v27)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v56 = actionCoordinator;
  isExiting3dMode2 = [actionCoordinator isExiting3dMode];
  _canEnter3DMode = [mapView _canEnter3DMode];
  _isShowingCuratedElevatedGround = [mapView _isShowingCuratedElevatedGround];
  GEOConfigGetDouble();
  v38 = v37;
  [mapView _zoomLevel];
  if (!_isPitched || (isExiting3dMode2 & 1) != 0)
  {
    if (_canEnter3DMode && ((_isShowingCuratedElevatedGround & (v39 >= v38)) != 0 || !v53))
    {
      v27 |= _desiredFloatingControlsForCurrentState & 0x20;
    }

    else
    {
      v24 |= 0x20uLL;
    }

    v40 = v57;
    v24 |= 0x10uLL;
  }

  else
  {
    v27 |= _desiredFloatingControlsForCurrentState & 0x10;
    v24 |= 0x20uLL;
    v40 = v57;
  }

  v43 = v56;
  if (!v27)
  {
    goto LABEL_56;
  }

LABEL_55:
  floatingControlsOverlay4 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [floatingControlsOverlay4 showControlsIfNeeded:v27 animated:v40];

LABEL_56:
  if (v24)
  {
    floatingControlsOverlay5 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    [floatingControlsOverlay5 hideControlsIfNeeded:v24 animated:v40];
  }

  if (((v27 | v24) & 0x80) != 0)
  {
    [(ChromeViewController *)self setNeedsUpdateComponent:@"lookAroundButton" animated:1];
  }
}

- (void)_updateFloatingControlsDidChangeYaw:(BOOL)yaw animated:(BOOL)animated
{
  v5 = [(IOSBasedChromeViewController *)self floatingControlsOverlay:yaw];

  if (v5)
  {
    _desiredFloatingControlsForCurrentState = [(IOSBasedChromeViewController *)self _desiredFloatingControlsForCurrentState];
    mapView = [(ChromeViewController *)self mapView];
    shouldShowExternalCompass = [mapView shouldShowExternalCompass];

    if (shouldShowExternalCompass && (_desiredFloatingControlsForCurrentState & 0x1000) != 0)
    {
      v9 = 1;
    }

    else if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
    {
      v9 = +[MapsSettings showsCompass];
    }

    else
    {
      v9 = 0;
    }

    floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    compassEnabled = [floatingControlsOverlay compassEnabled];

    if (v9 != compassEnabled)
    {
      floatingControlsOverlay2 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
      [floatingControlsOverlay2 setCompassEnabled:v9];

      [(IOSBasedChromeViewController *)self _updateFloatingControlsDidChangePitching:0 animated:0];
    }
  }
}

- (void)requestCardLayout:(unint64_t)layout animated:(BOOL)animated forCard:(id)card
{
  animatedCopy = animated;
  cardCopy = card;
  if ([(IOSBasedChromeViewController *)self _isCurrentContainerChromeOwned])
  {
    cardsOverlay = [(IOSBasedChromeViewController *)self cardsOverlay];
    currentViewController = [cardsOverlay currentViewController];

    if (currentViewController == cardCopy)
    {
      cardsOverlay2 = [(IOSBasedChromeViewController *)self cardsOverlay];
      [cardsOverlay2 setLayoutIfSupported:layout animated:animatedCopy];
    }
  }
}

- (void)_updateCardsForCurrentStateWithAnimation:(id)animation
{
  animationCopy = animation;
  v74 = objc_alloc_init(NSMutableArray);
  isAnimated = [animationCopy isAnimated];
  if (!self->_externalContainerAppearanceNotification)
  {
    goto LABEL_19;
  }

  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v91 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] removing existing wait for external container to appear", buf, 0xCu);
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:self->_externalContainerAppearanceNotification];

  externalContainerAppearanceNotification = self->_externalContainerAppearanceNotification;
  self->_externalContainerAppearanceNotification = 0;

  v14 = objc_retainBlock(self->_externalContainerAppearanceWaitBlock);
  externalContainerAppearanceWaitBlock = self->_externalContainerAppearanceWaitBlock;
  self->_externalContainerAppearanceWaitBlock = 0;

  if (v14)
  {
    v16 = sub_10000B11C();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      v14[2](v14, 0);
      goto LABEL_18;
    }

    selfCopy2 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(IOSBasedChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

        goto LABEL_16;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_16:

    *buf = 138543362;
    v91 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] calling existing container appearance wait block", buf, 0xCu);

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  WeakRetained = objc_loadWeakRetained(&self->_currentContainerViewController);
  nextTopContext = [(ChromeViewController *)self nextTopContext];
  v25 = nextTopContext;
  if (nextTopContext)
  {
    topContext = nextTopContext;
  }

  else
  {
    topContext = [(ChromeViewController *)self topContext];
  }

  v27 = topContext;

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v27 customContainerViewController], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    cardsOverlay = v28;
    v30 = cardsOverlay;
  }

  else
  {
    cardsOverlay = [(IOSBasedChromeViewController *)self cardsOverlay];
    v30 = 0;
  }

  previousTopContext = [(ChromeViewController *)self previousTopContext];
  v32 = previousTopContext;
  if (previousTopContext)
  {
    topContext2 = previousTopContext;
  }

  else
  {
    topContext2 = [(ChromeViewController *)self topContext];
  }

  v34 = topContext2;

  currentContextTransition = [(ChromeViewController *)self currentContextTransition];
  selfCopy3 = self;
  if (currentContextTransition)
  {
    [(ChromeViewController *)self currentContextTransition];
    v70 = v27;
    v36 = cardsOverlay;
    v37 = animationCopy;
    v38 = v30;
    v40 = v39 = WeakRetained;
    [v40 pendingContexts];
    v42 = v41 = v34;
    v43 = [v42 containsObject:v41] ^ 1;

    v34 = v41;
    WeakRetained = v39;
    v30 = v38;
    animationCopy = v37;
    cardsOverlay = v36;
    v27 = v70;
  }

  else
  {
    v43 = 0;
  }

  if ([(ChromeViewController *)self transitionFromViewController:WeakRetained fromContext:v34 toViewController:cardsOverlay toContext:v27 withAnimation:animationCopy dismissing:v43])
  {
    objc_storeWeak(&self->_currentContainerViewController, cardsOverlay);
  }

  cardsOverlay2 = [(IOSBasedChromeViewController *)self cardsOverlay];

  if (cardsOverlay == cardsOverlay2)
  {
    topIOSBasedContext = [(IOSBasedChromeViewController *)self topIOSBasedContext];
    cardsOverlay3 = [(IOSBasedChromeViewController *)self cardsOverlay];
    [cardsOverlay3 setChromeContext:topIOSBasedContext];

    cardsOverlay4 = [(IOSBasedChromeViewController *)self cardsOverlay];
    [(ChromeViewController *)self registerAdditionalMapViewDelegate:cardsOverlay4];

    selfCopy4 = self;
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    if (objc_opt_respondsToSelector())
    {
      v64 = [(IOSBasedChromeViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v65 = v64;
      if (v64 && ![v64 isEqualToString:v63])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v63, selfCopy4, v65];

        goto LABEL_48;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v63, selfCopy4];
LABEL_48:

    v67 = [NSString stringWithFormat:@"%@: updating controllers in chrome-owned card stack", selfCopy4];
    v68 = [animationCopy addCompletionWaitBlockWithReason:v67];

    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100DBF308;
    v86[3] = &unk_101661068;
    v86[4] = selfCopy4;
    v57 = v74;
    v89 = isAnimated;
    v87 = v74;
    v88 = v68;
    v69 = v68;
    [animationCopy addPreparation:v86];

    goto LABEL_49;
  }

  cardsOverlay5 = [(IOSBasedChromeViewController *)self cardsOverlay];
  [(ChromeViewController *)self unregisterAdditionalMapViewDelegate:cardsOverlay5];

  v46 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
  if (objc_opt_respondsToSelector())
  {
    v71 = WeakRetained;
    selfCopy5 = self;
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    if (objc_opt_respondsToSelector())
    {
      v50 = [(IOSBasedChromeViewController *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v51 = v50;
      if (v50 && ![v50 isEqualToString:v49])
      {
        selfCopy5 = [NSString stringWithFormat:@"%@<%p, %@>", v49, selfCopy5, v51];

        goto LABEL_41;
      }
    }

    selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v49, selfCopy5];
LABEL_41:

    v53 = [NSString stringWithFormat:@"%@: updating controllers in custom context-owned card stack", selfCopy5];
    v54 = [animationCopy addCompletionWaitBlockWithReason:v53];

    v81[0] = _NSConcreteStackBlock;
    v46 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
    v81[1] = 3221225472;
    v81[2] = sub_100DBF5B4;
    v81[3] = &unk_101661068;
    v82 = v27;
    v85 = isAnimated;
    v83 = v30;
    v84 = v54;
    v55 = v54;
    [animationCopy addPreparation:v81];

    WeakRetained = v71;
    self = selfCopy3;
  }

  v76 = _NSConcreteStackBlock;
  v77 = *(v46 + 180);
  v56 = v77;
  v78 = sub_100DBF640;
  v79 = &unk_101661B18;
  selfCopy6 = self;
  [animationCopy addPreparation:&v76];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = v56;
  v75[2] = sub_100DBF648;
  v75[3] = &unk_101661738;
  v75[4] = self;
  [animationCopy addCompletion:v75];
  v57 = v74;
LABEL_49:
}

- (id)viewsToRenderMapsScreenshotService:(id)service
{
  serviceCopy = service;
  topContext = [(ChromeViewController *)self topContext];
  v6 = sub_100010C34(topContext, &OBJC_PROTOCOL___MapsScreenshotServiceDelegate);

  if (v6)
  {
    topContext2 = [(ChromeViewController *)self topContext];
    v8 = [topContext2 viewsToRenderMapsScreenshotService:serviceCopy];
  }

  else
  {
    topContext2 = [(ChromeViewController *)self mapView];
    v11 = topContext2;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
  }

  v9 = v8;

  return v9;
}

- (void)mapView:(id)view didUpdateYaw:(double)yaw
{
  viewCopy = view;
  v8 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v8 mapView:viewCopy didUpdateYaw:yaw];

  [(IOSBasedChromeViewController *)self _updateFloatingControlsDidChangeYaw:1 animated:1];
}

- (void)_resetTracking:(BOOL)tracking
{
  mapView = [(ChromeViewController *)self mapView];
  [mapView setUserTrackingMode:0];
}

- (void)mapViewDidFailLoadingMap:(id)map withError:(id)error
{
  loadingMapNetworkActivity = self->_loadingMapNetworkActivity;
  self->_loadingMapNetworkActivity = 0;
  errorCopy = error;
  mapCopy = map;

  v9.receiver = self;
  v9.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v9 mapViewDidFailLoadingMap:mapCopy withError:errorCopy];
}

- (void)mapViewDidFinishLoadingMap:(id)map
{
  loadingMapNetworkActivity = self->_loadingMapNetworkActivity;
  self->_loadingMapNetworkActivity = 0;
  mapCopy = map;

  v6.receiver = self;
  v6.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v6 mapViewDidFinishLoadingMap:mapCopy];
}

- (void)mapViewWillStartLoadingMap:(id)map
{
  mapCopy = map;
  if (!self->_loadingMapNetworkActivity)
  {
    v5 = +[LoadingIndicatorController sharedController];
    beginShowingLoadingIndicator = [v5 beginShowingLoadingIndicator];
    loadingMapNetworkActivity = self->_loadingMapNetworkActivity;
    self->_loadingMapNetworkActivity = beginShowingLoadingIndicator;
  }

  v8.receiver = self;
  v8.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v8 mapViewWillStartLoadingMap:mapCopy];
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  decelerateCopy = decelerate;
  viewCopy = view;
  v32.receiver = self;
  v32.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v32 mapView:viewCopy didStopRespondingToGesture:gesture zoomDirection:direction zoomGestureType:type didDecelerate:decelerateCopy tiltDirection:tiltDirection];
  floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  mapViewDelegate = [floatingControlsOverlay mapViewDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    floatingControlsOverlay2 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    mapViewDelegate2 = [floatingControlsOverlay2 mapViewDelegate];
    [mapViewDelegate2 mapView:viewCopy didStopRespondingToGesture:gesture zoomDirection:direction zoomGestureType:type didDecelerate:decelerateCopy tiltDirection:tiltDirection];
  }

  v20 = +[MKSystemController sharedInstance];
  shouldCaptureMapViewGestureAnalytics = [v20 shouldCaptureMapViewGestureAnalytics];

  if (gesture <= 3 && shouldCaptureMapViewGestureAnalytics)
  {
    if (gesture > 1)
    {
      if (gesture == 2)
      {
        v22 = 1004;
      }

      else if (tiltDirection == 2)
      {
        v22 = 1041;
      }

      else
      {
        if (tiltDirection != 1)
        {
          goto LABEL_55;
        }

        v22 = 1042;
      }
    }

    else if (gesture)
    {
      if (direction == 1)
      {
        v22 = 1043;
        if (type > 3)
        {
          if ((type - 6) < 2)
          {
            v22 = 1002;
          }

          else if (type == 4)
          {
            v22 = 1047;
          }

          else if (type == 5)
          {
            v22 = 1049;
          }
        }

        else
        {
          switch(type)
          {
            case 0:
              goto LABEL_55;
            case 2:
              v22 = 1045;
              break;
            case 3:
              goto LABEL_55;
          }
        }
      }

      else
      {
        v22 = 1044;
        if (type > 3)
        {
          if ((type - 6) < 2)
          {
            v22 = 1003;
          }

          else if (type == 4)
          {
            v22 = 1048;
          }

          else if (type == 5)
          {
            v22 = 1050;
          }
        }

        else
        {
          if (!type || type == 2)
          {
            goto LABEL_55;
          }

          if (type == 3)
          {
            v22 = 1046;
          }
        }
      }
    }

    else
    {
      v22 = 1001;
    }

    currentMapViewTargetForAnalytics = [(IOSBasedChromeViewController *)self currentMapViewTargetForAnalytics];
    v24 = +[MKMapService sharedService];
    mapRegion = [viewCopy mapRegion];
    [viewCopy _zoomLevel];
    v27 = v26;
    mapType = [viewCopy mapType];
    v29 = 1;
    if (mapType <= 2)
    {
      switch(mapType)
      {
        case 0:
LABEL_52:
          [v24 captureUserAction:v22 onTarget:currentMapViewTargetForAnalytics eventValue:0 mapRegion:mapRegion zoomLevel:v29 mapType:v27];

          if ((currentMapViewTargetForAnalytics - 502) <= 4 && ((1 << (currentMapViewTargetForAnalytics + 10)) & 0x13) != 0)
          {
            v30 = objc_alloc_init(SearchSessionAnalytics);
            [(SearchSessionAnalytics *)v30 setTarget:currentMapViewTargetForAnalytics];
            [(SearchSessionAnalytics *)v30 setAction:v22];
            v31 = +[SearchSessionAnalyticsAggregator sharedAggregator];
            [v31 collectSearchSessionAnalytics:v30];
          }

          goto LABEL_55;
        case 1:
          goto LABEL_50;
        case 2:
LABEL_46:
          v29 = 3;
          goto LABEL_52;
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
            goto LABEL_51;
          }

          goto LABEL_46;
        }

LABEL_50:
        v29 = 2;
        goto LABEL_52;
      }

      if (mapType == 102)
      {
        goto LABEL_52;
      }

      if (mapType == 104)
      {
        v29 = 4;
        goto LABEL_52;
      }
    }

LABEL_51:
    v29 = 0;
    goto LABEL_52;
  }

LABEL_55:
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  mapViewDelegate = [floatingControlsOverlay mapViewDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    floatingControlsOverlay2 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    mapViewDelegate2 = [floatingControlsOverlay2 mapViewDelegate];
    [mapViewDelegate2 mapView:viewCopy willStartRespondingToGesture:gesture animated:animatedCopy];
  }
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  buttonCopy = button;
  v11.receiver = self;
  v11.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v11 mapView:view didChangeUserTrackingMode:mode animated:animated fromTrackingButton:?];
  if ((mode - 1) <= 1 && buttonCopy)
  {
    self->_explicitlyRequestedUserLocation = 1;
  }

  if (mode >= 3)
  {
    v9 = 17064;
  }

  else
  {
    v9 = (mode + 17064);
  }

  [GEOAPPortal captureUserAction:v9 target:0 value:0];
  v10 = +[UIApplication sharedMapsDelegate];
  [v10 setTrackingMode:mode monitorBatteryState:1];
}

- (void)mapView:(id)view didFailToLocateUserWithError:(id)error
{
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = IOSBasedChromeViewController;
  viewCopy = view;
  [(IOSBasedChromeViewController *)&v15 mapView:viewCopy didFailToLocateUserWithError:errorCopy];
  hasUserLocation = [viewCopy hasUserLocation];

  if ((hasUserLocation & 1) == 0)
  {
    _maps_platformController = [(IOSBasedChromeViewController *)self _maps_platformController];
    currentSession = [_maps_platformController currentSession];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = currentSession;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    domain = [errorCopy domain];
    if ([domain isEqualToString:MKLocationErrorDomain] & 1) != 0 || (objc_msgSend(errorCopy, "_mapkit_isCLDenied") & 1) != 0 || v12 && (objc_msgSend(v12, "isWaitingForAccurateLocationUpdate"))
    {
    }

    else
    {
      explicitlyRequestedUserLocation = self->_explicitlyRequestedUserLocation;

      if (explicitlyRequestedUserLocation)
      {
        [(IOSBasedChromeViewController *)self reportCurrentLocationFailure];
      }
    }

    -[IOSBasedChromeViewController _resetTracking:](self, "_resetTracking:", [errorCopy _mapkit_isCLLocationUnknown] ^ 1);
  }

  self->_explicitlyRequestedUserLocation = 0;
}

- (void)mapView:(id)view didChangeDisplayedFloorOrdinal:(signed __int16)ordinal forVenue:(id)venue
{
  ordinalCopy = ordinal;
  venueCopy = venue;
  viewCopy = view;
  v11 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v11 mapView:viewCopy didChangeDisplayedFloorOrdinal:ordinalCopy forVenue:venueCopy];
}

- (void)mapView:(id)view didChangeFocusedVenue:(id)venue focusedBuilding:(id)building
{
  buildingCopy = building;
  venueCopy = venue;
  viewCopy = view;
  v12 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v12 mapView:viewCopy didChangeFocusedVenue:venueCopy focusedBuilding:buildingCopy];
}

- (void)mapView:(id)view calloutPrimaryActionTriggeredForAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  viewCopy = view;
  v9 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v9 mapView:viewCopy calloutPrimaryActionTriggeredForAnnotationView:annotationViewCopy];
}

- (void)mapView:(id)view calloutPrimaryActionTriggeredForLabelMarker:(id)marker
{
  markerCopy = marker;
  viewCopy = view;
  v9 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v9 mapView:viewCopy calloutPrimaryActionTriggeredForLabelMarker:markerCopy];
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  [MapsAnalyticStateProvider updateMapViewInformation:viewCopy];
  weatherOverlay = [(IOSBasedChromeViewController *)self weatherOverlay];
  [weatherOverlay mapView:viewCopy regionDidChangeAnimated:animatedCopy];

  [(IOSBasedChromeViewController *)self _updateFloatingControlsDidChangePitching:0 animated:animatedCopy];
  v8.receiver = self;
  v8.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v8 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
}

- (BOOL)mapViewShouldHandleTapToDeselect:(id)deselect
{
  deselectCopy = deselect;
  v6 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mapViewShouldHandleTapToDeselect:deselectCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IOSBasedChromeViewController;
    v8 = [(ChromeViewController *)&v11 mapViewShouldHandleTapToDeselect:deselectCopy];
  }

  v9 = v8;

  return v9;
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  viewCopy = view;
  overlayManager = [(IOSBasedChromeViewController *)self overlayManager];
  [overlayManager setSelectedLabelMarker:markerCopy];

  v9.receiver = self;
  v9.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v9 mapView:viewCopy didSelectLabelMarker:markerCopy];
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  markerCopy = marker;
  viewCopy = view;
  overlayManager = [(IOSBasedChromeViewController *)self overlayManager];
  [overlayManager setSelectedLabelMarker:0];

  v9.receiver = self;
  v9.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v9 mapView:viewCopy didDeselectLabelMarker:markerCopy];
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  overlayCopy = overlay;
  overlayManager = [(IOSBasedChromeViewController *)self overlayManager];
  v9 = [overlayManager mapView:viewCopy rendererForOverlay:overlayCopy];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [SearchResultsDebugOverlay rendererWithPolygon:overlayCopy];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = IOSBasedChromeViewController;
      v10 = [(ChromeViewController *)&v13 mapView:viewCopy rendererForOverlay:overlayCopy];
    }
  }

  v11 = v10;

  return v11;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  v13.receiver = self;
  v13.super_class = IOSBasedChromeViewController;
  v8 = [(ChromeViewController *)&v13 mapView:viewCopy viewForAnnotation:annotationCopy];
  if (v8)
  {
    goto LABEL_2;
  }

  ridesharingAnnotationsManager = [(IOSBasedChromeViewController *)self ridesharingAnnotationsManager];
  v9 = [ridesharingAnnotationsManager mapView:viewCopy viewForAnnotation:annotationCopy];

  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [SearchResultsDebugOverlay viewForAnnotation:annotationCopy];
      if (v8)
      {
        goto LABEL_2;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[TransitVehiclePositionAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:0];
      if (v8)
      {
        goto LABEL_2;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (-[IOSBasedChromeViewController sharedTripsAnnotationsController](self, "sharedTripsAnnotationsController"), v12 = objc_claimAutoreleasedReturnValue(), [v12 mapView:viewCopy viewForAnnotation:annotationCopy], v9 = objc_claimAutoreleasedReturnValue(), v12, !v9))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[MapsRippleAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:@"rippleView"];
LABEL_2:
        v9 = v8;
        goto LABEL_4;
      }

      v9 = 0;
    }
  }

LABEL_4:

  return v9;
}

- (void)mapView:(id)view didChangeMapType:(unint64_t)type
{
  browseVenueOverlay = [(IOSBasedChromeViewController *)self browseVenueOverlay];
  [browseVenueOverlay setDisplayedMapType:type];
}

- (void)_mapFullyDrawn:(id)drawn
{
  if (self->_mapFullyDrawnObserver)
  {
    v4 = sub_10000B11C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      [(IOSBasedChromeViewController *)self _internal_createPostMapFullyDrawnOverlaysIfNeeded];
      return;
    }

    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Map full drawn, will create map-render-dependent overlays", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)_handleLogTileState:(id)state
{
  if ([state state] == 3)
  {
    v10 = 0;
    v11 = 0;
    v4 = [MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:&v11 debugTreeURLs:0 mapsActivityDataPath:0 error:&v10];
    v5 = v10;
    v6 = v11;
    v7 = v6;
    if (v4)
    {
      path = [v6 path];
      NSLog(@"Logged tile state to %@", path);
      v9 = [NSString stringWithFormat:@"Logged tile state to %@", path];
      [(IOSBasedChromeViewController *)self _maps_presentSimpleAlertWithTitle:@"State Snapshot" message:v9 dismissalActionTitle:@"OK"];
    }

    else
    {
      path = [v5 localizedDescription];
      [(IOSBasedChromeViewController *)self _maps_presentSimpleAlertWithTitle:@"State Snapshot Creation Failed" message:path dismissalActionTitle:@"OK"];
    }
  }
}

- (void)overlayControllerDidUpdateMapInsets:(id)insets fromOverlay:(id)overlay
{
  v8.receiver = self;
  v8.super_class = IOSBasedChromeViewController;
  overlayCopy = overlay;
  [(ChromeViewController *)&v8 overlayControllerDidUpdateMapInsets:insets fromOverlay:overlayCopy];
  v7 = [(IOSBasedChromeViewController *)self cardsOverlay:v8.receiver];

  if (v7 == overlayCopy)
  {
    [(ChromeViewController *)self updateComponentsIfNeeded];
  }
}

- (void)_updateBrowseVenueButtonWithAnimation:(id)animation
{
  animationCopy = animation;
  browseVenueOverlay = [(IOSBasedChromeViewController *)self browseVenueOverlay];

  if (browseVenueOverlay)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    isAnimated = [animationCopy isAnimated];
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100DC0ED8;
    v6[3] = &unk_10165E700;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    v6[5] = v9;
    [animationCopy addAnimations:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
    _Block_object_dispose(v9, 8);
  }
}

- (void)_updateRedoSearchButtonWithAnimation:(id)animation
{
  animationCopy = animation;
  redoSearchOverlay = [(IOSBasedChromeViewController *)self redoSearchOverlay];

  if (redoSearchOverlay)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    isAnimated = [animationCopy isAnimated];
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100DC1150;
    v8[3] = &unk_101661B98;
    objc_copyWeak(&v9, &location);
    [animationCopy addPreparation:v8];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100DC11E4;
    v6[3] = &unk_10165DE50;
    objc_copyWeak(&v7, &location);
    v6[4] = v11;
    [animationCopy addAnimations:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    _Block_object_dispose(v11, 8);
  }
}

- (id)_prevailingSearchButtonOverlay
{
  redoSearchOverlay = [(IOSBasedChromeViewController *)self redoSearchOverlay];
  if (redoSearchOverlay && (v4 = redoSearchOverlay, v5 = [(IOSBasedChromeViewController *)self _shouldShowSearchFloatingControl], v4, v5))
  {
    redoSearchOverlay2 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
  }

  else
  {
    redoSearchOverlay2 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    if (redoSearchOverlay2)
    {
      v7 = redoSearchOverlay2;
      browseVenueOverlay = [(IOSBasedChromeViewController *)self browseVenueOverlay];
      shouldBeVisible = [browseVenueOverlay shouldBeVisible];

      if (shouldBeVisible)
      {
        redoSearchOverlay2 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
      }

      else
      {
        redoSearchOverlay2 = 0;
      }
    }
  }

  return redoSearchOverlay2;
}

- (void)_updateLookAroundButtonWithAnimation:(id)animation
{
  animationCopy = animation;
  lookAroundOverlay = [(IOSBasedChromeViewController *)self lookAroundOverlay];

  if (lookAroundOverlay)
  {
    isAnimated = [animationCopy isAnimated];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100DC144C;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [animationCopy addPreparation:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DC14D4;
    v7[3] = &unk_101661AE0;
    v7[4] = self;
    v8 = isAnimated;
    [animationCopy addAnimations:v7];
  }
}

- (id)fullscreenViewControllerTransitionFromController:(id)controller toController:(id)toController isDismissTransition:(BOOL)transition
{
  transitionCopy = transition;
  controllerCopy = controller;
  toControllerCopy = toController;
  if (sub_100010C34(controllerCopy, &OBJC_PROTOCOL___ModeTransitionProtocol) && sub_100010C34(toControllerCopy, &OBJC_PROTOCOL___ModeTransitionProtocol))
  {
    v10 = objc_alloc_init(ModeTransitionController);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = IOSBasedChromeViewController;
    v10 = [(ChromeViewController *)&v13 fullscreenViewControllerTransitionFromController:controllerCopy toController:toControllerCopy isDismissTransition:transitionCopy];
  }

  v11 = v10;

  return v11;
}

- (void)fullscreenViewControllerDidChange:(id)change
{
  changeCopy = change;
  v25.receiver = self;
  v25.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v25 fullscreenViewControllerDidChange:changeCopy];
  if (!changeCopy)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_3;
  }

  v5 = sub_10006D178();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    nextTopContext = [(ChromeViewController *)self nextTopContext];
    v7 = nextTopContext;
    if (nextTopContext)
    {
      topContext = nextTopContext;
    }

    else
    {
      topContext = [(ChromeViewController *)self topContext];
      if (!topContext)
      {
        v13 = @"<nil>";
LABEL_14:
        v14 = changeCopy;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        if (objc_opt_respondsToSelector())
        {
          v17 = [v14 performSelector:"accessibilityIdentifier"];
          v18 = v17;
          if (v17 && ![v17 isEqualToString:v16])
          {
            v23 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];
            v24 = v18;
            v19 = v23;

            goto LABEL_19;
          }
        }

        v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_19:

        v20 = [NSString stringWithFormat:@"%@ should implement -customContainerViewController instead of -fullscreenViewController because it provided %@", v13, v19];
        *buf = 136316162;
        v27 = "[IOSBasedChromeViewController fullscreenViewControllerDidChange:]";
        v28 = 2080;
        v29 = "IOSBasedChromeViewController.m";
        v30 = 1024;
        v31 = 968;
        v32 = 2080;
        v33 = "!fullscreenViewController || ![fullscreenViewController isKindOfClass:ContainerViewController.class]";
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);

        if (!v7)
        {
        }

        goto LABEL_22;
      }
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [topContext performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, topContext, v12];

        goto LABEL_13;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, topContext];
LABEL_13:

    goto LABEL_14;
  }

LABEL_22:

  if (sub_100E03634())
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

LABEL_3:
}

- (id)_containerViewControllerWithContext:(id)context
{
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    customContainerViewController = [contextCopy customContainerViewController];
  }

  else
  {
    customContainerViewController = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cardsOverlay = customContainerViewController;
  }

  else
  {
    cardsOverlay = [(IOSBasedChromeViewController *)self cardsOverlay];
  }

  v7 = cardsOverlay;

  return v7;
}

- (BOOL)_isCurrentContainerChromeOwned
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_currentContainerViewController);
  cardsOverlay = [(IOSBasedChromeViewController *)selfCopy cardsOverlay];
  LOBYTE(selfCopy) = WeakRetained == cardsOverlay;

  return selfCopy;
}

- (BOOL)_suppressOverlaysForActiveFullscreenContainer
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

  v7 = [(IOSBasedChromeViewController *)self _containerViewControllerWithContext:v6];
  cardsOverlay = [(IOSBasedChromeViewController *)self cardsOverlay];
  v9 = v7 != cardsOverlay;

  return v9;
}

- (void)updateFramesInDebugFramesView:(id)view
{
  v6.receiver = self;
  v6.super_class = IOSBasedChromeViewController;
  viewCopy = view;
  [(ChromeViewController *)&v6 updateFramesInDebugFramesView:viewCopy];
  v5 = [(IOSBasedChromeViewController *)self innerLayoutGuide:v6.receiver];
  [viewCopy setLayoutGuide:v5 forName:@"inner layout guide"];
}

- (void)registerFramesInDebugFramesView:(id)view
{
  v5.receiver = self;
  v5.super_class = IOSBasedChromeViewController;
  viewCopy = view;
  [(ChromeViewController *)&v5 registerFramesInDebugFramesView:viewCopy];
  v4 = [UIColor systemPinkColor:v5.receiver];
  [viewCopy registerName:@"inner layout guide" color:v4 weight:15 edges:1.0];
}

- (void)_updateStatusBarSupplementaryViewWithAnimation:(id)animation
{
  animationCopy = animation;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  contexts = [(ChromeViewController *)self contexts];
  reverseObjectEnumerator = [contexts reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (!v7)
  {
LABEL_23:
    statusBarSupplementaryView = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v9 = *v42;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v42 != v9)
    {
      objc_enumerationMutation(reverseObjectEnumerator);
    }

    v11 = *(*(&v41 + 1) + 8 * v10);
    if (objc_opt_respondsToSelector())
    {
      if ([v11 wantsStatusBarControl])
      {
        break;
      }
    }

    if (v8 == ++v10)
    {
      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_23;
    }
  }

  v12 = sub_10000B11C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v11 = v11;
    if (!v11)
    {
      v17 = @"<nil>";
      goto LABEL_20;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [v11 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v11, v16];

        goto LABEL_18;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v11];
LABEL_18:

LABEL_20:
    *buf = 138543362;
    v46 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[Status Bar Background View] %{public}@ wants status bar control", buf, 0xCu);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_23;
  }

  statusBarSupplementaryView = [v11 statusBarSupplementaryView];
LABEL_24:

  statusBarSupplementaryView = self->_statusBarSupplementaryView;
  if (statusBarSupplementaryView == statusBarSupplementaryView)
  {
    goto LABEL_47;
  }

  v20 = statusBarSupplementaryView;
  objc_storeStrong(&self->_statusBarSupplementaryView, statusBarSupplementaryView);
  v21 = sub_10000B11C();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v20;
    if (!v22)
    {
      v27 = @"<nil>";
LABEL_34:

      v28 = v27;
      v29 = statusBarSupplementaryView;
      if (!v29)
      {
        v34 = @"<nil>";
        goto LABEL_42;
      }

      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      if (objc_opt_respondsToSelector())
      {
        v32 = [(StatusBarSupplementaryView *)v29 performSelector:"accessibilityIdentifier"];
        v33 = v32;
        if (v32 && ![v32 isEqualToString:v31])
        {
          v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];

          goto LABEL_40;
        }
      }

      v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
LABEL_40:

LABEL_42:
      *buf = 138543618;
      v46 = v28;
      v47 = 2114;
      v48 = v34;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[Status Bar] supplementary view will change from %{public}@ to %{public}@", buf, 0x16u);

      goto LABEL_43;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v25 = [(StatusBarSupplementaryView *)v22 performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

        goto LABEL_32;
      }
    }

    v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_32:

    goto LABEL_34;
  }

LABEL_43:

  [(StatusBarSupplementaryView *)v20 removeFromSuperview];
  if (statusBarSupplementaryView)
  {
    [(StatusBarSupplementaryView *)statusBarSupplementaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(StatusBarBackgroundView *)self->_statusBarBackgroundView addSubview:statusBarSupplementaryView];
    v35 = [(StatusBarSupplementaryView *)statusBarSupplementaryView initialConstraintsForAnimatingPositionInStatusBarBackgroundView:self->_statusBarBackgroundView];
    [NSLayoutConstraint activateConstraints:v35];
  }

  else
  {
    v35 = 0;
  }

  view = [(IOSBasedChromeViewController *)self view];
  [view layoutIfNeeded];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100DC22B8;
  v38[3] = &unk_101661A40;
  v38[4] = self;
  v39 = statusBarSupplementaryView;
  v40 = v35;
  v37 = v35;
  [animationCopy addAnimations:v38];

LABEL_47:
}

- (void)setStatusBarAdditionalColor:(id)color
{
  objc_storeStrong(&self->_statusBarAdditionalColor, color);
  colorCopy = color;
  [(StatusBarBackgroundView *)self->_statusBarBackgroundView setAdditionalColor:colorCopy];
}

- (void)_updateWeatherWithAnimation:(id)animation
{
  animationCopy = animation;
  weatherOverlay = [(IOSBasedChromeViewController *)self weatherOverlay];

  if (weatherOverlay)
  {
    isAnimated = [animationCopy isAnimated];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100DC259C;
    v9[3] = &unk_101661600;
    v9[4] = self;
    v9[5] = v10;
    [animationCopy addPreparation:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DC2648;
    v7[3] = &unk_101661AE0;
    v7[4] = self;
    v8 = isAnimated;
    [animationCopy addAnimations:v7];
    _Block_object_dispose(v10, 8);
  }
}

- (void)_updateStatusBarForCurrentStateWithAnimation:(id)animation
{
  animationCopy = animation;
  _defaultStatusBarBackgroundViewStyle = [(IOSBasedChromeViewController *)self _defaultStatusBarBackgroundViewStyle];
  _defaultPrefersStatusBarHidden = [(IOSBasedChromeViewController *)self _defaultPrefersStatusBarHidden];
  _defaultPreferredStatusBarStyle = [(IOSBasedChromeViewController *)self _defaultPreferredStatusBarStyle];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  contexts = [(ChromeViewController *)self contexts];
  reverseObjectEnumerator = [contexts reverseObjectEnumerator];

  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v31 = _defaultStatusBarBackgroundViewStyle;
  v12 = animationCopy;
  v13 = *v36;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v36 != v13)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v15 = *(*(&v35 + 1) + 8 * i);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v15 wantsStatusBarControl])
      {
        v16 = sub_10000B11C();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          animationCopy = v12;
          _defaultStatusBarBackgroundViewStyle = v31;
          goto LABEL_22;
        }

        v15 = v15;
        animationCopy = v12;
        if (!v15)
        {
          v21 = @"<nil>";
          _defaultStatusBarBackgroundViewStyle = v31;
          goto LABEL_21;
        }

        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        _defaultStatusBarBackgroundViewStyle = v31;
        if (objc_opt_respondsToSelector())
        {
          v19 = [v15 performSelector:"accessibilityIdentifier"];
          v20 = v19;
          if (v19 && ![v19 isEqualToString:v18])
          {
            v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v15, v20];

            goto LABEL_18;
          }
        }

        v21 = [NSString stringWithFormat:@"%@<%p>", v18, v15];
LABEL_18:

LABEL_21:
        *buf = 138543362;
        v40 = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[Status Bar] %{public}@ wants status bar control", buf, 0xCu);

LABEL_22:
        if (objc_opt_respondsToSelector())
        {
          prefersStatusBarHidden = [v15 prefersStatusBarHidden];
        }

        else
        {
          prefersStatusBarHidden = [(IOSBasedChromeViewController *)self _defaultPrefersStatusBarHidden];
        }

        _defaultPrefersStatusBarHidden = prefersStatusBarHidden;
        if (objc_opt_respondsToSelector())
        {
          preferredStatusBarStyle = [v15 preferredStatusBarStyle];
        }

        else
        {
          preferredStatusBarStyle = [(IOSBasedChromeViewController *)self _defaultPreferredStatusBarStyle];
        }

        _defaultPreferredStatusBarStyle = preferredStatusBarStyle;
        if (self->_permitCustomStatusBarBackgroundViewStyle && (objc_opt_respondsToSelector() & 1) != 0)
        {
          statusBarBackgroundViewStyle = [v15 statusBarBackgroundViewStyle];

          _defaultStatusBarBackgroundViewStyle = statusBarBackgroundViewStyle;
        }

        goto LABEL_31;
      }
    }

    v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  animationCopy = v12;
  _defaultStatusBarBackgroundViewStyle = v31;
LABEL_31:

  v25 = +[UIDevice currentDevice];
  orientation = [v25 orientation];

  if (!sub_10000FA08(self) && (orientation - 3) <= 1)
  {

    _defaultStatusBarBackgroundViewStyle = 0;
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100DC2BE4;
  v33[3] = &unk_101661A90;
  v33[4] = self;
  v34 = _defaultStatusBarBackgroundViewStyle;
  v27 = _defaultStatusBarBackgroundViewStyle;
  [animationCopy addAnimations:v33];
  if (self->_statusBarHidden != _defaultPrefersStatusBarHidden)
  {
    v28 = sub_10000B11C();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v40 = @"YES";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[Status Bar] hidden will change to %{public}@", buf, 0xCu);
    }

    self->_statusBarHidden = _defaultPrefersStatusBarHidden;
  }

  if (!_defaultPrefersStatusBarHidden && _defaultPreferredStatusBarStyle != self->_statusBarStyle)
  {
    v29 = sub_10000B11C();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      statusBarStyle = self->_statusBarStyle;
      *buf = 134217984;
      v40 = statusBarStyle;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[Status Bar] visible status bar style will change to %ld", buf, 0xCu);
    }

    self->_statusBarStyle = _defaultPreferredStatusBarStyle;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100DC2BF8;
  v32[3] = &unk_101661B18;
  v32[4] = self;
  [animationCopy addAnimations:v32];
}

- (int64_t)_internal_topContextMapScaleFeatureVisibility
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
    preferredMapScaleVisibility = [v6 preferredMapScaleVisibility];
  }

  else if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
  {
    if (+[MapsSettings alwaysShowScale])
    {
      preferredMapScaleVisibility = 2;
    }

    else
    {
      preferredMapScaleVisibility = 0;
    }
  }

  else
  {
    preferredMapScaleVisibility = 0;
  }

  return preferredMapScaleVisibility;
}

- (void)_updateFloatingControlsForCurrentStateWithAnimation:(id)animation
{
  animationCopy = animation;
  isAnimated = [animationCopy isAnimated];
  _currentContainerViewController = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  [_currentContainerViewController edgePadding];
  v8 = v7;
  floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [floatingControlsOverlay setMargin:v8];

  _currentContainerViewController2 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  blurGroupName = [_currentContainerViewController2 blurGroupName];
  floatingControlsOverlay2 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [floatingControlsOverlay2 setBlurGroupName:blurGroupName];

  _desiredFloatingControlsForCurrentState = [(IOSBasedChromeViewController *)self _desiredFloatingControlsForCurrentState];
  v14 = sub_10000B11C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    topContext = [(ChromeViewController *)self topContext];
    if (!topContext)
    {
      v20 = @"<nil>";
      goto LABEL_10;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [topContext performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, topContext, v19];

        goto LABEL_8;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, topContext];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v26 = @"floatingControls";
    v27 = 2114;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Update component: %{public}@ with top context: %{public}@", buf, 0x16u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100DC2FE0;
  v24[3] = &unk_101661650;
  v24[4] = self;
  v24[5] = _desiredFloatingControlsForCurrentState;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100DC3224;
  v22[3] = &unk_101654728;
  v22[4] = self;
  v22[5] = _desiredFloatingControlsForCurrentState;
  v23 = isAnimated;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC3284;
  v21[3] = &unk_101661738;
  v21[4] = self;
  [animationCopy addPreparation:v24 animations:v22 completion:v21];
}

- (void)_updateMapScaleVisibilityWithAnimation:(id)animation
{
  animationCopy = animation;
  mapScaleOverlay = [(IOSBasedChromeViewController *)self mapScaleOverlay];

  if (mapScaleOverlay)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100DC3388;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [animationCopy addAnimations:v6];
  }
}

- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation
{
  componentCopy = component;
  animationCopy = animation;
  if (componentCopy == @"floatingControls")
  {
    [(IOSBasedChromeViewController *)self _updateFloatingControlsForCurrentStateWithAnimation:animationCopy];
    goto LABEL_17;
  }

  if (componentCopy == @"cards")
  {
    [(IOSBasedChromeViewController *)self _updateCardsForCurrentStateWithAnimation:animationCopy];
    goto LABEL_17;
  }

  if (componentCopy == @"statusBarStyle")
  {
    [(IOSBasedChromeViewController *)self _updateStatusBarForCurrentStateWithAnimation:animationCopy];
    goto LABEL_17;
  }

  if (componentCopy == @"statusBarSupplementaryView")
  {
    [(IOSBasedChromeViewController *)self _updateStatusBarSupplementaryViewWithAnimation:animationCopy];
    goto LABEL_17;
  }

  if (componentCopy == @"lookAroundButton")
  {
    [(IOSBasedChromeViewController *)self _updateLookAroundButtonWithAnimation:animationCopy];
LABEL_16:
    [(IOSBasedChromeViewController *)self _updateBrowseVenueButtonWithAnimation:animationCopy];
    goto LABEL_17;
  }

  if (componentCopy == @"floatingSearchButton")
  {
    [(IOSBasedChromeViewController *)self _updateRedoSearchButtonWithAnimation:animationCopy];
    goto LABEL_16;
  }

  if (componentCopy == @"weatherOverlay")
  {
    [(IOSBasedChromeViewController *)self _updateWeatherWithAnimation:animationCopy];
  }

  else if (componentCopy == @"mapScale")
  {
    [(IOSBasedChromeViewController *)self _updateMapScaleVisibilityWithAnimation:animationCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = IOSBasedChromeViewController;
    [(ChromeViewController *)&v10 updateComponent:componentCopy forTiming:timing withAnimation:animationCopy];
  }

LABEL_17:
}

- (void)updateComponentsIfNeededWithTansitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (coordinatorCopy)
  {
    v5 = objc_alloc_init(GroupAnimation);
    -[GroupAnimation setAnimated:](v5, "setAnimated:", [coordinatorCopy isAnimated]);
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_11:
    v12 = [NSString stringWithFormat:@"%@: UIViewController transition coordinator animation", selfCopy];
    v13 = [(GroupAnimation *)v5 addCompletionWaitBlockWithReason:v12];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100DC37A8;
    v18[3] = &unk_1016546D8;
    v18[4] = selfCopy;
    v19 = v5;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100DC37EC;
    v16[3] = &unk_101654700;
    v17 = v13;
    v14 = v13;
    v15 = v5;
    [coordinatorCopy animateAlongsideTransition:v18 completion:v16];

    goto LABEL_12;
  }

  [(ChromeViewController *)self updateComponentsIfNeeded];
LABEL_12:
}

- (void)setConnectedToCarPlay:(BOOL)play
{
  if (self->_connectedToCarPlay != play)
  {
    v13 = v3;
    v14 = v4;
    self->_connectedToCarPlay = play;
    carPlayModernMapToken = self->_carPlayModernMapToken;
    if (!play)
    {
      if (!carPlayModernMapToken)
      {
        return;
      }

      v9 = sub_10000B11C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Releasing CarPlay modern map token", v11, 2u);
      }

      v8 = 0;
      goto LABEL_12;
    }

    if (!carPlayModernMapToken && (GEOConfigGetBOOL() & 1) == 0)
    {
      v7 = sub_10000B11C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Acquiring CarPlay modern map token", buf, 2u);
      }

      v8 = [(IOSBasedChromeViewController *)self acquireModernMapTokenForReason:2];
LABEL_12:
      v10 = self->_carPlayModernMapToken;
      self->_carPlayModernMapToken = v8;
    }
  }
}

- (RidesharingAnnotationsManager)ridesharingAnnotationsManager
{
  ridesharingAnnotationsManager = self->_ridesharingAnnotationsManager;
  if (!ridesharingAnnotationsManager)
  {
    v4 = [RidesharingAnnotationsManager alloc];
    mapView = [(ChromeViewController *)self mapView];
    v6 = [(RidesharingAnnotationsManager *)v4 initWithMapView:mapView];
    v7 = self->_ridesharingAnnotationsManager;
    self->_ridesharingAnnotationsManager = v6;

    [(RidesharingAnnotationsManager *)self->_ridesharingAnnotationsManager setChromeViewController:self];
    ridesharingAnnotationsManager = self->_ridesharingAnnotationsManager;
  }

  return ridesharingAnnotationsManager;
}

- (OverlayManager)overlayManager
{
  overlayManager = self->_overlayManager;
  if (!overlayManager)
  {
    v4 = objc_alloc_init(OverlayManager);
    v5 = self->_overlayManager;
    self->_overlayManager = v4;

    mapView = [(ChromeViewController *)self mapView];
    [(OverlayManager *)self->_overlayManager setMapView:mapView];

    overlayManager = self->_overlayManager;
  }

  return overlayManager;
}

- (id)mapViewResponder
{
  mapViewResponder = self->_mapViewResponder;
  if (!mapViewResponder)
  {
    v4 = [MapViewResponder alloc];
    mapView = [(ChromeViewController *)self mapView];
    v6 = [(MapViewResponder *)v4 initWithMapView:mapView];
    v7 = self->_mapViewResponder;
    self->_mapViewResponder = v6;

    mapViewResponder = self->_mapViewResponder;
  }

  return mapViewResponder;
}

- (id)currentShareItemSource
{
  topContext = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentShareItemSource = [topContext currentShareItemSource];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    quickActionMenuPresenter = [topContext quickActionMenuPresenter];
    resolvedMapItem = [quickActionMenuPresenter resolvedMapItem];

    if (resolvedMapItem)
    {
      currentPlaceCardItem = [[SearchResult alloc] initWithMapItem:resolvedMapItem];
      unknownContact = [(SearchResult *)currentPlaceCardItem unknownContact];
      currentShareItemSource = [ShareItem shareItemWithSearchResult:currentPlaceCardItem contact:unknownContact includePrintActivity:1];
LABEL_19:

      goto LABEL_20;
    }
  }

  currentCollectionShareItemSource = [(IOSBasedChromeViewController *)self currentCollectionShareItemSource];
  resolvedMapItem = currentCollectionShareItemSource;
  if (!currentCollectionShareItemSource)
  {
    appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    currentPlaceCardItem = [baseActionCoordinator currentPlaceCardItem];

    searchResult = [(SearchResult *)currentPlaceCardItem searchResult];

    if (searchResult)
    {
      v13 = [SearchResult alloc];
      searchResult2 = [(SearchResult *)currentPlaceCardItem searchResult];
      v15 = [(SearchResult *)v13 initWithSearchResult:searchResult2];
    }

    else
    {
      mapItem = [(SearchResult *)currentPlaceCardItem mapItem];

      if (!mapItem)
      {
        goto LABEL_14;
      }

      v17 = [SearchResult alloc];
      searchResult2 = [(SearchResult *)currentPlaceCardItem mapItem];
      v15 = [(SearchResult *)v17 initWithMapItem:searchResult2];
    }

    unknownContact = v15;

    if (unknownContact)
    {
      v8UnknownContact = [unknownContact unknownContact];
      currentShareItemSource = [ShareItem shareItemWithSearchResult:unknownContact contact:v8UnknownContact includePrintActivity:1];
LABEL_18:

      goto LABEL_19;
    }

LABEL_14:
    _maps_platformController = [(IOSBasedChromeViewController *)self _maps_platformController];
    unknownContact = [_maps_platformController currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8UnknownContact = [unknownContact currentRouteCollection];
      currentRoute = [v8UnknownContact currentRoute];
      currentShareItemSource = [ShareItem shareItemWithRoute:currentRoute includeRoutingApps:0];
    }

    else
    {
      v25 = [MapRegionShareItemSource alloc];
      v8UnknownContact = [(ChromeViewController *)self mapView];
      currentRoute = [(IOSBasedChromeViewController *)self view];
      window = [currentRoute window];
      windowScene = [window windowScene];
      title = [windowScene title];
      currentShareItemSource = [(MapRegionShareItemSource *)v25 initWithMapView:v8UnknownContact title:title];
    }

    goto LABEL_18;
  }

  currentShareItemSource = currentCollectionShareItemSource;
LABEL_20:

LABEL_21:

  return currentShareItemSource;
}

- (id)currentCollectionShareItemSource
{
  appCoordinator = [(IOSBasedChromeViewController *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  currentViewController = [baseActionCoordinator currentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionHandler = [currentViewController collectionHandler];
    v6 = [[PersonalCollectionShareItemSource alloc] initWithCollectionHandlerInfo:collectionHandler];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      collectionHandler = currentViewController;
      curatedCollection = [collectionHandler curatedCollection];
      if (curatedCollection)
      {
        v9 = [CuratedCollectionShareItemSource alloc];
        mapItems = [collectionHandler mapItems];
        v7 = [(CuratedCollectionShareItemSource *)v9 initWithPlaceCollection:curatedCollection refinedMapItems:mapItems];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_12;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v11 = currentViewController;
    v12 = [CuratedCollectionShareItemSource alloc];
    collectionHandler = [v11 publisher];

    v6 = [(CuratedCollectionShareItemSource *)v12 initWithPublisher:collectionHandler];
  }

  v7 = v6;
LABEL_12:

LABEL_13:

  return v7;
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
      v7 = [(IOSBasedChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v23 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Deallocating", buf, 0xCu);
  }

  v10 = +[VGVirtualGarageService sharedService];
  [v10 unregisterObserver:self];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_configKeyListeners;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        GEOConfigRemoveBlockListener();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16.receiver = self;
  v16.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v16 dealloc];
}

- (InterruptionManager)interruptionManager
{
  interruptionManager = self->_interruptionManager;
  if (!interruptionManager)
  {
    v4 = objc_alloc_init(InterruptionManager);
    v5 = self->_interruptionManager;
    self->_interruptionManager = v4;

    [(InterruptionManager *)self->_interruptionManager setChromeViewController:self];
    interruptionManager = self->_interruptionManager;
  }

  return interruptionManager;
}

@end