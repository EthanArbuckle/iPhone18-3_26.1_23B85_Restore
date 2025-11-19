@interface StepActionCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)canSelectVKLabelMarker:(id)a3;
- (BOOL)isAuthorizedForPreciseLocation;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestMoveToBoardStep;
- (GEOMapServiceTraits)newTraits;
- (MKLocationManager)locationManager;
- (NavTrayViewController)trayContaineeViewController;
- (PlaceCardViewController)placeCardViewController;
- (RouteStepListViewController)directionsStepsViewController;
- (StepActionCoordinator)initWithContainerViewController:(id)a3;
- (StepContainerViewController)containerViewController;
- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)a3;
- (int)currentUITargetForAnalytics;
- (int64_t)displayedViewMode;
- (int64_t)pptTestCurrentStepIndex;
- (unint64_t)originalLayoutForViewController:(id)a3;
- (void)_presentAdvisory:(id)a3;
- (void)_presentIncidents:(id)a3;
- (void)_presentPlaceCardViewControllerForMapItem:(id)a3 modally:(BOOL)a4;
- (void)_presentRouteDetailsVC;
- (void)_shareRoute:(id)a3 sourceView:(id)a4;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)deselectVKLabelMarker:(id)a3;
- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4;
- (void)directionsStepsListDidTapRAPButton:(id)a3;
- (void)directionsStepsListDidTapShareButton:(id)a3;
- (void)placeCardViewController:(id)a3 openURL:(id)a4;
- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4;
- (void)pptTestMoveToNextStep;
- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4;
- (void)pressedEndWithSender:(id)a3;
- (void)pressedViewWaypoint:(id)a3;
- (void)selectVKLabelMarker:(id)a3;
- (void)setAppCoordinator:(id)a3;
- (void)showVLF;
- (void)viewController:(id)a3 showOverview:(BOOL)a4 zoomToMapRegion:(BOOL)a5;
- (void)viewControllerPresentTray:(id)a3;
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
  v2 = [(StepActionCoordinator *)self containerViewController];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
  {
    v3 = [v2 pptTestMoveToBoardStep];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)pptTestMoveToNextStep
{
  v2 = [(StepActionCoordinator *)self containerViewController];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
  {
    [v2 pptTestMoveToNextStep];
  }
}

- (BOOL)pptTestHasNextStep
{
  v2 = [(StepActionCoordinator *)self containerViewController];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
  {
    v3 = [v2 pptTestHasNextStep];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)pptTestCurrentStepIndex
{
  v2 = [(StepActionCoordinator *)self containerViewController];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
  {
    v3 = [v2 pptTestCurrentStepIndex];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4
{
  if ((a4 - 1) >= 3)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained popLastViewControllerAnimated:v5];
  }
}

- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 < 3)
  {
    v6 = a3 + 1;
  }

  else
  {
    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v8 = [WeakRetained containeeLayout];

  if (v8 == v6)
  {
    v14[0] = @"ContainerLayout";
    v9 = [NSNumber numberWithUnsignedInteger:v6];
    v14[1] = @"ContainerContainee";
    v15[0] = v9;
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    v11 = [v10 currentViewController];
    v15[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:v12];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_containerViewController);
    [v13 setLayoutIfSupported:v6 animated:v4];
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
  v3 = [WeakRetained route];
  v4 = [v3 transportType] - 1;
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

- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)a3
{
  v3 = objc_alloc_init(MKMapView);

  return v3;
}

- (void)placeCardViewController:(id)a3 openURL:(id)a4
{
  v4 = a4;
  v5 = +[MKSystemController sharedInstance];
  [v5 openURL:v4 completionHandler:0];
}

- (void)_presentPlaceCardViewControllerForMapItem:(id)a3 modally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v17 = [[PlaceCardItem alloc] initWithMapItem:v6];

  v7 = [(StepActionCoordinator *)self containerViewController];
  v8 = [v7 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (-[StepActionCoordinator containerViewController](self, "containerViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 currentViewController], v11 = objc_claimAutoreleasedReturnValue(), v10, objc_msgSend(v11, "placeCardItem"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[PlaceCardItem isEqual:](v17, "isEqual:", v12), v12, v11, (v13 & 1) == 0))
  {
    v14 = [(StepActionCoordinator *)self placeCardViewController];
    [v14 resetState];
    [v14 setPlaceCardItem:v17 withHistory:0];
    v15 = [v14 cardPresentationController];
    [v15 setPresentedModally:v4];

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v14];
  }
}

- (void)_presentAdvisory:(id)a3
{
  v4 = a3;
  v10 = objc_alloc_init(MapsIncidentsViewController);
  v5 = [[ModalContaineeViewController alloc] initWithChildViewController:v10];
  v6 = [(MapsIncidentsViewController *)v10 navigationItem];
  v7 = [v6 title];
  v8 = [(ModalContaineeViewController *)v5 headerView];
  [v8 setTitle:v7];

  [(MapsIncidentsViewController *)v10 setAdvisory:v4];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5];
}

- (void)_presentIncidents:(id)a3
{
  v4 = a3;
  v10 = [[MapsIncidentsViewController alloc] initWithTransitIncidents:v4];

  v5 = [[ModalContaineeViewController alloc] initWithChildViewController:v10];
  v6 = [(MapsIncidentsViewController *)v10 navigationItem];
  v7 = [v6 title];
  v8 = [(ModalContaineeViewController *)v5 headerView];
  [v8 setTitle:v7];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5];
}

- (void)_presentRouteDetailsVC
{
  v11 = [(StepActionCoordinator *)self directionsStepsViewController];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained route];
  v5 = [v4 destination];
  v6 = [v5 navDisplayName];

  if (!v6)
  {
    v7 = +[NSBundle mainBundle];
    v6 = [v7 localizedStringForKey:@"Directions_stepping" value:@"localized string not found" table:0];
  }

  v8 = [[ModalContaineeViewController alloc] initWithChildViewController:v11 visualEffectDisabled:1];
  v9 = [(ModalContaineeViewController *)v8 headerView];
  [v9 setTitle:v6];

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
    v9 = [WeakRetained route];
    [(RouteStepListViewController *)self->_directionsStepsViewController setRoute:v9];

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
    v5 = [(StepActionCoordinator *)self appCoordinator];
    v6 = [v5 platformController];
    v7 = [(NavTrayViewController *)v4 initForSteppingWithDelegate:self platformController:v6];
    v8 = self->_trayContaineeViewController;
    self->_trayContaineeViewController = v7;

    v9 = [(NavTrayViewController *)self->_trayContaineeViewController view];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    trayContaineeViewController = self->_trayContaineeViewController;
  }

  return trayContaineeViewController;
}

- (int64_t)displayedViewMode
{
  v2 = [(StepActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 displayedViewMode];

  return v4;
}

- (GEOMapServiceTraits)newTraits
{
  v2 = [(StepActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 currentTraits];

  return v4;
}

- (void)_shareRoute:(id)a3 sourceView:(id)a4
{
  if (a3)
  {
    v6 = a3;
    v9 = [MUPresentationOptions optionsWithSender:a4];
    v7 = [(StepActionCoordinator *)self appCoordinator];
    v8 = [ShareItem shareItemWithRoute:v6 includeRoutingApps:0];

    [v7 shareItem:v8 presentationOptions:v9 completion:0];
  }
}

- (void)directionsStepsListDidTapRAPButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = [WeakRetained route];
  v6 = [v5 transportType] - 1;
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
  v9 = [v11 _maps_mapsSceneDelegate];
  v10 = [v9 rapPresenter];
  [v10 presentReportAProblemForRouteFromEntryPoint:v7];
}

- (void)directionsStepsListDidTapShareButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained route];
  v5 = [(StepActionCoordinator *)self directionsStepsViewController];
  v6 = [v5 view];
  [(StepActionCoordinator *)self _shareRoute:v4 sourceView:v6];
}

- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [(StepActionCoordinator *)self trayContaineeViewController];
  [WeakRetained presentController:v7];

  v8 = objc_loadWeakRetained(&self->_containerViewController);
  [v8 updateWithDisplayedStep:v5];
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(StepActionCoordinator *)self containerViewController];
    v8 = [v7 chromeViewController];
    v9 = [v8 mapView];
    [v9 _deselectLabelMarkerAnimated:1];
  }

  v10 = [(StepActionCoordinator *)self containerViewController];
  [v10 popLastViewControllerAnimated:1];
}

- (void)deselectVKLabelMarker:(id)a3
{
  v4 = [(StepActionCoordinator *)self containerViewController];
  v6 = [v4 currentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(StepActionCoordinator *)self containerViewController];
    [v5 popLastViewControllerAnimated:1];
  }
}

- (BOOL)canSelectVKLabelMarker:(id)a3
{
  v3 = a3;
  if ([v3 isTransitLine])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 waypointInfo];
    v6 = [v5 waypoint];

    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

- (void)selectVKLabelMarker:(id)a3
{
  v4 = a3;
  v5 = [[MKMapItem alloc] _initWithLabelMarker:v4];

  [(StepActionCoordinator *)self _presentPlaceCardViewControllerForMapItem:v5 modally:0];
}

- (unint64_t)originalLayoutForViewController:(id)a3
{
  v3 = a3;
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
      v5 = [v3 cardPresentationController];
      v6 = [v5 presentedModally];

      if (v6)
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
      v9 = [v8 userInterfaceIdiom];

      if (v9 == 5)
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
  v3 = [(StepActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [(StepActionCoordinator *)self containerViewController];
    v6 = [v17 currentViewController];
    [v6 handleVLFPuckTapped];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [(StepActionCoordinator *)self containerViewController];
    v8 = [(StepActionCoordinator *)self appCoordinator];
    v9 = [v8 baseActionCoordinator];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1008699C8;
    v18[3] = &unk_1016619A8;
    objc_copyWeak(&v19, &location);
    v10 = [v7 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:v9 completion:v18];

    if ((v10 & 1) == 0)
    {
      v11 = [(StepActionCoordinator *)self containerViewController];
      v12 = [v11 chromeViewController];
      v13 = [v12 userLocationView];

      if ([v13 isVLFBannerVisible])
      {
        v14 = 2;
      }

      else
      {
        v14 = [v13 isVLFPuckVisible];
      }

      v15 = [[VLFContaineeViewController alloc] initWithEntryPoint:v14];
      [(ContaineeViewController *)v15 setContaineeDelegate:self];
      v16 = [(StepActionCoordinator *)self containerViewController];
      [v16 presentController:v15];
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)pressedViewWaypoint:(id)a3
{
  v4 = [a3 mkMapItem];
  [(StepActionCoordinator *)self _presentPlaceCardViewControllerForMapItem:v4 modally:0];
}

- (void)viewController:(id)a3 showOverview:(BOOL)a4 zoomToMapRegion:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(StepActionCoordinator *)self containerViewController];
  [v8 showOverview:v6 andZoomToMapRegion:v5];

  v9 = [(StepActionCoordinator *)self containerViewController];
  v10 = [v9 currentViewController];
  v11 = [(StepActionCoordinator *)self trayContaineeViewController];

  if (v10 == v11)
  {
    v13 = [(StepActionCoordinator *)self trayContaineeViewController];
    v12 = [v13 cardPresentationController];
    [v12 wantsLayout:1];
  }
}

- (void)viewControllerPresentTray:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [(StepActionCoordinator *)self trayContaineeViewController];
  [WeakRetained presentController:v4 animated:0];
}

- (void)pressedEndWithSender:(id)a3
{
  v3 = [(StepActionCoordinator *)self appCoordinator];
  [v3 endNavigationAndReturnToRoutePlanning:0];
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
  v2 = [(StepActionCoordinator *)self locationManager];
  v3 = [v2 isLocationServicesApproved];
  v4 = [v2 isAuthorizedForPreciseLocation];

  return v3 & v4;
}

- (void)setAppCoordinator:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appCoordinator, obj);
    v5 = obj;
  }
}

- (StepActionCoordinator)initWithContainerViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = StepActionCoordinator;
  v5 = [(StepActionCoordinator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, v4);
  }

  return v6;
}

@end