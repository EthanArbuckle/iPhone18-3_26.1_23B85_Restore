@interface NavActionCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)canEnterPedestrianAR;
- (BOOL)canPresentRapFeedbackView;
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectLabelMarker:(id)marker;
- (BOOL)chromeDidSelectRouteAnnotations:(id)annotations;
- (BOOL)chromeDidSelectTrafficIncident:(id)incident latitude:(id)latitude longitude:(id)longitude;
- (BOOL)chromeDidSelectTransitLineMarker:(id)marker;
- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)marker;
- (BOOL)isControllingVoiceVolume;
- (BOOL)isDisplayingIncidentReporting;
- (BOOL)isPedestrianARActive;
- (BOOL)isPedestrianARShowingFailureView;
- (BOOL)isTeachableMomentCardActive;
- (BOOL)isWeatherPopoverActive;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)shouldShowNavRecenterButton;
- (CustomPOIsController)customPOIsController;
- (GEOMapServiceTraits)newTraits;
- (MapSelectionManager)mapSelectionManager;
- (MapViewZoomController)mapViewZoomController;
- (MapViewZoomDelegate)mapViewZoomDelegate;
- (NavActionCoordinator)initWithMapItemDisplayer:(id)displayer navigationDisplay:(id)display guidanceObserver:(id)observer navigationCameraModeController:(id)controller rapNavigationTracker:(id)tracker;
- (NavContainerViewController)containerViewController;
- (NavTrafficIncidentContaineeViewController)trafficIncidentViewController;
- (NavTrafficIncidentCoordinator)navTrafficIncidentCoordinator;
- (NavTrayViewController)navigationTrayContaineeViewController;
- (NavigationCameraModeControlling)navigationCameraModeController;
- (NavigationRouteDetouring)routeDetourer;
- (NavigationRouteHistoryInfoProviding)routeInfoProvider;
- (PlaceCardViewController)placecardViewController;
- (SearchViewController)searchHomeViewController;
- (SimpleResultsViewController)simpleResultsViewController;
- (_TtC4Maps38RouteAnnotationContaineeViewController)routeAnnotationViewController;
- (double)mapViewYaw;
- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)c;
- (int)currentUITargetForAnalytics;
- (int64_t)displayedViewMode;
- (int64_t)excludedContentForMapItem:(id)item;
- (int64_t)navigationTransportType;
- (unint64_t)activeSharingCount;
- (unint64_t)currentMapViewZoom;
- (unint64_t)navigationCameraHeadingOverride;
- (unint64_t)navigationCameraMode;
- (void)_presentTrayWithDefaultLayout:(BOOL)layout animated:(BOOL)animated;
- (void)_selectedVolumeLevelHasChanged:(int64_t)changed;
- (void)_toggleCameraHeadingIfNeeded;
- (void)_willDismissNavMode;
- (void)categoryList:(id)list selectedSearchCategory:(id)category;
- (void)clearSearch;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)detourToMapItem:(id)item;
- (void)detourToWaypoint:(id)waypoint;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step;
- (void)dismissAddStopAnimated:(BOOL)animated;
- (void)dismissCategoryList:(id)list;
- (void)dismissIncidentReportingViewController:(id)controller;
- (void)dismissModalContainee;
- (void)dismissPedestrianARTeachableMomentCardIfNecessary;
- (void)dismissPlacecard;
- (void)dismissReportAnIncidentAnimated:(BOOL)animated;
- (void)dismissSearchAlongRoute;
- (void)dismissShareETA;
- (void)dismissTrafficIncidentViewController:(id)controller;
- (void)dismissTray;
- (void)dismissVoiceVolumeControlAnimated:(BOOL)animated;
- (void)dismissVoiceVolumeControlViewController:(id)controller;
- (void)displayIncidentReportSubmissionWithItem:(id)item report:(id)report;
- (void)displayIncidentReporting;
- (void)displayVoiceVolumeControl;
- (void)enterPedestrianAR;
- (void)exitPedestrianAR;
- (void)handleSearchActionUsingSearchFieldItem:(id)item withUserInfo:(id)info;
- (void)hideJunctionViewIfNeeded;
- (void)incidentReportSubmissionContaineeDidFinish:(id)finish;
- (void)incidentReportingViewController:(id)controller selectedTrafficIncidentItem:(id)item atLocation:(id)location;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)mapView:(id)view didUpdateYaw:(double)yaw;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)zoom;
- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)zoom;
- (void)mapViewNavigationCameraHasStartedPanning:(id)panning;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning;
- (void)mapViewZoomController:(id)controller didChangeMapViewZoom:(unint64_t)zoom;
- (void)openShareETAController;
- (void)pauseNavigation;
- (void)personalizedItemSourceDidChangeItems:(id)items;
- (void)placeCardViewController:(id)controller doDirectionItem:(id)item userInfo:(id)info;
- (void)placeCardViewController:(id)controller openURL:(id)l;
- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type;
- (void)pptTestTransitionBetweenFullAndLightGuidance;
- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated;
- (void)presentAddStopUsingCategories:(id)categories;
- (void)presentPlacecardViewController;
- (void)presentSearchAlongTheRouteResults;
- (void)presentSearchAlongTheRouteWithViewModel:(id)model;
- (void)presentSimpleResultsViewController;
- (void)presentTrafficIncidentViewController:(id)controller completion:(id)completion;
- (void)presentTray;
- (void)presentWithContainerViewController:(id)controller;
- (void)pressedEndWithSender:(id)sender feedback:(unint64_t)feedback;
- (void)pressedViewWaypoint:(id)waypoint;
- (void)recenterNavigation;
- (void)repeatGuidanceInstruction;
- (void)resetMapViewZoomToDefaultAndStartCameraTracking:(BOOL)tracking;
- (void)resumeNavigation;
- (void)selectMapItem:(id)item shouldRemoveResults:(BOOL)results hideAddStop:(BOOL)stop;
- (void)sendOtherEVStationsRequest:(unint64_t)request;
- (void)sender:(id)sender switchToNavigationCameraMode:(unint64_t)mode;
- (void)senderOpenListStep:(id)step fullscreen:(BOOL)fullscreen;
- (void)senderShareNavigation:(id)navigation;
- (void)setAppCoordinator:(id)coordinator;
- (void)setContainerViewController:(id)controller;
- (void)setCurrentSearchInfo:(id)info error:(id)error;
- (void)setDefaultContaineeViewControllerType:(unint64_t)type;
- (void)showJunctionViewIfNeeded;
- (void)showPedestrianARFeatureIntroTeachableMomentCard;
- (void)showPedestrianARRaiseToEnterTeachableMomentCard;
- (void)showVLF;
- (void)simpleResultsViewContoller:(id)contoller didTapOnAddStopWithSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller selectClusteredLabelMarker:(id)marker;
- (void)simpleResultsViewContoller:(id)contoller selectSearchResult:(id)result;
- (void)suppressTransitionsOfContainee:(id)containee;
- (void)toggleTemporaryStatusBar;
- (void)updateCameraForTraits:(id)traits containerStyle:(unint64_t)style;
- (void)viewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info;
- (void)viewController:(id)controller shareContactValue:(id)value;
- (void)viewController:(id)controller switchNavigationToRoute:(id)route;
- (void)viewController:(id)controller switchToMapViewZoom:(unint64_t)zoom;
- (void)viewController:(id)controller updateMapRect:(id)rect;
- (void)viewControllerOpenContactsSearch:(id)search;
@end

@implementation NavActionCoordinator

- (NavTrafficIncidentCoordinator)navTrafficIncidentCoordinator
{
  navTrafficIncidentCoordinator = self->_navTrafficIncidentCoordinator;
  if (!navTrafficIncidentCoordinator)
  {
    v4 = objc_alloc_init(NavTrafficIncidentCoordinator);
    v5 = self->_navTrafficIncidentCoordinator;
    self->_navTrafficIncidentCoordinator = v4;

    [(NavTrafficIncidentCoordinator *)self->_navTrafficIncidentCoordinator setPresentationDelegate:self];
    navTrafficIncidentCoordinator = self->_navTrafficIncidentCoordinator;
  }

  return navTrafficIncidentCoordinator;
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

- (void)placeCardViewController:(id)controller doDirectionItem:(id)item userInfo:(id)info
{
  endMapItem = [item endMapItem];
  [(NavActionCoordinator *)self detourToMapItem:endMapItem];
}

- (int64_t)displayedViewMode
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  displayedViewMode = [chromeViewController displayedViewMode];

  return displayedViewMode;
}

- (GEOMapServiceTraits)newTraits
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  return currentTraits;
}

- (BOOL)chromeDidClearMapSelection
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  trafficIncidentAlertCoordinator = [(NavActionCoordinator *)self trafficIncidentAlertCoordinator];
  trafficIncidentViewController = [trafficIncidentAlertCoordinator trafficIncidentViewController];

  if (currentViewController == trafficIncidentViewController)
  {
    navTrafficIncidentCoordinator = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
    trafficIncidentViewController2 = [navTrafficIncidentCoordinator trafficIncidentViewController];
    cardPresentationController = [trafficIncidentViewController2 cardPresentationController];
    [cardPresentationController wantsLayout:1];
  }

  else
  {
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v22[3] = objc_opt_class();
    [NSArray arrayWithObjects:v22 count:4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (objc_opt_isKindOfClass())
          {
            containerViewController2 = [(NavActionCoordinator *)self containerViewController];
            [containerViewController2 popLastViewControllerAnimated:1];

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return 1;
}

- (BOOL)chromeDidSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy featureID] || objc_msgSend(markerCopy, "hasBusinessID"))
  {
    if ([markerCopy featureID])
    {
      featureID = [markerCopy featureID];
    }

    else
    {
      featureID = [markerCopy businessID];
    }

    v6 = featureID;
    v7 = [MKMapItemIdentifier alloc];
    [markerCopy coordinate];
    v9 = v8;
    [markerCopy coordinate];
    v10 = [v7 initWithMUID:v6 resultProviderID:0 coordinate:v9];
    v11 = +[MKMapService sharedService];
    v21 = v10;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    containerViewController = [(NavActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    currentTraits = [chromeViewController currentTraits];
    v16 = [v11 ticketForIdentifiers:v12 traits:currentTraits];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100E8C924;
    v18[3] = &unk_10165FE18;
    v19 = markerCopy;
    selfCopy = self;
    [v16 submitWithHandler:v18 networkActivity:0];
  }

  return 1;
}

- (BOOL)chromeDidSelectTrafficIncident:(id)incident latitude:(id)latitude longitude:(id)longitude
{
  incidentCopy = incident;
  navTrafficIncidentCoordinator = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
  presentedAlert = [navTrafficIncidentCoordinator presentedAlert];

  if (presentedAlert)
  {
    navTrafficIncidentCoordinator2 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
    trafficIncidentViewController = [navTrafficIncidentCoordinator2 trafficIncidentViewController];
    cardPresentationController = [trafficIncidentViewController cardPresentationController];
    [cardPresentationController wantsLayout:2];
  }

  else
  {
    v12 = +[MKMapService sharedService];
    v13 = +[MKTrafficSupport GEOTrafficIncidentTypeForVKTrafficIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForVKTrafficIncidentType:", [incidentCopy type]);
    if (v13 >= 0x14)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
    }

    else
    {
      v14 = off_101657100[v13];
    }

    [v12 captureUserAction:1031 onTarget:505 eventValue:v14];

    trafficIncidentViewController2 = [(NavActionCoordinator *)self trafficIncidentViewController];
    [trafficIncidentViewController2 setIncident:incidentCopy];

    navTrafficIncidentCoordinator2 = [(NavActionCoordinator *)self containerViewController];
    trafficIncidentViewController = [(NavActionCoordinator *)self trafficIncidentViewController];
    [navTrafficIncidentCoordinator2 presentController:trafficIncidentViewController animated:1 useDefaultContaineeLayout:1];
  }

  return 1;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker
{
  markerCopy = marker;
  simpleResultsViewController = [(NavActionCoordinator *)self simpleResultsViewController];
  cluster = [simpleResultsViewController cluster];

  if (cluster != markerCopy)
  {
    simpleResultsViewController2 = [(NavActionCoordinator *)self simpleResultsViewController];
    [simpleResultsViewController2 clearCluster];
  }

  [(NavActionCoordinator *)self presentSimpleResultsViewController];
  simpleResultsViewController3 = [(NavActionCoordinator *)self simpleResultsViewController];
  currentSearchInfo = [(NavActionCoordinator *)self currentSearchInfo];
  [simpleResultsViewController3 setCluster:markerCopy sortAlphabetically:0 originalSearchInfo:currentSearchInfo];

  return 1;
}

- (BOOL)chromeDidSelectRouteAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  if ([annotationsCopy count])
  {
    firstObject = [annotationsCopy firstObject];
    routeAnnotationViewController = [(NavActionCoordinator *)self routeAnnotationViewController];
    [routeAnnotationViewController setRouteAnnotation:firstObject];

    containerViewController = [(NavActionCoordinator *)self containerViewController];
    routeAnnotationViewController2 = [(NavActionCoordinator *)self routeAnnotationViewController];
    [containerViewController presentController:routeAnnotationViewController2];

    navigationTransportType = [(NavActionCoordinator *)self navigationTransportType];
    v10 = navigationTransportType;
    if (navigationTransportType == 5 || navigationTransportType == 2)
    {
      firstObject2 = [annotationsCopy firstObject];
      styleAttributes = [firstObject2 styleAttributes];
      v13 = FeatureStyleAttributesFind();

      if (v13)
      {
        v14 = [NSNumber numberWithInt:0];
      }

      else
      {
        v14 = 0;
      }

      if (v10 == 2)
      {
        v15 = 312;
      }

      else
      {
        v15 = 67;
      }

      v16 = +[MKMapService sharedService];
      stringValue = [v14 stringValue];
      [v16 captureUserAction:v15 onTarget:505 eventValue:stringValue];
    }
  }

  return 1;
}

- (BOOL)chromeDidSelectTransitLineMarker:(id)marker
{
  markerCopy = marker;
  navTrafficIncidentCoordinator = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
  presentedAlert = [navTrafficIncidentCoordinator presentedAlert];

  if (presentedAlert)
  {
    navTrafficIncidentCoordinator2 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
    trafficIncidentViewController = [navTrafficIncidentCoordinator2 trafficIncidentViewController];
    cardPresentationController = [trafficIncidentViewController cardPresentationController];
    [cardPresentationController wantsLayout:2];
  }

  else
  {
    v10 = +[MKMapService sharedService];
    incident = [markerCopy incident];
    v12 = +[MKTrafficSupport GEOTrafficIncidentTypeForVKTrafficIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForVKTrafficIncidentType:", [incident type]);
    if (v12 >= 0x14)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_101657100[v12];
    }

    [v10 captureUserAction:1031 onTarget:505 eventValue:v13];

    incident2 = [markerCopy incident];
    trafficIncidentViewController2 = [(NavActionCoordinator *)self trafficIncidentViewController];
    [trafficIncidentViewController2 setIncident:incident2];

    navTrafficIncidentCoordinator2 = [(NavActionCoordinator *)self containerViewController];
    trafficIncidentViewController = [(NavActionCoordinator *)self trafficIncidentViewController];
    [navTrafficIncidentCoordinator2 presentController:trafficIncidentViewController animated:1 useDefaultContaineeLayout:1];
  }

  return 1;
}

- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy isRouteEta])
  {
    routeInfo = [markerCopy routeInfo];
    route = [routeInfo route];
    v6 = ([route source] & 0xFFFFFFFFFFFFFFFELL) != 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation
{
  mapItem = [annotation mapItem];
  if (mapItem)
  {
    [SARAnalytics captureMapSelectMapItem:mapItem];
    v5 = [[PlaceCardItem alloc] initWithMapItem:mapItem];
    containerViewController = [(NavActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      containerViewController2 = [(NavActionCoordinator *)self containerViewController];
      currentViewController2 = [containerViewController2 currentViewController];

      placeCardItem = [currentViewController2 placeCardItem];
      v12 = [(PlaceCardItem *)v5 isEqual:placeCardItem];

      if (v12)
      {
        goto LABEL_17;
      }
    }

    placecardViewController = [(NavActionCoordinator *)self placecardViewController];
    [placecardViewController resetState];
    navigationTransportType = [(NavActionCoordinator *)self navigationTransportType];
    v15 = 0;
    if (navigationTransportType > 1)
    {
      if (navigationTransportType != 2)
      {
        if (navigationTransportType == 5)
        {
          IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
          goto LABEL_15;
        }

LABEL_16:
        [placecardViewController setIsAdditionalStop:v15];
        [placecardViewController setExcludedContent:{-[NavActionCoordinator excludedContentForMapItem:](self, "excludedContentForMapItem:", mapItem)}];
        [placecardViewController setPlaceCardItem:v5 withHistory:0];
        [(NavActionCoordinator *)self presentPlacecardViewController];

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      if (navigationTransportType)
      {
        if (navigationTransportType == 1)
        {
          IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
LABEL_15:
          v15 = IsEnabled_Maps420;
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
      {
        v15 = 1;
        goto LABEL_16;
      }
    }

    IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
    goto LABEL_15;
  }

LABEL_18:

  return mapItem != 0;
}

- (void)simpleResultsViewContoller:(id)contoller selectClusteredLabelMarker:(id)marker
{
  markerCopy = marker;
  mapSelectionManager = [(NavActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager selectLabelMarker:markerCopy animated:1];
}

- (void)simpleResultsViewContoller:(id)contoller selectSearchResult:(id)result
{
  mapItem = [result mapItem];
  [(NavActionCoordinator *)self selectMapItem:mapItem shouldRemoveResults:0];
}

- (NavigationCameraModeControlling)navigationCameraModeController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationCameraModeController);

  return WeakRetained;
}

- (MapViewZoomDelegate)mapViewZoomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewZoomDelegate);

  return WeakRetained;
}

- (CustomPOIsController)customPOIsController
{
  WeakRetained = objc_loadWeakRetained(&self->_customPOIsController);

  return WeakRetained;
}

- (NavContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
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
  navigationTrayContaineeViewController = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  if (!navigationTrayContaineeViewController)
  {
    return 401;
  }

  v4 = navigationTrayContaineeViewController;
  navigationTrayContaineeViewController2 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  v6 = [navigationTrayContaineeViewController2 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v6)
  {
    return 401;
  }

  navigationTrayContaineeViewController3 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  currentUITargetForAnalytics = [navigationTrayContaineeViewController3 currentUITargetForAnalytics];

  return currentUITargetForAnalytics;
}

- (void)pptTestTransitionBetweenFullAndLightGuidance
{
  navigationCameraMode = [(NavActionCoordinator *)self navigationCameraMode];
  if (navigationCameraMode)
  {
    if (navigationCameraMode != 1)
    {
      return;
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  [(NavActionCoordinator *)self sender:self switchToNavigationCameraMode:v4];
}

- (void)mapViewZoomController:(id)controller didChangeMapViewZoom:(unint64_t)zoom
{
  controllerCopy = controller;
  navigationCameraMode = [(NavActionCoordinator *)self navigationCameraMode];
  lowGuidanceUserPreferredHeadingOverride = 0;
  if (zoom == 1 && navigationCameraMode == 1)
  {
    lowGuidanceUserPreferredHeadingOverride = [(NavActionCoordinator *)self lowGuidanceUserPreferredHeadingOverride];
  }

  navigationDisplay = [(NavActionCoordinator *)self navigationDisplay];
  cameraController = [navigationDisplay cameraController];
  [cameraController setNavigationCameraHeadingOverride:lowGuidanceUserPreferredHeadingOverride];

  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController mapViewZoomController:controllerCopy didChangeMapViewZoom:zoom];

  mapViewZoomDelegate = [(NavActionCoordinator *)self mapViewZoomDelegate];
  [mapViewZoomDelegate navActionCoordinator:self didChangeMapViewZoom:zoom];
}

- (void)_selectedVolumeLevelHasChanged:(int64_t)changed
{
  if (changed)
  {
    v3 = 3054;
  }

  else
  {
    v3 = 529;
  }

  if (changed == 2)
  {
    v4 = 528;
  }

  else
  {
    v4 = v3;
  }

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:v4 onTarget:611 eventValue:0];
}

- (void)dismissVoiceVolumeControlViewController:(id)controller
{
  controllerCopy = controller;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  if (currentViewController == controllerCopy)
  {

    [(NavActionCoordinator *)self dismissVoiceVolumeControlAnimated:1];
  }
}

- (void)incidentReportingViewController:(id)controller selectedTrafficIncidentItem:(id)item atLocation:(id)location
{
  locationCopy = location;
  itemCopy = item;
  v9 = -[TrafficIncidentReport initWithUserLocation:type:userPath:]([TrafficIncidentReport alloc], "initWithUserLocation:type:userPath:", locationCopy, [itemCopy incidentType], 2);

  [(NavActionCoordinator *)self displayIncidentReportSubmissionWithItem:itemCopy report:v9];
}

- (void)dismissIncidentReportingViewController:(id)controller
{
  controllerCopy = controller;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  if (currentViewController == controllerCopy)
  {

    [(NavActionCoordinator *)self dismissReportAnIncidentAnimated:1];
  }
}

- (void)categoryList:(id)list selectedSearchCategory:(id)category
{
  categoryCopy = category;
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = categoryCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Selected SAR category: %@", &v17, 0xCu);
  }

  v7 = objc_opt_new();
  [v7 setSearchCategory:categoryCopy];
  v8 = [GuidanceSearchResultsCategoryDataProvider alloc];
  v9 = +[MKMapService sharedService];
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  v12 = [(GuidanceSearchResultsCategoryDataProvider *)v8 initWithSearchItem:v7 mapService:v9 chromeViewController:chromeViewController];

  v13 = [GuidanceSearchResultsViewModel alloc];
  routeInfoProvider = [(NavActionCoordinator *)self routeInfoProvider];
  mapItemDisplayer = [(NavActionCoordinator *)self mapItemDisplayer];
  v16 = [(GuidanceSearchResultsViewModel *)v13 initWithDataProvider:v12 navActionCoordinator:self routeInfoProvider:routeInfoProvider mapItemDisplayer:mapItemDisplayer];

  [(NavActionCoordinator *)self presentSearchAlongTheRouteWithViewModel:v16];
}

- (void)dismissCategoryList:(id)list
{
  listCopy = list;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  if (currentViewController == listCopy)
  {

    [(NavActionCoordinator *)self dismissAddStopAnimated:1];
  }
}

- (void)simpleResultsViewContoller:(id)contoller didTapOnAddStopWithSearchResult:(id)result
{
  mapItem = [result mapItem];
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = mapItem;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Selected map item : %@ while adding a stop in navigation", &v7, 0xCu);
  }

  if (mapItem)
  {
    [(NavActionCoordinator *)self detourToMapItem:mapItem];
  }
}

- (void)dismissTrafficIncidentViewController:(id)controller
{
  controllerCopy = controller;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  if (currentViewController == controllerCopy)
  {
    [(NavActionCoordinator *)self presentTray];
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 showJunctionViewIfNeeded];
  }
}

- (void)presentTrafficIncidentViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  [(NavActionCoordinator *)self setDisplayingTrafficIncident:1];
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController presentController:controllerCopy animated:1 completion:completionCopy];

  containerViewController2 = [(NavActionCoordinator *)self containerViewController];
  [containerViewController2 hideJunctionViewIfNeeded];
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  v5 = [(NavActionCoordinator *)self mapSelectionManager:view];
  hasSelection = [v5 hasSelection];

  if (hasSelection)
  {
    mapSelectionManager = [(NavActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager clearSelection];
  }

  else
  {
    if ([(NavActionCoordinator *)self isSearchingAlongTheRoute])
    {
      +[SARAnalytics captureMapTapToHideTray];
    }

    navigationTrayContaineeViewController = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
    mapSelectionManager = [navigationTrayContaineeViewController cardPresentationController];

    if ([mapSelectionManager containeeLayout] != 1)
    {
      [mapSelectionManager wantsLayout:1];
    }
  }
}

- (void)mapView:(id)view didUpdateYaw:(double)yaw
{
  viewCopy = view;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 mapView:viewCopy didUpdateYaw:yaw];
  }
}

- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)zoom
{
  zoomCopy = zoom;
  self->_navCameraZoomed = 0;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 mapViewNavigationCameraDidReturnToDefaultZoom:zoomCopy];
  }
}

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)zoom
{
  zoomCopy = zoom;
  self->_navCameraZoomed = 1;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 mapViewNavigationCameraDidLeaveDefaultZoom:zoomCopy];
  }
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning
{
  panningCopy = panning;
  self->_navCameraPanned = 0;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 mapViewNavigationCameraHasStoppedPanning:panningCopy];
  }
}

- (void)mapViewNavigationCameraHasStartedPanning:(id)panning
{
  panningCopy = panning;
  self->_navCameraPanned = 1;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 mapViewNavigationCameraHasStartedPanning:panningCopy];
  }
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  if (!markerCopy)
  {
    navigationDisplay = [(NavActionCoordinator *)self navigationDisplay];
    [navigationDisplay startMotion:1];
  }

  mapSelectionManager = [(NavActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager mapDidSelectLabelMarker:markerCopy];
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  navTrafficIncidentCoordinator = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
  presentedAlert = [navTrafficIncidentCoordinator presentedAlert];
  if (presentedAlert)
  {
    v8 = presentedAlert;
    isRouteEta = [markerCopy isRouteEta];

    if ((isRouteEta & 1) == 0)
    {
      navTrafficIncidentCoordinator2 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
      presentedAlert2 = [navTrafficIncidentCoordinator2 presentedAlert];
      incident = [presentedAlert2 incident];
      incidentId = [incident incidentId];

      incident2 = [markerCopy incident];
      uniqueString = [incident2 uniqueString];

      v16 = [incidentId isEqualToString:uniqueString];
      goto LABEL_14;
    }
  }

  else
  {
  }

  incidentId = [markerCopy featureAnnotation];
  if ([incidentId conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
  {
    mapItem = [incidentId mapItem];
    v16 = mapItem != 0;
  }

  else
  {
    v16 = (![markerCopy isCluster] || objc_msgSend(markerCopy, "clusterFeatureCount")) && ((GEOConfigGetBOOL() & 1) != 0 || (objc_msgSend(markerCopy, "isTrafficIncident") & 1) != 0 || (objc_msgSend(markerCopy, "isRouteEta") & 1) != 0 || (objc_msgSend(markerCopy, "isRouteAnnotation") & 1) != 0 || objc_msgSend(markerCopy, "clusterFeatureCount") > 1);
  }

LABEL_14:

  return v16;
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  stateCopy = state;
  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
  {
    [(NavActionCoordinator *)self selectMapItem:0 shouldRemoveResults:0];
    containerViewController = [(NavActionCoordinator *)self containerViewController];
    v7 = [containerViewController controllerIsInStack:self->_resultsViewController];

    if ((v7 & 1) == 0)
    {
      [(NavActionCoordinator *)self recenterNavigation];
      [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    mapSelectionManager = [(NavActionCoordinator *)self mapSelectionManager];
    mapView = [mapSelectionManager mapView];
    [mapView _deselectLabelMarkerAnimated:1];
  }

  containerViewController2 = [(NavActionCoordinator *)self containerViewController];
  [containerViewController2 popLastViewControllerAnimated:1 useDefaultContaineeLayout:1];
}

- (void)suppressTransitionsOfContainee:(id)containee
{
  containeeCopy = containee;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController suppressTransitionsOfContainee:containeeCopy];
}

- (void)hideJunctionViewIfNeeded
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController hideJunctionViewIfNeeded];
}

- (void)showJunctionViewIfNeeded
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController showJunctionViewIfNeeded];
}

- (void)_toggleCameraHeadingIfNeeded
{
  if ([(NavActionCoordinator *)self navigationCameraMode]== 1)
  {
    navigationCameraHeadingOverride = [(NavActionCoordinator *)self navigationCameraHeadingOverride];
    v4 = navigationCameraHeadingOverride != 1;
    v5 = sub_100035E6C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 134218240;
      v11 = navigationCameraHeadingOverride;
      v12 = 2048;
      v13 = navigationCameraHeadingOverride != 1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "toggleCameraHeading: from %lu to %lu", &v10, 0x16u);
    }

    navigationDisplay = [(NavActionCoordinator *)self navigationDisplay];
    cameraController = [navigationDisplay cameraController];
    [cameraController setNavigationCameraHeadingOverride:v4];

    navigationDisplay2 = [(NavActionCoordinator *)self navigationDisplay];
    cameraController2 = [navigationDisplay2 cameraController];
    -[NavActionCoordinator setLowGuidanceUserPreferredHeadingOverride:](self, "setLowGuidanceUserPreferredHeadingOverride:", [cameraController2 navigationCameraHeadingOverride]);
  }
}

- (void)dismissTray
{
  navigationTrayContaineeViewController = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  cardPresentationController = [navigationTrayContaineeViewController cardPresentationController];
  [cardPresentationController wantsLayout:1];
}

- (void)dismissVoiceVolumeControlAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Dismiss Voice Volume Control", v10, 2u);
  }

  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 popLastViewControllerAnimated:animatedCopy];
  }
}

- (void)dismissShareETA
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 popLastViewControllerAnimated:0];
  }

  containerViewController3 = [(NavActionCoordinator *)self containerViewController];
  currentViewController2 = [containerViewController3 currentViewController];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    containerViewController4 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController4 popLastViewControllerAnimated:0];
  }
}

- (void)dismissModalContainee
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 popLastViewControllerAnimated:0];
  }
}

- (void)clearSearch
{
  resultsViewController = self->_resultsViewController;
  self->_resultsViewController = 0;

  searchHomeViewController = self->_searchHomeViewController;
  if (searchHomeViewController)
  {

    [(SearchViewController *)searchHomeViewController cleanSearch];
  }
}

- (void)dismissSearchAlongRoute
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];
  }

  [(NavActionCoordinator *)self clearSearch];
  mapItemDisplayer = [(NavActionCoordinator *)self mapItemDisplayer];
  [mapItemDisplayer removeMapItems];

  [(NavActionCoordinator *)self recenterNavigation];
  searchHomeViewController = self->_searchHomeViewController;

  [(SearchViewController *)searchHomeViewController invalidateSearchSession];
}

- (void)dismissPlacecard
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 popLastViewControllerAnimated:0];

    if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
    {
      containerViewController3 = [(NavActionCoordinator *)self containerViewController];
      v8 = [containerViewController3 controllerIsInStack:self->_resultsViewController];

      if ((v8 & 1) == 0)
      {
        [(NavActionCoordinator *)self recenterNavigation];

        [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];
      }
    }
  }
}

- (BOOL)shouldShowNavRecenterButton
{
  navigationDisplay = [(NavActionCoordinator *)self navigationDisplay];
  if ([navigationDisplay isTracking])
  {
    mapViewZoomController = [(NavActionCoordinator *)self mapViewZoomController];
    zoom = [mapViewZoomController zoom];
    if (zoom == [(NavActionCoordinator *)self defaultMapViewZoom]&& ![(NavActionCoordinator *)self isNavCameraPanned])
    {
      isNavCameraZoomed = [(NavActionCoordinator *)self isNavCameraZoomed];
    }

    else
    {
      isNavCameraZoomed = 1;
    }
  }

  else
  {
    isNavCameraZoomed = 0;
  }

  return isNavCameraZoomed;
}

- (void)toggleTemporaryStatusBar
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController toggleTemporaryStatusBar];
}

- (void)repeatGuidanceInstruction
{
  v2 = +[MNNavigationService sharedService];
  [v2 repeatCurrentGuidance:0];
}

- (void)updateCameraForTraits:(id)traits containerStyle:(unint64_t)style
{
  traitsCopy = traits;
  mapViewZoomController = [(NavActionCoordinator *)self mapViewZoomController];
  [mapViewZoomController updateCameraForTraits:traitsCopy containerStyle:style];
}

- (void)recenterNavigation
{
  mapViewZoomController = [(NavActionCoordinator *)self mapViewZoomController];
  zoom = [mapViewZoomController zoom];
  defaultMapViewZoom = [(NavActionCoordinator *)self defaultMapViewZoom];

  if (zoom == defaultMapViewZoom)
  {
    containerViewController = [(NavActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    mapView = [chromeViewController mapView];

    v9 = sub_100798240();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[NavActionCoordinator recenterNavigation]";
      v13 = 2114;
      v14 = mapView;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, navigationCameraReturnToPuck! on mapView: %{public}@", buf, 0x16u);
    }

    [mapView navigationCameraReturnToPuck];
  }

  else
  {
    mapViewZoomController2 = [(NavActionCoordinator *)self mapViewZoomController];
    [mapViewZoomController2 setZoomTo:{-[NavActionCoordinator defaultMapViewZoom](self, "defaultMapViewZoom")}];
  }
}

- (void)viewController:(id)controller updateMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v6 = rect.var0.var1;
  v7 = rect.var0.var0;
  mapViewZoomController = [(NavActionCoordinator *)self mapViewZoomController];
  [mapViewZoomController setZoomToTargetWithRect:{v7, v6, var0, var1}];
}

- (void)detourToWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  mapSelectionManager = [(NavActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager clearSelection];

  routeDetourer = [(NavActionCoordinator *)self routeDetourer];
  [routeDetourer detourRouteToWaypoint:waypointCopy];

  [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];

  [(NavActionCoordinator *)self dismissSearchAlongRoute];
}

- (void)detourToMapItem:(id)item
{
  itemCopy = item;
  mapSelectionManager = [(NavActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager clearSelection];

  routeDetourer = [(NavActionCoordinator *)self routeDetourer];
  [routeDetourer detourRouteToMapItem:itemCopy];

  [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];

  [(NavActionCoordinator *)self dismissSearchAlongRoute];
}

- (void)personalizedItemSourceDidChangeItems:(id)items
{
  itemsCopy = items;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    resultsViewController = self->_resultsViewController;
    allItems = [itemsCopy allItems];
    [(GuidanceSearchResultsViewController *)resultsViewController didChangePersonalItems:allItems];
  }

  else
  {
    v10 = sub_100035E6C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ignoring personalized items change as SAR isn't active", v11, 2u);
    }
  }
}

- (void)selectMapItem:(id)item shouldRemoveResults:(BOOL)results hideAddStop:(BOOL)stop
{
  stopCopy = stop;
  resultsCopy = results;
  itemCopy = item;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  mapView = [chromeViewController mapView];
  objc_initWeak(&location, mapView);

  if (!itemCopy)
  {
    v14 = objc_loadWeakRetained(&location);
    [(PlaceCardItem *)v14 _deselectLabelMarkerAnimated:1];
    goto LABEL_26;
  }

  v12 = sub_100035E6C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    name = [itemCopy name];
    *buf = 138412290;
    v34 = name;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SAR: Opening placecard for: %@", buf, 0xCu);
  }

  v14 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];
  containerViewController2 = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController2 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (-[NavActionCoordinator containerViewController](self, "containerViewController"), v18 = objc_claimAutoreleasedReturnValue(), [v18 currentViewController], v19 = objc_claimAutoreleasedReturnValue(), v18, objc_msgSend(v19, "placeCardItem"), v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = -[PlaceCardItem isEqual:](v14, "isEqual:", v20), v20, v19, (v18 & 1) == 0))
  {
    placecardViewController = [(NavActionCoordinator *)self placecardViewController];
    [placecardViewController resetState];
    if (stopCopy)
    {
      v22 = 0;
LABEL_21:
      [placecardViewController setIsAdditionalStop:v22];
      [placecardViewController setExcludedContent:{-[NavActionCoordinator excludedContentForMapItem:](self, "excludedContentForMapItem:", itemCopy) | stopCopy}];
      [placecardViewController setPlaceCardItem:v14 withHistory:0];
      [(NavActionCoordinator *)self presentPlacecardViewController];
      if (resultsCopy)
      {
        v25 = sub_100035E6C();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "SAR: Removing resultsViewController from the stack.", buf, 2u);
        }

        containerViewController3 = [(NavActionCoordinator *)self containerViewController];
        [containerViewController3 removeControllerFromStack:self->_resultsViewController];

        resultsViewController = self->_resultsViewController;
        self->_resultsViewController = 0;
      }

      v14 = [[PersonalizedMapItemKey alloc] initWithMapItem:itemCopy];
      customPOIsController = [(NavActionCoordinator *)self customPOIsController];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100FBB320;
      v29[3] = &unk_101660180;
      objc_copyWeak(&v31, &location);
      v30 = itemCopy;
      [customPOIsController customFeatureForKey:v14 completion:v29];

      objc_destroyWeak(&v31);
      goto LABEL_26;
    }

    navigationTransportType = [(NavActionCoordinator *)self navigationTransportType];
    v22 = 0;
    if (navigationTransportType > 1)
    {
      if (navigationTransportType != 2)
      {
        if (navigationTransportType != 5)
        {
          goto LABEL_21;
        }

        IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
        goto LABEL_20;
      }
    }

    else
    {
      if (navigationTransportType)
      {
        if (navigationTransportType != 1)
        {
          goto LABEL_21;
        }

        IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
LABEL_20:
        v22 = IsEnabled_Maps420;
        goto LABEL_21;
      }

      if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
      {
        v22 = 1;
        goto LABEL_21;
      }
    }

    IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
    goto LABEL_20;
  }

LABEL_26:

  objc_destroyWeak(&location);
}

- (void)viewController:(id)controller switchNavigationToRoute:(id)route
{
  routeCopy = route;
  v5 = +[MNNavigationService sharedService];
  route = [v5 route];
  v7 = [route isEqual:routeCopy];

  if ((v7 & 1) == 0)
  {
    trafficIncidentAlertCoordinator = [(NavActionCoordinator *)self trafficIncidentAlertCoordinator];
    presentedAlert = [trafficIncidentAlertCoordinator presentedAlert];

    if ([presentedAlert alertType] != 1 || (objc_msgSend(presentedAlert, "originalRoute"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", routeCopy), v10, (v11 & 1) == 0))
    {
      v12 = +[MNNavigationService sharedService];
      v13 = [v12 alternateRouteIndexForRoute:routeCopy];

      v14 = +[MNNavigationService sharedService];
      [v14 switchToRoute:routeCopy];

      v15 = +[MKMapService sharedService];
      [v15 captureUserAction:3015 onTarget:505 eventValue:0 routeIndex:v13];
    }
  }
}

- (int64_t)navigationTransportType
{
  v2 = +[MNNavigationService sharedService];
  if ([v2 isInNavigatingState])
  {
    navigationTransportType = [v2 navigationTransportType];
  }

  else
  {
    navigationTransportType = [v2 desiredTransportType];
  }

  if (navigationTransportType - 1 > 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_101216278[navigationTransportType - 1];
  }

  return v4;
}

- (unint64_t)navigationCameraMode
{
  navigationCameraModeController = [(NavActionCoordinator *)self navigationCameraModeController];
  navigationCameraMode = [navigationCameraModeController navigationCameraMode];

  return navigationCameraMode;
}

- (void)sender:(id)sender switchToNavigationCameraMode:(unint64_t)mode
{
  navigationCameraModeController = [(NavActionCoordinator *)self navigationCameraModeController];
  [navigationCameraModeController setNavigationCameraMode:mode];

  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController updateLayoutAnimated:1];
}

- (void)viewController:(id)controller switchToMapViewZoom:(unint64_t)zoom
{
  if (zoom != 2)
  {
    mapViewZoomController = [(NavActionCoordinator *)self mapViewZoomController];
    [mapViewZoomController setZoomTo:zoom];

    navigationTrayContaineeViewController = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
    cardPresentationController = [navigationTrayContaineeViewController cardPresentationController];

    if ([cardPresentationController containeeLayout] != 1)
    {
      [cardPresentationController wantsLayout:1];
    }
  }
}

- (void)viewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info
{
  itemCopy = item;
  v7 = [GuidanceSearchResultsCategoryDataProvider alloc];
  v8 = +[MKMapService sharedService];
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  v15 = [(GuidanceSearchResultsCategoryDataProvider *)v7 initWithSearchItem:itemCopy mapService:v8 chromeViewController:chromeViewController];

  v11 = [GuidanceSearchResultsViewModel alloc];
  routeInfoProvider = [(NavActionCoordinator *)self routeInfoProvider];
  mapItemDisplayer = [(NavActionCoordinator *)self mapItemDisplayer];
  v14 = [(GuidanceSearchResultsViewModel *)v11 initWithDataProvider:v15 navActionCoordinator:self routeInfoProvider:routeInfoProvider mapItemDisplayer:mapItemDisplayer];

  [(NavActionCoordinator *)self presentSearchAlongTheRouteWithViewModel:v14];
}

- (void)resumeNavigation
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User pressed resume", v4, 2u);
  }

  v3 = +[MNNavigationService sharedService];
  [v3 advanceToNextLeg];
}

- (void)pauseNavigation
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User pressed pause", v6, 2u);
  }

  v4 = +[MNNavigationService sharedService];
  [v4 stopNavigationWithReason:3];

  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController willDismissNavigationAnimated:1];
}

- (void)_willDismissNavMode
{
  mapViewZoomController = [(NavActionCoordinator *)self mapViewZoomController];
  [mapViewZoomController setZoomTo:{-[NavActionCoordinator defaultMapViewZoom](self, "defaultMapViewZoom")}];

  mapViewZoomController2 = [(NavActionCoordinator *)self mapViewZoomController];
  [mapViewZoomController2 updateCameraForTraits:0 containerStyle:0];
}

- (BOOL)canPresentRapFeedbackView
{
  rapNavigationTracker = [(NavActionCoordinator *)self rapNavigationTracker];
  canPresentRapFeedbackView = [rapNavigationTracker canPresentRapFeedbackView];

  return canPresentRapFeedbackView;
}

- (void)pressedEndWithSender:(id)sender feedback:(unint64_t)feedback
{
  senderCopy = sender;
  v7 = sub_100035E6C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "User pressed end", buf, 2u);
  }

  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController willDismissNavigationAnimated:1];

  [(NavActionCoordinator *)self _willDismissNavMode];
  if (feedback >= 2)
  {
    if (feedback == 2)
    {
      objc_initWeak(buf, self);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100FBBBD0;
      v10[3] = &unk_1016600B8;
      objc_copyWeak(&v11, buf);
      [UIApplication _maps_unlockApplicationWithCompletion:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
    [WeakRetained endNavigationAndReturnToRoutePlanning:0];
  }
}

- (void)pressedViewWaypoint:(id)waypoint
{
  mkMapItem = [waypoint mkMapItem];
  [(NavActionCoordinator *)self selectMapItem:mkMapItem shouldRemoveResults:0 hideAddStop:1];
}

- (void)senderOpenListStep:(id)step fullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  stepCopy = step;
  v7 = +[MNNavigationService sharedService];
  navigationTransportType = [v7 navigationTransportType];

  if (navigationTransportType == 2)
  {
    +[RouteStepListMetrics routePlanningMetrics];
  }

  else
  {
    +[RouteStepListMetrics navigationMetrics];
  }
  v9 = ;
  v10 = navigationTransportType == 2;
  v11 = [[RouteStepListViewController alloc] initWithOptions:23 metrics:v9];
  [(RouteStepListViewController *)v11 setDelegate:self];
  [(RouteStepListViewController *)v11 setDisplayRouteFromNavigationService:1];
  [(RouteStepListViewController *)v11 setAllowsSelection:v10];
  v12 = [[ModalContaineeViewController alloc] initWithChildViewController:v11 visualEffectDisabled:1 fullScreen:1];
  headerView = [(ModalContaineeViewController *)v12 headerView];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Directions_Navigation" value:@"localized string not found" table:0];
  [headerView setTitle:v15];

  objc_initWeak(&location, self);
  if (fullscreenCopy)
  {
    [(ContaineeViewController *)v12 setKeepOriginalSafeInsets:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100FBC3AC;
    v20[3] = &unk_101661B98;
    v16 = &v21;
    objc_copyWeak(&v21, &location);
    [(ModalContaineeViewController *)v12 setBlockAlongDismissContainee:v20];
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100FBC400;
    v18[3] = &unk_101661B98;
    v16 = &v19;
    objc_copyWeak(&v19, &location);
    [(ModalContaineeViewController *)v12 setBlockAlongDismissContainee:v18];
  }

  objc_destroyWeak(v16);
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v12];

  objc_destroyWeak(&location);
}

- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step
{
  stepCopy = step;
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  isForWalkingNav = [containerViewController isForWalkingNav];

  if (isForWalkingNav)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 showSignForStep:stepCopy];

    containerViewController3 = [(NavActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController3 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(NavActionCoordinator *)self dismissModalContainee];
      [(NavActionCoordinator *)self dismissTray];
    }

    else
    {
      containerViewController4 = [(NavActionCoordinator *)self containerViewController];
      [containerViewController4 setLayoutIfSupported:1 animated:1];
    }
  }
}

- (void)showVLF
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    currentViewController2 = [containerViewController2 currentViewController];
    [currentViewController2 handleVLFPuckTapped];
  }

  else
  {
    objc_initWeak(&location, self);
    containerViewController3 = [(NavActionCoordinator *)self containerViewController];
    containerViewController4 = [(NavActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController4 chromeViewController];
    appCoordinator = [chromeViewController appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100FBC7E8;
    v20[3] = &unk_1016619A8;
    objc_copyWeak(&v21, &location);
    v12 = [containerViewController3 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:baseActionCoordinator completion:v20];

    if ((v12 & 1) == 0)
    {
      containerViewController5 = [(NavActionCoordinator *)self containerViewController];
      chromeViewController2 = [containerViewController5 chromeViewController];
      userLocationView = [chromeViewController2 userLocationView];

      if ([userLocationView isVLFBannerVisible])
      {
        isVLFPuckVisible = 2;
      }

      else
      {
        isVLFPuckVisible = [userLocationView isVLFPuckVisible];
      }

      v17 = [[VLFContaineeViewController alloc] initWithEntryPoint:isVLFPuckVisible];
      [(ContaineeViewController *)v17 setContaineeDelegate:self];
      containerViewController6 = [(NavActionCoordinator *)self containerViewController];
      [containerViewController6 presentController:v17];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)dismissPedestrianARTeachableMomentCardIfNecessary
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    currentViewController2 = [containerViewController2 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  v8 = sub_100035E6C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    containerViewController3 = [(NavActionCoordinator *)self containerViewController];
    currentViewController3 = [containerViewController3 currentViewController];
    v14 = 138412290;
    v15 = currentViewController3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Dismissing Pedestrian AR teachable moment card: %@", &v14, 0xCu);
  }

  containerViewController4 = [(NavActionCoordinator *)self containerViewController];
  containerViewController5 = [(NavActionCoordinator *)self containerViewController];
  currentViewController4 = [containerViewController5 currentViewController];
  [containerViewController4 removeControllerFromStack:currentViewController4];
}

- (void)showPedestrianARRaiseToEnterTeachableMomentCard
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = sub_100035E6C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "The Pedestrian AR raise to enter teachable moment card is already visible; can't show twice", buf, 2u);
    }
  }

  else
  {
    v8 = objc_alloc_init(PedestrianARRaiseToEnterTeachableMomentContaineeViewController);
    [(ContaineeViewController *)v8 setContaineeDelegate:self];
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 presentController:v8 animated:1];
  }
}

- (void)showPedestrianARFeatureIntroTeachableMomentCard
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = sub_100035E6C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "The Pedestrian AR feature intro teachable moment card is already visible; can't show twice", buf, 2u);
    }
  }

  else
  {
    v8 = [[PedestrianARFeatureIntroTeachableMomentContaineeViewController alloc] initWithCoordinator:self];
    [(ContaineeViewController *)v8 setContaineeDelegate:self];
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 presentController:v8 animated:1];
  }
}

- (BOOL)isWeatherPopoverActive
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  _maps_mapsSceneDelegate = [containerViewController _maps_mapsSceneDelegate];
  topMostPresentedViewController = [_maps_mapsSceneDelegate topMostPresentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isTeachableMomentCardActive
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)exitPedestrianAR
{
  appCoordinator = [(NavActionCoordinator *)self appCoordinator];
  [appCoordinator exitPedestrianAR];
}

- (void)enterPedestrianAR
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will enter pedestrian AR from navigation", buf, 2u);
  }

  if (![(NavActionCoordinator *)self canEnterPedestrianAR])
  {
    v25 = sub_100035E6C();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_30:

      return;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_29;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(NavActionCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy, v30];

        goto LABEL_27;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy];
LABEL_27:

LABEL_29:
    *buf = 138543362;
    v47 = selfCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot enter pedestrian AR at the moment", buf, 0xCu);

    goto LABEL_30;
  }

  objc_initWeak(&location, self);
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  containerViewController2 = [(NavActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController2 chromeViewController];
  appCoordinator = [chromeViewController appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100FBD710;
  v43[3] = &unk_1016619A8;
  objc_copyWeak(&v44, &location);
  v9 = [containerViewController showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:baseActionCoordinator completion:v43];

  if ((v9 & 1) == 0)
  {
    containerViewController3 = [(NavActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController3 currentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = currentViewController;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    containerViewController4 = [(NavActionCoordinator *)self containerViewController];
    currentViewController2 = [containerViewController4 currentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = currentViewController2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v13)
    {
      v18 = sub_100035E6C();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
LABEL_42:
        v38 = v13;
LABEL_47:

        [(NavActionCoordinator *)self containeeViewControllerGoToPreviousState:v38 withSender:0];
        goto LABEL_48;
      }

      selfCopy2 = self;
      if (!selfCopy2)
      {
        selfCopy2 = @"<nil>";
        goto LABEL_41;
      }

      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      if (objc_opt_respondsToSelector())
      {
        v22 = [(NavActionCoordinator *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v23 = v22;
        if (v22 && ([v22 isEqualToString:v21] & 1) == 0)
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v21, selfCopy2, v23];

          goto LABEL_19;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v21, selfCopy2];
LABEL_19:

LABEL_41:
      *buf = 138543362;
      v47 = selfCopy2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] Feature intro teachable moment card is active; dismissing it before entering AR", buf, 0xCu);

      goto LABEL_42;
    }

    if (!v17)
    {
LABEL_48:
      appCoordinator2 = [(NavActionCoordinator *)self appCoordinator];
      containerViewController5 = [(NavActionCoordinator *)self containerViewController];
      route = [containerViewController5 route];
      guidanceObserver = [(NavActionCoordinator *)self guidanceObserver];
      [appCoordinator2 enterPedestrianARWithRoute:route guidanceObserver:guidanceObserver];

      goto LABEL_49;
    }

    v18 = sub_100035E6C();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
LABEL_46:
      v38 = v17;
      goto LABEL_47;
    }

    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_45;
    }

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    if (objc_opt_respondsToSelector())
    {
      v35 = [(NavActionCoordinator *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v36 = v35;
      if (v35 && ([v35 isEqualToString:v34] & 1) == 0)
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v34, selfCopy3, v36];

        goto LABEL_39;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v34, selfCopy3];
LABEL_39:

LABEL_45:
    *buf = 138543362;
    v47 = selfCopy3;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] Raise to enter teachable moment card is active; dismissing it before entering AR", buf, 0xCu);

    goto LABEL_46;
  }

LABEL_49:
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
}

- (BOOL)canEnterPedestrianAR
{
  if (!+[PedestrianARSessionTask isPedestrianARModeSupported])
  {
    pedestrianARSessionStateManager = sub_100035E6C();
    if (os_log_type_enabled(pedestrianARSessionStateManager, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v9 = "Cannot enter pedestrian AR because it's not supported on the current device";
LABEL_9:
      _os_log_impl(&_mh_execute_header, pedestrianARSessionStateManager, OS_LOG_TYPE_INFO, v9, &v13, 2u);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  containerViewController = [(NavActionCoordinator *)self containerViewController];
  route = [containerViewController route];

  if (!route)
  {
    pedestrianARSessionStateManager = sub_100035E6C();
    if (os_log_type_enabled(pedestrianARSessionStateManager, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v9 = "Cannot enter pedestrian AR without a route";
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  appCoordinator = [(NavActionCoordinator *)self appCoordinator];
  platformController = [appCoordinator platformController];
  pedestrianARSessionStateManager = [platformController pedestrianARSessionStateManager];

  if (([pedestrianARSessionStateManager shouldShowPedestrianAR]& 1) == 0)
  {
    v10 = sub_100035E6C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [pedestrianARSessionStateManager debugDescription];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Cannot enter pedestrian AR for state manager: %@", &v13, 0xCu);
    }

    goto LABEL_13;
  }

  v8 = 1;
LABEL_14:

  return v8;
}

- (BOOL)isPedestrianARShowingFailureView
{
  if (![(NavActionCoordinator *)self isPedestrianARActive])
  {
    return 0;
  }

  appCoordinator = [(NavActionCoordinator *)self appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  topContext = [chromeViewController topContext];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  appCoordinator2 = [(NavActionCoordinator *)self appCoordinator];
  chromeViewController2 = [appCoordinator2 chromeViewController];
  topContext2 = [chromeViewController2 topContext];
  fullscreenViewController = [topContext2 fullscreenViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = fullscreenViewController;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    isShowingFailureView = [v12 isShowingFailureView];
  }

  else
  {
    isShowingFailureView = 0;
  }

  return isShowingFailureView;
}

- (BOOL)isPedestrianARActive
{
  appCoordinator = [(NavActionCoordinator *)self appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  topContext = [chromeViewController topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)resetMapViewZoomToDefaultAndStartCameraTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  mapViewZoomController = [(NavActionCoordinator *)self mapViewZoomController];
  [mapViewZoomController setZoomTo:-[NavActionCoordinator defaultMapViewZoom](self startCameraTracking:{"defaultMapViewZoom"), trackingCopy}];
}

- (void)presentSearchAlongTheRouteResults
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (+[UIApplication _maps_isAnyCarPlayApplicationSceneForeground])
    {
      v6 = sub_100035E6C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Cannot show SAR results when carplay scene is foregrounded.", buf, 2u);
      }
    }

    else
    {
      [(NavActionCoordinator *)self setSearchingAlongTheRoute:1];
      v7 = objc_alloc_init(GuidanceSearchResultsViewController);
      resultsViewController = self->_resultsViewController;
      self->_resultsViewController = v7;

      [(GuidanceSearchResultsViewController *)self->_resultsViewController setNavContaineeDelegate:self];
      containerViewController2 = [(NavActionCoordinator *)self containerViewController];
      [containerViewController2 presentController:self->_resultsViewController];
    }
  }
}

- (void)presentSearchAlongTheRouteWithViewModel:(id)model
{
  modelCopy = model;
  [(NavActionCoordinator *)self setSearchingAlongTheRoute:1];
  resultsViewController = self->_resultsViewController;
  if (resultsViewController)
  {
    [(GuidanceSearchResultsViewController *)resultsViewController configureWithViewModel:modelCopy];
  }

  else
  {
    v5 = [[GuidanceSearchResultsViewController alloc] initWithViewModel:modelCopy];
    v6 = self->_resultsViewController;
    self->_resultsViewController = v5;

    [(GuidanceSearchResultsViewController *)self->_resultsViewController setNavContaineeDelegate:self];
  }

  containerViewController = [(NavActionCoordinator *)self containerViewController];
  [containerViewController presentController:self->_resultsViewController];
}

- (void)presentAddStopUsingCategories:(id)categories
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100FBE178;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  categoriesCopy = categories;
  v7 = categoriesCopy;
  v4 = objc_retainBlock(v6);
  v5 = 0;
  SBSGetScreenLockStatus();
  (v4[2])(v4);
}

- (void)sendOtherEVStationsRequest:(unint64_t)request
{
  [(NavActionCoordinator *)self setSearchingAlongTheRoute:1];
  v16[0] = &__kCFBooleanTrue;
  v15[0] = @"SearchSessionIsSearchAlongRoute";
  v15[1] = @"SearchSessionSearchAlongRouteImplicitRequestMUID";
  v5 = [NSNumber numberWithUnsignedLongLong:request];
  v15[2] = @"SearchSessionIsSearchAlongRouteEVStationRequest";
  v16[1] = v5;
  v16[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  v7 = objc_alloc_init(SearchFieldItem);
  appCoordinator = [(NavActionCoordinator *)self appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];

  if (baseActionCoordinator)
  {
    appCoordinator2 = [(NavActionCoordinator *)self appCoordinator];
    baseActionCoordinator2 = [appCoordinator2 baseActionCoordinator];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v13 = [v6 copy];
    [baseActionCoordinator2 viewController:WeakRetained doSearchItem:v7 withUserInfo:v13];
  }

  else
  {
    appCoordinator2 = sub_100035E6C();
    if (os_log_type_enabled(appCoordinator2, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, appCoordinator2, OS_LOG_TYPE_INFO, "The action coordinator is nil.", v14, 2u);
    }
  }
}

- (void)presentSimpleResultsViewController
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  simpleResultsViewController = [(NavActionCoordinator *)self simpleResultsViewController];

  if (currentViewController == simpleResultsViewController)
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController2 = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  simpleResultsViewController3 = objc_loadWeakRetained(&self->_containerViewController);
  simpleResultsViewController2 = [(NavActionCoordinator *)self simpleResultsViewController];
  if (isKindOfClass)
  {
    [simpleResultsViewController3 replaceCurrentWithController:simpleResultsViewController2];

LABEL_4:
    simpleResultsViewController3 = [(NavActionCoordinator *)self simpleResultsViewController];
    simpleResultsViewController2 = [simpleResultsViewController3 cardPresentationController];
    [simpleResultsViewController2 wantsLayout:2];
    goto LABEL_6;
  }

  [simpleResultsViewController3 presentController:simpleResultsViewController2];
LABEL_6:
}

- (void)presentPlacecardViewController
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  placecardViewController = [(NavActionCoordinator *)self placecardViewController];

  if (currentViewController == placecardViewController)
  {
    placecardViewController2 = [(NavActionCoordinator *)self placecardViewController];
    cardPresentationController = [placecardViewController2 cardPresentationController];
    [cardPresentationController wantsLayout:2];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    currentViewController2 = [WeakRetained currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = objc_loadWeakRetained(&self->_containerViewController);
    v10 = v9;
    if ((isKindOfClass & 1) == 0)
    {
      placecardViewController3 = [(NavActionCoordinator *)self placecardViewController];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100FBE9B0;
      v20[3] = &unk_101661738;
      v20[4] = self;
      [v10 presentController:placecardViewController3 animated:1 completion:v20];

      return;
    }

    placecardViewController2 = [v9 currentViewController];

    placecardViewController4 = [(NavActionCoordinator *)self placecardViewController];
    placeCardItem = [placecardViewController4 placeCardItem];
    mapItem = [placeCardItem mapItem];
    v14 = [placecardViewController2 containsMapItem:mapItem];

    placecardViewController6 = objc_loadWeakRetained(&self->_containerViewController);
    placecardViewController5 = [(NavActionCoordinator *)self placecardViewController];
    if (v14)
    {
      [placecardViewController6 presentController:placecardViewController5];
    }

    else
    {
      [placecardViewController6 replaceCurrentWithController:placecardViewController5];

      placecardViewController6 = [(NavActionCoordinator *)self placecardViewController];
      placecardViewController5 = [placecardViewController6 cardPresentationController];
      [placecardViewController5 wantsLayout:2];
    }
  }
}

- (void)dismissReportAnIncidentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Dismiss Report an Incident", v10, 2u);
  }

  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 popLastViewControllerAnimated:animatedCopy];
  }
}

- (void)dismissAddStopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Dismiss SAR category list", v10, 2u);
  }

  [(NavActionCoordinator *)self setSearchingAlongTheRoute:0];
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    [containerViewController2 popLastViewControllerAnimated:animatedCopy];
  }
}

- (SearchViewController)searchHomeViewController
{
  searchHomeViewController = self->_searchHomeViewController;
  if (!searchHomeViewController)
  {
    v4 = [[SearchViewController alloc] initWithSearchAlongRoute:1];
    v5 = self->_searchHomeViewController;
    self->_searchHomeViewController = v4;

    [(SearchViewController *)self->_searchHomeViewController setNavContaineeDelegate:self];
    containerViewController = [(NavActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    appCoordinator = [chromeViewController appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    [(ControlContaineeViewController *)self->_searchHomeViewController setDelegate:baseActionCoordinator];

    [(SearchViewController *)self->_searchHomeViewController setSearchingAlongTheRoute:1];
    containerViewController2 = [(NavActionCoordinator *)self containerViewController];
    chromeViewController2 = [containerViewController2 chromeViewController];
    personalizedItemManager = [chromeViewController2 personalizedItemManager];
    [(SearchViewController *)self->_searchHomeViewController setPersonalizedItemManager:personalizedItemManager];

    containerViewController3 = [(NavActionCoordinator *)self containerViewController];
    chromeViewController3 = [containerViewController3 chromeViewController];

    traitCollection = [chromeViewController3 traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (sub_10000FA08(chromeViewController3) == 1 && horizontalSizeClass == 2)
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }

    cardPresentationController = [(ContaineeViewController *)self->_searchHomeViewController cardPresentationController];
    [cardPresentationController setDefaultContaineeLayout:v18];

    searchHomeViewController = self->_searchHomeViewController;
  }

  return searchHomeViewController;
}

- (void)_presentTrayWithDefaultLayout:(BOOL)layout animated:(BOOL)animated
{
  selfCopy = self;
  [(NavActionCoordinator *)self setSearchingAlongTheRoute:0];
  [(NavActionCoordinator *)selfCopy setDisplayingTrafficIncident:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100FBEE60;
  v9[3] = &unk_101660130;
  v9[4] = selfCopy;
  animatedCopy = animated;
  layoutCopy = layout;
  v7 = objc_retainBlock(v9);
  v8 = +[UIApplication sharedApplication];
  LODWORD(selfCopy) = [v8 screenIsLocked];

  if (selfCopy)
  {
    [UIViewController _performWithoutDeferringTransitions:v7];
  }

  else
  {
    (v7[2])(v7);
  }
}

- (void)presentTray
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  v3 = byte_10195DF08;

  [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:v3];
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)routeAnnotationViewController
{
  routeAnnotationViewController = self->_routeAnnotationViewController;
  if (!routeAnnotationViewController)
  {
    v4 = [[_TtC4Maps38RouteAnnotationContaineeViewController alloc] initWithRouteAnnotation:0];
    v5 = self->_routeAnnotationViewController;
    self->_routeAnnotationViewController = v4;

    [(ContaineeViewController *)self->_routeAnnotationViewController setContaineeDelegate:self];
    routeAnnotationViewController = self->_routeAnnotationViewController;
  }

  return routeAnnotationViewController;
}

- (NavTrafficIncidentContaineeViewController)trafficIncidentViewController
{
  trafficIncidentViewController = self->_trafficIncidentViewController;
  if (!trafficIncidentViewController)
  {
    v4 = objc_alloc_init(NavTrafficIncidentContaineeViewController);
    v5 = self->_trafficIncidentViewController;
    self->_trafficIncidentViewController = v4;

    [(ContaineeViewController *)self->_trafficIncidentViewController setContaineeDelegate:self];
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100FBF0A0;
    v7[3] = &unk_101661B98;
    objc_copyWeak(&v8, &location);
    [(NavTrafficIncidentContaineeViewController *)self->_trafficIncidentViewController setDismissHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    trafficIncidentViewController = self->_trafficIncidentViewController;
  }

  return trafficIncidentViewController;
}

- (SimpleResultsViewController)simpleResultsViewController
{
  simpleResultsViewController = self->_simpleResultsViewController;
  if (!simpleResultsViewController)
  {
    v4 = [SimpleResultsViewController alloc];
    appCoordinator = [(NavActionCoordinator *)self appCoordinator];
    v6 = [(SimpleResultsViewController *)v4 initWithShareDelegate:appCoordinator visualEffectDisabled:1];
    v7 = self->_simpleResultsViewController;
    self->_simpleResultsViewController = v6;

    [(SimpleResultsViewController *)self->_simpleResultsViewController setResultsDelegate:self];
    [(ContaineeViewController *)self->_simpleResultsViewController setContaineeDelegate:self];
    [(SimpleResultsViewController *)self->_simpleResultsViewController setIsPresentingSearchAlongTheRouteResults:1];
    simpleResultsViewController = self->_simpleResultsViewController;
  }

  return simpleResultsViewController;
}

- (PlaceCardViewController)placecardViewController
{
  placecardViewController = self->_placecardViewController;
  if (!placecardViewController)
  {
    v4 = [[PlaceCardViewController alloc] initWithVisualEffectDisabled:1];
    v5 = self->_placecardViewController;
    self->_placecardViewController = v4;

    [(PlaceCardViewController *)self->_placecardViewController setPlaceCardDelegate:self];
    [(InfoCardViewController *)self->_placecardViewController setContaineeDelegate:self];
    [(PlaceCardViewController *)self->_placecardViewController setIsPresentedInSearchAlongTheRoute:1];
    placecardViewController = self->_placecardViewController;
  }

  return placecardViewController;
}

- (int64_t)excludedContentForMapItem:(id)item
{
  _geoMapItem = [item _geoMapItem];
  detourInfo = [_geoMapItem detourInfo];

  if (detourInfo)
  {
    return 14699;
  }

  else
  {
    return 14714;
  }
}

- (double)mapViewYaw
{
  navigationDisplay = [(NavActionCoordinator *)self navigationDisplay];
  mapView = [navigationDisplay mapView];
  [mapView presentationYaw];
  v5 = v4;

  return v5;
}

- (unint64_t)navigationCameraHeadingOverride
{
  navigationDisplay = [(NavActionCoordinator *)self navigationDisplay];
  cameraController = [navigationDisplay cameraController];
  navigationCameraHeadingOverride = [cameraController navigationCameraHeadingOverride];

  return navigationCameraHeadingOverride;
}

- (NavigationRouteDetouring)routeDetourer
{
  routeDetourer = self->_routeDetourer;
  if (!routeDetourer)
  {
    v4 = [NavigationRouteInterrupter alloc];
    v5 = MapsSuggestionsEngineForMapsProcess();
    v6 = [(NavigationRouteInterrupter *)v4 initWithSuggestionsEngine:v5 delegate:0];

    v7 = [NavigationRouteDetourer alloc];
    v8 = +[MNNavigationService sharedService];
    appCoordinator = [(NavActionCoordinator *)self appCoordinator];
    platformController = [appCoordinator platformController];
    routeInfoProvider = [(NavActionCoordinator *)self routeInfoProvider];
    v12 = [(NavigationRouteDetourer *)v7 initWithNavigationService:v8 platformController:platformController routeInfoProvider:routeInfoProvider routeInterrupter:v6];
    v13 = self->_routeDetourer;
    self->_routeDetourer = v12;

    routeDetourer = self->_routeDetourer;
  }

  return routeDetourer;
}

- (NavigationRouteHistoryInfoProviding)routeInfoProvider
{
  routeInfoProvider = self->_routeInfoProvider;
  if (!routeInfoProvider)
  {
    v4 = [NavigationRouteHistoryInfoProvider alloc];
    v5 = +[MNNavigationService sharedService];
    v6 = [(NavigationRouteHistoryInfoProvider *)v4 initWithNavigationService:v5];
    v7 = self->_routeInfoProvider;
    self->_routeInfoProvider = v6;

    routeInfoProvider = self->_routeInfoProvider;
  }

  return routeInfoProvider;
}

- (void)setDefaultContaineeViewControllerType:(unint64_t)type
{
  if (self->_defaultContaineeViewControllerType != type)
  {
    self->_defaultContaineeViewControllerType = type;
    if (type)
    {
      if (type != 1)
      {
        return;
      }

      guidanceObserver = [(NavActionCoordinator *)self guidanceObserver];
      [guidanceObserver pauseUpdates];
    }

    else
    {
      guidanceObserver = [(NavActionCoordinator *)self guidanceObserver];
      [guidanceObserver resumeUpdates];
    }
  }
}

- (void)handleSearchActionUsingSearchFieldItem:(id)item withUserInfo:(id)info
{
  infoCopy = info;
  itemCopy = item;
  searchSessionManager = [(NavActionCoordinator *)self searchSessionManager];

  if (!searchSessionManager)
  {
    v9 = objc_alloc_init(SearchSessionManager);
    [(NavActionCoordinator *)self setSearchSessionManager:v9];

    containerViewController = [(NavActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    appCoordinator = [chromeViewController appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    searchSessionManager2 = [(NavActionCoordinator *)self searchSessionManager];
    [searchSessionManager2 setCoordinator:baseActionCoordinator];
  }

  [(NavActionCoordinator *)self setSearchingAlongTheRoute:1];
  searchSessionManager3 = [(NavActionCoordinator *)self searchSessionManager];
  recentAutocompleteSessionData = [(SearchViewController *)self->_searchHomeViewController recentAutocompleteSessionData];
  [searchSessionManager3 performSearchForSearchItem:itemCopy withUserInfo:infoCopy recentAutocompleteSessionData:recentAutocompleteSessionData];
}

- (void)setCurrentSearchInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v8 = +[MNNavigationService sharedService];
  navigationTransportType = [v8 navigationTransportType];
  if (navigationTransportType <= 2)
  {
    if (navigationTransportType != 1)
    {
      if (navigationTransportType == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_7:

    goto LABEL_9;
  }

  if (navigationTransportType == 3)
  {
    IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_14:
    v19 = IsEnabled_Maps182;

    if (v19)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (navigationTransportType == 6)
  {
    goto LABEL_7;
  }

LABEL_8:
  IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();

  if (IsEnabled_DrivingMultiWaypointRoutes)
  {
LABEL_15:
    objc_storeStrong(&self->_currentSearchInfo, info);
    [(NavActionCoordinator *)self presentSearchAlongTheRouteResults];
    results = [[GuidanceSearchResultsSearchInfoDataProvider alloc] initWithSearchInfo:infoCopy error:errorCopy];
    v20 = [GuidanceSearchResultsViewModel alloc];
    routeInfoProvider = [(NavActionCoordinator *)self routeInfoProvider];
    mapItemDisplayer = [(NavActionCoordinator *)self mapItemDisplayer];
    v17 = [(GuidanceSearchResultsViewModel *)v20 initWithDataProvider:results navActionCoordinator:self routeInfoProvider:routeInfoProvider mapItemDisplayer:mapItemDisplayer];

    placeSummaryMetadata = [infoCopy placeSummaryMetadata];
    [(GuidanceSearchResultsViewModel *)v17 setPlaceSummaryMetadata:placeSummaryMetadata];

    [(GuidanceSearchResultsViewController *)self->_resultsViewController configureWithViewModel:v17];
LABEL_17:

    goto LABEL_18;
  }

LABEL_9:
  results = [infoCopy results];
  if ([(GuidanceSearchResultsSearchInfoDataProvider *)results count])
  {
    isSearchAlongRoute = [infoCopy isSearchAlongRoute];

    if (!isSearchAlongRoute)
    {
      goto LABEL_19;
    }

    results = [[GuidanceSearchResultsSearchInfoDataProvider alloc] initWithSearchInfo:infoCopy error:errorCopy];
    v14 = [GuidanceSearchResultsViewModel alloc];
    routeInfoProvider2 = [(NavActionCoordinator *)self routeInfoProvider];
    mapItemDisplayer2 = [(NavActionCoordinator *)self mapItemDisplayer];
    v17 = [(GuidanceSearchResultsViewModel *)v14 initWithDataProvider:results navActionCoordinator:self routeInfoProvider:routeInfoProvider2 mapItemDisplayer:mapItemDisplayer2];

    placeSummaryMetadata2 = [infoCopy placeSummaryMetadata];
    [(GuidanceSearchResultsViewModel *)v17 setPlaceSummaryMetadata:placeSummaryMetadata2];

    if ([infoCopy selectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NavActionCoordinator *)self presentSearchAlongTheRouteWithViewModel:v17];
    }

    else
    {
      -[GuidanceSearchResultsViewModel navigateToItemAtIndex:](v17, "navigateToItemAtIndex:", [infoCopy selectedIndex]);
    }

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
}

- (MapSelectionManager)mapSelectionManager
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  mapSelectionManager = [chromeViewController mapSelectionManager];

  return mapSelectionManager;
}

- (unint64_t)currentMapViewZoom
{
  mapViewZoomController = [(NavActionCoordinator *)self mapViewZoomController];
  zoom = [mapViewZoomController zoom];

  return zoom;
}

- (MapViewZoomController)mapViewZoomController
{
  mapViewZoomController = self->_mapViewZoomController;
  if (!mapViewZoomController)
  {
    v4 = [MapViewZoomController alloc];
    navigationDisplay = [(NavActionCoordinator *)self navigationDisplay];
    v6 = [(MapViewZoomController *)v4 initWithNavigationDisplay:navigationDisplay];
    v7 = self->_mapViewZoomController;
    self->_mapViewZoomController = v6;

    containerViewController = [(NavActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    [(MapViewZoomController *)self->_mapViewZoomController setChromeViewController:chromeViewController];

    [(MapViewZoomController *)self->_mapViewZoomController setDelegate:self];
    mapViewZoomController = self->_mapViewZoomController;
  }

  return mapViewZoomController;
}

- (NavTrayViewController)navigationTrayContaineeViewController
{
  navigationTrayContaineeViewController = self->_navigationTrayContaineeViewController;
  if (!navigationTrayContaineeViewController)
  {
    v4 = [NavTrayViewController alloc];
    guidanceObserver = [(NavActionCoordinator *)self guidanceObserver];
    appCoordinator = [(NavActionCoordinator *)self appCoordinator];
    platformController = [appCoordinator platformController];
    v8 = [(NavTrayViewController *)v4 initForNavigationWithDelegate:self guidanceObserver:guidanceObserver platformController:platformController];
    v9 = self->_navigationTrayContaineeViewController;
    self->_navigationTrayContaineeViewController = v8;

    navigationTrayContaineeViewController = self->_navigationTrayContaineeViewController;
  }

  return navigationTrayContaineeViewController;
}

- (void)setAppCoordinator:(id)coordinator
{
  obj = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appCoordinator, obj);
    platformController = [obj platformController];
    [(NavTrayViewController *)self->_navigationTrayContaineeViewController setPlatformController:platformController];
  }
}

- (void)setContainerViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containerViewController, obj);
    chromeViewController = [obj chromeViewController];
    [(MapViewZoomController *)self->_mapViewZoomController setChromeViewController:chromeViewController];
  }
}

- (BOOL)isControllingVoiceVolume
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)displayVoiceVolumeControl
{
  if (![(NavActionCoordinator *)self isControllingVoiceVolume])
  {
    if ([(NavActionCoordinator *)self isDisplayingTrafficIncident])
    {
      [(NavTrafficIncidentCoordinator *)self->_navTrafficIncidentCoordinator dismissVisibleTrafficAlertView:1];
    }

    if (MapsFeature_IsEnabled_MoreReportTypes())
    {
      v3 = objc_alloc_init(_TtC4Maps29NavAudioControlViewController);
      [(ContaineeViewController *)v3 setContaineeDelegate:self];
      objc_initWeak(&location, self);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100FBFE94;
      v9[3] = &unk_101660108;
      objc_copyWeak(&v10, &location);
      [(NavAudioControlViewController *)v3 setVolumeLevelChangeHandler:v9];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100FBFEE8;
      v7[3] = &unk_101661B98;
      objc_copyWeak(&v8, &location);
      [(NavAudioControlViewController *)v3 setDismissHandler:v7];
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      [WeakRetained presentController:v3];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      v6 = [[NavVoiceVolumeViewController alloc] initWithDelegate:self];
      [(ContaineeViewController *)v6 setContaineeDelegate:self];
      v5 = objc_loadWeakRetained(&self->_containerViewController);
      [v5 presentController:v6];
    }
  }
}

- (void)incidentReportSubmissionContaineeDidFinish:(id)finish
{
  containerViewController = [(NavActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];
  }
}

- (BOOL)isDisplayingIncidentReporting
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [WeakRetained currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_containerViewController);
    currentViewController2 = [v6 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)displayIncidentReportSubmissionWithItem:(id)item report:(id)report
{
  reportCopy = report;
  itemCopy = item;
  v9 = [[NavTrafficIncidentReportSubmissionContaineeViewController alloc] initWithItem:itemCopy report:reportCopy];

  [(ContaineeViewController *)v9 setContaineeDelegate:self];
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)v9 setReportingDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v9 animated:1 useDefaultContaineeLayout:1];
}

- (void)displayIncidentReporting
{
  if (![(NavActionCoordinator *)self isDisplayingIncidentReporting])
  {
    if ([(NavActionCoordinator *)self isDisplayingTrafficIncident])
    {
      [(NavTrafficIncidentCoordinator *)self->_navTrafficIncidentCoordinator dismissVisibleTrafficAlertView:1];
    }

    v4 = [[_TtC4Maps50NavTrafficIncidentReportingContaineeViewController alloc] initWithIncidentReportingDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v4];
  }
}

- (void)viewController:(id)controller shareContactValue:(id)value
{
  valueCopy = value;
  v5 = +[MSPSharedTripService sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100FC02E4;
  v7[3] = &unk_1016600E0;
  v8 = valueCopy;
  v6 = valueCopy;
  [v5 startSharingWithContact:v6 completion:v7];
}

- (void)openShareETAController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [WeakRetained currentViewController];
  v5 = [currentViewController isMemberOfClass:objc_opt_class()];

  if ((v5 & 1) == 0)
  {
    v7 = objc_alloc_init(NavShareETAViewController);
    [(ContaineeViewController *)v7 setContaineeDelegate:self];
    [(NavShareETAViewController *)v7 setNavActionCoordinator:self];
    v6 = objc_loadWeakRetained(&self->_containerViewController);
    [v6 presentController:v7];
  }
}

- (void)senderShareNavigation:(id)navigation
{
  navigationCopy = navigation;
  v5 = 0;
  SBSGetScreenLockStatus();
  [(NavActionCoordinator *)self openShareETAController];
}

- (void)viewControllerOpenContactsSearch:(id)search
{
  v5 = objc_alloc_init(NavContactSearchViewController);
  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  [(NavContactSearchViewController *)v5 setNavActionCoordinator:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5];
}

- (unint64_t)activeSharingCount
{
  v2 = +[MSPSharedTripService sharedInstance];
  receivers = [v2 receivers];
  v4 = [receivers count];

  return v4;
}

- (void)presentWithContainerViewController:(id)controller
{
  [(NavActionCoordinator *)self setContainerViewController:controller];
  if (self->_searchHomeViewController)
  {
    containerViewController = [(NavActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];

    appCoordinator = [chromeViewController appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    [(ControlContaineeViewController *)self->_searchHomeViewController setDelegate:baseActionCoordinator];

    personalizedItemManager = [chromeViewController personalizedItemManager];
    [(SearchViewController *)self->_searchHomeViewController setPersonalizedItemManager:personalizedItemManager];
  }

  containerViewController2 = [(NavActionCoordinator *)self containerViewController];
  navigationTrayContaineeViewController = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  if ([containerViewController2 controllerIsInStack:navigationTrayContaineeViewController])
  {
    containerViewController3 = [(NavActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController3 currentViewController];
    view = [currentViewController view];
    window = [view window];

    if (window)
    {
      return;
    }
  }

  else
  {
  }

  v15 = sub_100035E6C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[NavActionCoordinator presentWithContainerViewController:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Inserting nav tray into the containee stack", buf, 0xCu);
  }

  [(NavActionCoordinator *)self presentTray];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FC08B4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (NavActionCoordinator)initWithMapItemDisplayer:(id)displayer navigationDisplay:(id)display guidanceObserver:(id)observer navigationCameraModeController:(id)controller rapNavigationTracker:(id)tracker
{
  displayerCopy = displayer;
  displayCopy = display;
  observerCopy = observer;
  controllerCopy = controller;
  trackerCopy = tracker;
  v22.receiver = self;
  v22.super_class = NavActionCoordinator;
  v18 = [(NavActionCoordinator *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_mapItemDisplayer, displayer);
    objc_storeStrong(&v19->_navigationDisplay, display);
    objc_storeStrong(&v19->_guidanceObserver, observer);
    objc_storeWeak(&v19->_navigationCameraModeController, controllerCopy);
    v19->_defaultMapViewZoom = 0;
    objc_storeStrong(&v19->_rapNavigationTracker, tracker);
    v20 = v19;
  }

  return v19;
}

@end