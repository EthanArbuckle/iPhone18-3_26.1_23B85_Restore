@interface NavModeController
- (BOOL)_anyNavUIForeground;
- (BOOL)_shouldShowAlternateRoutesForZoom:(unint64_t)zoom;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (BOOL)prefersStatusBarHidden;
- (BOOL)wantsStatusBarControl;
- (IOSBasedChromeViewController)chromeViewController;
- (NavActionCoordination)actionCoordinator;
- (NavModeController)initWithPlatformController:(id)controller;
- (NavigationSession)navigationSession;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (StatusBarBackgroundViewStyle)statusBarBackgroundViewStyle;
- (StatusBarSupplementaryView)statusBarSupplementaryView;
- (id)_originalRoute;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (id)personalizedItemSources;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_mapTypeFromMapView:(id)view;
- (unint64_t)_routeMarkerOptionsForMapViewZoom:(unint64_t)zoom incidentAlert:(id)alert;
- (void)_archiveMapsActivity;
- (void)_becomeTopContextInChromeViewController:(id)controller animated:(BOOL)animated;
- (void)_completeTrafficIncidentAlert;
- (void)_dismissTrafficIncidentMapDisplay;
- (void)_forEachMapsNavigationWindow:(id)window;
- (void)_receivedNewRoute:(id)route traffic:(id)traffic;
- (void)_resignTopContextInChromeViewController:(id)controller;
- (void)_sceneBackgroundedWithOurViewVisible:(id)visible;
- (void)_setRoute:(id)route;
- (void)_setupMapView;
- (void)_startNavigationCameraMotionAnimated:(BOOL)animated;
- (void)_updateArrivalState;
- (void)_updateDetour;
- (void)_updateWaypointAndOptionsOnRouteAnnotationsConfiguration:(id)configuration;
- (void)_updateWithMatchedLocation:(id)location;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)dealloc;
- (void)didEndDisplayingInLockScreen;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)endNavModeAnimated:(BOOL)animated;
- (void)enterPedestrianAR;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)getCurrentSceneTitleWithCompletion:(id)completion;
- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)block;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)mapInsetsDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)mapView:(id)view didUpdateYaw:(double)yaw;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)zoom;
- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)zoom;
- (void)mapViewNavigationCameraHasStartedPanning:(id)panning;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning;
- (void)navActionCoordinator:(id)coordinator didChangeMapViewZoom:(unint64_t)zoom;
- (void)navigationDisplay:(id)display didChangeUserTrackingMode:(int64_t)mode;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationService:(id)service didUpdateAlternateRoutes:(id)routes traffics:(id)traffics;
- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationService:(id)service didUpdateTargetLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateTrafficForRouteID:(id)d;
- (void)navigationService:(id)service didUpdateTrafficIncidentAlert:(id)alert;
- (void)navigationService:(id)service didUpdateUpcomingAnchorPointIndex:(unint64_t)index;
- (void)overrideUserInterfaceStyle;
- (void)performTeardown;
- (void)personalizedItemSourceDidChangeItems:(id)items;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)screenLayoutDidChangeWithReason:(unint64_t)reason;
- (void)setIncidentAlert:(id)alert;
- (void)setMapView:(id)view;
- (void)setNavigationCameraMode:(unint64_t)mode;
- (void)setShowFullScreenDirectionsList:(BOOL)list;
- (void)setUtteringGuidanceAudio:(BOOL)audio;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification;
- (void)willBeginDisplayingInSecureLockScreen;
@end

@implementation NavModeController

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_forEachMapsNavigationWindow:(id)window
{
  windowCopy = window;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = +[UIApplication sharedApplication];
  connectedScenes = [v4 connectedScenes];

  obj = connectedScenes;
  v16 = [connectedScenes countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        _allWindows = [v7 _allWindows];
        v9 = [_allWindows countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            v12 = 0;
            do
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(_allWindows);
              }

              v13 = *(*(&v17 + 1) + 8 * v12);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                windowCopy[2](windowCopy, v13);
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [_allWindows countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }

        v6 = v6 + 1;
      }

      while (v6 != v16);
      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)overrideUserInterfaceStyle
{
  chromeViewController = [(NavModeController *)self chromeViewController];
  contexts = [chromeViewController contexts];
  v5 = [contexts containsObject:self];

  if (v5)
  {
    containerViewController = [(NavModeController *)self containerViewController];
    traitCollection = [containerViewController traitCollection];
    isLuminanceReduced = [traitCollection isLuminanceReduced];

    v9 = +[MapsLightLevelController sharedController];
    LOBYTE(traitCollection) = [v9 shouldUseNightMode];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10094E01C;
    v10[3] = &unk_10162F6A8;
    v11 = traitCollection;
    v12 = isLuminanceReduced;
    [(NavModeController *)self _forEachMapsNavigationWindow:v10];
  }
}

- (StatusBarSupplementaryView)statusBarSupplementaryView
{
  containerViewController = [(NavModeController *)self containerViewController];
  statusBarSupplementaryView = [containerViewController statusBarSupplementaryView];

  return statusBarSupplementaryView;
}

- (StatusBarBackgroundViewStyle)statusBarBackgroundViewStyle
{
  containerViewController = [(NavModeController *)self containerViewController];
  statusBarBackgroundViewStyle = [containerViewController statusBarBackgroundViewStyle];

  return statusBarBackgroundViewStyle;
}

- (int64_t)preferredStatusBarStyle
{
  containerViewController = [(NavModeController *)self containerViewController];
  preferredStatusBarStyle = [containerViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (BOOL)prefersStatusBarHidden
{
  containerViewController = [(NavModeController *)self containerViewController];
  prefersStatusBarHidden = [containerViewController prefersStatusBarHidden];

  return prefersStatusBarHidden;
}

- (BOOL)wantsStatusBarControl
{
  v2 = +[MNNavigationService sharedService];
  [v2 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  return IsNavigating;
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10094E22C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)screenLayoutDidChangeWithReason:(unint64_t)reason
{
  v9 = +[MapsScreenLayoutMonitor sharedMonitor];
  if ([v9 isScreenOn])
  {
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    arrivalInfo = [v4 arrivalInfo];
    isInArrivalState = [arrivalInfo isInArrivalState];

    if (isInArrivalState)
    {
      v7 = sub_100035E6C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Screen turned off while arrived, ending navigation", buf, 2u);
      }

      [(NavModeController *)self endNavModeAnimated:0];
      v8 = +[MapsScreenLayoutMonitor sharedMonitor];
      [v8 stopMonitoringWithObserver:self];
    }
  }
}

- (void)navActionCoordinator:(id)coordinator didChangeMapViewZoom:(unint64_t)zoom
{
  v4 = [(NavModeController *)self chromeViewController:coordinator];
  [v4 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)personalizedItemSourceDidChangeItems:(id)items
{
  itemsCopy = items;
  featuresSource = [(NavModeController *)self featuresSource];

  if (featuresSource == itemsCopy)
  {
    featuresSource2 = [(NavModeController *)self featuresSource];
    allItems = [featuresSource2 allItems];
    v8 = [allItems count];

    if (v8 == 1)
    {
      mapView = self->_mapView;
      v10 = 4;
    }

    else
    {
      featuresSource3 = [(NavModeController *)self featuresSource];
      allItems2 = [featuresSource3 allItems];
      v13 = [allItems2 count];

      mapView = self->_mapView;
      v10 = v13 != 0;
    }

    [(MKMapView *)mapView _setDisplayedSearchResultsType:v10];
  }
}

- (void)_sceneBackgroundedWithOurViewVisible:(id)visible
{
  if (+[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground])
  {
    arrivalInfo = sub_100035E6C();
    if (os_log_type_enabled(arrivalInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, arrivalInfo, OS_LOG_TYPE_INFO, "_sceneBackgroundedWithOurViewVisible: there is at least one foreground scene, ignoring this call.", buf, 2u);
    }
  }

  else
  {
    v5 = +[MNNavigationService sharedService];
    arrivalInfo = [v5 arrivalInfo];

    if (([arrivalInfo isInArrivalState]& 1) != 0)
    {
      isUtteringGuidanceAudio = [(NavModeController *)self isUtteringGuidanceAudio];
      v7 = sub_100035E6C();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (isUtteringGuidanceAudio)
      {
        if (v8)
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_sceneBackgroundedWithOurViewVisible: while arrived, but still uttering. Will end nav when we stop uttering.", v11, 2u);
        }
      }

      else
      {
        if (v8)
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_sceneBackgroundedWithOurViewVisible: while arrived, ending navigation", v10, 2u);
        }

        [(NavModeController *)self endNavModeAnimated:0];
      }
    }

    else
    {
      v9 = sub_100035E6C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_sceneBackgroundedWithOurViewVisible: not in arrival state, continue navigation", v12, 2u);
      }
    }
  }
}

- (void)endNavModeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_100035E6C();
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
      v9 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v16 = selfCopy;
    v17 = 1024;
    v18 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] endNavModeAnimated: %d", buf, 0x12u);
  }

  v12 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v12 stopMonitoringWithObserver:self];

  [(NavigationPowerLogger *)self->_powerLogger stopLogging];
  actionCoordinator = [(NavModeController *)self actionCoordinator];
  appCoordinator = [actionCoordinator appCoordinator];
  [appCoordinator endNavigationAndReturnToRoutePlanning:0];
}

- (void)setIncidentAlert:(id)alert
{
  alertCopy = alert;
  if (self->_incidentAlert != alertCopy)
  {
    v9 = alertCopy;
    objc_storeStrong(&self->_incidentAlert, alert);
    cameraController = [(NavigationDisplay *)self->_navigationDisplay cameraController];
    [cameraController setTrafficIncidentAlert:v9];

    routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
    self->_routeAnnotationsConfiguration = 0;

    chromeViewController = [(NavModeController *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];

    alertCopy = v9;
  }
}

- (void)_completeTrafficIncidentAlert
{
  if (![(NavModeController *)self isShowingFullScreenDirectionsList])
  {
    [(NavModeController *)self _dismissTrafficIncidentMapDisplay];
    navActionCoordinator = [(NavModeController *)self navActionCoordinator];
    trafficIncidentAlertCoordinator = [navActionCoordinator trafficIncidentAlertCoordinator];
    [trafficIncidentAlertCoordinator dismissVisibleTrafficAlertView:0];
  }
}

- (void)_dismissTrafficIncidentMapDisplay
{
  [(NavModeController *)self setIncidentAlert:0];
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  mapSelectionManager = [navActionCoordinator mapSelectionManager];
  [mapSelectionManager clearSelection];
}

- (void)navigationService:(id)service didUpdateUpcomingAnchorPointIndex:(unint64_t)index
{
  v4 = [(NavModeController *)self chromeViewController:service];
  [v4 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)service didUpdateTargetLegIndex:(unint64_t)index
{
  v4 = [(NavModeController *)self chromeViewController:service];
  [v4 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  v7 = [(NavModeController *)self route:service];
  transportType = [v7 transportType];

  if (transportType == 2)
  {
    route = [(NavModeController *)self route];
    [route setCurrentDisplayStep:index];
  }

  chromeViewController = [(NavModeController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)service didUpdateAlternateRoutes:(id)routes traffics:(id)traffics
{
  routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
  self->_routeAnnotationsConfiguration = 0;

  chromeViewController = [(NavModeController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)service didUpdateTrafficForRouteID:(id)d
{
  dCopy = d;
  chromeViewController = [(NavModeController *)self chromeViewController];
  routeAnnotationsController = [chromeViewController routeAnnotationsController];
  configuration = [routeAnnotationsController configuration];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  routes = [configuration routes];
  v10 = [routes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(routes);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        uniqueRouteID = [v14 uniqueRouteID];
        v16 = [uniqueRouteID isEqual:dCopy];

        if (v16)
        {
          [v14 _maps_refreshTrafficIncidentsOnRoute];
        }
      }

      v11 = [routes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)navigationService:(id)service didUpdateTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  if (![(NavModeController *)self isShowingFullScreenDirectionsList])
  {
    bannerID = [alertCopy bannerID];
    navActionCoordinator = [(NavModeController *)self navActionCoordinator];
    trafficIncidentAlertCoordinator = [navActionCoordinator trafficIncidentAlertCoordinator];
    presentedAlert = [trafficIncidentAlertCoordinator presentedAlert];
    bannerID2 = [presentedAlert bannerID];
    v10 = [bannerID isEqualToString:bannerID2];

    if (v10)
    {
      cameraController = [(NavigationDisplay *)self->_navigationDisplay cameraController];
      [cameraController setTrafficIncidentAlert:alertCopy];

      navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
      trafficIncidentAlertCoordinator2 = [navActionCoordinator2 trafficIncidentAlertCoordinator];
      [trafficIncidentAlertCoordinator2 updatedAlertViewWithTrafficIncidentAlert:alertCopy];
    }
  }
}

- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback
{
  alertCopy = alert;
  callbackCopy = callback;
  if (![(NavModeController *)self isShowingFullScreenDirectionsList])
  {
    [(NavModeController *)self setIncidentAlert:alertCopy];
    navActionCoordinator = [(NavModeController *)self navActionCoordinator];
    trafficIncidentAlertCoordinator = [navActionCoordinator trafficIncidentAlertCoordinator];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10094EF1C;
    v15 = &unk_101655D58;
    selfCopy = self;
    v17 = callbackCopy;
    [trafficIncidentAlertCoordinator presentAlertViewForTrafficIncidentAlert:alertCopy responseCallback:&v12];

    v11 = [(NavModeController *)self containerViewController:v12];
    [v11 updateLayoutAnimated:1];
  }
}

- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  v6 = [(NavModeController *)self chromeViewController:service];
  [v6 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (toState)
  {
    if (MNNavigationServiceStateChangedToNavigating())
    {
      route = [serviceCopy route];
      traffic = [route traffic];

      route2 = [serviceCopy route];
      [(NavModeController *)self _receivedNewRoute:route2 traffic:traffic];
    }

    else if (toState != state && toState - 3 <= 2)
    {
      routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
      self->_routeAnnotationsConfiguration = 0;

      chromeViewController = [(NavModeController *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];

      [(NavModeController *)self _archiveMapsActivity];
    }
  }

  else
  {
    [(NavModeController *)self endNavModeAnimated:1];
  }
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  rerouteCopy = reroute;
  traffic = [rerouteCopy traffic];
  [(NavModeController *)self _receivedNewRoute:rerouteCopy traffic:traffic];
}

- (unint64_t)_mapTypeFromMapView:(id)view
{
  viewCopy = view;
  if ([viewCopy _isShowingCuratedElevatedGround])
  {
    v4 = 2;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _visibleTileSets = [viewCopy _visibleTileSets];
    v6 = [_visibleTileSets countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      v4 = 1;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_visibleTileSets);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 style] == 68)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [_visibleTileSets countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v4 = 0;
    }
  }

  return v4;
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  v5 = UIAccessibilityLayoutChangedNotification;
  viewCopy = view;
  UIAccessibilityPostNotification(v5, 0);
  v7 = [(NavModeController *)self _mapTypeFromMapView:viewCopy];

  powerLogger = self->_powerLogger;

  [(NavigationPowerLogger *)powerLogger setMapType:v7];
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  viewCopy = view;
  annotation = [annotationViewCopy annotation];
  [viewCopy deselectAnnotation:annotation animated:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [annotationViewCopy isVLFPuckVisible])
  {
    platformController = [(NavModeController *)self platformController];
    auxiliaryTasksManager = [platformController auxiliaryTasksManager];
    v10 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

    [v10 showVLFUI];
  }
}

- (void)mapView:(id)view didUpdateYaw:(double)yaw
{
  viewCopy = view;
  actionCoordinator = [(NavModeController *)self actionCoordinator];
  [actionCoordinator mapView:viewCopy didUpdateYaw:yaw];
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  chromeViewController = [(NavModeController *)self chromeViewController];
  routeAnnotationsController = [chromeViewController routeAnnotationsController];
  configuration = [routeAnnotationsController configuration];

  if ([configuration alternateRoutesEnabled])
  {
    mapView = self->_mapView;
    routes = [configuration routes];
    selectedRoute = [configuration selectedRoute];
    v13 = +[MNNavigationService sharedService];
    v14 = sub_1007D8258(v13);
    v15 = [RouteAnnotationsResponder routeAtPoint:mapView inMapView:routes withRoutes:selectedRoute selectedRoute:v14 overlappingRouteSelectorBlock:x, y];

    if (v15 && ([v15 source] & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      navActionCoordinator = [(NavModeController *)self navActionCoordinator];
      [navActionCoordinator viewController:0 switchNavigationToRoute:v15];
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
  }

  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  [navActionCoordinator didTapMapView:viewCopy atPoint:{x, y}];
LABEL_7:
}

- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)zoom
{
  zoomCopy = zoom;
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator2 mapViewNavigationCameraDidReturnToDefaultZoom:zoomCopy];
  }
}

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)zoom
{
  zoomCopy = zoom;
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator2 mapViewNavigationCameraDidLeaveDefaultZoom:zoomCopy];
  }
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning
{
  panningCopy = panning;
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator2 mapViewNavigationCameraHasStoppedPanning:panningCopy];
  }
}

- (void)mapViewNavigationCameraHasStartedPanning:(id)panning
{
  panningCopy = panning;
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator2 mapViewNavigationCameraHasStartedPanning:panningCopy];
  }
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator2 mapView:viewCopy didDeselectLabelMarker:markerCopy];
  }

  longitude = kCLLocationCoordinate2DInvalid.longitude;
  featuresSource = [(NavModeController *)self featuresSource];
  [featuresSource setOverriddenPointToFrame:{kCLLocationCoordinate2DInvalid.latitude, longitude}];
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator2 mapView:viewCopy didSelectLabelMarker:markerCopy];
  }

  if (([markerCopy isRouteAnnotation] & 1) == 0 && (objc_msgSend(markerCopy, "isRouteEta") & 1) == 0)
  {
    [markerCopy coordinate];
    v11 = v10;
    [markerCopy coordinate];
    v13 = CLLocationCoordinate2DMake(v11, v12);
    featuresSource = [(NavModeController *)self featuresSource];
    [featuresSource setOverriddenPointToFrame:{v13.latitude, v13.longitude}];
  }
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    v11 = [navActionCoordinator2 mapView:viewCopy shouldSelectLabelMarker:markerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)navigationDisplay:(id)display didChangeUserTrackingMode:(int64_t)mode
{
  v5 = +[UIApplication sharedMapsDelegate];
  [v5 setTrackingMode:mode monitorBatteryState:0];
}

- (void)_updateArrivalState
{
  v3 = +[MNNavigationService sharedService];
  arrivalInfo = [v3 arrivalInfo];
  if (![arrivalInfo arrivalState] || objc_msgSend(arrivalInfo, "arrivalState") == -1)
  {
    v32 = +[MapsScreenLayoutMonitor sharedMonitor];
    [v32 stopMonitoringWithObserver:self];
LABEL_32:

    goto LABEL_33;
  }

  chromeViewController = [(NavModeController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];

  route = [v3 route];
  v7 = [route isLegIndexOfLastLeg:{objc_msgSend(arrivalInfo, "legIndex")}];

  if (v7)
  {
    [(NavModeController *)self _archiveMapsActivity];
    if (!self->_route)
    {
      goto LABEL_13;
    }

    v8 = sub_100035E6C();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [HistoryEntryRecentsItem markRouteAsComplete:self->_route];
LABEL_13:
      isInArrivalState = [arrivalInfo isInArrivalState];
      v16 = sub_100035E6C();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      selfCopy = self;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (objc_opt_respondsToSelector())
      {
        v20 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
        v21 = v20;
        if (v20 && ![v20 isEqualToString:v19])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy, v21];

          goto LABEL_19;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy];
LABEL_19:

      *buf = 138543618;
      v52 = selfCopy;
      v53 = 1024;
      v54 = isInArrivalState;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Should auto end nav: %d", buf, 0x12u);

LABEL_20:
      if ((isInArrivalState & 1) == 0)
      {
        v23 = +[MapsScreenLayoutMonitor sharedMonitor];
        [v23 stopMonitoringWithObserver:self];
      }

      if (+[UIApplication _maps_isAnyCarPlayApplicationSceneForeground])
      {
        v24 = sub_100035E6C();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
LABEL_30:

          navActionCoordinator = [(NavModeController *)self navActionCoordinator];
          [navActionCoordinator dismissShareETA];

          goto LABEL_33;
        }

        selfCopy2 = self;
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        if (objc_opt_respondsToSelector())
        {
          v28 = [(NavModeController *)selfCopy2 performSelector:"accessibilityIdentifier"];
          v29 = v28;
          if (v28 && ![v28 isEqualToString:v27])
          {
            selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v27, selfCopy2, v29];

            goto LABEL_29;
          }
        }

        selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v27, selfCopy2];
LABEL_29:

        *buf = 138543362;
        v52 = selfCopy2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}@] navigationServiceDidArrive: while CarPlay Maps is foreground", buf, 0xCu);

        goto LABEL_30;
      }

      if (+[UIApplication _maps_isAnySceneForegroundForRole:](UIApplication, "_maps_isAnySceneForegroundForRole:", _UIWindowSceneSessionTypeCoverSheet) || (+[MapsScreenLayoutMonitor sharedMonitor](MapsScreenLayoutMonitor, "sharedMonitor"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isLocked], v33, v34))
      {
        v35 = sub_100035E6C();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          goto LABEL_43;
        }

        selfCopy3 = self;
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        if (objc_opt_respondsToSelector())
        {
          v39 = [(NavModeController *)selfCopy3 performSelector:"accessibilityIdentifier"];
          v40 = v39;
          if (v39 && ![v39 isEqualToString:v38])
          {
            selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v38, selfCopy3, v40];

            goto LABEL_42;
          }
        }

        selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v38, selfCopy3];
LABEL_42:

        *buf = 138543362;
        v52 = selfCopy3;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[%{public}@] navigationServiceDidArrive: while Maps is in the lockscreen or the device is locked", buf, 0xCu);

LABEL_43:
        if (!isInArrivalState)
        {
          goto LABEL_33;
        }

        goto LABEL_53;
      }

      v42 = sub_100035E6C();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
LABEL_52:

        navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
        [navActionCoordinator2 dismissShareETA];

        navActionCoordinator3 = [(NavModeController *)self navActionCoordinator];
        [navActionCoordinator3 dismissSearchAlongRoute];

        if (!isInArrivalState)
        {
          goto LABEL_33;
        }

LABEL_53:
        v32 = +[MapsScreenLayoutMonitor sharedMonitor];
        [v32 startMonitoringWithObserver:self];
        goto LABEL_32;
      }

      selfCopy4 = self;
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      if (objc_opt_respondsToSelector())
      {
        v46 = [(NavModeController *)selfCopy4 performSelector:"accessibilityIdentifier"];
        v47 = v46;
        if (v46 && ![v46 isEqualToString:v45])
        {
          selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v45, selfCopy4, v47];

          goto LABEL_51;
        }
      }

      selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v45, selfCopy4];
LABEL_51:

      *buf = 138543362;
      v52 = selfCopy4;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}@] navigationServiceDidArrive: while Maps is foreground", buf, 0xCu);

      goto LABEL_52;
    }

    selfCopy5 = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(NavModeController *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy5 = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy5, v13];

        goto LABEL_11;
      }
    }

    selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy5];
LABEL_11:

    *buf = 138543362;
    v52 = selfCopy5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] navigationServiceDidArrive: will mark route as complete", buf, 0xCu);

    goto LABEL_12;
  }

LABEL_33:
}

- (void)_archiveMapsActivity
{
  actionCoordinator = [(NavModeController *)self actionCoordinator];
  appCoordinator = [actionCoordinator appCoordinator];
  [appCoordinator archiveMapsActivity];
}

- (void)_updateWithMatchedLocation:(id)location
{
  navigationDisplay = self->_navigationDisplay;
  locationCopy = location;
  [(NavigationDisplay *)navigationDisplay updateWithLocation:locationCopy];
  chromeViewController = [(NavModeController *)self chromeViewController];
  routeAnnotationsController = [chromeViewController routeAnnotationsController];
  [routeAnnotationsController updateMatchedLocation:locationCopy];
}

- (void)_startNavigationCameraMotionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(NavigationDisplay *)self->_navigationDisplay startMotion:?];
  userLocationAnnotationView = [(NavigationDisplay *)self->_navigationDisplay userLocationAnnotationView];
  [userLocationAnnotationView setInNavMode:1 animated:animatedCopy];
}

- (void)_updateWaypointAndOptionsOnRouteAnnotationsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  actionCoordinator = [(NavModeController *)self actionCoordinator];
  currentMapViewZoom = [actionCoordinator currentMapViewZoom];

  [configurationCopy setAlternateRoutesEnabled:{-[NavModeController _shouldShowAlternateRoutesForZoom:](self, "_shouldShowAlternateRoutesForZoom:", currentMapViewZoom)}];
  incidentAlert = [(NavModeController *)self incidentAlert];
  [configurationCopy setRouteMarkerOptions:{-[NavModeController _routeMarkerOptionsForMapViewZoom:incidentAlert:](self, "_routeMarkerOptionsForMapViewZoom:incidentAlert:", currentMapViewZoom, incidentAlert)}];

  v8 = +[MNNavigationService sharedService];
  arrivalInfo = [v8 arrivalInfo];
  v10 = arrivalInfo;
  if (arrivalInfo && [arrivalInfo isInArrivalState])
  {
    destination = [v10 destination];
    v12 = 0;
    v13 = 2;
  }

  else
  {
    lastLocation = [v8 lastLocation];
    if (lastLocation && (v15 = lastLocation, [v8 lastLocation], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "state"), v16, v15, v17 == 1))
    {
      route = self->_route;
      lastLocation2 = [v8 lastLocation];
      routeMatch = [lastLocation2 routeMatch];
      v27 = 0;
      v28 = 0;
      -[GEOComposedRoute nextWaypointOrAnchorPointFromRouteCoordinate:outWaypoint:outAnchorPoint:](route, "nextWaypointOrAnchorPointFromRouteCoordinate:outWaypoint:outAnchorPoint:", [routeMatch routeCoordinate], &v28, &v27);
      destination = v28;
      v12 = v27;

      v13 = (destination | v12) != 0;
    }

    else
    {
      v21 = -[GEOComposedRoute legIndexForStepIndex:](self->_route, "legIndexForStepIndex:", [v8 stepIndex]);
      legs = [(GEOComposedRoute *)self->_route legs];
      if (v21 >= [legs count])
      {
        v24 = 0;
      }

      else
      {
        legs2 = [(GEOComposedRoute *)self->_route legs];
        v24 = [legs2 objectAtIndexedSubscript:v21];
      }

      destination = [v24 destination];
      v13 = destination != 0;

      v12 = 0;
    }
  }

  if (destination)
  {
    v25 = destination;
  }

  else
  {
    v25 = v12;
  }

  [configurationCopy setCurrentNavigationWaypoint:v25];
  [configurationCopy setProximityToCurrentNavigationWaypoint:v13];
  v26 = sub_100035E6C();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Updated route annotations configuration: %{public}@", buf, 0xCu);
  }
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  chromeViewController = [(NavModeController *)self chromeViewController];

  if (!chromeViewController)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  navigationSession = [(NavModeController *)self navigationSession];
  sessionState = [navigationSession sessionState];

  if (sessionState != 1)
  {
    v16 = sub_100035E6C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Cannot update annotations when not navigating", buf, 2u);
    }

    goto LABEL_13;
  }

  routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
  if (!routeAnnotationsConfiguration)
  {
    v7 = [RouteAnnotationsMutableConfiguration navConfigurationWithCurrentRoute:self->_route incidentAlert:self->_incidentAlert];
    _originalRoute = [(NavModeController *)self _originalRoute];
    if (_originalRoute)
    {
      routes = [(RouteAnnotationsConfiguration *)v7 routes];
      v10 = [routes mutableCopy];

      [v10 addObject:_originalRoute];
      [(RouteAnnotationsConfiguration *)v7 setRoutes:v10];
    }

    uniqueRouteID = [_originalRoute uniqueRouteID];
    [(RouteAnnotationsConfiguration *)v7 setOriginalRouteID:uniqueRouteID];

    v12 = +[MNNavigationService sharedService];
    -[RouteAnnotationsConfiguration setOriginalRouteDivergenceCoordinate:](v7, "setOriginalRouteDivergenceCoordinate:", [v12 originalRouteDivergenceCoordinate]);

    v13 = sub_100035E6C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Created new route annotations configuration", v18, 2u);
    }

    v14 = self->_routeAnnotationsConfiguration;
    self->_routeAnnotationsConfiguration = v7;

    routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
  }

  [(NavModeController *)self _updateWaypointAndOptionsOnRouteAnnotationsConfiguration:routeAnnotationsConfiguration];
  v15 = self->_routeAnnotationsConfiguration;
LABEL_14:

  return v15;
}

- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)block
{
  blockCopy = block;
  containerViewController = [(NavModeController *)self containerViewController];
  [containerViewController insertDimmingOverlayForStaleMapEffectWithBlock:blockCopy];
}

- (void)mapInsetsDidChangeAnimated:(BOOL)animated
{
  actionCoordinator = [(NavModeController *)self actionCoordinator];
  chromeViewController = [(NavModeController *)self chromeViewController];
  view = [chromeViewController view];
  traitCollection = [view traitCollection];
  containerViewController = [(NavModeController *)self containerViewController];
  [actionCoordinator updateCameraForTraits:traitCollection containerStyle:{objc_msgSend(containerViewController, "containerStyle")}];
}

- (void)getCurrentSceneTitleWithCompletion:(id)completion
{
  completionCopy = completion;
  route = [(NavModeController *)self route];
  destination = [route destination];
  name = [destination name];

  v8 = +[NSBundle mainBundle];
  if (name)
  {
    v9 = [v8 localizedStringForKey:@"[App switcher title] Directions to <destination>" value:@"localized string not found" table:0];
    route2 = [(NavModeController *)self route];
    destination2 = [route2 destination];
    name2 = [destination2 name];
    v13 = [NSString stringWithFormat:v9, name2];
  }

  else
  {
    v13 = [v8 localizedStringForKey:@"[App switcher title] Directions" value:@"localized string not found" table:0];
  }

  completionCopy[2](completionCopy, v13);
}

- (void)performTeardown
{
  route = [(NavModeController *)self route];
  transportType = [route transportType];

  if (transportType == 2)
  {
    route2 = [(NavModeController *)self route];
    [route2 setManeuverDisplayEnabled:0];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  [(NavModeController *)self unsetUserInterfaceStyle];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = 0;

  cardHidingToken = self->_cardHidingToken;
  self->_cardHidingToken = 0;

  [(MKMapView *)self->_mapView _setDisplayedSearchResultsType:0];
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer setFocusedLabelsPolyline:0];

  [(MKMapView *)self->_mapView _setApplicationState:0];
  [(MKMapView *)self->_mapView _clearRouteContext];
  if (transportType == 2)
  {
    [(MKMapView *)self->_mapView _setShowHeadingIndicatorForStepping:0];
  }

  [(NavModeController *)self setMapView:0];
  [(MKMapView *)self->_mapView _setDebugConsoleAdditionalInfoProvider:0];
  cameraController = [(NavigationDisplay *)self->_navigationDisplay cameraController];
  [cameraController setTrafficIncidentAlert:0];

  [(NavigationDisplay *)self->_navigationDisplay stopCameraMotion];
  cameraController2 = [(NavigationDisplay *)self->_navigationDisplay cameraController];
  [cameraController2 resetMapViewNavigationState];

  userLocationAnnotationView = [(NavigationDisplay *)self->_navigationDisplay userLocationAnnotationView];
  [userLocationAnnotationView setInNavMode:0 animated:1];

  [(NavigationDisplay *)self->_navigationDisplay setUserLocationAnnotationView:0];
  [(NavigationDisplay *)self->_navigationDisplay setChromeViewController:0];
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  trafficIncidentAlertCoordinator = [navActionCoordinator trafficIncidentAlertCoordinator];
  [trafficIncidentAlertCoordinator dismissVisibleTrafficAlertView:1];

  v15 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v15 stopMonitoringWithObserver:self];
}

- (void)_resignTopContextInChromeViewController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_100035E6C();
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
      v9 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v23 = selfCopy;
    v24 = 2112;
    v25 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Resign top context in chrome VC: %@", buf, 0x16u);
  }

  nextTopContext = [controllerCopy nextTopContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = sub_100035E6C();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
LABEL_23:

      self->_isPedestrianARActive = 1;
      goto LABEL_24;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_22;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(NavModeController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy2, v19];

        goto LABEL_19;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy2];
LABEL_19:

LABEL_22:
    *buf = 138543362;
    v23 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] Next top context is the PedestrianAR one; not doing the usual teardown", buf, 0xCu);

    goto LABEL_23;
  }

  [(NavModeController *)self performTeardown];
  iosBasedChromeViewController = [(NavModeController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setStatusBarAdditionalColor:0];

LABEL_24:
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100951154;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = controllerCopy;
  v10 = v8;
  [animationCopy addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_becomeTopContextInChromeViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  v7 = sub_100035E6C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v61 = selfCopy;
    v62 = 2112;
    v63 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Becoming top context in chrome VC: %@", buf, 0x16u);
  }

  previousTopContext = [controllerCopy previousTopContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = sub_100035E6C();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_38:

      self->_isPedestrianARActive = 0;
      containerViewController = [(NavModeController *)self containerViewController];
      [containerViewController setLayoutIfSupported:1 animated:0];
      goto LABEL_39;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_37;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(NavModeController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

        goto LABEL_19;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_19:

LABEL_37:
    *buf = 138543362;
    v61 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] Previous top context is the PedestrianAR one; not doing the usual setup", buf, 0xCu);

    goto LABEL_38;
  }

  previousTopContext2 = [controllerCopy previousTopContext];
  if (objc_opt_respondsToSelector())
  {
    previousTopContext3 = [controllerCopy previousTopContext];
    fullscreenViewController = [previousTopContext3 fullscreenViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = fullscreenViewController;
    }

    else
    {
      v26 = 0;
    }

    containerViewController = v26;
  }

  else
  {
    containerViewController = 0;
  }

  [containerViewController setContaineesHidden:1];
  containerViewController2 = [(NavModeController *)self containerViewController];
  [containerViewController2 setChromeContext:self];

  chromeViewController = [(NavModeController *)self chromeViewController];
  navigationDisplay = [(NavModeController *)self navigationDisplay];
  [navigationDisplay setChromeViewController:chromeViewController];

  isShowingFullScreenDirectionsList = [(NavModeController *)self isShowingFullScreenDirectionsList];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  if (isShowingFullScreenDirectionsList)
  {
    if (!chromeDeactivationToken)
    {
      chromeViewController2 = [(NavModeController *)self chromeViewController];
      v34 = [chromeViewController2 acquireChromeDeactivationTokenForReason:@"full-screen directions list"];
      v35 = self->_chromeDeactivationToken;
      self->_chromeDeactivationToken = v34;
    }

    if (!self->_cardHidingToken)
    {
      chromeViewController3 = [(NavModeController *)self chromeViewController];
      v37 = [chromeViewController3 acquireCardHidingTokenForReason:@"full-screen directions list"];
      cardHidingToken = self->_cardHidingToken;
      self->_cardHidingToken = v37;
    }

    navigationDisplay2 = [(NavModeController *)self navigationDisplay];
    [navigationDisplay2 clearCache];

    mapView = self->_mapView;
    self->_mapView = 0;
  }

  else
  {
    self->_chromeDeactivationToken = 0;

    v41 = self->_cardHidingToken;
    self->_cardHidingToken = 0;

    mapView = [(NavModeController *)self chromeViewController];
    mapView = [mapView mapView];
    [(NavModeController *)self setMapView:mapView];
  }

  v43 = +[MNNavigationService sharedService];
  desiredNavigationType = [v43 desiredNavigationType];

  if (!desiredNavigationType)
  {
    v45 = +[MNNavigationService sharedService];
    desiredNavigationType = [v45 navigationType];
  }

  [(NavModeController *)self setNavigationCameraMode:desiredNavigationType != 3];
  chromeViewController4 = [(NavModeController *)self chromeViewController];
  userLocationView = [chromeViewController4 userLocationView];
  navigationDisplay3 = [(NavModeController *)self navigationDisplay];
  [navigationDisplay3 setUserLocationAnnotationView:userLocationView];

  navigationDisplay4 = [(NavModeController *)self navigationDisplay];
  mapView2 = [navigationDisplay4 mapView];
  [mapView2 _setShouldSplitRouteLine:1];

  navigationDisplay5 = [(NavModeController *)self navigationDisplay];
  v52 = +[MNNavigationService sharedService];
  route = [v52 route];
  destination = [route destination];
  [navigationDisplay5 setDestinationWaypoint:destination];

  navigationDisplay6 = [(NavModeController *)self navigationDisplay];
  v56 = +[MNNavigationService sharedService];
  [navigationDisplay6 setTransportType:{objc_msgSend(v56, "navigationTransportType")}];

  [(NavModeController *)self _startNavigationCameraMotionAnimated:animatedCopy];
  v57 = +[NSNotificationCenter defaultCenter];
  [v57 addObserver:self selector:"_sceneBackgroundedWithOurViewVisible:" name:UISceneDidEnterBackgroundNotification object:0];
  [v57 addObserver:self selector:"_sceneWillConnect" name:UISceneWillConnectNotification object:0];
  v58 = +[UIApplication sharedMapsDelegate];
  [v58 acquireSecureAppAssertionIfNeeded];

  containerViewController3 = [(NavModeController *)self containerViewController];
  [containerViewController3 updateStatusBarColor];

  [(NavModeController *)self overrideUserInterfaceStyle];
LABEL_39:
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  LOBYTE(self) = [animationCopy isAnimated];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10095196C;
  v9[3] = &unk_101632728;
  objc_copyWeak(&v11, &location);
  v8 = controllerCopy;
  v10 = v8;
  selfCopy = self;
  [animationCopy addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  if (self->_isPedestrianARActive)
  {
    v5 = sub_100035E6C();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      [(NavModeController *)self performTeardown];
      return;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v13 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Leaving stack while Pedestrian AR is active; performing teardown now (skipped on resign top because of pedestrian AR)", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
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
      v10 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v17 = selfCopy;
    v18 = 2112;
    v19 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Entering stack in chrome VC: %@", buf, 0x16u);
  }

  [(NavModeController *)self _forEachMapsNavigationWindow:&stru_10162F688];
  v13 = +[MNNavigationService sharedService];
  route = [v13 route];

  if (route)
  {
    containerViewController = [(NavModeController *)self containerViewController];
    [containerViewController loadViewIfNeeded];

    [(NavModeController *)self _setRoute:route];
  }

  [(NavModeController *)self _archiveMapsActivity];
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
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
      v9 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v16 = selfCopy;
    v17 = 2112;
    v18 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Preparing to enter stack in chrome VC: %@", buf, 0x16u);
  }

  customPOIsController = [controllerCopy customPOIsController];
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  [navActionCoordinator setCustomPOIsController:customPOIsController];

  containerViewController = [(NavModeController *)self containerViewController];
  [containerViewController setChromeViewController:controllerCopy];
}

- (id)personalizedItemSources
{
  chromeViewController = [(NavModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    v10[0] = self->_featuresSource;
    chromeViewController2 = [(NavModeController *)self chromeViewController];
    searchPinsManager2 = [chromeViewController2 searchPinsManager];
    routeStartEndItemSource = [searchPinsManager2 routeStartEndItemSource];
    v10[1] = routeStartEndItemSource;
    v8 = [NSArray arrayWithObjects:v10 count:2];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)enterPedestrianAR
{
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  [navActionCoordinator enterPedestrianAR];
}

- (id)fullscreenViewControllerDismissalTransition
{
  v2 = objc_opt_new();

  return v2;
}

- (id)fullscreenViewControllerPresentationTransition
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)_anyNavUIForeground
{
  if (SBUIIsSystemApertureEnabled())
  {
    v2 = +[IPCServer sharedServer];
    activeBannerViewController = [v2 activeBannerViewController];

    if (activeBannerViewController)
    {
      return 1;
    }
  }

  return +[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground];
}

- (void)_updateDetour
{
  v3 = +[MNNavigationService sharedService];
  isDetour = [v3 isDetour];

  containerViewController = [(NavModeController *)self containerViewController];
  bannerAction = [containerViewController bannerAction];

  v7 = sub_100035E6C();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  if (objc_opt_respondsToSelector())
  {
    v11 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
    v12 = v11;
    if (v11 && ![v11 isEqualToString:v10])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

LABEL_10:
  v14 = @"NO";
  if (isDetour)
  {
    v14 = @"YES";
  }

  v15 = v14;
  *buf = 138543874;
  v27 = selfCopy;
  v28 = 2112;
  v29 = v15;
  v30 = 2112;
  v31 = bannerAction;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] _updateDetour: %@ existingAction: %@", buf, 0x20u);

LABEL_13:
  if (!isDetour)
  {
    originalDestinationName = 0;
LABEL_20:
    containerViewController2 = [(NavModeController *)self containerViewController];
    [containerViewController2 setBannerAction:originalDestinationName animated:1];
    goto LABEL_21;
  }

  v16 = +[MNNavigationService sharedService];
  originalDestinationName = [v16 originalDestinationName];

  v18 = [originalDestinationName length];
  v19 = +[NSBundle mainBundle];
  v20 = v19;
  if (v18)
  {
    v21 = [v19 localizedStringForKey:@"[Navigation Top Banner View] Resume Route to %@" value:@"localized string not found" table:0];

    containerViewController2 = [NSString stringWithFormat:v21, originalDestinationName];
    v20 = v21;
  }

  else
  {
    containerViewController2 = [v19 localizedStringForKey:@"[Navigation Top Banner View] Resume Original Route" value:@"localized string not found" table:0];
  }

  title = [bannerAction title];
  v24 = [title isEqualToString:containerViewController2];

  if ((v24 & 1) == 0)
  {
    v25 = objc_opt_new();
    [v25 setTitle:containerViewController2];
    [v25 setActionHandler:&stru_10162F648];

    originalDestinationName = v25;
    goto LABEL_20;
  }

LABEL_21:
}

- (unint64_t)_routeMarkerOptionsForMapViewZoom:(unint64_t)zoom incidentAlert:(id)alert
{
  if (zoom | alert)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)_originalRoute
{
  v2 = +[MNNavigationService sharedService];
  originalRoute = [v2 originalRoute];
  if ([originalRoute source] == 2 || objc_msgSend(originalRoute, "source") == 3)
  {
    route = [v2 route];
    uniqueRouteID = [route uniqueRouteID];
    uniqueRouteID2 = [originalRoute uniqueRouteID];
    v7 = [uniqueRouteID isEqual:uniqueRouteID2];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = originalRoute;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldShowAlternateRoutesForZoom:(unint64_t)zoom
{
  _originalRoute = [(NavModeController *)self _originalRoute];

  if (_originalRoute)
  {
    return 1;
  }

  BOOL = GEOConfigGetBOOL();
  result = 1;
  if (!zoom && (BOOL & 1) == 0)
  {
    return self->_incidentAlert != 0;
  }

  return result;
}

- (void)_receivedNewRoute:(id)route traffic:(id)traffic
{
  [(NavModeController *)self _setRoute:route, traffic];
  [(NavModeController *)self _updateDetour];

  [(NavModeController *)self _archiveMapsActivity];
}

- (void)_setRoute:(id)route
{
  routeCopy = route;
  v6 = sub_100035E6C();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

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
    v10 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
  *buf = 138543618;
  v24 = selfCopy;
  v25 = 2112;
  v26 = routeCopy;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating route: %@", buf, 0x16u);

LABEL_11:
  p_route = &self->_route;
  route = self->_route;
  if (route)
  {
    transportType = [(GEOComposedRoute *)route transportType];
  }

  else
  {
    transportType = 4;
  }

  transportType2 = [routeCopy transportType];
  objc_storeStrong(&self->_route, route);
  if (-[GEOComposedRoute transportType](*p_route, "transportType") == 2 && ((GEOConfigGetBOOL() & 1) != 0 || ([routeCopy source] & 0xFFFFFFFFFFFFFFFELL) == 2))
  {
    [(GEOComposedRoute *)*p_route setManeuverDisplayEnabled:1];
    steps = [(GEOComposedRoute *)*p_route steps];
    [(GEOComposedRoute *)*p_route setManeuverDisplaySteps:steps];
  }

  else
  {
    [(GEOComposedRoute *)*p_route setManeuverDisplayEnabled:0];
    [(GEOComposedRoute *)*p_route setManeuverDisplaySteps:0];
  }

  [(NavigationDisplay *)self->_navigationDisplay updateWithRoute:routeCopy];
  route = [(NavModeController *)self route];
  containerViewController = [(NavModeController *)self containerViewController];
  [containerViewController setRoute:route];

  routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
  self->_routeAnnotationsConfiguration = 0;

  chromeViewController = [(NavModeController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];

  if (transportType != transportType2)
  {
    navigationDisplay = [(NavModeController *)self navigationDisplay];
    [navigationDisplay setTransportType:transportType2 animated:transportType == 4];
  }
}

- (void)_setupMapView
{
  [(MKMapView *)self->_mapView _setApplicationState:2];
  selectedAnnotations = [(MKMapView *)self->_mapView selectedAnnotations];
  firstObject = [selectedAnnotations firstObject];

  if (firstObject)
  {
    [(MKMapView *)self->_mapView deselectAnnotation:firstObject animated:0];
  }

  [(MKMapView *)self->_mapView _deselectLabelMarkerAnimated:0];
}

- (void)setUtteringGuidanceAudio:(BOOL)audio
{
  if (self->_utteringGuidanceAudio != audio)
  {
    v15 = v3;
    v16 = v4;
    self->_utteringGuidanceAudio = audio;
    _anyNavUIForeground = [(NavModeController *)self _anyNavUIForeground];
    v7 = +[MNNavigationService sharedService];
    arrivalInfo = [v7 arrivalInfo];
    isInArrivalState = [arrivalInfo isInArrivalState];
    legIndex = [arrivalInfo legIndex];
    route = [v7 route];
    v12 = [route isLegIndexOfLastLeg:legIndex];

    if (!self->_utteringGuidanceAudio && (_anyNavUIForeground & 1) == 0 && isInArrivalState && v12)
    {
      v13 = sub_100035E6C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "setUtteringGuidanceAudio: uttering ended while the app is backgrounded and we're in arrival state -> ending navigation", v14, 2u);
      }

      [(NavModeController *)self endNavModeAnimated:0];
    }
  }
}

- (void)setNavigationCameraMode:(unint64_t)mode
{
  if (self->_navigationCameraMode == mode)
  {
    return;
  }

  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    navigationCameraMode = self->_navigationCameraMode;
    *buf = 138543874;
    v25 = selfCopy;
    v26 = 2048;
    v27 = navigationCameraMode;
    v28 = 2048;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Changing navigationCameraMode from %lu to %lu", buf, 0x20u);
  }

  self->_navigationCameraMode = mode;
  if (mode == 1)
  {
    navActionCoordinator = [(NavModeController *)self navActionCoordinator];
    lowGuidanceUserPreferredHeadingOverride = [navActionCoordinator lowGuidanceUserPreferredHeadingOverride];

    v15 = 0;
    v16 = 1;
  }

  else
  {
    lowGuidanceUserPreferredHeadingOverride = 0;
    v16 = 0;
    v15 = 1;
  }

  navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
  [navActionCoordinator2 setDefaultMapViewZoom:v16];
  navActionCoordinator3 = [(NavModeController *)self navActionCoordinator];
  v19 = [navActionCoordinator3 currentMapViewZoom] == 2;

  [navActionCoordinator2 resetMapViewZoomToDefaultAndStartCameraTracking:v19];
  containerViewController = [(NavModeController *)self containerViewController];
  [containerViewController setSignStyle:v15];

  navigationDisplay = [(NavModeController *)self navigationDisplay];
  cameraController = [navigationDisplay cameraController];
  [cameraController setNavigationCameraHeadingOverride:lowGuidanceUserPreferredHeadingOverride];

  navigationDisplay2 = [(NavModeController *)self navigationDisplay];
  [navigationDisplay2 setNavigationDestinationState:1];
}

- (void)setShowFullScreenDirectionsList:(BOOL)list
{
  if (self->_showFullScreenDirectionsList == list)
  {
    return;
  }

  listCopy = list;
  self->_showFullScreenDirectionsList = list;
  navActionCoordinator = [(NavModeController *)self navActionCoordinator];
  [navActionCoordinator setShowFullScreenDirectionsList:listCopy];

  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    v13 = @"NO";
    if (listCopy)
    {
      v13 = @"YES";
    }

    v14 = v13;
    *buf = 138543618;
    v32 = selfCopy;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Setting show fullscreen directions list: %@", buf, 0x16u);
  }

  containerViewController = [(NavModeController *)self containerViewController];
  view = [containerViewController view];

  if (view)
  {
    containerViewController2 = [(NavModeController *)self containerViewController];
    [containerViewController2 setResumeRouteBannerHidden:listCopy];

    chromeDeactivationToken = self->_chromeDeactivationToken;
    if (listCopy)
    {
      if (!chromeDeactivationToken)
      {
        chromeViewController = [(NavModeController *)self chromeViewController];
        v20 = [chromeViewController acquireChromeDeactivationTokenForReason:@"full-screen directions list"];
        v21 = self->_chromeDeactivationToken;
        self->_chromeDeactivationToken = v20;
      }

      if (!self->_cardHidingToken)
      {
        chromeViewController2 = [(NavModeController *)self chromeViewController];
        v23 = [chromeViewController2 acquireCardHidingTokenForReason:@"full-screen directions list"];
        cardHidingToken = self->_cardHidingToken;
        self->_cardHidingToken = v23;
      }

      navigationDisplay = [(NavModeController *)self navigationDisplay];
      [navigationDisplay clearCache];

      mapView = self->_mapView;
      self->_mapView = 0;
    }

    else
    {
      self->_chromeDeactivationToken = 0;

      v27 = self->_cardHidingToken;
      self->_cardHidingToken = 0;

      chromeViewController3 = [(NavModeController *)self chromeViewController];
      mapView = [chromeViewController3 mapView];
      [(NavModeController *)self setMapView:mapView];

      [(NavModeController *)self _startNavigationCameraMotionAnimated:0];
    }

    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator2 presentTray];
  }
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->_mapView != viewCopy)
  {
    v10 = viewCopy;
    if (!viewCopy || (v7 = [(NavModeController *)self isShowingFullScreenDirectionsList], v6 = v10, (v7 & 1) == 0))
    {
      objc_storeStrong(&self->_mapView, view);
      [(NavigationPowerLogger *)self->_powerLogger setMapType:[(NavModeController *)self _mapTypeFromMapView:v10]];
      if (self->_mapView)
      {
        [(NavModeController *)self _setupMapView];
        [(NavModeController *)self _setRoute:self->_route];
      }

      else
      {
        chromeViewController = [(NavModeController *)self chromeViewController];
        searchPinsManager = [chromeViewController searchPinsManager];
        [searchPinsManager clearDirectionsPins];
      }

      v6 = v10;
    }
  }
}

- (NavigationSession)navigationSession
{
  platformController = [(NavModeController *)self platformController];
  currentSession = [platformController currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = currentSession;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NavActionCoordination)actionCoordinator
{
  containerViewController = [(NavModeController *)self containerViewController];
  coordinator = [containerViewController coordinator];

  return coordinator;
}

- (void)dealloc
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
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
      v7 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    v14 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Deallocing", buf, 0xCu);
  }

  v10 = +[MNNavigationService sharedService];
  [v10 unregisterObserver:self];

  v11 = +[MapsLightLevelController sharedController];
  [v11 removeObserver:self];

  v12.receiver = self;
  v12.super_class = NavModeController;
  [(NavModeController *)&v12 dealloc];
}

- (NavModeController)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  v45.receiver = self;
  v45.super_class = NavModeController;
  v6 = [(NavModeController *)&v45 init];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = sub_100035E6C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(NavModeController *)v8 performSelector:"accessibilityIdentifier"];
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
    v47 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] Initializing", buf, 0xCu);
  }

  objc_storeStrong(&v6->_platformController, controller);
  v6->_navigationCameraMode = 0;
  v14 = objc_alloc_init(GuidanceObserver);
  guidanceObserver = v6->_guidanceObserver;
  v6->_guidanceObserver = v14;

  v16 = objc_alloc_init(NavigationDisplay);
  navigationDisplay = v6->_navigationDisplay;
  v6->_navigationDisplay = v16;

  [(NavigationDisplay *)v6->_navigationDisplay setDelegate:v6];
  v18 = [NavigationCustomFeaturesSource alloc];
  cameraController = [(NavigationDisplay *)v6->_navigationDisplay cameraController];
  v20 = [(NavigationCustomFeaturesSource *)v18 initWithPointsFramer:cameraController];
  featuresSource = v6->_featuresSource;
  v6->_featuresSource = v20;

  [(NavigationCustomFeaturesSource *)v6->_featuresSource setFramingMode:1];
  [(PersonalizedItemSource *)v6->_featuresSource addObserver:v6];
  v22 = [[RAPNavigationTracker alloc] initWithPlatformController:v6->_platformController];
  rapNavigationTracker = v6->_rapNavigationTracker;
  v6->_rapNavigationTracker = v22;

  v24 = [NavActionCoordinator alloc];
  featuresSource = [(NavModeController *)v6 featuresSource];
  navigationDisplay = [(NavModeController *)v6 navigationDisplay];
  guidanceObserver = [(NavModeController *)v6 guidanceObserver];
  v28 = [(NavActionCoordinator *)v24 initWithMapItemDisplayer:featuresSource navigationDisplay:navigationDisplay guidanceObserver:guidanceObserver navigationCameraModeController:v6 rapNavigationTracker:v6->_rapNavigationTracker];
  navActionCoordinator = v6->_navActionCoordinator;
  v6->_navActionCoordinator = v28;

  if (([(NavActionCoordinator *)v6->_navActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___ChromeMapSelectionDelegate]& 1) == 0)
  {
    v42 = sub_10006D178();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v47 = "[NavModeController initWithPlatformController:]";
      v48 = 2080;
      v49 = "NavModeController.m";
      v50 = 1024;
      v51 = 192;
      v52 = 2080;
      v53 = "[_navActionCoordinator conformsToProtocol:@protocol(ChromeMapSelectionDelegate)]";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v43 = sub_10006D178();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v47 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  [(NavActionCoordinator *)v6->_navActionCoordinator setMapViewZoomDelegate:v6];
  [(PersonalizedItemSource *)v6->_featuresSource addObserver:v6->_navActionCoordinator];
  v30 = objc_alloc_init(NavigationPowerLogger);
  powerLogger = v6->_powerLogger;
  v6->_powerLogger = v30;

  [(NavigationPowerLogger *)v6->_powerLogger startLogging];
  v32 = [NavContainerViewController alloc];
  navActionCoordinator = [(NavModeController *)v6 navActionCoordinator];
  guidanceObserver2 = [(NavModeController *)v6 guidanceObserver];
  v35 = [(NavContainerViewController *)v32 initWithCoordinator:navActionCoordinator guidanceObserver:guidanceObserver2 platformController:v6->_platformController];
  containerViewController = v6->_containerViewController;
  v6->_containerViewController = v35;

  v37 = +[MNNavigationService sharedService];
  [v37 registerObserver:v6];

  v38 = +[MapsLightLevelController sharedController];
  [v38 addObserver:v6];

  v39 = +[NSNotificationCenter defaultCenter];
  [v39 addObserver:v6 selector:"vlfSessionTaskWillShowVLFUINotification:" name:@"VLFSessionTaskWillShowVLFUINotification" object:0];

  v40 = +[NSNotificationCenter defaultCenter];
  [v40 addObserver:v6 selector:"vlfContaineeViewControllerDidDisappearNotification:" name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];

LABEL_11:
  return v6;
}

- (void)didEndDisplayingInLockScreen
{
  v3 = sub_100035E6C();
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
      v7 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2080;
    v15 = "[NavModeController didEndDisplayingInLockScreen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  powerLogger = [(NavModeController *)self powerLogger];
  [powerLogger setDisplayingNavOnLockScreen:0];

  containerViewController = [(NavModeController *)self containerViewController];
  [containerViewController didEndDisplayingInLockScreen];
}

- (void)willBeginDisplayingInSecureLockScreen
{
  v3 = sub_100035E6C();
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
      v7 = [(NavModeController *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v20 = selfCopy;
    v21 = 2080;
    v22 = "[NavModeController willBeginDisplayingInSecureLockScreen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  containerViewController = [(NavModeController *)self containerViewController];
  [containerViewController willBeginDisplayingInSecureLockScreen];

  if (![(NavModeController *)self isShowingFullScreenDirectionsList])
  {
    navActionCoordinator = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator dismissPlacecard];

    navActionCoordinator2 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator2 dismissSearchAlongRoute];

    navActionCoordinator3 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator3 dismissModalContainee];

    navActionCoordinator4 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator4 dismissShareETA];

    navActionCoordinator5 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator5 dismissTray];

    navActionCoordinator6 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator6 dismissAddStop];

    navActionCoordinator7 = [(NavModeController *)self navActionCoordinator];
    [navActionCoordinator7 dismissReportAnIncident];
  }

  powerLogger = [(NavModeController *)self powerLogger];
  [powerLogger setDisplayingNavOnLockScreen:1];
}

@end