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
- (BOOL)_shouldShowTrafficForViewMode:(int64_t)a3;
- (BOOL)_suppressOverlaysForActiveFullscreenContainer;
- (BOOL)canDropPin;
- (BOOL)canEnter3dMode;
- (BOOL)canEnterLookAroundMode;
- (BOOL)canExitLookAroundMode;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canRemovePin;
- (BOOL)canSnapToNorth;
- (BOOL)displayNavigationAlertAndShouldContinue;
- (BOOL)isHidingCardsForContext:(id)a3;
- (BOOL)isNightMode;
- (BOOL)isSnappedToNorth;
- (BOOL)locationPulseEnabled;
- (BOOL)mapViewShouldHandleTapToDeselect:(id)a3;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)pptTestIsTrayType:(int64_t)a3;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)willMoveToOrFromSecureLockScreenUI:(BOOL)a3;
- (CGRect)popoverPresentationRectForPrintController:(id)a3;
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
- (id)_containerViewControllerWithContext:(id)a3;
- (id)_currentContainerViewController;
- (id)_currentLogContextDelegateForSelector:(SEL)a3;
- (id)_defaultStatusBarBackgroundViewStyle;
- (id)_lookAroundButtonPlaceCardItem;
- (id)_prevailingSearchButtonOverlay;
- (id)acquireModernMapTokenForReason:(unint64_t)a3;
- (id)allComponents;
- (id)allVisibleMapViewsButNotCarPlayForDebugController:(id)a3;
- (id)allVisibleMapViewsForDebugController:(id)a3;
- (id)baseModeController;
- (id)coordinator;
- (id)currentCollectionShareItemSource;
- (id)currentShareItemSource;
- (id)currentTraits;
- (id)fullscreenViewControllerTransitionFromController:(id)a3 toController:(id)a4 isDismissTransition:(BOOL)a5;
- (id)lookAroundCoordinator;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)mapViewResponder;
- (id)navActionCoordinator;
- (id)personalizedItemSourcesForCurrentState;
- (id)routeCreationContext;
- (id)topmostContaineeForVenuesManager:(id)a3;
- (id)viewsToRenderMapsScreenshotService:(id)a3;
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
- (void)_handleLogTileState:(id)a3;
- (void)_initializePrintingController;
- (void)_loadInternalDebugSetting;
- (void)_mapFullyDrawn:(id)a3;
- (void)_refreshHiddenCards;
- (void)_resetTracking:(BOOL)a3;
- (void)_sceneConnectionsDidChange;
- (void)_teardownViewHierarchyForTesting;
- (void)_teardownViewHierarchyWithActionCoordinator:(id)a3 shouldAnimate:(BOOL)a4;
- (void)_updateBrowseVenueButtonWithAnimation:(id)a3;
- (void)_updateCardsForCurrentStateWithAnimation:(id)a3;
- (void)_updateFloatingControlsDidChangePitching:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateFloatingControlsDidChangeYaw:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateFloatingControlsForCurrentStateWithAnimation:(id)a3;
- (void)_updateInnerLayoutGuideWithTopViewController:(id)a3;
- (void)_updateLookAroundButtonWithAnimation:(id)a3;
- (void)_updateMapScaleVisibilityWithAnimation:(id)a3;
- (void)_updateMapViewResponderTargetForObject:(id)a3;
- (void)_updateMapViewWithEVChargingConfig;
- (void)_updateModernMapCartographicConfiguration;
- (void)_updateOfflineModernMapToken;
- (void)_updateRedoSearchButtonWithAnimation:(id)a3;
- (void)_updateStatusBarForCurrentStateWithAnimation:(id)a3;
- (void)_updateStatusBarSupplementaryViewWithAnimation:(id)a3;
- (void)_updateViewModeForLabelsDisplayIfNeeded;
- (void)_updateViewModeForTrafficDisplayIfNeeded;
- (void)_updateWeatherWithAnimation:(id)a3;
- (void)_windowUserInterfaceStyleDidChange;
- (void)browseVenueChromeOverlayDidSelectFocusedVenueWithOverlay:(id)a3;
- (void)centerMapToUserLocation;
- (void)chromeNavigationDisplayDidRenderRoute:(id)a3;
- (void)cleanUIandHideSearch;
- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)copy:(id)a3;
- (void)createCustomSearchResultForDroppedPinAtCenterPoint;
- (void)createCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4 animated:(BOOL)a5;
- (void)createScreenshotService;
- (void)dealloc;
- (void)debugController:(id)a3 choseTraceAtPath:(id)a4 startNav:(BOOL)a5;
- (void)decrementForToken:(id)a3;
- (void)defaultZoom;
- (void)didUpdateForcedExploreMapConfiguration:(BOOL)a3;
- (void)directionsTypeForMapItem:(id)a3 handler:(id)a4;
- (void)dismissAllModalViewsIfPresentAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissLastVenuesPlaceCardForVenuesManager:(id)a3;
- (void)displayNavShareETA;
- (void)displayNearbySearch;
- (void)enterLookAroundForMapItem:(id)a3 isMarkedLocation:(BOOL)a4 lookAroundView:(id)a5;
- (void)enterLookAroundPIP:(id)a3;
- (void)exitLookAround;
- (void)find:(id)a3;
- (void)floatingControlsOverlay:(id)a3 didTapEnterPedestrianARFromButton:(id)a4;
- (void)floatingControlsOverlayDidTapEnter3DMode:(id)a3;
- (void)floatingControlsOverlayDidTapExit3DMode:(id)a3;
- (void)floatingControlsOverlayDidTapOpenSettings:(id)a3;
- (void)floatingControlsOverlayDidTapOpenUserProfile:(id)a3;
- (void)floatingControlsOverlayDidTapRefreshCurrentSearch:(id)a3;
- (void)floatingControlsOverlayDidTapTTRButton:(id)a3;
- (void)fullscreenViewControllerDidChange:(id)a3;
- (void)incrementForToken:(id)a3;
- (void)mapStylePickerContaineeViewControllerDidChangeMapTypeWithViewController:(id)a3 mapType:(unint64_t)a4 skipConfiguration:(BOOL)a5;
- (void)mapStylePickerContaineeViewControllerDismissByGestureWithViewController:(id)a3;
- (void)mapStylePickerContaineeViewControllerPresentDebugPanelIfEnabledWithViewController:(id)a3;
- (void)mapStylePickerContaineeViewControllerWantsDismissWithViewController:(id)a3;
- (void)mapView:(id)a3 calloutPrimaryActionTriggeredForAnnotationView:(id)a4;
- (void)mapView:(id)a3 calloutPrimaryActionTriggeredForLabelMarker:(id)a4;
- (void)mapView:(id)a3 didChangeDisplayedFloorOrdinal:(signed __int16)a4 forVenue:(id)a5;
- (void)mapView:(id)a3 didChangeFocusedVenue:(id)a4 focusedBuilding:(id)a5;
- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didFailToLocateUserWithError:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 didUpdateYaw:(double)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)mapViewDidFailLoadingMap:(id)a3 withError:(id)a4;
- (void)mapViewDidFinishLoadingMap:(id)a3;
- (void)mapViewWillStartLoadingMap:(id)a3;
- (void)openUserProfile;
- (void)overlayControllerDidUpdateMapInsets:(id)a3 fromOverlay:(id)a4;
- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4;
- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4;
- (void)prepareMapViewForFirstUse;
- (void)presentMapsDebugControllerIfEnabled;
- (void)printCurrentState;
- (void)printRoute:(id)a3;
- (void)printSearchResultFromSession:(id)a3;
- (void)registerFramesInDebugFramesView:(id)a3;
- (void)removeDroppedPin;
- (void)reportCurrentLocationFailure;
- (void)requestCardLayout:(unint64_t)a3 animated:(BOOL)a4 forCard:(id)a5;
- (void)resetForEditingShortcut:(id)a3;
- (void)resetForLaunchURLWithOptions:(id)a3;
- (void)resetForTestingAction;
- (void)routeFromSearchResult:(id)a3 toSearchResult:(id)a4 directionsType:(unint64_t)a5 drivePreferences:(id)a6 routeHandle:(id)a7 timePoint:(id)a8 withFeedback:(id)a9 origin:(int64_t)a10 options:(id)a11;
- (void)searchForAddress:(id)a3 source:(int)a4;
- (void)searchForAddressString:(id)a3 source:(int)a4;
- (void)searchForExternalURLQuery:(id)a3 coordinate:(CLLocationCoordinate2D)a4 muid:(unint64_t)a5 resultProviderId:(int)a6 contentProvider:(id)a7;
- (void)searchForRouteFromAddress:(id)a3 toAddress:(id)a4 directionsMode:(unint64_t)a5 userInfo:(id)a6;
- (void)searchForSearchItem:(id)a3 traits:(id)a4 source:(int)a5;
- (void)searchForString:(id)a3 traits:(id)a4 scrollToResults:(BOOL)a5 source:(int)a6;
- (void)searchWithSearchInfo:(id)a3 source:(int)a4;
- (void)select3dMode;
- (void)selectLookAroundMode;
- (void)selectParkedCarAndPerformAction:(int64_t)a3;
- (void)setConnectedToCarPlay:(BOOL)a3;
- (void)setLocationPulseEnabled:(BOOL)a3;
- (void)setNeedsUserActivityUpdate;
- (void)setNeedsUserInterfaceAppearanceUpdate;
- (void)setSearchHereFloatingControlBottomPadding:(double)a3;
- (void)setStatusBarAdditionalColor:(id)a3;
- (void)setSuggestedApplicationState:(int)a3;
- (void)shouldStartRedoSearch;
- (void)showAnnouncementForFlyover:(id)a3;
- (void)showFavoritesType:(int64_t)a3;
- (void)showRedoSearchOverlay:(BOOL)a3;
- (void)showTransitLine:(unint64_t)a3 withName:(id)a4;
- (void)snapToNorth;
- (void)switchMapMode:(id)a3;
- (void)toggleLabels;
- (void)toggleTraffic;
- (void)undo:(id)a3;
- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5;
- (void)updateComponentsIfNeededWithTansitionCoordinator:(id)a3;
- (void)updateFramesInDebugFramesView:(id)a3;
- (void)updateHistoricalLocations;
- (void)updateLightLevelAnimated:(BOOL)a3 lightLevel:(int64_t)a4;
- (void)updateMapViewDisplayOptions;
- (void)updateThemeForVisualEffectStyle:(unint64_t)a3;
- (void)updateThemeViewAndControllers;
- (void)updateViewMode:(int64_t)a3 animated:(BOOL)a4 preserveMapSelection:(BOOL)a5;
- (void)updateViewMode:(int64_t)displayedViewMode animated:(BOOL)a4 skipSettingMapConfiguration:(BOOL)a5;
- (void)validateCommand:(id)a3;
- (void)venuesManager:(id)a3 dismissFloorCardViewController:(id)a4;
- (void)venuesManager:(id)a3 presentFloorCardViewController:(id)a4;
- (void)venuesManager:(id)a3 presentPlaceCardForMapItem:(id)a4 addToHistory:(BOOL)a5 presentationActionSource:(unint64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)virtualGarageDidUpdate:(id)a3;
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

    v17 = [(IOSBasedChromeViewController *)v3 traitCollection];
    v3->_currentUserInterfaceIdiom = [v17 userInterfaceIdiom];

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
    v23 = [v22 isInternalInstall];

    if (v23)
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
  v7 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  [v7 setIdentifier:v6];

  v8 = [(IOSBasedChromeViewController *)self view];
  v9 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  [v8 addLayoutGuide:v9];

  v10 = objc_alloc_init(UILayoutGuide);
  [(IOSBasedChromeViewController *)self setWeatherLayoutGuide:v10];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [NSString stringWithFormat:@"%@.weatherLayoutGuide", v12];
  v14 = [(IOSBasedChromeViewController *)self weatherLayoutGuide];
  [v14 setIdentifier:v13];

  v15 = [(IOSBasedChromeViewController *)self view];
  v16 = [(IOSBasedChromeViewController *)self weatherLayoutGuide];
  [v15 addLayoutGuide:v16];

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
  v21 = [(ChromeViewController *)self overlayController];
  [v21 addOverlay:self->_cardsOverlay];

  v22 = objc_alloc_init(FloatingControlsOverlay);
  [(IOSBasedChromeViewController *)self setFloatingControlsOverlay:v22];

  v23 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [v23 setMapViewProvider:self];

  v24 = [[FloatingControlsOverlayDelegateProxy alloc] initWithChromeViewController:self];
  floatingControlsOverlayDelegateProxy = self->_floatingControlsOverlayDelegateProxy;
  self->_floatingControlsOverlayDelegateProxy = v24;

  v26 = self->_floatingControlsOverlayDelegateProxy;
  v27 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [v27 setDelegate:v26];

  v28 = [(ChromeViewController *)self overlayController];
  v29 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  v30 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  [v28 addOverlay:v29 inLayoutGuide:v30];

  v31 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  v32 = [v31 mapViewDelegate];
  [(ChromeViewController *)self registerAdditionalMapViewDelegate:v32];

  self->_statusBarHidden = [(IOSBasedChromeViewController *)self _defaultPrefersStatusBarHidden];
  self->_statusBarStyle = [(IOSBasedChromeViewController *)self _defaultPreferredStatusBarStyle];
  v33 = [StatusBarBackgroundView alloc];
  v34 = [(IOSBasedChromeViewController *)self view];
  v35 = [v34 safeAreaLayoutGuide];
  v36 = [v35 topAnchor];
  v37 = [(StatusBarBackgroundView *)v33 initWithSafeAreaTopLayoutAnchor:v36];
  statusBarBackgroundView = self->_statusBarBackgroundView;
  self->_statusBarBackgroundView = v37;

  [(StatusBarBackgroundView *)self->_statusBarBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_permitCustomStatusBarBackgroundViewStyle = GEOConfigGetBOOL() ^ 1;
  v39 = [(IOSBasedChromeViewController *)self _defaultStatusBarBackgroundViewStyle];
  [(StatusBarBackgroundView *)self->_statusBarBackgroundView setStyle:v39];

  v40 = [(IOSBasedChromeViewController *)self view];
  [v40 addSubview:self->_statusBarBackgroundView];

  if (GEOConfigGetBOOL())
  {
    v41 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
    scrollPocketCollectorInteraction = self->_scrollPocketCollectorInteraction;
    self->_scrollPocketCollectorInteraction = v41;

    v43 = [(IOSBasedChromeViewController *)self view];
    [v43 addInteraction:self->_scrollPocketCollectorInteraction];

    v44 = [_UIScrollPocketContainerInteraction alloc];
    v45 = [(ChromeViewController *)self mapView];
    v46 = [v44 initWithScrollView:v45 edge:1];

    [v46 _setCollectorInteraction:self->_scrollPocketCollectorInteraction];
    [(StatusBarBackgroundView *)self->_statusBarBackgroundView addInteraction:v46];
    if (GEOConfigGetBOOL())
    {
      v47 = [[_UIScrollPocketInteraction alloc] initWithStyle:0];
      [(StatusBarBackgroundView *)self->_statusBarBackgroundView addInteraction:v47];
    }
  }

  v48 = [(ChromeViewController *)self viewportLayoutGuide];
  v49 = [v48 topAnchor];
  v50 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView bottomAnchor];
  LODWORD(v51) = 1148829696;
  v52 = [v49 constraintEqualToAnchor:v50 constant:0.0 priority:v51];
  viewportTopEqualToStatusBarBottomConstraint = self->_viewportTopEqualToStatusBarBottomConstraint;
  self->_viewportTopEqualToStatusBarBottomConstraint = v52;

  v54 = [(ChromeViewController *)self viewportLayoutGuide];
  v55 = [v54 topAnchor];
  v56 = [(IOSBasedChromeViewController *)self view];
  v57 = [v56 safeAreaLayoutGuide];
  v58 = [v57 topAnchor];
  v59 = [v55 constraintEqualToAnchor:v58];
  viewportTopEqualToSafeAreaBottomConstraint = self->_viewportTopEqualToSafeAreaBottomConstraint;
  self->_viewportTopEqualToSafeAreaBottomConstraint = v59;

  v91 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView leadingAnchor];
  v92 = [(IOSBasedChromeViewController *)self view];
  v90 = [v92 leadingAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v94[0] = v89;
  v87 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView trailingAnchor];
  v88 = [(IOSBasedChromeViewController *)self view];
  v86 = [v88 trailingAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v94[1] = v85;
  v83 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView topAnchor];
  v84 = [(IOSBasedChromeViewController *)self view];
  v82 = [v84 topAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v94[2] = v81;
  v79 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView bottomAnchor];
  v80 = [(IOSBasedChromeViewController *)self view];
  v78 = [v80 safeAreaLayoutGuide];
  v77 = [v78 topAnchor];
  v76 = [v79 constraintGreaterThanOrEqualToAnchor:v77];
  v94[3] = v76;
  v75 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView bottomAnchor];
  v61 = [(IOSBasedChromeViewController *)self view];
  v62 = [v61 safeAreaLayoutGuide];
  v63 = [v62 topAnchor];
  LODWORD(v64) = 1132068864;
  v65 = [v75 constraintEqualToAnchor:v63 constant:0.0 priority:v64];
  v94[4] = v65;
  v66 = [(ChromeViewController *)self viewportLayoutGuide];
  v67 = [v66 topAnchor];
  v68 = [(StatusBarBackgroundView *)self->_statusBarBackgroundView bottomAnchor];
  v69 = [v67 constraintGreaterThanOrEqualToAnchor:v68];
  v70 = self->_viewportTopEqualToSafeAreaBottomConstraint;
  v94[5] = v69;
  v94[6] = v70;
  v71 = [NSArray arrayWithObjects:v94 count:7];
  [NSLayoutConstraint activateConstraints:v71];

  v72 = [(IOSBasedChromeViewController *)self theme];
  [v72 applyAppearance];

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
  v3 = [(IOSBasedChromeViewController *)self viewIfLoaded];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 screen];
  v7 = [v6 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if ([(IOSBasedChromeViewController *)self _isNavigationMode])
  {
    v9 = +[MapsLightLevelController sharedController];
    v10 = [v9 currentLightLevel];

    if (v10 == 2)
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
        return v8;
      }
    }
  }

  return result;
}

- (BOOL)_isNavigationMode
{
  v2 = [(IOSBasedChromeViewController *)self currentIOSBasedContext];
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
    v3 = 0;
  }

  else
  {
    v3 = [(ChromeViewController *)self topContext];
  }

  return v3;
}

- (MapsUserLocationView)userLocationView
{
  v4.receiver = self;
  v4.super_class = IOSBasedChromeViewController;
  v2 = [(ChromeViewController *)&v4 userLocationView];

  return v2;
}

- (void)prepareMapViewForFirstUse
{
  v45.receiver = self;
  v45.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v45 prepareMapViewForFirstUse];
  v3 = [(ChromeViewController *)self mapView];
  [v3 _setUseBalloonCalloutsForLabels:1];
  [v3 setTintAdjustmentMode:1];
  [v3 setShowsScale:0];
  [v3 setShowsCompass:0];
  [v3 _setShowsScaleDuringZoom:0];
  [v3 _setScrollEdgeEffectViewInteractionDisabled:GEOConfigGetBOOL() ^ 1];
  [(IOSBasedChromeViewController *)self _updateOfflineModernMapToken];
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  if (v3)
  {
    [v3 _cartographicConfiguration];
  }

  if ([(IOSBasedChromeViewController *)self shouldUseModernMap])
  {
    v4 = [(IOSBasedChromeViewController *)self modernMapTerrainMode];
  }

  else
  {
    v4 = 1;
  }

  *(&v42 + 1) = v4;
  if ([(IOSBasedChromeViewController *)self shouldUseModernMap])
  {
    v5 = [(IOSBasedChromeViewController *)self modernMapProjectionType];
  }

  else
  {
    v5 = 1;
  }

  *&v42 = v5;
  *&v43 = 0;
  v6 = [[MapViewResponder alloc] initWithMapView:v3];
  mapViewResponder = self->_mapViewResponder;
  self->_mapViewResponder = v6;

  [(EnvironmentObserver *)self->_environmentObserver setMapView:v3];
  v8 = [v3 mapType];
  v9 = 3;
  v10 = 7;
  if (v8 != 108)
  {
    v10 = 0;
  }

  if (v8 != 104)
  {
    v9 = v10;
  }

  v11 = 5;
  v12 = -1;
  if (v8 != 103)
  {
    v12 = 0;
  }

  if (v8 != 4)
  {
    v11 = v12;
  }

  if (v8 <= 103)
  {
    v9 = v11;
  }

  v13 = 2;
  v14 = 1;
  v15 = 6;
  if (v8 != 3)
  {
    v15 = 0;
  }

  if (v8 != 2)
  {
    v14 = v15;
  }

  if (v8 != 1)
  {
    v13 = v14;
  }

  if (v8 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = v9;
  }

  self->_displayedViewMode = v16;
  v17 = [(IOSBasedChromeViewController *)self userLocationView];
  [v17 setViewMode:v16];

  if (self->_logTileStateRecognizer)
  {
    goto LABEL_32;
  }

  v18 = +[GEOPlatform sharedPlatform];
  v19 = [v18 isInternalInstall];

  if (v19)
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
    v22 = [(ChromeViewController *)self mapView];
    [v22 addGestureRecognizer:self->_logTileStateRecognizer];
  }

  [v3 _setDebugConsoleAdditionalInfoProvider:&stru_101654748];
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
  v26 = [v3 _mapLayer];
  v27 = +[NSOperationQueue mainQueue];
  v28 = VKMapViewDidBecomeFullyDrawnNotification;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100DC09B0;
  v38[3] = &unk_10165FBE8;
  objc_copyWeak(&v39, &location);
  v29 = [v25 addObserverForName:v28 object:v26 queue:v27 usingBlock:v38];
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
  v5 = [v4 isUsingOffline];

  if ((((usingOfflineDataModernMapToken == 0) ^ v5) & 1) == 0)
  {
    if (v5)
    {
      v6 = [(IOSBasedChromeViewController *)self acquireModernMapTokenForReason:4];
    }

    else
    {
      v6 = 0;
    }

    v7 = self->_usingOfflineDataModernMapToken;
    self->_usingOfflineDataModernMapToken = v6;

    v9 = [(ChromeViewController *)self mapView];
    v8 = [v9 _mapLayer];
    [v8 clearScene];
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
      v6 = [(IOSBasedChromeViewController *)self viewIfLoaded];
      v7 = [v6 traitCollection];
      v4 = [v7 verticalSizeClass] == 1;
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
  v4 = [(ChromeViewController *)self mapView];
  [v4 _setLocationPulseEnabled:v3 ^ 1];

  v5 = [v7 BOOLForKey:@"DebugConsoleEnabled"];
  v6 = [(ChromeViewController *)self mapView];
  [v6 setLocationConsoleEnabled:v5];
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
      v12 = [(ChromeViewController *)self mapView];
      v13 = [(IOSBasedChromeViewController *)self userLocationView];
      v14 = [(VenuesManager *)v11 initWithDelegate:self mapView:v12 userLocationView:v13];
      v15 = self->_venuesManager;
      self->_venuesManager = v14;

      v16 = self->_venuesManager;
      v17 = [(ChromeViewController *)self searchPinsManager];
      [v17 setVenuesManager:v16];

      v18 = self->_venuesManager;
      v19 = [(ChromeViewController *)self searchPinsManager];
      [(VenuesManager *)v18 addChangeObserver:v19];

      venuesManager = self->_venuesManager;
      goto LABEL_10;
    }

    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(IOSBasedChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
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
    v22 = v10;
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
  v3 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  [v3 edgePadding];
  v5 = v4;
  v6 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [v6 setMargin:v5];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 fullscreenViewController];
  }

  else
  {
    v3 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 prefersHomeIndicatorAutoHidden];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v50.receiver = self;
  v50.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v50 viewDidLayoutSubviews];
  if (![(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac]&& ![(IOSBasedChromeViewController *)self _internal_topContextWantsCompassLayoutControl])
  {
    v3 = [(ChromeViewController *)self mapView];
    v4 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [v4 layoutFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    v14 = [v13 owningView];
    [v3 convertRect:v14 fromView:{v6, v8, v10, v12}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v45 = v21;

    v22 = [(ChromeViewController *)self mapView];
    [v22 _edgeInsets];
    v48 = v24;
    v49 = v23;

    v25 = [(ChromeViewController *)self mapView];
    [v25 bounds];
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

    v36 = [(ChromeViewController *)self mapView];
    [v36 _compassInsets];
    v38 = v37;
    v40 = v39;

    v41 = [(ChromeViewController *)self mapView];
    [v41 _setCompassInsets:{v38, MinX - v49, v40, right - v48}];
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
      v4 = [(ChromeViewController *)self mapView];
      [v4 setShowsLiveEVData:0];
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
  v3 = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(ChromeViewController *)self topContext];
    v5 = [v4 fullscreenViewController];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 supportedInterfaceOrientations];
  }

  else
  {
    v7 = [(IOSBasedChromeViewController *)self cardsOverlay];
    v8 = [v7 currentViewController];

    if (objc_opt_respondsToSelector())
    {
      v6 = [v8 supportedInterfaceOrientations];
    }

    else
    {
      v9 = [(ChromeViewController *)self topContext];
      if (objc_opt_respondsToSelector())
      {
        v10 = [(ChromeViewController *)self topContext];
        v11 = [v10 customContainerViewController];
      }

      else
      {
        v11 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v6 = [v11 supportedInterfaceOrientations];
      }

      else
      {
        v6 = 26;
      }
    }
  }

  return v6;
}

- (BOOL)_internal_topContextWantsCompassLayoutControl
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
    v7 = [v6 wantsCompassLayoutControl];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_desiredFloatingControlsForCurrentState
{
  v3 = [(ChromeViewController *)self pendingContexts];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ChromeViewController *)self contexts];
  }

  v6 = v5;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (!v8)
  {
LABEL_27:
    v15 = 0;
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
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v25 + 1) + 8 * v12);
      if (objc_opt_respondsToSelector())
      {
        v15 = [v14 desiredFloatingControls];
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
    v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    v15 = 0;
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
    v23 = v15 & 0xFFFFFFFFFFFFFFCFLL;
  }

  else
  {
    v23 = v15;
  }

  return v23;
}

- (double)statusBarHeight
{
  v3 = [(IOSBasedChromeViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  [(StatusBarBackgroundView *)self->_statusBarBackgroundView frame];
  if (v5 <= CGRectGetHeight(v10))
  {
    [(StatusBarBackgroundView *)self->_statusBarBackgroundView frame];
    Height = CGRectGetHeight(v11);
  }

  else
  {
    v6 = [(IOSBasedChromeViewController *)self view];
    [v6 safeAreaInsets];
    Height = v7;
  }

  return Height;
}

- (id)allComponents
{
  v6.receiver = self;
  v6.super_class = IOSBasedChromeViewController;
  v2 = [(ChromeViewController *)&v6 allComponents];
  v7[0] = @"floatingControls";
  v7[1] = @"cards";
  v7[2] = @"lookAroundButton";
  v7[3] = @"statusBarStyle";
  v7[4] = @"statusBarSupplementaryView";
  v7[5] = @"weatherOverlay";
  v7[6] = @"mapScale";
  v7[7] = @"floatingSearchButton";
  v3 = [NSArray arrayWithObjects:v7 count:8];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (void)_freezeInnerLayoutGuide
{
  v3 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  [v3 layoutFrame];
  v45 = v5;
  v47 = v4;
  v43 = v6;
  rect1 = v7;

  if (self->_innerLayoutGuideConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  v8 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  v51 = [v8 owningView];

  [v51 bounds];
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
  v48 = [rect1a topAnchor];
  v46 = [v51 topAnchor];
  v35 = [v48 constraintEqualToAnchor:v46 constant:top];
  v44 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  v42 = [v44 leftAnchor];
  v40 = [v51 leftAnchor];
  v34 = [v42 constraintEqualToAnchor:v40 constant:MinX];
  v37 = [v51 bottomAnchor];
  v24 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  v25 = [v24 bottomAnchor];
  v26 = [v37 constraintEqualToAnchor:v25 constant:v19];
  v27 = [v51 rightAnchor];
  v28 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
  v29 = [v28 rightAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:right];
  v31 = [MapsEdgeConstraints edgeConstraintsWithTop:v35 leading:v34 bottom:v26 trailing:v30];
  v32 = [v31 allConstraints];
  innerLayoutGuideConstraints = self->_innerLayoutGuideConstraints;
  self->_innerLayoutGuideConstraints = v32;

  [NSLayoutConstraint activateConstraints:self->_innerLayoutGuideConstraints];
}

- (void)createScreenshotService
{
  if (!self->_screenshotService)
  {
    v3 = [MapsScreenshotService alloc];
    v8 = [(IOSBasedChromeViewController *)self view];
    v4 = [v8 window];
    v5 = [v4 windowScene];
    v6 = [(MapsScreenshotService *)v3 initWithDelegate:self windowScene:v5];
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
  v2 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 actionCoordinator];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_canShowLookAroundButton
{
  v3 = +[GEOResourceManifestManager modernManager];
  v4 = [v3 isMuninEnabled];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(ChromeViewController *)self contexts];
    v6 = [v5 reverseObjectEnumerator];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
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
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(ChromeViewController *)self topContext];
  if ([(IOSBasedChromeViewController *)self _shouldCollapseLookAroundPreview]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 placeCardItemForLookAroundButton];
  }

  return v4;
}

- (BOOL)_shouldCollapseLookAroundPreview
{
  v2 = [(IOSBasedChromeViewController *)self coordinator];
  v3 = [v2 containerViewController];

  v4 = [v3 currentViewController];
  v5 = [v4 cardPresentationController];

  v6 = [v5 containerStyle];
  v7 = (v6 >= 8 || ((0xE3u >> v6) & 1) == 0) && [v5 containeeLayout] == 1;

  return v7;
}

- (void)updateMapViewDisplayOptions
{
  v3 = [(IOSBasedChromeViewController *)self settingsController];
  if ([v3 shouldChangeViewModeForLabels])
  {
    [(IOSBasedChromeViewController *)self _updateViewModeForLabelsDisplayIfNeeded];
  }

  if ([v3 shouldChangeViewModeForTraffic])
  {
    [(IOSBasedChromeViewController *)self _updateViewModeForTrafficDisplayIfNeeded];
  }

  v4 = [(IOSBasedChromeViewController *)self _shouldShowTrafficForViewMode:[(IOSBasedChromeViewController *)self displayedViewMode]];
  v5 = [(ChromeViewController *)self mapView];
  [v5 setShowsTraffic:v4];

  LOBYTE(v5) = [v3 userDesiresLabels];
  LOBYTE(v4) = [v3 userDesiresTraffic];
  v6 = +[MapsAnalyticStateProvider serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039B58;
  block[3] = &unk_1016547B8;
  v8 = v5;
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
  v3 = [(ChromeViewController *)&v9 personalizedItemSourcesForCurrentState];
  v4 = [v3 mutableCopy];

  v5 = [(IOSBasedChromeViewController *)self sharedTripsAnnotationsController];
  v6 = [v5 itemSource];
  [v4 addObject:v6];

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
  v3 = [(ChromeViewController *)self pendingContexts];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ChromeViewController *)self contexts];
  }

  v6 = v5;

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
  v3 = [(IOSBasedChromeViewController *)self view];
  v4 = [v3 window];
  v5 = [(IOSBasedChromeViewController *)self theme];
  [v4 _accessibilitySetInterfaceStyleIntent:{objc_msgSend(v5, "interfaceStyleIntent")}];

  LOBYTE(v5) = self->_transitioningFromImagery;
  v6 = +[MapsLightLevelController sharedController];
  -[IOSBasedChromeViewController updateLightLevelAnimated:lightLevel:](self, "updateLightLevelAnimated:lightLevel:", (v5 & 1) == 0, [v6 currentLightLevel]);

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
  v3 = [(ChromeViewController *)self mapView];
  if (v3)
  {
    v4 = +[MKMapService sharedService];
    v5 = [(ChromeViewController *)self mapViewEnteredForegroundDate];
    v6 = [(ChromeViewController *)self lastMapViewportChangedDate];
    v7 = [v4 mapsDefaultTraitsForMapView:v3 mapViewEnteredForegroundDate:v5 mapViewportChangedDate:v6];

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
  v3 = [(ChromeViewController *)self mapView];
  if (v3)
  {
    v4 = v3;
    [v3 _cartographicConfiguration];

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
  v2 = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
  v3 = [v2 currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 pptTestScrollView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4
{
  v4 = a3;
  if (a4 && ![(IOSBasedChromeViewController *)self pptTestIsTrayType:a4])
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
    v9 = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
    [v9 popLastViewControllerAnimated:v4];
  }
}

- (BOOL)pptTestIsTrayType:(int64_t)a3
{
  v4 = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
  v5 = [v4 currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 pptTestIsTrayType:a3];
  }

  else
  {
    v6 = a3 == 0;
  }

  return v6;
}

- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 < 3)
  {
    v6 = (a3 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
  if ([v7 containeeLayout] == v6)
  {
    v11[0] = @"ContainerLayout";
    v8 = [NSNumber numberWithUnsignedInteger:v6];
    v11[1] = @"ContainerContainee";
    v12[0] = v8;
    v9 = [v7 currentViewController];
    v12[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:v10];
  }

  else
  {
    [v7 setLayoutIfSupported:v6 animated:v4];
  }
}

- (BOOL)pptTestCanUpdateTrayLayout
{
  v2 = [(IOSBasedChromeViewController *)self _ppt_containerViewController];
  v3 = [v2 containeeLayout] != 5 && objc_msgSend(v2, "containeeLayout") != 4;

  return v3;
}

- (ViewModeDelegate)viewModeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModeDelegate);

  return WeakRetained;
}

- (void)mapStylePickerContaineeViewControllerWantsDismissWithViewController:(id)a3
{
  v5 = a3;
  if (sub_10000FA08(self) == 5 || sub_10000FA08(self) == 1)
  {
    [v5 dismissModalViewControllerAnimated:1];
  }

  else
  {
    v4 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
    [v4 popLastViewControllerAnimated:1];
  }

  [(ChromeViewController *)self unregisterAdditionalMapViewDelegate:v5];
}

- (void)mapStylePickerContaineeViewControllerDidChangeMapTypeWithViewController:(id)a3 mapType:(unint64_t)a4 skipConfiguration:(BOOL)a5
{
  v5 = a5;
  if (a4 <= 3)
  {
    v9 = 2;
    v10 = 1;
    v11 = 6;
    if (a4 != 3)
    {
      v11 = 0;
    }

    if (a4 != 2)
    {
      v10 = v11;
    }

    v12 = a4 == 1;
    goto LABEL_14;
  }

  if (a4 > 103)
  {
    v9 = 3;
    v10 = 7;
    if (a4 != 108)
    {
      v10 = 0;
    }

    v12 = a4 == 104;
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

  if (a4 == 4)
  {
    v8 = 5;
  }

  else
  {
    if (a4 == 103)
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
    v14 = [(ChromeViewController *)self mapView];
    v15 = [v14 preferredConfiguration];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [(ChromeViewController *)self mapView];
      v18 = [v17 preferredConfiguration];

      v19 = [(ChromeViewController *)self mapView];
      v20 = v19;
      if (v19)
      {
        [v19 _cartographicConfiguration];
        v21 = v26 != 0;
      }

      else
      {
        v21 = 0;
      }

      v22 = [v18 showsTraffic];
      [MapsSettings setUserDesiresLabels:v21];
      [MapsSettings setUserDesiresTraffic:v22];
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

  [(IOSBasedChromeViewController *)self updateViewMode:v8 animated:1 skipSettingMapConfiguration:v5];
}

- (void)mapStylePickerContaineeViewControllerDismissByGestureWithViewController:(id)a3
{
  v4 = a3;
  [(ChromeViewController *)self setNeedsUpdateComponent:@"lookAroundButton" animated:1];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"weatherOverlay" animated:1];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"floatingControls" animated:1];
  [(ChromeViewController *)self unregisterAdditionalMapViewDelegate:v4];
}

- (void)mapStylePickerContaineeViewControllerPresentDebugPanelIfEnabledWithViewController:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
  [v3 presentMapsDebugControllerIfEnabled];
}

- (void)copy:(id)a3
{
  v4 = a3;
  v5 = [(IOSBasedChromeViewController *)self currentShareItemSource];
  shareItemSourceForCopyAction = self->_shareItemSourceForCopyAction;
  self->_shareItemSourceForCopyAction = v5;

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

- (void)dismissAllModalViewsIfPresentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = sub_10000B11C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v14 = 138412802;
    v15 = self;
    v16 = 2080;
    v17 = "[IOSBasedChromeViewController dismissAllModalViewsIfPresentAnimated:completion:]";
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ %s, %@", &v14, 0x20u);
  }

  v10 = [(IOSBasedChromeViewController *)self presentedViewController];
  if (v10)
  {
    v11 = v10;
    while (1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v12 = [(__CFString *)v11 presentedViewController];

      v11 = v12;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v13 = sub_10000B11C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = self;
      v16 = 2080;
      v17 = "[IOSBasedChromeViewController dismissAllModalViewsIfPresentAnimated:completion:]";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ %s, dismissing Modal! %@", &v14, 0x20u);
    }

    [(__CFString *)v11 dismissViewControllerAnimated:v4 completion:v6];
  }

  else
  {
LABEL_9:
    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (BOOL)isHidingCardsForContext:(id)a3
{
  v4 = a3;
  if ([(IOSBasedChromeViewController *)self isHidingCards])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ChromeViewController *)self pendingContexts];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(ChromeViewController *)self contexts];
    }

    v9 = v8;

    v10 = [v9 indexOfObject:v4];
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

- (id)acquireModernMapTokenForReason:(unint64_t)a3
{
  modernMapTokens = self->_modernMapTokens;
  v8 = @"reason";
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [(MapsTokenStorage *)modernMapTokens tokenWithUserInfo:v5];

  return v6;
}

- (void)_updateModernMapCartographicConfiguration
{
  v3 = [(IOSBasedChromeViewController *)self shouldUseModernMap];
  v11 = 0u;
  v9 = 0u;
  v4 = [(ChromeViewController *)self mapView];
  v5 = v4;
  if (v4)
  {
    [v4 _cartographicConfiguration];
  }

  else
  {
    v11 = 0u;
    v9 = 0u;
  }

  if (v3)
  {
    *(&v10 + 1) = [(IOSBasedChromeViewController *)self modernMapTerrainMode];
    v6 = [(IOSBasedChromeViewController *)self modernMapProjectionType];
  }

  else
  {
    v6 = 1;
    *(&v10 + 1) = 1;
  }

  *&v10 = v6;
  v7 = sub_10000B11C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = *(&v10 + 1);
    *&buf[12] = 2048;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_updateModernMapCartographicConfiguration with terrainMode: %ld projectionType: %ld", buf, 0x16u);
  }

  v8 = [(ChromeViewController *)self mapView];
  *buf = v9;
  *&buf[16] = v10;
  v13 = v11;
  v14 = 0;
  [v8 _setCartographicConfiguration:buf];
}

- (int64_t)modernMapProjectionType
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(MapsTokenStorage *)self->_modernMapTokens tokens];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) userInfo];
        v9 = [v8 objectForKeyedSubscript:@"reason"];

        v10 = [v9 unsignedIntegerValue];
        if (v10)
        {
          v6 = 0;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v2 = [(MapsTokenStorage *)self->_modernMapTokens tokens];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v13 + 1) + 8 * v6) userInfo];
        v8 = [v7 objectForKeyedSubscript:@"reason"];

        v9 = [v8 unsignedIntegerValue];
        if (v9)
        {

          return 0;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)decrementForToken:(id)a3
{
  v4 = a3;
  v5 = [v4 tokenGroupName];
  v6 = [v5 isEqualToString:@"IOSBasedChromeMetros"];

  if (v6)
  {
    v7 = sub_10000B11C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Releasing modern map token: %@", buf, 0xCu);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:self];

    v9 = [(ChromeViewController *)self mapView];

    if (v9)
    {
      [(IOSBasedChromeViewController *)self _updateModernMapCartographicConfiguration];
    }
  }

  else
  {
    v10 = [v4 tokenGroupName];
    v11 = [v10 isEqualToString:@"IOSBasedChromeForceCardsHidden"];

    if (v11 && ![(MapsTokenStorage *)self->_forceCardsHiddenTokenStorage count])
    {
      [(IOSBasedChromeViewController *)self _refreshHiddenCards];
    }
  }

  v12.receiver = self;
  v12.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v12 decrementForToken:v4];
}

- (void)incrementForToken:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v23 incrementForToken:v4];
  v5 = [v4 tokenGroupName];
  v6 = [v5 isEqualToString:@"IOSBasedChromeMetros"];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"reason"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = sub_10000B11C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid modern map token: %@", buf, 0xCu);
      }
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:self];

    v11 = [(ChromeViewController *)self mapView];

    if (v11)
    {
      [(IOSBasedChromeViewController *)self _updateModernMapCartographicConfiguration];
    }

LABEL_8:

    goto LABEL_19;
  }

  v12 = [v4 tokenGroupName];
  v13 = [v12 isEqualToString:@"IOSBasedChromeForceCardsHidden"];

  if (v13 && [(MapsTokenStorage *)self->_forceCardsHiddenTokenStorage count]== 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(ChromeViewController *)self contexts];
    v14 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v8);
          }

          v18 = [(IOSBasedChromeViewController *)self _containerViewControllerWithContext:*(*(&v19 + 1) + 8 * i)];
          [v18 setContaineesHidden:1];
        }

        v15 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }

    goto LABEL_8;
  }

LABEL_19:
}

- (void)chromeNavigationDisplayDidRenderRoute:(id)a3
{
  v5.receiver = self;
  v5.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v5 chromeNavigationDisplayDidRenderRoute:a3];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:3072 onTarget:-[IOSBasedChromeViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (CGRect)popoverPresentationRectForPrintController:(id)a3
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

- (void)printSearchResultFromSession:(id)a3
{
  v4 = a3;
  [(IOSBasedChromeViewController *)self _initializePrintingController];
  [GEOAPPortal captureUserAction:17052 target:0 value:0];
  v10 = [v4 searchFieldItem];
  printController = self->_printController;
  v6 = [v10 searchString];
  v7 = [v4 currentResults];
  v8 = [v4 printedPageTitle];
  v9 = [v4 printedPageSubtitle];

  [(PrintController *)printController printSearchString:v6 searchResults:v7 title:v8 subTitle:v9];
}

- (void)printRoute:(id)a3
{
  v4 = a3;
  [(IOSBasedChromeViewController *)self _initializePrintingController];
  [GEOAPPortal captureUserAction:17052 target:0 value:0];
  printController = self->_printController;
  v7 = [v4 destination];
  v6 = [v7 name];
  [(PrintController *)printController printRoute:v4 searchString:v6];
}

- (void)_initializePrintingController
{
  if (!self->_printController)
  {
    v3 = [PrintController alloc];
    v6 = [(ChromeViewController *)self mapView];
    v4 = [(PrintController *)v3 initWithMapView:v6 delegate:self];
    printController = self->_printController;
    self->_printController = v4;
  }
}

- (void)printCurrentState
{
  v3 = [(IOSBasedChromeViewController *)self _maps_platformController];
  v8 = [v3 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v8 currentRouteCollection];
    v5 = [v4 currentRoute];
    [(IOSBasedChromeViewController *)self printRoute:v5];
  }

  else
  {
    v6 = [(IOSBasedChromeViewController *)self appCoordinator];
    v7 = [v6 baseActionCoordinator];
    v4 = [v7 currentSearchSession];

    [(IOSBasedChromeViewController *)self printSearchResultFromSession:v4];
  }
}

- (void)undo:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self routeCreationContext];
  [v3 pressedUndo];
}

- (void)find:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self coordinator];
  [v3 viewControllerPresentSearchEditing];
}

- (void)removeDroppedPin
{
  v2 = [(IOSBasedChromeViewController *)self baseModeController];
  [v2 removeDroppedPin];
}

- (BOOL)canRemovePin
{
  v2 = [(IOSBasedChromeViewController *)self baseModeController];
  v3 = [v2 hasDroppedPin];

  return v3;
}

- (void)centerMapToUserLocation
{
  v3 = [(ChromeViewController *)self mapView];
  [v3 _stopFlyoverAnimation];

  v4 = [(ChromeViewController *)self mapView];
  [v4 setUserTrackingMode:1 animated:1];
}

- (void)zoomOut
{
  v2 = [(IOSBasedChromeViewController *)self coordinator];
  [v2 zoomOut];
}

- (void)zoomIn
{
  v2 = [(IOSBasedChromeViewController *)self coordinator];
  [v2 zoomIn];
}

- (void)defaultZoom
{
  v2 = [(IOSBasedChromeViewController *)self coordinator];
  [v2 defaultZoom];
}

- (void)snapToNorth
{
  v3 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(IOSBasedChromeViewController *)self lookAroundCoordinator];
    v5 = [v8 dataCoordinator];
    v6 = [v5 lookAroundView];
    [v6 snapToNorth:self];
  }

  else
  {
    v7 = [(ChromeViewController *)self mapView];
    [v7 _stopFlyoverAnimation];

    v8 = [(ChromeViewController *)self mapView];
    [v8 snapToNorth:self];
  }
}

- (BOOL)isSnappedToNorth
{
  v3 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(IOSBasedChromeViewController *)self lookAroundCoordinator];
    v6 = [v5 dataCoordinator];
    v7 = [v6 lookAroundView];
    [v7 presentationYaw];
    v9 = v8;
  }

  else
  {
    v5 = [(ChromeViewController *)self mapView];
    [v5 presentationYaw];
    v9 = v10;
  }

  return fabs(v9) < 0.0001;
}

- (BOOL)canSnapToNorth
{
  v3 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [(ChromeViewController *)self topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)switchMapMode:(id)a3
{
  v7 = [a3 propertyList];
  v4 = [v7 integerValue];
  v5 = [(IOSBasedChromeViewController *)self coordinator];
  v6 = [v5 settingsController];
  [v6 setSelectedViewMode:v4 animated:1];
}

- (void)toggleTraffic
{
  v2 = [(IOSBasedChromeViewController *)self settingsController];
  [v2 toggleTraffic];
}

- (void)toggleLabels
{
  v2 = [(IOSBasedChromeViewController *)self settingsController];
  [v2 toggleLabels];
}

- (BOOL)canExitLookAroundMode
{
  v2 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)canEnterLookAroundMode
{
  v3 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(ChromeViewController *)self mapView];
    v5 = [v4 _lookAroundAvailability] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canEnter3dMode
{
  v3 = [(ChromeViewController *)self mapView];
  v4 = [v3 _mapLayer];

  v5 = [v4 mapType];
  v6 = [(ChromeViewController *)self mapView];
  v7 = [v6 _canEnter3DMode];

  v8 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v5 == 1)
  {
    v10 = 3;
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    v10 = 4;
LABEL_5:
    v11 = [v4 supportsMapType:v10];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  if (v7 & 1 | ((isKindOfClass & 1) == 0))
  {
    v12 = isKindOfClass;
  }

  else
  {
    v12 = (v5 - 3 < 2) | v11;
  }

  return v12 & 1;
}

- (void)validateCommand:(id)a3
{
  v20 = a3;
  if ([v20 action] == "snapToNorth")
  {
    [v20 setState:{-[IOSBasedChromeViewController isSnappedToNorth](self, "isSnappedToNorth")}];
  }

  else
  {
    if ([v20 action] == "switchMapMode:")
    {
      v8 = [v20 propertyList];
      v9 = [v8 integerValue];
      v10 = [(IOSBasedChromeViewController *)self settingsController];
      [v20 setState:{objc_msgSend(v10, "selectedViewMode") == v9}];

      v11 = [(ChromeViewController *)self topContext];
      objc_opt_class();
      LOBYTE(v9) = objc_opt_isKindOfClass();

      if ((v9 & 1) == 0)
      {
        [v20 setAttributes:1];
      }

      goto LABEL_26;
    }

    if ([v20 action] == "removeDroppedPin" && !-[IOSBasedChromeViewController canRemovePin](self, "canRemovePin"))
    {
LABEL_23:
      [v20 setAttributes:4];
      goto LABEL_26;
    }

    if ([v20 action] == "select3dMode")
    {
      v6 = [(IOSBasedChromeViewController *)self coordinator];
      v7 = [v6 is3dModeSelected];
      goto LABEL_25;
    }

    if ([v20 action] != "selectLookAroundMode")
    {
      if ([v20 action] == "toggleLabels")
      {
        v6 = [(IOSBasedChromeViewController *)self settingsController];
        v7 = [v6 showsLabels];
        goto LABEL_25;
      }

      if ([v20 action] == "toggleTraffic")
      {
        v4 = [(IOSBasedChromeViewController *)self settingsController];
        v5 = [v4 showsTraffic];

        if (v5)
        {
          v6 = [(IOSBasedChromeViewController *)self settingsController];
          v7 = [v6 showsTraffic];
LABEL_25:
          [v20 _maps_setUseDisableFeatureTitle:v7];

          goto LABEL_26;
        }
      }

      v12 = [v20 action] == "copy:";
      v13 = v20;
      if (!v12)
      {
        goto LABEL_27;
      }

      v14 = [(IOSBasedChromeViewController *)self firstResponder];
      objc_opt_class();
      v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
      v16 = v15;

      v17 = [v16 _fieldEditor];

      [v17 selectionRange];
      v19 = v18;

      v13 = v20;
      if (v19)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    [v20 _maps_setUseDisableFeatureTitle:{-[IOSBasedChromeViewController canExitLookAroundMode](self, "canExitLookAroundMode")}];
  }

LABEL_26:
  v13 = v20;
LABEL_27:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("find:" == a3 || "defaultZoom" == a3 || "zoomIn" == a3 || "zoomOut" == a3 || "centerMapToUserLocation" == a3)
  {
    v11 = [(ChromeViewController *)self topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_16;
  }

  if ("snapToNorth" == a3)
  {
    v14 = [(IOSBasedChromeViewController *)self canSnapToNorth];
LABEL_31:
    v13 = v14;
    goto LABEL_32;
  }

  if ("createCustomSearchResultForDroppedPinAtCenterPoint" == a3)
  {
    v14 = [(IOSBasedChromeViewController *)self canDropPin];
    goto LABEL_31;
  }

  if ("select3dMode" == a3)
  {
    v14 = [(IOSBasedChromeViewController *)self canEnter3dMode];
    goto LABEL_31;
  }

  if ("selectLookAroundMode" == a3)
  {
    if ([(IOSBasedChromeViewController *)self canEnterLookAroundMode]|| [(IOSBasedChromeViewController *)self canExitLookAroundMode])
    {
      v13 = 1;
      goto LABEL_32;
    }

    v14 = [(IOSBasedChromeViewController *)self _canShowLookAroundButton];
    goto LABEL_31;
  }

  if ("toggleLabels" == a3)
  {
    v11 = [(IOSBasedChromeViewController *)self settingsController];
    isKindOfClass = [v11 canToggleLabels];
  }

  else
  {
    if ("openUserProfile" == a3)
    {
      v16 = [(IOSBasedChromeViewController *)self appCoordinator];
      v17 = [v16 baseActionCoordinator];
      v11 = [v17 currentViewController];

      if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
        {
          v18 = [(ChromeViewController *)self topContext];
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

    if ("toggleTraffic" == a3)
    {
      v11 = [(IOSBasedChromeViewController *)self settingsController];
      isKindOfClass = [v11 canToggleTraffic];
    }

    else
    {
      if ("undo:" != a3)
      {
        if ("redo:" == a3)
        {
          v13 = 0;
          goto LABEL_32;
        }

        v19.receiver = self;
        v19.super_class = IOSBasedChromeViewController;
        v14 = [(IOSBasedChromeViewController *)&v19 canPerformAction:a3 withSender:v6];
        goto LABEL_31;
      }

      v11 = [(IOSBasedChromeViewController *)self routeCreationContext];
      isKindOfClass = [v11 undoEnabled];
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

- (id)_currentLogContextDelegateForSelector:(SEL)a3
{
  v4 = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 fullscreenViewController];
  }

  else
  {
    v5 = 0;
  }

  if (sub_100010C34(v5, &OBJC_PROTOCOL___GEOLogContextDelegate))
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_12;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentContainerViewController);
  v8 = [WeakRetained currentViewController];

  if (!sub_100010C34(v8, &OBJC_PROTOCOL___GEOLogContextDelegate))
  {
    goto LABEL_10;
  }

  v6 = v8;
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
    v4 = [v2 currentMapViewTargetForAnalytics];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)currentUITargetForAnalytics
{
  v2 = [(IOSBasedChromeViewController *)self _currentLogContextDelegateForSelector:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 currentUITargetForAnalytics];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)reportCurrentLocationFailure
{
  v2 = [(IOSBasedChromeViewController *)self interruptionManager];
  [v2 reportCurrentLocationFailure];
}

- (void)showAnnouncementForFlyover:(id)a3
{
  v4 = a3;
  v5 = [(IOSBasedChromeViewController *)self coordinator];
  [v5 showAnnouncementForFlyover:v4];
}

- (void)showFavoritesType:(int64_t)a3
{
  v5 = [(IOSBasedChromeViewController *)self coordinator];
  [v5 viewController:self showFavoritesType:a3];
}

- (void)showTransitLine:(unint64_t)a3 withName:(id)a4
{
  v10 = a4;
  v6 = [MKMapItemIdentifier alloc];
  v7 = [v6 initWithMUID:a3 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
  if (v7)
  {
    v8 = [[IncompleteTransitLineItem alloc] initWithIdentifier:v7 name:v10];
    v9 = [(IOSBasedChromeViewController *)self coordinator];
    [v9 viewController:self selectTransitLineItem:v8 zoomToMapRegion:1];
  }
}

- (void)selectParkedCarAndPerformAction:(int64_t)a3
{
  v5 = +[ParkedCarManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100DB8774;
  v6[3] = &unk_1016547E0;
  v6[4] = self;
  v6[5] = a3;
  [v5 fetchParkedCar:v6];
}

- (void)displayNavShareETA
{
  v3 = [(IOSBasedChromeViewController *)self currentIOSBasedContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(IOSBasedChromeViewController *)self currentIOSBasedContext];
    if (MSPSharedTripSharingAvailable())
    {
      v5 = [v8 route];
      v6 = [v5 transportType];

      if (!v6)
      {
        v7 = [v8 navActionCoordinator];
        [v7 senderShareNavigation:self];
      }
    }
  }
}

- (void)displayNearbySearch
{
  v3 = [(IOSBasedChromeViewController *)self coordinator];
  [v3 viewControllerOpenNearby:self animated:0];
}

- (BOOL)canDropPin
{
  v2 = [(IOSBasedChromeViewController *)self baseModeController];
  v3 = [v2 canDropPin];

  return v3;
}

- (void)createCustomSearchResultForDroppedPinAtCenterPoint
{
  v2 = [(IOSBasedChromeViewController *)self baseModeController];
  [v2 createCustomSearchResultForDroppedPinAtCenterPoint];
}

- (void)createCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = [(IOSBasedChromeViewController *)self baseModeController];
  [v9 createCustomSearchResultForDroppedPinAtPoint:v6 floorOrdinal:v5 animated:{latitude, longitude}];
}

- (id)routeCreationContext
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ChromeViewController *)self contexts];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(ChromeViewController *)self contexts];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)directionsTypeForMapItem:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = +[MKLocationManager sharedLocationManager];
    if ([v8 hasLocation])
    {
      v9 = [v8 lastLocation];
      [v9 coordinate];
      latitude = v10;
      longitude = v12;
    }

    else
    {
      latitude = kCLLocationCoordinate2DInvalid.latitude;
      longitude = kCLLocationCoordinate2DInvalid.longitude;
    }

    v14 = [v6 location];
    if (v14)
    {
      v15 = [v6 location];
      [v15 coordinate];
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v17 = kCLLocationCoordinate2DInvalid.latitude;
      v19 = kCLLocationCoordinate2DInvalid.longitude;
    }

    v20 = [(IOSBasedChromeViewController *)self defaultTransportTypeFinder];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100DB8DE4;
    v21[3] = &unk_101657E40;
    v22 = v7;
    [v20 mkDirectionsTypeForOrigin:1 destination:v21 ignoreMapType:latitude completion:{longitude, v17, v19}];
  }
}

- (void)routeFromSearchResult:(id)a3 toSearchResult:(id)a4 directionsType:(unint64_t)a5 drivePreferences:(id)a6 routeHandle:(id)a7 timePoint:(id)a8 withFeedback:(id)a9 origin:(int64_t)a10 options:(id)a11
{
  v15 = a11;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v18 setSearchResult:v17];

  v19 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v19 setSearchResult:v16];

  v20 = [DirectionItem alloc];
  v24[0] = v18;
  v24[1] = v19;
  v21 = [NSArray arrayWithObjects:v24 count:2];
  if (a5 > 7)
  {
    if (a5 == 8)
    {
      a5 = 5;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a5 - 1 >= 2)
  {
    if (a5 == 4)
    {
      a5 = 3;
      goto LABEL_8;
    }

LABEL_6:
    a5 = 0;
  }

LABEL_8:
  v22 = [(DirectionItem *)v20 initWithItems:v21 transportType:a5];

  v23 = [(IOSBasedChromeViewController *)self coordinator];
  [v23 viewController:self doDirectionItem:v22 withUserInfo:v15];
}

- (void)searchWithSearchInfo:(id)a3 source:(int)a4
{
  v6 = a3;
  if ([v6 isSearchAlongRoute])
  {
    v5 = [(IOSBasedChromeViewController *)self navActionCoordinator];
    [v5 setCurrentSearchInfo:v6];
  }
}

- (void)searchForString:(id)a3 traits:(id)a4 scrollToResults:(BOOL)a5 source:(int)a6
{
  v6 = *&a6;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v11 setSearchString:v10];

  if (!v9)
  {
    v9 = [(IOSBasedChromeViewController *)self currentTraits];
  }

  v15[0] = @"SearchSessionTraitsSource";
  v12 = [NSNumber numberWithInt:v6];
  v15[1] = @"SearchSessionTraits";
  v16[0] = v12;
  v16[1] = v9;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  v14 = [(IOSBasedChromeViewController *)self coordinator];
  [v14 viewController:self doSearchItem:v11 withUserInfo:v13];
}

- (void)searchForExternalURLQuery:(id)a3 coordinate:(CLLocationCoordinate2D)a4 muid:(unint64_t)a5 resultProviderId:(int)a6 contentProvider:(id)a7
{
  v7 = *&a6;
  longitude = a4.longitude;
  latitude = a4.latitude;
  v13 = a7;
  v14 = a3;
  v15 = objc_alloc_init(SearchFieldItem);
  v16 = [[ExternalURLQuery alloc] initWithQuery:v14 coordinate:a5 muid:v7 resultProviderId:v13 contentProvider:latitude, longitude];

  [(SearchFieldItem *)v15 setExternalURLQuery:v16];
  v19 = @"SearchSessionTraitsSource";
  v20 = &off_1016E9E18;
  v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v18 = [(IOSBasedChromeViewController *)self coordinator];
  [v18 viewController:self doSearchItem:v15 withUserInfo:v17];
}

- (void)searchForRouteFromAddress:(id)a3 toAddress:(id)a4 directionsMode:(unint64_t)a5 userInfo:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = objc_alloc_init(SearchFieldItem);
  if ([v10 length])
  {
    [(SearchFieldItem *)v13 setSearchString:v10];
  }

  else
  {
    v14 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v13 setSearchResult:v14];
  }

  v15 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v15 setSearchString:v12];

  if (a5 - 1 > 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_101215C40[a5 - 1];
  }

  v17 = [DirectionItem alloc];
  v21[0] = v13;
  v21[1] = v15;
  v18 = [NSArray arrayWithObjects:v21 count:2];
  v19 = [(DirectionItem *)v17 initWithItems:v18 transportType:v16];

  v20 = [(IOSBasedChromeViewController *)self coordinator];
  [v20 viewController:self doDirectionItem:v19 withUserInfo:v11];
}

- (void)searchForAddressString:(id)a3 source:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v7 setAddressString:v6];

  v11 = @"SearchSessionTraitsSource";
  v8 = [NSNumber numberWithInt:v4];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v10 = [(IOSBasedChromeViewController *)self coordinator];
  [v10 viewController:self doSearchItem:v7 withUserInfo:v9];
}

- (void)searchForAddress:(id)a3 source:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v7 setAddress:v6];

  v11 = @"SearchSessionTraitsSource";
  v8 = [NSNumber numberWithInt:v4];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v10 = [(IOSBasedChromeViewController *)self coordinator];
  [v10 viewController:self doSearchItem:v7 withUserInfo:v9];
}

- (void)searchForSearchItem:(id)a3 traits:(id)a4 source:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  v17 = @"SearchSessionTraitsSource";
  v10 = [NSNumber numberWithInt:v5];
  v18 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  if (v9)
  {
    v12 = [v11 mutableCopy];
    [v12 setObject:v9 forKeyedSubscript:@"SearchSessionTraits"];

    v11 = v12;
  }

  v13 = [(IOSBasedChromeViewController *)self coordinator];

  if (v13)
  {
    v14 = [(IOSBasedChromeViewController *)self coordinator];
LABEL_7:
    v16 = v14;
    [v14 viewController:self doSearchItem:v8 withUserInfo:v11];

    goto LABEL_8;
  }

  v15 = [(IOSBasedChromeViewController *)self navActionCoordinator];

  if (v15)
  {
    v14 = [(IOSBasedChromeViewController *)self navActionCoordinator];
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
    v6 = [(ChromeViewController *)self mapView];
    [v6 setShowsUserLocation:1];
  }

  else
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 showLocationServicesAlertWithError:v5];
  }

  return v4;
}

- (void)cleanUIandHideSearch
{
  [(IOSBasedChromeViewController *)self resetForLaunchURLWithOptions:0];
  v3 = [(IOSBasedChromeViewController *)self coordinator];
  [v3 viewControllerClosed:0 animated:0];
}

- (void)_teardownViewHierarchyWithActionCoordinator:(id)a3 shouldAnimate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[UIApplication sharedMapsDelegate];
  v8 = [v7 currentInterruptionKind];

  if (v8 != 5)
  {
    [(IOSBasedChromeViewController *)self dismissAllModalViewsIfPresentAnimated:v4 completion:0];
  }

  v9 = +[UIPrintInteractionController sharedPrintController];
  [v9 dismissAnimated:v4];

  [(ChromeViewController *)self popToRootContextAnimated:v4 completion:0];
  [v6 viewControllerPresentSearchEndEditingAnimated:v4];
  [v6 viewControllerClosed:0 animated:v4];
  v10 = [v6 searchPinsManager];

  [v10 clearLinkedPlacesAndPolygon];

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
  v5 = [v4 currentInterruptionKind];

  if (v5 != 5)
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
  v3 = [(ChromeViewController *)self mapView];
  v4 = [v3 _mapLayer];

  if ([v4 mapType] - 3 <= 1)
  {
    v5 = [(ChromeViewController *)self mapView];
    [v5 _stopFlyoverAnimation];

    v6 = [(ChromeViewController *)self mapView];
    [v6 _exitARMode];

    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setMapsIsShowingTour:0];

    v8 = [(IOSBasedChromeViewController *)self appCoordinator];
    [v8 exitFlyover];

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

- (void)resetForLaunchURLWithOptions:(id)a3
{
  v4 = a3;
  [(IOSBasedChromeViewController *)self coordinator];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100DBA120;
  v10 = &unk_101661A90;
  v5 = v11 = self;
  v12 = v5;
  [UIViewController _performWithoutDeferringTransitions:&v7];
  v6 = [v4 objectForKeyedSubscript:{_MKLaunchOptionsPreserveSearchResultsKey, v7, v8, v9, v10, v11}];

  LOBYTE(v4) = [v6 BOOLValue];
  if ((v4 & 1) == 0)
  {
    [v5 endSearch];
  }
}

- (void)resetForEditingShortcut:(id)a3
{
  v4 = a3;
  v6 = [(IOSBasedChromeViewController *)self coordinator];
  [(IOSBasedChromeViewController *)self _teardownViewHierarchyWithActionCoordinator:v6 shouldAnimate:1];
  v5 = [ShortcutEditSession editSessionWithShortcut:v4];

  [v6 viewController:self editShortcut:v5];
}

- (id)navActionCoordinator
{
  v2 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 actionCoordinator];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)lookAroundCoordinator
{
  v2 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 actionCoordinator];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)shouldStartRedoSearch
{
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v5 = [(ChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      [v5 searchRedoFloatingControlPressed];
    }

    v3 = [(IOSBasedChromeViewController *)self baseModeController];
    v4 = [v3 actionCoordinator];
    [v4 refreshCurrentSearch];
  }
}

- (void)openUserProfile
{
  v2 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v2 openUserProfile];
}

- (void)selectLookAroundMode
{
  v3 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(IOSBasedChromeViewController *)self enterLookAroundPIP];
  }

  else
  {
    v5 = [(IOSBasedChromeViewController *)self lookAroundCoordinator];
    [v5 exitLookAround];
  }
}

- (void)exitLookAround
{
  v2 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v2 exitLookAround];
}

- (void)enterLookAroundForMapItem:(id)a3 isMarkedLocation:(BOOL)a4 lookAroundView:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v8 window];
  [v8 bounds];
  [v10 convertRect:v8 fromView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v20 = [MKLookAroundEntryPoint entryPointWithMapItem:v9 isMarkedLocation:v5 wantsCloseUpView:1 cameraFrameOverride:0 triggerAction:6060];

  v19 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v19 enterLookAroundWithEntryPoint:v20 lookAroundView:v8 showsFullScreen:1 originFrame:{v12, v14, v16, v18}];
}

- (void)enterLookAroundPIP:(id)a3
{
  v26 = a3;
  v4 = [(IOSBasedChromeViewController *)self coordinator];
  v5 = [v4 containerViewController];
  v6 = [v5 view];

  if (v26)
  {
    [v26 bounds];
    [v6 convertRect:v26 fromView:?];
  }

  else
  {
    [v6 frame];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = [(IOSBasedChromeViewController *)self appCoordinator];
  v16 = [v15 baseActionCoordinator];
  v17 = [v16 currentMapItem];

  if (([v17 _hasLookAroundStorefront] & 1) == 0)
  {
    v18 = [(ChromeViewController *)self mapView];
    v19 = [MKPlacemark alloc];
    [v18 centerCoordinate];
    v20 = [v19 initWithCoordinate:?];
    v21 = [[MKMapItem alloc] initWithPlacemark:v20];

    v17 = v21;
  }

  v22 = [MKLookAroundEntryPoint entryPointWithMapItem:v17 triggerAction:6061];
  [GEOAPPortal captureUserAction:6061 target:[(IOSBasedChromeViewController *)self currentUITargetForAnalytics] value:0];
  v23 = [(IOSBasedChromeViewController *)self coordinator];
  v24 = [v23 containerViewController];
  [v24 setContaineesHidden:1];

  v25 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v25 enterLookAroundWithEntryPoint:v22 lookAroundView:0 showsFullScreen:0 originFrame:{v11, v12, v13, v14}];
}

- (void)select3dMode
{
  v2 = [(IOSBasedChromeViewController *)self coordinator];
  [v2 select3dMode];
}

- (void)setLocationPulseEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(ChromeViewController *)self mapView];
  [v4 _setLocationPulseEnabled:v3];
}

- (BOOL)locationPulseEnabled
{
  v2 = [(ChromeViewController *)self mapView];
  v3 = [v2 _isLocationPulseEnabled];

  return v3;
}

- (void)debugController:(id)a3 choseTraceAtPath:(id)a4 startNav:(BOOL)a5
{
  v8 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100DBA974;
  v13[3] = &unk_101660CE8;
  v16 = a5;
  v14 = a4;
  v15 = self;
  v9 = v14;
  v10 = objc_retainBlock(v13);
  v11 = [v8 presentingViewController];

  if (v11)
  {
    v12 = [v8 presentingViewController];
    [v12 dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    (v10[2])(v10);
  }
}

- (id)allVisibleMapViewsButNotCarPlayForDebugController:(id)a3
{
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = [v3 allVisibleMapViewsButNotCarPlay];

  return v4;
}

- (id)allVisibleMapViewsForDebugController:(id)a3
{
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = [v3 allVisibleMapViews];

  return v4;
}

- (void)presentMapsDebugControllerIfEnabled
{
  v2 = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
  [v2 presentMapsDebugControllerIfEnabled];
}

- (void)setSuggestedApplicationState:(int)a3
{
  LODWORD(v3) = a3;
  v5 = [(IOSBasedChromeViewController *)self appCoordinator];
  v6 = [v5 isNavigationTurnByTurnOrStepping];

  if (v6)
  {
    v3 = 2;
  }

  else
  {
    v7 = [(IOSBasedChromeViewController *)self appCoordinator];
    v8 = [v7 isRoutePlanningPresented];

    if (v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = v3;
    }
  }

  v9 = [(ChromeViewController *)self mapView];
  [v9 _setApplicationState:v3];
}

- (void)setNeedsUserActivityUpdate
{
  v2 = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
  [v2 setNeedsUserActivityUpdate];
}

- (BOOL)willMoveToOrFromSecureLockScreenUI:(BOOL)a3
{
  v3 = a3;
  self->_isTransitioningToLockScreen = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(ChromeViewController *)self contexts];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (sub_100010C34(v12, &OBJC_PROTOCOL___LockScreenProtocol))
        {
          if (v3)
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

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v3 && [(IOSBasedChromeViewController *)self _isCurrentContainerChromeOwned])
  {
    v13 = [(IOSBasedChromeViewController *)self cardsOverlay];
    [v13 willBeginDisplayingInSecureLockScreen];
  }

  if (v9)
  {
    [(IOSBasedChromeViewController *)self handleMoveToOrFromSecureLockscreenUI:v3];
    return 1;
  }

  else
  {
    self->_isTransitioningToLockScreen = 0;
    return !v3;
  }
}

- (BOOL)_shouldShowTrafficForViewMode:(int64_t)a3
{
  if (a3 == 7)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(IOSBasedChromeViewController *)self settingsController];
    v6 = [v5 userDesiresTraffic];
    v7 = 0x57u >> (a3 + 1);
    if ((a3 + 1) > 6)
    {
      LOBYTE(v7) = 0;
    }

    if (((a3 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v6)
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
  v3 = [(IOSBasedChromeViewController *)self displayedViewMode];
  v4 = [(IOSBasedChromeViewController *)self settingsController];
  v5 = [v4 shouldChangeViewModeForTraffic];

  if (v5)
  {
    switch(v3)
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
  v3 = [(IOSBasedChromeViewController *)self displayedViewMode];
  v4 = [(IOSBasedChromeViewController *)self settingsController];
  v5 = [v4 shouldChangeViewModeForLabels];

  if (v5)
  {
    v6 = v3 - 1;
    if (v3 - 1) <= 5 && ((0x33u >> v6))
    {
      v7 = qword_101215C10[v6];

      [(IOSBasedChromeViewController *)self setViewMode:v7 animated:1];
    }
  }
}

- (void)updateLightLevelAnimated:(BOOL)a3 lightLevel:(int64_t)a4
{
  LODWORD(v5) = a3;
  if (![(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
  {
    if (a4)
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

    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_14;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(IOSBasedChromeViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_12;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_12:

LABEL_14:
    v14 = v13;
    if (a4 >= 3)
    {
      v15 = [NSString stringWithFormat:@"<Unknown: %ld>", a4];
    }

    else
    {
      v15 = off_101654870[a4];
    }

    *buf = 138543618;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] updateLightLevelAnimated with lightLevel: %@", buf, 0x16u);

LABEL_18:
    if (![(IOSBasedChromeViewController *)self _isNavigationMode])
    {
      v16 = [(IOSBasedChromeViewController *)self viewIfLoaded];
      v17 = [v16 window];
      v18 = [v17 traitCollection];
      v19 = [v18 copy];

      a4 = [v19 userInterfaceStyle];
    }

    self->_interfaceStyleForLight = 2 * (a4 == 2);
    v20 = sub_10004F508();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v21 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(IOSBasedChromeViewController *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_26;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_26:

    *buf = 138543618;
    v31 = v26;
    v32 = 1024;
    LODWORD(v33) = a4 == 2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] Updating map view to show night mode: %d", buf, 0x12u);

LABEL_27:
    v27 = [GroupAnimation animationForAnimatedFlag:v5];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100DBB68C;
    v28[3] = &unk_101661AE0;
    v28[4] = self;
    v29 = a4 == 2;
    [v27 addAnimations:v28 completion:0];
    [v27 runWithDuration:196608 delay:2.0 options:0.0];
  }
}

- (void)updateThemeForVisualEffectStyle:(unint64_t)a3
{
  v4 = [(IOSBasedChromeViewController *)self theme];
  [v4 updateVisualEffectStyleIfNeeded:a3];
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

- (void)browseVenueChromeOverlayDidSelectFocusedVenueWithOverlay:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self venuesManager];
  [v3 presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:1];
}

- (void)virtualGarageDidUpdate:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DBB8DC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didUpdateForcedExploreMapConfiguration:(BOOL)a3
{
  if (a3 && ![(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
  {
    v4 = [(ChromeViewController *)self mapView];
    [v4 setOverrideUserInterfaceStyle:0];

    v6 = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
    v5 = [v6 window];
    [v5 setOverrideUserInterfaceStyle:0];
  }
}

- (void)updateViewMode:(int64_t)a3 animated:(BOOL)a4 preserveMapSelection:(BOOL)a5
{
  v5 = a4;
  if (a5)
  {
    v8 = [(ChromeViewController *)self mapSelectionManager];
    v12 = [v8 selectionStateIncludingCamera:0 includeNotCustomLabelMarkers:1];

    v9 = [(ChromeViewController *)self mapSelectionManager];
    [v9 setIgnoreSelectionChanges:1];

    [(IOSBasedChromeViewController *)self updateViewMode:a3 animated:v5];
    if (v12)
    {
      v10 = [(ChromeViewController *)self mapSelectionManager];
      [v10 restoreSelectionState:v12 animated:0 restoreRegion:0 notifyDelegate:0];
    }

    v11 = [(ChromeViewController *)self mapSelectionManager];
    [v11 setIgnoreSelectionChanges:0];
  }

  else
  {

    [IOSBasedChromeViewController updateViewMode:"updateViewMode:animated:" animated:?];
  }
}

- (void)updateViewMode:(int64_t)displayedViewMode animated:(BOOL)a4 skipSettingMapConfiguration:(BOOL)a5
{
  v6 = a4;
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
      v15 = off_101654828[v14];
    }

    else
    {
      v15 = [NSString stringWithFormat:@"<Unknown: %ld>", displayedViewMode];
    }

    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v15;
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
    v17 = [(IOSBasedChromeViewController *)self modernMapProjectionType];
  }

  else
  {
    v17 = *&buf[16];
  }

  *&buf[16] = v17;
  if ([(IOSBasedChromeViewController *)self shouldUseModernMap])
  {
    v18 = [(IOSBasedChromeViewController *)self modernMapTerrainMode];
  }

  else
  {
    v18 = *&buf[24];
  }

  v19 = self->_displayedViewMode;
  *&buf[24] = v18;
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
  if (!a5)
  {
    v23 = [(ChromeViewController *)self mapView];
    v38[0] = *buf;
    v38[1] = *&buf[16];
    v38[2] = v45;
    v39 = v46;
    [v23 _setCartographicConfiguration:v38 animated:v6];

    v24 = [(IOSBasedChromeViewController *)self _shouldShowTrafficForViewMode:displayedViewMode];
    v25 = [(ChromeViewController *)self mapView];
    [v25 setShowsTraffic:v24];
  }

  v26 = [(IOSBasedChromeViewController *)self userLocationView];
  [v26 setViewMode:displayedViewMode];

  self->_interfaceStyleForMapType = 0;
  [(IOSBasedChromeViewController *)self _updateMapViewWithEVChargingConfig];
  v27 = [(IOSBasedChromeViewController *)self _maps_mapsSceneDelegate];
  v28 = [v27 window];

  if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
  {
LABEL_63:
    v31 = 0;
    v30 = 0;
    goto LABEL_65;
  }

  v29 = [(ChromeViewController *)self mapView];
  v30 = v29;
  if (v29)
  {
    [v29 _cartographicConfiguration];

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
  v32 = [(ChromeViewController *)self mapView];
  [v32 setOverrideUserInterfaceStyle:v31];

  [v28 setOverrideUserInterfaceStyle:v30];
  [(IOSBasedChromeViewController *)self updateThemeViewAndControllers];
  v33 = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    [v33 chromeViewController:self didUpdateViewMode:displayedViewMode];
  }

  else
  {
    v34 = [(IOSBasedChromeViewController *)self viewModeDelegate];
    [v34 chromeViewController:self didUpdateViewMode:displayedViewMode];
  }

  [(IOSBasedChromeViewController *)self setNeedsStatusBarAppearanceUpdate];
  v35 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  [v35 setMapViewMode:displayedViewMode];

  v36 = [(ChromeViewController *)self mapView];
  [MapsAnalyticStateProvider updateMapViewInformation:v36];

  [MapsAnalyticStateProvider updateMapViewViewMode:displayedViewMode];
  [(IOSBasedChromeViewController *)self _updateFloatingControlsDidChangePitching:0 animated:0];
}

- (void)_updateMapViewResponderTargetForObject:(id)a3
{
  v7 = a3;
  v4 = sub_100010C34(v7, &OBJC_PROTOCOL___MapViewResponderHandling);
  v5 = [(IOSBasedChromeViewController *)self mapViewResponder];
  if (v4)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  [v5 setTarget:v6];
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
    v4 = [(ChromeViewController *)self contexts];
    v5 = [v4 reverseObjectEnumerator];

    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
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
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_updateInnerLayoutGuideWithTopViewController:(id)a3
{
  v17 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v17 view], v4 = objc_claimAutoreleasedReturnValue(), -[IOSBasedChromeViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isDescendantOfView:", v5), v5, v4, v6))
  {
    v7 = [v17 innerLayoutGuide];
  }

  else
  {
    v8 = [(IOSBasedChromeViewController *)self cardsOverlay];
    v9 = [v8 currentViewController];

    if (v9)
    {
      v10 = [(IOSBasedChromeViewController *)self cardsOverlay];
      [v10 innerLayoutGuide];
    }

    else
    {
      v10 = [(ChromeViewController *)self overlayController];
      [v10 contentLayoutGuide];
    }
    v7 = ;
  }

  if (self->_innerLayoutGuideConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    innerLayoutGuideConstraints = self->_innerLayoutGuideConstraints;
    self->_innerLayoutGuideConstraints = 0;
  }

  if (v7)
  {
    v12 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    LODWORD(v13) = 1148846080;
    v14 = [v12 _maps_constraintsEqualToEdgesOfLayoutGuide:v7 priority:v13];
    v15 = [v14 allConstraints];
    v16 = self->_innerLayoutGuideConstraints;
    self->_innerLayoutGuideConstraints = v15;

    [NSLayoutConstraint activateConstraints:self->_innerLayoutGuideConstraints];
  }
}

- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = IOSBasedChromeViewController;
  v9 = a4;
  [(ChromeViewController *)&v17 contextStackDidUpdateFrom:a3 to:v9 withAnimation:v8];
  v10 = [v9 lastObject];

  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 customContainerViewController];
  }

  else
  {
    v11 = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100DBCA14;
  v14[3] = &unk_10165EB30;
  v14[4] = self;
  v15 = v11;
  v16 = v10;
  v12 = v10;
  v13 = v11;
  [v8 addCompletion:v14];
}

- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100DBCC00;
  v12[3] = &unk_101661B18;
  v12[4] = self;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v8 addPreparation:v12];
  v11.receiver = self;
  v11.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v11 contextStackWillUpdateFrom:v10 to:v9 withAnimation:v8];
}

- (BOOL)_internal_createPostMapFullyDrawnOverlaysIfNeeded
{
  v3 = [(ChromeViewController *)self mapView];

  if (!v3)
  {
    return v3 != 0;
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
    v8 = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(IOSBasedChromeViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

    *buf = 138543362;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Creating map-render-dependent overlays", buf, 0xCu);
  }

  v14 = [(IOSBasedChromeViewController *)self mapScaleOverlay];

  if (!v14)
  {
    v15 = objc_alloc_init(_TtC4Maps21MapScaleChromeOverlay);
    mapScaleOverlay = self->_mapScaleOverlay;
    self->_mapScaleOverlay = v15;

    [(MapScaleChromeOverlay *)self->_mapScaleOverlay setMapViewProvider:self];
    v17 = [(ChromeViewController *)self overlayController];
    v18 = self->_mapScaleOverlay;
    v19 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [v17 addOverlay:v18 inLayoutGuide:v19];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"mapScale" animated:0];
  }

  v20 = [(IOSBasedChromeViewController *)self browseVenueOverlay];

  if (!v20)
  {
    v21 = objc_alloc_init(_TtC4Maps24BrowseVenueChromeOverlay);
    [(IOSBasedChromeViewController *)self setBrowseVenueOverlay:v21];

    v22 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    [v22 setDelegate:self];

    v23 = [(ChromeViewController *)self mapView];
    v24 = [v23 mapType];
    v25 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    [v25 setDisplayedMapType:v24];

    v26 = [(IOSBasedChromeViewController *)self venuesManager];
    v27 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    [v26 addChangeObserver:v27];

    v28 = [(ChromeViewController *)self overlayController];
    v29 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    v30 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [v28 addOverlay:v29 inLayoutGuide:v30];

    v31 = [(IOSBasedChromeViewController *)self venuesManager];
    [(ChromeViewController *)self registerAdditionalMapViewDelegate:v31];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"floatingSearchButton" animated:0];
  }

  return v3 != 0;
}

- (BOOL)_internal_createPostLaunchOverlaysIfNeeded
{
  v3 = [(IOSBasedChromeViewController *)self _appearState];
  if (v3 != 2)
  {
    return v3 == 2;
  }

  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_11;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(IOSBasedChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Creating post-launch overlays", buf, 0xCu);
  }

  v11 = [(IOSBasedChromeViewController *)self weatherOverlay];

  if (!v11)
  {
    v12 = objc_alloc_init(WeatherOverlay);
    [(IOSBasedChromeViewController *)self setWeatherOverlay:v12];

    v13 = [(IOSBasedChromeViewController *)self weatherOverlay];
    [v13 setMapViewProvider:self];

    v14 = [(ChromeViewController *)self overlayController];
    v15 = [(IOSBasedChromeViewController *)self weatherOverlay];
    v16 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [v14 addOverlay:v15 inLayoutGuide:v16];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"weatherOverlay" animated:0];
  }

  v17 = [(IOSBasedChromeViewController *)self lookAroundOverlay];

  if (!v17)
  {
    v18 = objc_alloc_init(LookAroundChromeOverlay);
    [(IOSBasedChromeViewController *)self setLookAroundOverlay:v18];

    v19 = [(IOSBasedChromeViewController *)self lookAroundOverlay];
    [v19 setDelegate:self];

    v20 = [(ChromeViewController *)self overlayController];
    v21 = [(IOSBasedChromeViewController *)self lookAroundOverlay];
    v22 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [v20 addOverlay:v21 inLayoutGuide:v22];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"lookAroundButton" animated:0];
  }

  v23 = [(IOSBasedChromeViewController *)self redoSearchOverlay];

  if (!v23)
  {
    v24 = objc_alloc_init(_TtC4Maps23RedoSearchChromeOverlay);
    [(IOSBasedChromeViewController *)self setRedoSearchOverlay:v24];

    v25 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    [v25 setDelegate:self];

    v26 = [(ChromeViewController *)self overlayController];
    v27 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    v28 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [v26 addOverlay:v27 inLayoutGuide:v28];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"floatingSearchButton" animated:0];
  }

  if (!self->_pedestrianARSessionStateManager && +[PedestrianARSessionTask isPedestrianARModeSupported])
  {
    v29 = [(IOSBasedChromeViewController *)self appCoordinator];
    v30 = [v29 platformController];
    v31 = [v30 pedestrianARSessionStateManager];
    pedestrianARSessionStateManager = self->_pedestrianARSessionStateManager;
    self->_pedestrianARSessionStateManager = v31;

    [(PedestrianARSessionStateManager *)self->_pedestrianARSessionStateManager addObserver:self];
  }

  return v3 == 2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v13 viewDidAppear:a3];
  [(IOSBasedChromeViewController *)self createScreenshotService];
  [(IOSBasedChromeViewController *)self _internal_createPostLaunchOverlaysIfNeeded];
  v4 = [(ChromeViewController *)self mapView];
  v5 = [v4 _isInactive];

  if (v5)
  {
    v6 = sub_10000B11C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(IOSBasedChromeViewController *)self _internal_createPostMapFullyDrawnOverlaysIfNeeded];
      goto LABEL_13;
    }

    v7 = self;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_11;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(IOSBasedChromeViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Map is inactive at viewDidAppear, force-create all map-render-dependent overlays", buf, 0xCu);

    goto LABEL_12;
  }

LABEL_13:
  [(ChromeViewController *)self updateComponentsIfNeeded];
}

- (void)showRedoSearchOverlay:(BOOL)a3
{
  v3 = a3;
  [(ChromeViewController *)self setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
  v5 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
  v8 = v5;
  if (v3)
  {
    [v5 updateSearchOverlayWithState:0];

    v6 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    [v6 shouldHideFloatingControl:0 animated:1];

    v8 = [(IOSBasedChromeViewController *)self baseModeController];
    v7 = [v8 actionCoordinator];
    [v7 refreshCurrentSearch];
  }

  else
  {
    [v5 updateSearchOverlayWithState:1];
  }
}

- (void)setSearchHereFloatingControlBottomPadding:(double)a3
{
  v4 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
  [v4 layoutSearchHereFloatingControlWithHeight:a3];
}

- (BOOL)_shouldShowBrowseVenueFloatingControl
{
  v3 = [(ChromeViewController *)self topContext];
  v4 = [(ChromeViewController *)self topContext];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v3 permitsBrowseVenueFloatingControl];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldShowSearchFloatingControl
{
  v3 = [(ChromeViewController *)self topContext];
  v4 = [(ChromeViewController *)self topContext];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v3 shouldShowSearchFloatingControl];
  }

  else
  {
    v7 = [(ChromeViewController *)self topContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(IOSBasedChromeViewController *)self baseModeController];
      v9 = [v8 actionCoordinator];
      v6 = [v9 shouldShowSearchOverlay];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)dismissLastVenuesPlaceCardForVenuesManager:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v3 dismissLastVenuePlaceCard];
}

- (id)topmostContaineeForVenuesManager:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  v4 = [v3 currentViewController];

  return v4;
}

- (void)venuesManager:(id)a3 presentPlaceCardForMapItem:(id)a4 addToHistory:(BOOL)a5 presentationActionSource:(unint64_t)a6
{
  v7 = a5;
  v9 = a4;
  v10 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v10 displayPlaceCardForMapItem:v9 addToHistory:v7 presentationActionSource:a6];
}

- (void)venuesManager:(id)a3 presentFloorCardViewController:(id)a4
{
  v8 = a4;
  v5 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  v6 = [v5 currentViewController];

  if (v6 != v8)
  {
    v7 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
    [v7 presentController:v8 animated:1];
  }
}

- (void)venuesManager:(id)a3 dismissFloorCardViewController:(id)a4
{
  v9 = a4;
  v5 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  v6 = [v5 currentViewController];

  v7 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  v8 = v7;
  if (v6 == v9)
  {
    [v7 popLastViewControllerAnimated:1];
  }

  else
  {
    [v7 removeControllerFromStack:v9];
  }
}

- (void)floatingControlsOverlayDidTapTTRButton:(id)a3
{
  v4 = a3;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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
      v9 = [(IOSBasedChromeViewController *)v6 performSelector:"accessibilityIdentifier"];
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
    *buf = 138543362;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Tapped TTR floating control button", buf, 0xCu);
  }

  v12 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  v13 = [v12 currentViewController];
  v14 = objc_opt_respondsToSelector();

  v15 = sub_10000B11C();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((v14 & 1) == 0)
  {
    if (!v16)
    {
LABEL_33:

      v31 = +[MapsRadarController sharedInstance];
      [v31 launchTTR];
      goto LABEL_34;
    }

    v23 = self;
    if (!v23)
    {
      v28 = @"<nil>";
      goto LABEL_32;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(IOSBasedChromeViewController *)v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_27;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_27:

LABEL_32:
    *buf = 138543362;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR from floating control", buf, 0xCu);

    goto LABEL_33;
  }

  if (v16)
  {
    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_29;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(IOSBasedChromeViewController *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_19;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_19:

LABEL_29:
    v29 = [(IOSBasedChromeViewController *)v17 _currentContainerViewController];
    v30 = [v29 currentViewController];
    *buf = 138543618;
    v34 = v22;
    v35 = 2112;
    v36 = v30;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handing off to %@ to handle TTR button", buf, 0x16u);
  }

  v31 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  v32 = [v31 currentViewController];
  [v32 floatingControlsOverlayDidTapTTRButton:v4];

LABEL_34:
}

- (void)floatingControlsOverlayDidTapRefreshCurrentSearch:(id)a3
{
  v4 = [(IOSBasedChromeViewController *)self baseModeController];
  v3 = [v4 actionCoordinator];
  [v3 refreshCurrentSearch];
}

- (void)floatingControlsOverlayDidTapExit3DMode:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self coordinator];
  [v3 exit3dMode];
}

- (void)floatingControlsOverlayDidTapEnter3DMode:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self coordinator];
  [v3 select3dMode];
}

- (void)floatingControlsOverlay:(id)a3 didTapEnterPedestrianARFromButton:(id)a4
{
  v5 = [(IOSBasedChromeViewController *)self topIOSBasedContext:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
    [v7 enterPedestrianAR];
  }
}

- (void)floatingControlsOverlayDidTapOpenUserProfile:(id)a3
{
  v3 = [(IOSBasedChromeViewController *)self appCoordinator];
  [v3 openUserProfile];
}

- (void)floatingControlsOverlayDidTapOpenSettings:(id)a3
{
  v4 = a3;
  v5 = [_TtC4Maps37MapStylePickerContaineeViewController alloc];
  v6 = [(ChromeViewController *)self mapView];
  v7 = [(MapStylePickerContaineeViewController *)v5 initWithMapView:v6 delegate:self];

  v8 = [(IOSBasedChromeViewController *)self appCoordinator];
  v9 = [v8 baseActionCoordinator];
  [(ContaineeViewController *)v7 setContaineeDelegate:v9];

  [(ChromeViewController *)self registerAdditionalMapViewDelegate:v7];
  if (sub_10000FA08(v7) == 5 || sub_10000FA08(v7) == 1)
  {
    [(MapStylePickerContaineeViewController *)v7 setModalPresentationStyle:7];
    v10 = [v4 floatingControlsViewController];
    v11 = [v10 settingsButtonPopoverSourceView];
    v12 = [(MapStylePickerContaineeViewController *)v7 popoverPresentationController];
    [v12 setSourceItem:v11];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100DBE2A4;
    v17[3] = &unk_101654798;
    v18 = v4;
    v13 = [UIViewControllerTransition zoomWithOptions:0 sourceViewProvider:v17];
    [(MapStylePickerContaineeViewController *)v7 setPreferredTransition:v13];

    v14 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
    [v14 _maps_topMostPresentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v15 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
    [v15 presentController:v7 animated:1];
  }

  v16 = +[MKMapService sharedService];
  [v16 captureUserAction:5001 onTarget:-[IOSBasedChromeViewController currentMapViewTargetForAnalytics](self eventValue:{"currentMapViewTargetForAnalytics"), 0}];
}

- (void)_updateFloatingControlsDidChangePitching:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];

  if (!v7)
  {
    return;
  }

  v55 = v5;
  v8 = [(ChromeViewController *)self mapView];
  v9 = [(IOSBasedChromeViewController *)self _desiredFloatingControlsForCurrentState];
  v10 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  v11 = [v10 floatingControlsViewController];
  v12 = [v11 visibleControls];

  if (sub_10000FA08(self) == 5)
  {
    v13 = v12 & ~v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = v9 & 0xFFFFFFFFFFFFFE7FLL;
  v15 = [v8 _lookAroundAvailability];
  if (v15 == 2)
  {
    v14 = v9;
  }

  if (v15 == 2 && (v9 & 0x80) != 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 | 0x80;
  }

  [MapsAnalyticStateProvider updateButtonsInformationLookAround:?];
  v17 = v14 & 0xFFFFFFFFFFFFFEFFLL;
  v57 = v4;
  if (-[PedestrianARSessionStateManager shouldShowPedestrianAR](self->_pedestrianARSessionStateManager, "shouldShowPedestrianAR") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 BOOLForKey:@"PedestrianARForceShowAffordanceKey"], v18, v19))
  {
    v17 |= v9 & 0x100;
  }

  else
  {
    v16 |= 0x100uLL;
  }

  v20 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  v21 = [v20 compassEnabled];

  v22 = 4096;
  if (!v21)
  {
    v22 = 0;
  }

  v23 = v22 | v17 & 0xFFFFFFFFFFFFEFFFLL;
  if (v21)
  {
    v24 = v16;
  }

  else
  {
    v24 = v16 | 0x1000;
  }

  v25 = [(IOSBasedChromeViewController *)self displayedViewMode];
  v53 = (v25 - 1) & 0xFFFFFFFFFFFFFFFALL;
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
  v28 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v30 = 0;
  if (isKindOfClass)
  {
    v31 = [(ChromeViewController *)self topContext];
    v30 = [v31 actionCoordinator];
  }

  v32 = +[SettingsController deviceSupportsGlobe];
  v33 = [v8 _isPitched];
  if (!v32)
  {
    [v8 _mapLayer];
    v42 = v41 = v30;
    v54 = [v42 isPitchable];

    v43 = v41;
    v44 = [v41 isExiting3dMode];
    v45 = !v55;
    if ((v25 - 7) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v45 = 0;
    }

    if (v45 || ((v33 ^ 1 | v44) & 1) == 0)
    {
      v27 |= v9 & 0x10;
      v24 |= 0x20uLL;
    }

    else
    {
      v46 = [v8 _canEnter3DModeFlyover];
      v47 = v46;
      if ((v25 - 1) < 2)
      {
        v40 = v57;
        if (v46)
        {
          v24 |= 0x10uLL;
          v27 |= v9 & 0x20;
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

      if ((v25 - 5) > 1)
      {
        v24 |= 0x30uLL;
      }

      else
      {
        v48 = [v41 is3dModeSelected];
        if (v55 && (v48 & 1) == 0)
        {
          if (((v47 | v54) & 1) == 0)
          {
            v24 |= 0x30uLL;
          }

          if (v25 == 5)
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

  v56 = v30;
  v34 = [v30 isExiting3dMode];
  v35 = [v8 _canEnter3DMode];
  v36 = [v8 _isShowingCuratedElevatedGround];
  GEOConfigGetDouble();
  v38 = v37;
  [v8 _zoomLevel];
  if (!v33 || (v34 & 1) != 0)
  {
    if (v35 && ((v36 & (v39 >= v38)) != 0 || !v53))
    {
      v27 |= v9 & 0x20;
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
    v27 |= v9 & 0x10;
    v24 |= 0x20uLL;
    v40 = v57;
  }

  v43 = v56;
  if (!v27)
  {
    goto LABEL_56;
  }

LABEL_55:
  v51 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [v51 showControlsIfNeeded:v27 animated:v40];

LABEL_56:
  if (v24)
  {
    v52 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    [v52 hideControlsIfNeeded:v24 animated:v40];
  }

  if (((v27 | v24) & 0x80) != 0)
  {
    [(ChromeViewController *)self setNeedsUpdateComponent:@"lookAroundButton" animated:1];
  }
}

- (void)_updateFloatingControlsDidChangeYaw:(BOOL)a3 animated:(BOOL)a4
{
  v5 = [(IOSBasedChromeViewController *)self floatingControlsOverlay:a3];

  if (v5)
  {
    v6 = [(IOSBasedChromeViewController *)self _desiredFloatingControlsForCurrentState];
    v7 = [(ChromeViewController *)self mapView];
    v8 = [v7 shouldShowExternalCompass];

    if (v8 && (v6 & 0x1000) != 0)
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

    v10 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    v11 = [v10 compassEnabled];

    if (v9 != v11)
    {
      v12 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
      [v12 setCompassEnabled:v9];

      [(IOSBasedChromeViewController *)self _updateFloatingControlsDidChangePitching:0 animated:0];
    }
  }
}

- (void)requestCardLayout:(unint64_t)a3 animated:(BOOL)a4 forCard:(id)a5
{
  v5 = a4;
  v11 = a5;
  if ([(IOSBasedChromeViewController *)self _isCurrentContainerChromeOwned])
  {
    v8 = [(IOSBasedChromeViewController *)self cardsOverlay];
    v9 = [v8 currentViewController];

    if (v9 == v11)
    {
      v10 = [(IOSBasedChromeViewController *)self cardsOverlay];
      [v10 setLayoutIfSupported:a3 animated:v5];
    }
  }
}

- (void)_updateCardsForCurrentStateWithAnimation:(id)a3
{
  v4 = a3;
  v74 = objc_alloc_init(NSMutableArray);
  v72 = [v4 isAnimated];
  if (!self->_externalContainerAppearanceNotification)
  {
    goto LABEL_19;
  }

  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(IOSBasedChromeViewController *)v6 performSelector:"accessibilityIdentifier"];
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
    v91 = v11;
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

    v17 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(IOSBasedChromeViewController *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_16;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_16:

    *buf = 138543362;
    v91 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] calling existing container appearance wait block", buf, 0xCu);

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  WeakRetained = objc_loadWeakRetained(&self->_currentContainerViewController);
  v24 = [(ChromeViewController *)self nextTopContext];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = [(ChromeViewController *)self topContext];
  }

  v27 = v26;

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v27 customContainerViewController], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v29 = v28;
    v30 = v29;
  }

  else
  {
    v29 = [(IOSBasedChromeViewController *)self cardsOverlay];
    v30 = 0;
  }

  v31 = [(ChromeViewController *)self previousTopContext];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = [(ChromeViewController *)self topContext];
  }

  v34 = v33;

  v35 = [(ChromeViewController *)self currentContextTransition];
  v73 = self;
  if (v35)
  {
    [(ChromeViewController *)self currentContextTransition];
    v70 = v27;
    v36 = v29;
    v37 = v4;
    v38 = v30;
    v40 = v39 = WeakRetained;
    [v40 pendingContexts];
    v42 = v41 = v34;
    v43 = [v42 containsObject:v41] ^ 1;

    v34 = v41;
    WeakRetained = v39;
    v30 = v38;
    v4 = v37;
    v29 = v36;
    v27 = v70;
  }

  else
  {
    v43 = 0;
  }

  if ([(ChromeViewController *)self transitionFromViewController:WeakRetained fromContext:v34 toViewController:v29 toContext:v27 withAnimation:v4 dismissing:v43])
  {
    objc_storeWeak(&self->_currentContainerViewController, v29);
  }

  v44 = [(IOSBasedChromeViewController *)self cardsOverlay];

  if (v29 == v44)
  {
    v58 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
    v59 = [(IOSBasedChromeViewController *)self cardsOverlay];
    [v59 setChromeContext:v58];

    v60 = [(IOSBasedChromeViewController *)self cardsOverlay];
    [(ChromeViewController *)self registerAdditionalMapViewDelegate:v60];

    v61 = self;
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    if (objc_opt_respondsToSelector())
    {
      v64 = [(IOSBasedChromeViewController *)v61 performSelector:"accessibilityIdentifier"];
      v65 = v64;
      if (v64 && ![v64 isEqualToString:v63])
      {
        v66 = [NSString stringWithFormat:@"%@<%p, %@>", v63, v61, v65];

        goto LABEL_48;
      }
    }

    v66 = [NSString stringWithFormat:@"%@<%p>", v63, v61];
LABEL_48:

    v67 = [NSString stringWithFormat:@"%@: updating controllers in chrome-owned card stack", v66];
    v68 = [v4 addCompletionWaitBlockWithReason:v67];

    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100DBF308;
    v86[3] = &unk_101661068;
    v86[4] = v61;
    v57 = v74;
    v89 = v72;
    v87 = v74;
    v88 = v68;
    v69 = v68;
    [v4 addPreparation:v86];

    goto LABEL_49;
  }

  v45 = [(IOSBasedChromeViewController *)self cardsOverlay];
  [(ChromeViewController *)self unregisterAdditionalMapViewDelegate:v45];

  v46 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
  if (objc_opt_respondsToSelector())
  {
    v71 = WeakRetained;
    v47 = self;
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    if (objc_opt_respondsToSelector())
    {
      v50 = [(IOSBasedChromeViewController *)v47 performSelector:"accessibilityIdentifier"];
      v51 = v50;
      if (v50 && ![v50 isEqualToString:v49])
      {
        v52 = [NSString stringWithFormat:@"%@<%p, %@>", v49, v47, v51];

        goto LABEL_41;
      }
    }

    v52 = [NSString stringWithFormat:@"%@<%p>", v49, v47];
LABEL_41:

    v53 = [NSString stringWithFormat:@"%@: updating controllers in custom context-owned card stack", v52];
    v54 = [v4 addCompletionWaitBlockWithReason:v53];

    v81[0] = _NSConcreteStackBlock;
    v46 = &OBJC_IVAR____TtC4Maps24GEOAPHistoricalModelItem_totalByteCount;
    v81[1] = 3221225472;
    v81[2] = sub_100DBF5B4;
    v81[3] = &unk_101661068;
    v82 = v27;
    v85 = v72;
    v83 = v30;
    v84 = v54;
    v55 = v54;
    [v4 addPreparation:v81];

    WeakRetained = v71;
    self = v73;
  }

  v76 = _NSConcreteStackBlock;
  v77 = *(v46 + 180);
  v56 = v77;
  v78 = sub_100DBF640;
  v79 = &unk_101661B18;
  v80 = self;
  [v4 addPreparation:&v76];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = v56;
  v75[2] = sub_100DBF648;
  v75[3] = &unk_101661738;
  v75[4] = self;
  [v4 addCompletion:v75];
  v57 = v74;
LABEL_49:
}

- (id)viewsToRenderMapsScreenshotService:(id)a3
{
  v4 = a3;
  v5 = [(ChromeViewController *)self topContext];
  v6 = sub_100010C34(v5, &OBJC_PROTOCOL___MapsScreenshotServiceDelegate);

  if (v6)
  {
    v7 = [(ChromeViewController *)self topContext];
    v8 = [v7 viewsToRenderMapsScreenshotService:v4];
  }

  else
  {
    v7 = [(ChromeViewController *)self mapView];
    v11 = v7;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
  }

  v9 = v8;

  return v9;
}

- (void)mapView:(id)a3 didUpdateYaw:(double)a4
{
  v7 = a3;
  v8 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v8 mapView:v7 didUpdateYaw:a4];

  [(IOSBasedChromeViewController *)self _updateFloatingControlsDidChangeYaw:1 animated:1];
}

- (void)_resetTracking:(BOOL)a3
{
  v3 = [(ChromeViewController *)self mapView];
  [v3 setUserTrackingMode:0];
}

- (void)mapViewDidFailLoadingMap:(id)a3 withError:(id)a4
{
  loadingMapNetworkActivity = self->_loadingMapNetworkActivity;
  self->_loadingMapNetworkActivity = 0;
  v7 = a4;
  v8 = a3;

  v9.receiver = self;
  v9.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v9 mapViewDidFailLoadingMap:v8 withError:v7];
}

- (void)mapViewDidFinishLoadingMap:(id)a3
{
  loadingMapNetworkActivity = self->_loadingMapNetworkActivity;
  self->_loadingMapNetworkActivity = 0;
  v5 = a3;

  v6.receiver = self;
  v6.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v6 mapViewDidFinishLoadingMap:v5];
}

- (void)mapViewWillStartLoadingMap:(id)a3
{
  v4 = a3;
  if (!self->_loadingMapNetworkActivity)
  {
    v5 = +[LoadingIndicatorController sharedController];
    v6 = [v5 beginShowingLoadingIndicator];
    loadingMapNetworkActivity = self->_loadingMapNetworkActivity;
    self->_loadingMapNetworkActivity = v6;
  }

  v8.receiver = self;
  v8.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v8 mapViewWillStartLoadingMap:v4];
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v9 = a7;
  v14 = a3;
  v32.receiver = self;
  v32.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v32 mapView:v14 didStopRespondingToGesture:a4 zoomDirection:a5 zoomGestureType:a6 didDecelerate:v9 tiltDirection:a8];
  v15 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  v16 = [v15 mapViewDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    v19 = [v18 mapViewDelegate];
    [v19 mapView:v14 didStopRespondingToGesture:a4 zoomDirection:a5 zoomGestureType:a6 didDecelerate:v9 tiltDirection:a8];
  }

  v20 = +[MKSystemController sharedInstance];
  v21 = [v20 shouldCaptureMapViewGestureAnalytics];

  if (a4 <= 3 && v21)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v22 = 1004;
      }

      else if (a8 == 2)
      {
        v22 = 1041;
      }

      else
      {
        if (a8 != 1)
        {
          goto LABEL_55;
        }

        v22 = 1042;
      }
    }

    else if (a4)
    {
      if (a5 == 1)
      {
        v22 = 1043;
        if (a6 > 3)
        {
          if ((a6 - 6) < 2)
          {
            v22 = 1002;
          }

          else if (a6 == 4)
          {
            v22 = 1047;
          }

          else if (a6 == 5)
          {
            v22 = 1049;
          }
        }

        else
        {
          switch(a6)
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
        if (a6 > 3)
        {
          if ((a6 - 6) < 2)
          {
            v22 = 1003;
          }

          else if (a6 == 4)
          {
            v22 = 1048;
          }

          else if (a6 == 5)
          {
            v22 = 1050;
          }
        }

        else
        {
          if (!a6 || a6 == 2)
          {
            goto LABEL_55;
          }

          if (a6 == 3)
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

    v23 = [(IOSBasedChromeViewController *)self currentMapViewTargetForAnalytics];
    v24 = +[MKMapService sharedService];
    v25 = [v14 mapRegion];
    [v14 _zoomLevel];
    v27 = v26;
    v28 = [v14 mapType];
    v29 = 1;
    if (v28 <= 2)
    {
      switch(v28)
      {
        case 0:
LABEL_52:
          [v24 captureUserAction:v22 onTarget:v23 eventValue:0 mapRegion:v25 zoomLevel:v29 mapType:v27];

          if ((v23 - 502) <= 4 && ((1 << (v23 + 10)) & 0x13) != 0)
          {
            v30 = objc_alloc_init(SearchSessionAnalytics);
            [(SearchSessionAnalytics *)v30 setTarget:v23];
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
      if (v28 <= 101)
      {
        if (v28 != 3)
        {
          if (v28 != 4)
          {
            goto LABEL_51;
          }

          goto LABEL_46;
        }

LABEL_50:
        v29 = 2;
        goto LABEL_52;
      }

      if (v28 == 102)
      {
        goto LABEL_52;
      }

      if (v28 == 104)
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

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  v9 = [v8 mapViewDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    v12 = [v11 mapViewDelegate];
    [v12 mapView:v13 willStartRespondingToGesture:a4 animated:v5];
  }
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6
{
  v6 = a6;
  v11.receiver = self;
  v11.super_class = IOSBasedChromeViewController;
  [(IOSBasedChromeViewController *)&v11 mapView:a3 didChangeUserTrackingMode:a4 animated:a5 fromTrackingButton:?];
  if ((a4 - 1) <= 1 && v6)
  {
    self->_explicitlyRequestedUserLocation = 1;
  }

  if (a4 >= 3)
  {
    v9 = 17064;
  }

  else
  {
    v9 = (a4 + 17064);
  }

  [GEOAPPortal captureUserAction:v9 target:0 value:0];
  v10 = +[UIApplication sharedMapsDelegate];
  [v10 setTrackingMode:a4 monitorBatteryState:1];
}

- (void)mapView:(id)a3 didFailToLocateUserWithError:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = IOSBasedChromeViewController;
  v7 = a3;
  [(IOSBasedChromeViewController *)&v15 mapView:v7 didFailToLocateUserWithError:v6];
  v8 = [v7 hasUserLocation];

  if ((v8 & 1) == 0)
  {
    v9 = [(IOSBasedChromeViewController *)self _maps_platformController];
    v10 = [v9 currentSession];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v6 domain];
    if ([v13 isEqualToString:MKLocationErrorDomain] & 1) != 0 || (objc_msgSend(v6, "_mapkit_isCLDenied") & 1) != 0 || v12 && (objc_msgSend(v12, "isWaitingForAccurateLocationUpdate"))
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

    -[IOSBasedChromeViewController _resetTracking:](self, "_resetTracking:", [v6 _mapkit_isCLLocationUnknown] ^ 1);
  }

  self->_explicitlyRequestedUserLocation = 0;
}

- (void)mapView:(id)a3 didChangeDisplayedFloorOrdinal:(signed __int16)a4 forVenue:(id)a5
{
  v5 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v11 mapView:v10 didChangeDisplayedFloorOrdinal:v5 forVenue:v9];
}

- (void)mapView:(id)a3 didChangeFocusedVenue:(id)a4 focusedBuilding:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v12 mapView:v11 didChangeFocusedVenue:v10 focusedBuilding:v9];
}

- (void)mapView:(id)a3 calloutPrimaryActionTriggeredForAnnotationView:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v9 mapView:v8 calloutPrimaryActionTriggeredForAnnotationView:v7];
}

- (void)mapView:(id)a3 calloutPrimaryActionTriggeredForLabelMarker:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  [v9 mapView:v8 calloutPrimaryActionTriggeredForLabelMarker:v7];
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [MapsAnalyticStateProvider updateMapViewInformation:v6];
  v7 = [(IOSBasedChromeViewController *)self weatherOverlay];
  [v7 mapView:v6 regionDidChangeAnimated:v4];

  [(IOSBasedChromeViewController *)self _updateFloatingControlsDidChangePitching:0 animated:v4];
  v8.receiver = self;
  v8.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v8 mapView:v6 regionDidChangeAnimated:v4];
}

- (BOOL)mapViewShouldHandleTapToDeselect:(id)a3
{
  v5 = a3;
  v6 = [(ChromeViewController *)self mapViewDelegateForSelector:a2];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mapViewShouldHandleTapToDeselect:v5];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IOSBasedChromeViewController;
    v8 = [(ChromeViewController *)&v11 mapViewShouldHandleTapToDeselect:v5];
  }

  v9 = v8;

  return v9;
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IOSBasedChromeViewController *)self overlayManager];
  [v8 setSelectedLabelMarker:v6];

  v9.receiver = self;
  v9.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v9 mapView:v7 didSelectLabelMarker:v6];
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IOSBasedChromeViewController *)self overlayManager];
  [v8 setSelectedLabelMarker:0];

  v9.receiver = self;
  v9.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v9 mapView:v7 didDeselectLabelMarker:v6];
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IOSBasedChromeViewController *)self overlayManager];
  v9 = [v8 mapView:v6 rendererForOverlay:v7];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [SearchResultsDebugOverlay rendererWithPolygon:v7];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = IOSBasedChromeViewController;
      v10 = [(ChromeViewController *)&v13 mapView:v6 rendererForOverlay:v7];
    }
  }

  v11 = v10;

  return v11;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = IOSBasedChromeViewController;
  v8 = [(ChromeViewController *)&v13 mapView:v6 viewForAnnotation:v7];
  if (v8)
  {
    goto LABEL_2;
  }

  v10 = [(IOSBasedChromeViewController *)self ridesharingAnnotationsManager];
  v9 = [v10 mapView:v6 viewForAnnotation:v7];

  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [SearchResultsDebugOverlay viewForAnnotation:v7];
      if (v8)
      {
        goto LABEL_2;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[TransitVehiclePositionAnnotationView alloc] initWithAnnotation:v7 reuseIdentifier:0];
      if (v8)
      {
        goto LABEL_2;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (-[IOSBasedChromeViewController sharedTripsAnnotationsController](self, "sharedTripsAnnotationsController"), v12 = objc_claimAutoreleasedReturnValue(), [v12 mapView:v6 viewForAnnotation:v7], v9 = objc_claimAutoreleasedReturnValue(), v12, !v9))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[MapsRippleAnnotationView alloc] initWithAnnotation:v7 reuseIdentifier:@"rippleView"];
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

- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4
{
  v5 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
  [v5 setDisplayedMapType:a4];
}

- (void)_mapFullyDrawn:(id)a3
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

    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(IOSBasedChromeViewController *)v5 performSelector:"accessibilityIdentifier"];
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
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Map full drawn, will create map-render-dependent overlays", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)_handleLogTileState:(id)a3
{
  if ([a3 state] == 3)
  {
    v10 = 0;
    v11 = 0;
    v4 = [MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:&v11 debugTreeURLs:0 mapsActivityDataPath:0 error:&v10];
    v5 = v10;
    v6 = v11;
    v7 = v6;
    if (v4)
    {
      v8 = [v6 path];
      NSLog(@"Logged tile state to %@", v8);
      v9 = [NSString stringWithFormat:@"Logged tile state to %@", v8];
      [(IOSBasedChromeViewController *)self _maps_presentSimpleAlertWithTitle:@"State Snapshot" message:v9 dismissalActionTitle:@"OK"];
    }

    else
    {
      v8 = [v5 localizedDescription];
      [(IOSBasedChromeViewController *)self _maps_presentSimpleAlertWithTitle:@"State Snapshot Creation Failed" message:v8 dismissalActionTitle:@"OK"];
    }
  }
}

- (void)overlayControllerDidUpdateMapInsets:(id)a3 fromOverlay:(id)a4
{
  v8.receiver = self;
  v8.super_class = IOSBasedChromeViewController;
  v6 = a4;
  [(ChromeViewController *)&v8 overlayControllerDidUpdateMapInsets:a3 fromOverlay:v6];
  v7 = [(IOSBasedChromeViewController *)self cardsOverlay:v8.receiver];

  if (v7 == v6)
  {
    [(ChromeViewController *)self updateComponentsIfNeeded];
  }
}

- (void)_updateBrowseVenueButtonWithAnimation:(id)a3
{
  v4 = a3;
  v5 = [(IOSBasedChromeViewController *)self browseVenueOverlay];

  if (v5)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = [v4 isAnimated];
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100DC0ED8;
    v6[3] = &unk_10165E700;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    v6[5] = v9;
    [v4 addAnimations:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
    _Block_object_dispose(v9, 8);
  }
}

- (void)_updateRedoSearchButtonWithAnimation:(id)a3
{
  v4 = a3;
  v5 = [(IOSBasedChromeViewController *)self redoSearchOverlay];

  if (v5)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = [v4 isAnimated];
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100DC1150;
    v8[3] = &unk_101661B98;
    objc_copyWeak(&v9, &location);
    [v4 addPreparation:v8];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100DC11E4;
    v6[3] = &unk_10165DE50;
    objc_copyWeak(&v7, &location);
    v6[4] = v11;
    [v4 addAnimations:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    _Block_object_dispose(v11, 8);
  }
}

- (id)_prevailingSearchButtonOverlay
{
  v3 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
  if (v3 && (v4 = v3, v5 = [(IOSBasedChromeViewController *)self _shouldShowSearchFloatingControl], v4, v5))
  {
    v6 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
  }

  else
  {
    v6 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
    if (v6)
    {
      v7 = v6;
      v8 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
      v9 = [v8 shouldBeVisible];

      if (v9)
      {
        v6 = [(IOSBasedChromeViewController *)self browseVenueOverlay];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)_updateLookAroundButtonWithAnimation:(id)a3
{
  v4 = a3;
  v5 = [(IOSBasedChromeViewController *)self lookAroundOverlay];

  if (v5)
  {
    v6 = [v4 isAnimated];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100DC144C;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [v4 addPreparation:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DC14D4;
    v7[3] = &unk_101661AE0;
    v7[4] = self;
    v8 = v6;
    [v4 addAnimations:v7];
  }
}

- (id)fullscreenViewControllerTransitionFromController:(id)a3 toController:(id)a4 isDismissTransition:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (sub_100010C34(v8, &OBJC_PROTOCOL___ModeTransitionProtocol) && sub_100010C34(v9, &OBJC_PROTOCOL___ModeTransitionProtocol))
  {
    v10 = objc_alloc_init(ModeTransitionController);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = IOSBasedChromeViewController;
    v10 = [(ChromeViewController *)&v13 fullscreenViewControllerTransitionFromController:v8 toController:v9 isDismissTransition:v5];
  }

  v11 = v10;

  return v11;
}

- (void)fullscreenViewControllerDidChange:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = IOSBasedChromeViewController;
  [(ChromeViewController *)&v25 fullscreenViewControllerDidChange:v4];
  if (!v4)
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
    v6 = [(ChromeViewController *)self nextTopContext];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(ChromeViewController *)self topContext];
      if (!v8)
      {
        v13 = @"<nil>";
LABEL_14:
        v14 = v4;
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
      v11 = [v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_13;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
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

- (id)_containerViewControllerWithContext:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 customContainerViewController];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [(IOSBasedChromeViewController *)self cardsOverlay];
  }

  v7 = v6;

  return v7;
}

- (BOOL)_isCurrentContainerChromeOwned
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_currentContainerViewController);
  v4 = [(IOSBasedChromeViewController *)v2 cardsOverlay];
  LOBYTE(v2) = WeakRetained == v4;

  return v2;
}

- (BOOL)_suppressOverlaysForActiveFullscreenContainer
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

  v7 = [(IOSBasedChromeViewController *)self _containerViewControllerWithContext:v6];
  v8 = [(IOSBasedChromeViewController *)self cardsOverlay];
  v9 = v7 != v8;

  return v9;
}

- (void)updateFramesInDebugFramesView:(id)a3
{
  v6.receiver = self;
  v6.super_class = IOSBasedChromeViewController;
  v4 = a3;
  [(ChromeViewController *)&v6 updateFramesInDebugFramesView:v4];
  v5 = [(IOSBasedChromeViewController *)self innerLayoutGuide:v6.receiver];
  [v4 setLayoutGuide:v5 forName:@"inner layout guide"];
}

- (void)registerFramesInDebugFramesView:(id)a3
{
  v5.receiver = self;
  v5.super_class = IOSBasedChromeViewController;
  v3 = a3;
  [(ChromeViewController *)&v5 registerFramesInDebugFramesView:v3];
  v4 = [UIColor systemPinkColor:v5.receiver];
  [v3 registerName:@"inner layout guide" color:v4 weight:15 edges:1.0];
}

- (void)_updateStatusBarSupplementaryViewWithAnimation:(id)a3
{
  v4 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [(ChromeViewController *)self contexts];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (!v7)
  {
LABEL_23:
    v18 = 0;
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
      objc_enumerationMutation(v6);
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
      v8 = [v6 countByEnumeratingWithState:&v41 objects:v49 count:16];
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

  v18 = [v11 statusBarSupplementaryView];
LABEL_24:

  statusBarSupplementaryView = self->_statusBarSupplementaryView;
  if (v18 == statusBarSupplementaryView)
  {
    goto LABEL_47;
  }

  v20 = statusBarSupplementaryView;
  objc_storeStrong(&self->_statusBarSupplementaryView, v18);
  v21 = sub_10000B11C();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v20;
    if (!v22)
    {
      v27 = @"<nil>";
LABEL_34:

      v28 = v27;
      v29 = v18;
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
  if (v18)
  {
    [(StatusBarSupplementaryView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(StatusBarBackgroundView *)self->_statusBarBackgroundView addSubview:v18];
    v35 = [(StatusBarSupplementaryView *)v18 initialConstraintsForAnimatingPositionInStatusBarBackgroundView:self->_statusBarBackgroundView];
    [NSLayoutConstraint activateConstraints:v35];
  }

  else
  {
    v35 = 0;
  }

  v36 = [(IOSBasedChromeViewController *)self view];
  [v36 layoutIfNeeded];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100DC22B8;
  v38[3] = &unk_101661A40;
  v38[4] = self;
  v39 = v18;
  v40 = v35;
  v37 = v35;
  [v4 addAnimations:v38];

LABEL_47:
}

- (void)setStatusBarAdditionalColor:(id)a3
{
  objc_storeStrong(&self->_statusBarAdditionalColor, a3);
  v5 = a3;
  [(StatusBarBackgroundView *)self->_statusBarBackgroundView setAdditionalColor:v5];
}

- (void)_updateWeatherWithAnimation:(id)a3
{
  v4 = a3;
  v5 = [(IOSBasedChromeViewController *)self weatherOverlay];

  if (v5)
  {
    v6 = [v4 isAnimated];
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
    [v4 addPreparation:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DC2648;
    v7[3] = &unk_101661AE0;
    v7[4] = self;
    v8 = v6;
    [v4 addAnimations:v7];
    _Block_object_dispose(v10, 8);
  }
}

- (void)_updateStatusBarForCurrentStateWithAnimation:(id)a3
{
  v4 = a3;
  v5 = [(IOSBasedChromeViewController *)self _defaultStatusBarBackgroundViewStyle];
  v6 = [(IOSBasedChromeViewController *)self _defaultPrefersStatusBarHidden];
  v7 = [(IOSBasedChromeViewController *)self _defaultPreferredStatusBarStyle];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [(ChromeViewController *)self contexts];
  v9 = [v8 reverseObjectEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v31 = v5;
  v12 = v4;
  v13 = *v36;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v36 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v35 + 1) + 8 * i);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v15 wantsStatusBarControl])
      {
        v16 = sub_10000B11C();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v4 = v12;
          v5 = v31;
          goto LABEL_22;
        }

        v15 = v15;
        v4 = v12;
        if (!v15)
        {
          v21 = @"<nil>";
          v5 = v31;
          goto LABEL_21;
        }

        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v5 = v31;
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
          v22 = [v15 prefersStatusBarHidden];
        }

        else
        {
          v22 = [(IOSBasedChromeViewController *)self _defaultPrefersStatusBarHidden];
        }

        v6 = v22;
        if (objc_opt_respondsToSelector())
        {
          v23 = [v15 preferredStatusBarStyle];
        }

        else
        {
          v23 = [(IOSBasedChromeViewController *)self _defaultPreferredStatusBarStyle];
        }

        v7 = v23;
        if (self->_permitCustomStatusBarBackgroundViewStyle && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v24 = [v15 statusBarBackgroundViewStyle];

          v5 = v24;
        }

        goto LABEL_31;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v4 = v12;
  v5 = v31;
LABEL_31:

  v25 = +[UIDevice currentDevice];
  v26 = [v25 orientation];

  if (!sub_10000FA08(self) && (v26 - 3) <= 1)
  {

    v5 = 0;
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100DC2BE4;
  v33[3] = &unk_101661A90;
  v33[4] = self;
  v34 = v5;
  v27 = v5;
  [v4 addAnimations:v33];
  if (self->_statusBarHidden != v6)
  {
    v28 = sub_10000B11C();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v40 = @"YES";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[Status Bar] hidden will change to %{public}@", buf, 0xCu);
    }

    self->_statusBarHidden = v6;
  }

  if (!v6 && v7 != self->_statusBarStyle)
  {
    v29 = sub_10000B11C();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      statusBarStyle = self->_statusBarStyle;
      *buf = 134217984;
      v40 = statusBarStyle;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[Status Bar] visible status bar style will change to %ld", buf, 0xCu);
    }

    self->_statusBarStyle = v7;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100DC2BF8;
  v32[3] = &unk_101661B18;
  v32[4] = self;
  [v4 addAnimations:v32];
}

- (int64_t)_internal_topContextMapScaleFeatureVisibility
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
    v7 = [v6 preferredMapScaleVisibility];
  }

  else if ([(IOSBasedChromeViewController *)self _isCurrentUserInterfaceIdiomMac])
  {
    if (+[MapsSettings alwaysShowScale])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateFloatingControlsForCurrentStateWithAnimation:(id)a3
{
  v4 = a3;
  v5 = [v4 isAnimated];
  v6 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  [v6 edgePadding];
  v8 = v7;
  v9 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [v9 setMargin:v8];

  v10 = [(IOSBasedChromeViewController *)self _currentContainerViewController];
  v11 = [v10 blurGroupName];
  v12 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
  [v12 setBlurGroupName:v11];

  v13 = [(IOSBasedChromeViewController *)self _desiredFloatingControlsForCurrentState];
  v14 = sub_10000B11C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(ChromeViewController *)self topContext];
    if (!v15)
    {
      v20 = @"<nil>";
      goto LABEL_10;
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

        goto LABEL_8;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
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
  v24[5] = v13;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100DC3224;
  v22[3] = &unk_101654728;
  v22[4] = self;
  v22[5] = v13;
  v23 = v5;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC3284;
  v21[3] = &unk_101661738;
  v21[4] = self;
  [v4 addPreparation:v24 animations:v22 completion:v21];
}

- (void)_updateMapScaleVisibilityWithAnimation:(id)a3
{
  v4 = a3;
  v5 = [(IOSBasedChromeViewController *)self mapScaleOverlay];

  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100DC3388;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [v4 addAnimations:v6];
  }
}

- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8 == @"floatingControls")
  {
    [(IOSBasedChromeViewController *)self _updateFloatingControlsForCurrentStateWithAnimation:v9];
    goto LABEL_17;
  }

  if (v8 == @"cards")
  {
    [(IOSBasedChromeViewController *)self _updateCardsForCurrentStateWithAnimation:v9];
    goto LABEL_17;
  }

  if (v8 == @"statusBarStyle")
  {
    [(IOSBasedChromeViewController *)self _updateStatusBarForCurrentStateWithAnimation:v9];
    goto LABEL_17;
  }

  if (v8 == @"statusBarSupplementaryView")
  {
    [(IOSBasedChromeViewController *)self _updateStatusBarSupplementaryViewWithAnimation:v9];
    goto LABEL_17;
  }

  if (v8 == @"lookAroundButton")
  {
    [(IOSBasedChromeViewController *)self _updateLookAroundButtonWithAnimation:v9];
LABEL_16:
    [(IOSBasedChromeViewController *)self _updateBrowseVenueButtonWithAnimation:v9];
    goto LABEL_17;
  }

  if (v8 == @"floatingSearchButton")
  {
    [(IOSBasedChromeViewController *)self _updateRedoSearchButtonWithAnimation:v9];
    goto LABEL_16;
  }

  if (v8 == @"weatherOverlay")
  {
    [(IOSBasedChromeViewController *)self _updateWeatherWithAnimation:v9];
  }

  else if (v8 == @"mapScale")
  {
    [(IOSBasedChromeViewController *)self _updateMapScaleVisibilityWithAnimation:v9];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = IOSBasedChromeViewController;
    [(ChromeViewController *)&v10 updateComponent:v8 forTiming:a4 withAnimation:v9];
  }

LABEL_17:
}

- (void)updateComponentsIfNeededWithTansitionCoordinator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(GroupAnimation);
    -[GroupAnimation setAnimated:](v5, "setAnimated:", [v4 isAnimated]);
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_11;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(IOSBasedChromeViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_11:
    v12 = [NSString stringWithFormat:@"%@: UIViewController transition coordinator animation", v11];
    v13 = [(GroupAnimation *)v5 addCompletionWaitBlockWithReason:v12];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100DC37A8;
    v18[3] = &unk_1016546D8;
    v18[4] = v6;
    v19 = v5;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100DC37EC;
    v16[3] = &unk_101654700;
    v17 = v13;
    v14 = v13;
    v15 = v5;
    [v4 animateAlongsideTransition:v18 completion:v16];

    goto LABEL_12;
  }

  [(ChromeViewController *)self updateComponentsIfNeeded];
LABEL_12:
}

- (void)setConnectedToCarPlay:(BOOL)a3
{
  if (self->_connectedToCarPlay != a3)
  {
    v13 = v3;
    v14 = v4;
    self->_connectedToCarPlay = a3;
    carPlayModernMapToken = self->_carPlayModernMapToken;
    if (!a3)
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
    v5 = [(ChromeViewController *)self mapView];
    v6 = [(RidesharingAnnotationsManager *)v4 initWithMapView:v5];
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

    v6 = [(ChromeViewController *)self mapView];
    [(OverlayManager *)self->_overlayManager setMapView:v6];

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
    v5 = [(ChromeViewController *)self mapView];
    v6 = [(MapViewResponder *)v4 initWithMapView:v5];
    v7 = self->_mapViewResponder;
    self->_mapViewResponder = v6;

    mapViewResponder = self->_mapViewResponder;
  }

  return mapViewResponder;
}

- (id)currentShareItemSource
{
  v3 = [(ChromeViewController *)self topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 currentShareItemSource];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 quickActionMenuPresenter];
    v6 = [v5 resolvedMapItem];

    if (v6)
    {
      v7 = [[SearchResult alloc] initWithMapItem:v6];
      v8 = [(SearchResult *)v7 unknownContact];
      v4 = [ShareItem shareItemWithSearchResult:v7 contact:v8 includePrintActivity:1];
LABEL_19:

      goto LABEL_20;
    }
  }

  v9 = [(IOSBasedChromeViewController *)self currentCollectionShareItemSource];
  v6 = v9;
  if (!v9)
  {
    v10 = [(IOSBasedChromeViewController *)self appCoordinator];
    v11 = [v10 baseActionCoordinator];
    v7 = [v11 currentPlaceCardItem];

    v12 = [(SearchResult *)v7 searchResult];

    if (v12)
    {
      v13 = [SearchResult alloc];
      v14 = [(SearchResult *)v7 searchResult];
      v15 = [(SearchResult *)v13 initWithSearchResult:v14];
    }

    else
    {
      v16 = [(SearchResult *)v7 mapItem];

      if (!v16)
      {
        goto LABEL_14;
      }

      v17 = [SearchResult alloc];
      v14 = [(SearchResult *)v7 mapItem];
      v15 = [(SearchResult *)v17 initWithMapItem:v14];
    }

    v8 = v15;

    if (v8)
    {
      v18 = [v8 unknownContact];
      v4 = [ShareItem shareItemWithSearchResult:v8 contact:v18 includePrintActivity:1];
LABEL_18:

      goto LABEL_19;
    }

LABEL_14:
    v19 = [(IOSBasedChromeViewController *)self _maps_platformController];
    v8 = [v19 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v8 currentRouteCollection];
      v20 = [v18 currentRoute];
      v4 = [ShareItem shareItemWithRoute:v20 includeRoutingApps:0];
    }

    else
    {
      v25 = [MapRegionShareItemSource alloc];
      v18 = [(ChromeViewController *)self mapView];
      v20 = [(IOSBasedChromeViewController *)self view];
      v21 = [v20 window];
      v22 = [v21 windowScene];
      v23 = [v22 title];
      v4 = [(MapRegionShareItemSource *)v25 initWithMapView:v18 title:v23];
    }

    goto LABEL_18;
  }

  v4 = v9;
LABEL_20:

LABEL_21:

  return v4;
}

- (id)currentCollectionShareItemSource
{
  v2 = [(IOSBasedChromeViewController *)self appCoordinator];
  v3 = [v2 baseActionCoordinator];
  v4 = [v3 currentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 collectionHandler];
    v6 = [[PersonalCollectionShareItemSource alloc] initWithCollectionHandlerInfo:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = [v5 curatedCollection];
      if (v8)
      {
        v9 = [CuratedCollectionShareItemSource alloc];
        v10 = [v5 mapItems];
        v7 = [(CuratedCollectionShareItemSource *)v9 initWithPlaceCollection:v8 refinedMapItems:v10];
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

    v11 = v4;
    v12 = [CuratedCollectionShareItemSource alloc];
    v5 = [v11 publisher];

    v6 = [(CuratedCollectionShareItemSource *)v12 initWithPublisher:v5];
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
      v7 = [(IOSBasedChromeViewController *)v4 performSelector:"accessibilityIdentifier"];
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
    v23 = v9;
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