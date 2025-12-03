@interface StepActionCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)canSelectVKLabelMarker:(id)marker;
- (BOOL)isAuthorizedForPreciseLocation;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestMoveToBoardStep;
- (GEOMapServiceTraits)newTraits;
- (MKLocationManager)locationManager;
- (NavTrayViewController)trayContaineeViewController;
- (PlaceCardViewController)placeCardViewController;
- (RouteStepListViewController)directionsStepsViewController;
- (StepActionCoordinator)initWithContainerViewController:(id)controller;
- (StepContainerViewController)containerViewController;
- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)c;
- (int)currentUITargetForAnalytics;
- (int64_t)displayedViewMode;
- (int64_t)pptTestCurrentStepIndex;
- (unint64_t)originalLayoutForViewController:(id)controller;
- (void)_presentAdvisory:(id)advisory;
- (void)_presentIncidents:(id)incidents;
- (void)_presentPlaceCardViewControllerForMapItem:(id)item modally:(BOOL)modally;
- (void)_presentRouteDetailsVC;
- (void)_shareRoute:(id)route sourceView:(id)view;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)deselectVKLabelMarker:(id)marker;
- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step;
- (void)directionsStepsListDidTapRAPButton:(id)button;
- (void)directionsStepsListDidTapShareButton:(id)button;
- (void)placeCardViewController:(id)controller openURL:(id)l;
- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type;
- (void)pptTestMoveToNextStep;
- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated;
- (void)pressedEndWithSender:(id)sender;
- (void)pressedViewWaypoint:(id)waypoint;
- (void)selectVKLabelMarker:(id)marker;
- (void)setAppCoordinator:(id)coordinator;
- (void)showVLF;
- (void)viewController:(id)controller showOverview:(BOOL)overview zoomToMapRegion:(BOOL)region;
- (void)viewControllerPresentTray:(id)tray;
@end

@implementation StepActionCoordinator

- (StepContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (BOOL)pptTestMoveToBoardStep
{
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  if ([containerViewController conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
  {
    pptTestMoveToBoardStep = [containerViewController pptTestMoveToBoardStep];
  }

  else
  {
    pptTestMoveToBoardStep = 0;
  }

  return pptTestMoveToBoardStep;
}

- (void)pptTestMoveToNextStep
{
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  if ([containerViewController conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
  {
    [containerViewController pptTestMoveToNextStep];
  }
}

- (BOOL)pptTestHasNextStep
{
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  if ([containerViewController conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
  {
    pptTestHasNextStep = [containerViewController pptTestHasNextStep];
  }

  else
  {
    pptTestHasNextStep = 0;
  }

  return pptTestHasNextStep;
}

- (int64_t)pptTestCurrentStepIndex
{
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  if ([containerViewController conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
  {
    pptTestCurrentStepIndex = [containerViewController pptTestCurrentStepIndex];
  }

  else
  {
    pptTestCurrentStepIndex = 0;
  }

  return pptTestCurrentStepIndex;
}

- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    animatedCopy = animated;
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained popLastViewControllerAnimated:animatedCopy];
  }
}

- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  if (layout < 3)
  {
    v6 = layout + 1;
  }

  else
  {
    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  containeeLayout = [WeakRetained containeeLayout];

  if (containeeLayout == v6)
  {
    v14[0] = @"ContainerLayout";
    v9 = [NSNumber numberWithUnsignedInteger:v6];
    v14[1] = @"ContainerContainee";
    v15[0] = v9;
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    currentViewController = [v10 currentViewController];
    v15[1] = currentViewController;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:v12];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_containerViewController);
    [v13 setLayoutIfSupported:v6 animated:animatedCopy];
  }
}

- (BOOL)pptTestCanUpdateTrayLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  if ([WeakRetained containeeLayout] == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_containerViewController);
    v4 = [v5 containeeLayout] != 4;
  }

  return v4;
}

- (int)currentUITargetForAnalytics
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  route = [WeakRetained route];
  v4 = [route transportType] - 1;
  if (v4 > 5)
  {
    v5 = 608;
  }

  else
  {
    v5 = dword_1012136B8[v4];
  }

  return v5;
}

- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)c
{
  v3 = objc_alloc_init(MKMapView);

  return v3;
}

- (void)placeCardViewController:(id)controller openURL:(id)l
{
  lCopy = l;
  v5 = +[MKSystemController sharedInstance];
  [v5 openURL:lCopy completionHandler:0];
}

- (void)_presentPlaceCardViewControllerForMapItem:(id)item modally:(BOOL)modally
{
  modallyCopy = modally;
  itemCopy = item;
  v17 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];

  containerViewController = [(StepActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (-[StepActionCoordinator containerViewController](self, "containerViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 currentViewController], v11 = objc_claimAutoreleasedReturnValue(), v10, objc_msgSend(v11, "placeCardItem"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[PlaceCardItem isEqual:](v17, "isEqual:", v12), v12, v11, (v13 & 1) == 0))
  {
    placeCardViewController = [(StepActionCoordinator *)self placeCardViewController];
    [placeCardViewController resetState];
    [placeCardViewController setPlaceCardItem:v17 withHistory:0];
    cardPresentationController = [placeCardViewController cardPresentationController];
    [cardPresentationController setPresentedModally:modallyCopy];

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:placeCardViewController];
  }
}

- (void)_presentAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  v10 = objc_alloc_init(MapsIncidentsViewController);
  v5 = [[ModalContaineeViewController alloc] initWithChildViewController:v10];
  navigationItem = [(MapsIncidentsViewController *)v10 navigationItem];
  title = [navigationItem title];
  headerView = [(ModalContaineeViewController *)v5 headerView];
  [headerView setTitle:title];

  [(MapsIncidentsViewController *)v10 setAdvisory:advisoryCopy];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5];
}

- (void)_presentIncidents:(id)incidents
{
  incidentsCopy = incidents;
  v10 = [[MapsIncidentsViewController alloc] initWithTransitIncidents:incidentsCopy];

  v5 = [[ModalContaineeViewController alloc] initWithChildViewController:v10];
  navigationItem = [(MapsIncidentsViewController *)v10 navigationItem];
  title = [navigationItem title];
  headerView = [(ModalContaineeViewController *)v5 headerView];
  [headerView setTitle:title];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5];
}

- (void)_presentRouteDetailsVC
{
  directionsStepsViewController = [(StepActionCoordinator *)self directionsStepsViewController];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  route = [WeakRetained route];
  destination = [route destination];
  navDisplayName = [destination navDisplayName];

  if (!navDisplayName)
  {
    v7 = +[NSBundle mainBundle];
    navDisplayName = [v7 localizedStringForKey:@"Directions_stepping" value:@"localized string not found" table:0];
  }

  v8 = [[ModalContaineeViewController alloc] initWithChildViewController:directionsStepsViewController visualEffectDisabled:1];
  headerView = [(ModalContaineeViewController *)v8 headerView];
  [headerView setTitle:navDisplayName];

  v10 = objc_loadWeakRetained(&self->_containerViewController);
  [v10 presentController:v8];
}

- (PlaceCardViewController)placeCardViewController
{
  placeCardViewController = self->_placeCardViewController;
  if (!placeCardViewController)
  {
    v4 = [[PlaceCardViewController alloc] initWithVisualEffectDisabled:1];
    v5 = self->_placeCardViewController;
    self->_placeCardViewController = v4;

    [(PlaceCardViewController *)self->_placeCardViewController setExcludedContent:14671];
    [(PlaceCardViewController *)self->_placeCardViewController setPlaceCardDelegate:self];
    [(InfoCardViewController *)self->_placeCardViewController setContaineeDelegate:self];
    placeCardViewController = self->_placeCardViewController;
  }

  return placeCardViewController;
}

- (RouteStepListViewController)directionsStepsViewController
{
  directionsStepsViewController = self->_directionsStepsViewController;
  if (!directionsStepsViewController)
  {
    v4 = [RouteStepListViewController alloc];
    v5 = +[RouteStepListMetrics routePlanningMetrics];
    v6 = [(RouteStepListViewController *)v4 initWithOptions:247 metrics:v5];
    v7 = self->_directionsStepsViewController;
    self->_directionsStepsViewController = v6;

    [(RouteStepListViewController *)self->_directionsStepsViewController setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    route = [WeakRetained route];
    [(RouteStepListViewController *)self->_directionsStepsViewController setRoute:route];

    directionsStepsViewController = self->_directionsStepsViewController;
  }

  return directionsStepsViewController;
}

- (NavTrayViewController)trayContaineeViewController
{
  trayContaineeViewController = self->_trayContaineeViewController;
  if (!trayContaineeViewController)
  {
    v4 = [NavTrayViewController alloc];
    appCoordinator = [(StepActionCoordinator *)self appCoordinator];
    platformController = [appCoordinator platformController];
    v7 = [(NavTrayViewController *)v4 initForSteppingWithDelegate:self platformController:platformController];
    v8 = self->_trayContaineeViewController;
    self->_trayContaineeViewController = v7;

    view = [(NavTrayViewController *)self->_trayContaineeViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    trayContaineeViewController = self->_trayContaineeViewController;
  }

  return trayContaineeViewController;
}

- (int64_t)displayedViewMode
{
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  displayedViewMode = [chromeViewController displayedViewMode];

  return displayedViewMode;
}

- (GEOMapServiceTraits)newTraits
{
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  return currentTraits;
}

- (void)_shareRoute:(id)route sourceView:(id)view
{
  if (route)
  {
    routeCopy = route;
    v9 = [MUPresentationOptions optionsWithSender:view];
    appCoordinator = [(StepActionCoordinator *)self appCoordinator];
    v8 = [ShareItem shareItemWithRoute:routeCopy includeRoutingApps:0];

    [appCoordinator shareItem:v8 presentationOptions:v9 completion:0];
  }
}

- (void)directionsStepsListDidTapRAPButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  route = [WeakRetained route];
  v6 = [route transportType] - 1;
  if (v6 > 5)
  {
    v7 = 608;
  }

  else
  {
    v7 = dword_101213740[v6];
  }

  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:5013 onTarget:v7 eventValue:0];

  v11 = objc_loadWeakRetained(&self->_containerViewController);
  _maps_mapsSceneDelegate = [v11 _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentReportAProblemForRouteFromEntryPoint:v7];
}

- (void)directionsStepsListDidTapShareButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  route = [WeakRetained route];
  directionsStepsViewController = [(StepActionCoordinator *)self directionsStepsViewController];
  view = [directionsStepsViewController view];
  [(StepActionCoordinator *)self _shareRoute:route sourceView:view];
}

- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step
{
  stepCopy = step;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  trayContaineeViewController = [(StepActionCoordinator *)self trayContaineeViewController];
  [WeakRetained presentController:trayContaineeViewController];

  v8 = objc_loadWeakRetained(&self->_containerViewController);
  [v8 updateWithDisplayedStep:stepCopy];
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  stateCopy = state;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController = [(StepActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    mapView = [chromeViewController mapView];
    [mapView _deselectLabelMarkerAnimated:1];
  }

  containerViewController2 = [(StepActionCoordinator *)self containerViewController];
  [containerViewController2 popLastViewControllerAnimated:1];
}

- (void)deselectVKLabelMarker:(id)marker
{
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containerViewController2 = [(StepActionCoordinator *)self containerViewController];
    [containerViewController2 popLastViewControllerAnimated:1];
  }
}

- (BOOL)canSelectVKLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy isTransitLine])
  {
    v4 = 0;
  }

  else
  {
    waypointInfo = [markerCopy waypointInfo];
    waypoint = [waypointInfo waypoint];

    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

- (void)selectVKLabelMarker:(id)marker
{
  markerCopy = marker;
  v5 = [[MKMapItem alloc] _initWithLabelMarker:markerCopy];

  [(StepActionCoordinator *)self _presentPlaceCardViewControllerForMapItem:v5 modally:0];
}

- (unint64_t)originalLayoutForViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_4:
      v4 = 3;
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cardPresentationController = [controllerCopy cardPresentationController];
      presentedModally = [cardPresentationController presentedModally];

      if (presentedModally)
      {
        v4 = 5;
        goto LABEL_12;
      }

      v7 = +[UIDevice currentDevice];
      if ([v7 userInterfaceIdiom] == 1)
      {

        goto LABEL_4;
      }

      v8 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v8 userInterfaceIdiom];

      if (userInterfaceIdiom == 5)
      {
        goto LABEL_4;
      }
    }

    v4 = 2;
    goto LABEL_12;
  }

  v4 = 1;
LABEL_12:

  return v4;
}

- (void)showVLF
{
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(StepActionCoordinator *)self containerViewController];
    currentViewController2 = [containerViewController2 currentViewController];
    [currentViewController2 handleVLFPuckTapped];
  }

  else
  {
    objc_initWeak(&location, self);
    containerViewController3 = [(StepActionCoordinator *)self containerViewController];
    appCoordinator = [(StepActionCoordinator *)self appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1008699C8;
    v18[3] = &unk_1016619A8;
    objc_copyWeak(&v19, &location);
    v10 = [containerViewController3 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:baseActionCoordinator completion:v18];

    if ((v10 & 1) == 0)
    {
      containerViewController4 = [(StepActionCoordinator *)self containerViewController];
      chromeViewController = [containerViewController4 chromeViewController];
      userLocationView = [chromeViewController userLocationView];

      if ([userLocationView isVLFBannerVisible])
      {
        isVLFPuckVisible = 2;
      }

      else
      {
        isVLFPuckVisible = [userLocationView isVLFPuckVisible];
      }

      v15 = [[VLFContaineeViewController alloc] initWithEntryPoint:isVLFPuckVisible];
      [(ContaineeViewController *)v15 setContaineeDelegate:self];
      containerViewController5 = [(StepActionCoordinator *)self containerViewController];
      [containerViewController5 presentController:v15];
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)pressedViewWaypoint:(id)waypoint
{
  mkMapItem = [waypoint mkMapItem];
  [(StepActionCoordinator *)self _presentPlaceCardViewControllerForMapItem:mkMapItem modally:0];
}

- (void)viewController:(id)controller showOverview:(BOOL)overview zoomToMapRegion:(BOOL)region
{
  regionCopy = region;
  overviewCopy = overview;
  containerViewController = [(StepActionCoordinator *)self containerViewController];
  [containerViewController showOverview:overviewCopy andZoomToMapRegion:regionCopy];

  containerViewController2 = [(StepActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController2 currentViewController];
  trayContaineeViewController = [(StepActionCoordinator *)self trayContaineeViewController];

  if (currentViewController == trayContaineeViewController)
  {
    trayContaineeViewController2 = [(StepActionCoordinator *)self trayContaineeViewController];
    cardPresentationController = [trayContaineeViewController2 cardPresentationController];
    [cardPresentationController wantsLayout:1];
  }
}

- (void)viewControllerPresentTray:(id)tray
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  trayContaineeViewController = [(StepActionCoordinator *)self trayContaineeViewController];
  [WeakRetained presentController:trayContaineeViewController animated:0];
}

- (void)pressedEndWithSender:(id)sender
{
  appCoordinator = [(StepActionCoordinator *)self appCoordinator];
  [appCoordinator endNavigationAndReturnToRoutePlanning:0];
}

- (MKLocationManager)locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = objc_alloc_init(MKLocationManager);
    v5 = self->_locationManager;
    self->_locationManager = v4;

    locationManager = self->_locationManager;
  }

  return locationManager;
}

- (BOOL)isAuthorizedForPreciseLocation
{
  locationManager = [(StepActionCoordinator *)self locationManager];
  isLocationServicesApproved = [locationManager isLocationServicesApproved];
  isAuthorizedForPreciseLocation = [locationManager isAuthorizedForPreciseLocation];

  return isLocationServicesApproved & isAuthorizedForPreciseLocation;
}

- (void)setAppCoordinator:(id)coordinator
{
  obj = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appCoordinator, obj);
    v5 = obj;
  }
}

- (StepActionCoordinator)initWithContainerViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = StepActionCoordinator;
  v5 = [(StepActionCoordinator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, controllerCopy);
  }

  return v6;
}

@end