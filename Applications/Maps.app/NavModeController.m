@interface NavModeController
- (BOOL)_anyNavUIForeground;
- (BOOL)_shouldShowAlternateRoutesForZoom:(unint64_t)a3;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (BOOL)prefersStatusBarHidden;
- (BOOL)wantsStatusBarControl;
- (IOSBasedChromeViewController)chromeViewController;
- (NavActionCoordination)actionCoordinator;
- (NavModeController)initWithPlatformController:(id)a3;
- (NavigationSession)navigationSession;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (StatusBarBackgroundViewStyle)statusBarBackgroundViewStyle;
- (StatusBarSupplementaryView)statusBarSupplementaryView;
- (id)_originalRoute;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (id)personalizedItemSources;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_mapTypeFromMapView:(id)a3;
- (unint64_t)_routeMarkerOptionsForMapViewZoom:(unint64_t)a3 incidentAlert:(id)a4;
- (void)_archiveMapsActivity;
- (void)_becomeTopContextInChromeViewController:(id)a3 animated:(BOOL)a4;
- (void)_completeTrafficIncidentAlert;
- (void)_dismissTrafficIncidentMapDisplay;
- (void)_forEachMapsNavigationWindow:(id)a3;
- (void)_receivedNewRoute:(id)a3 traffic:(id)a4;
- (void)_resignTopContextInChromeViewController:(id)a3;
- (void)_sceneBackgroundedWithOurViewVisible:(id)a3;
- (void)_setRoute:(id)a3;
- (void)_setupMapView;
- (void)_startNavigationCameraMotionAnimated:(BOOL)a3;
- (void)_updateArrivalState;
- (void)_updateDetour;
- (void)_updateWaypointAndOptionsOnRouteAnnotationsConfiguration:(id)a3;
- (void)_updateWithMatchedLocation:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)dealloc;
- (void)didEndDisplayingInLockScreen;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)endNavModeAnimated:(BOOL)a3;
- (void)enterPedestrianAR;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)getCurrentSceneTitleWithCompletion:(id)a3;
- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)a3;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)mapInsetsDidChangeAnimated:(BOOL)a3;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didUpdateYaw:(double)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraHasStartedPanning:(id)a3;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3;
- (void)navActionCoordinator:(id)a3 didChangeMapViewZoom:(unint64_t)a4;
- (void)navigationDisplay:(id)a3 didChangeUserTrackingMode:(int64_t)a4;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateAlternateRoutes:(id)a4 traffics:(id)a5;
- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4;
- (void)navigationService:(id)a3 didUpdateTrafficForRouteID:(id)a4;
- (void)navigationService:(id)a3 didUpdateTrafficIncidentAlert:(id)a4;
- (void)navigationService:(id)a3 didUpdateUpcomingAnchorPointIndex:(unint64_t)a4;
- (void)overrideUserInterfaceStyle;
- (void)performTeardown;
- (void)personalizedItemSourceDidChangeItems:(id)a3;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)screenLayoutDidChangeWithReason:(unint64_t)a3;
- (void)setIncidentAlert:(id)a3;
- (void)setMapView:(id)a3;
- (void)setNavigationCameraMode:(unint64_t)a3;
- (void)setShowFullScreenDirectionsList:(BOOL)a3;
- (void)setUtteringGuidanceAudio:(BOOL)a3;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3;
- (void)willBeginDisplayingInSecureLockScreen;
@end

@implementation NavModeController

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_forEachMapsNavigationWindow:(id)a3
{
  v3 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 connectedScenes];

  obj = v5;
  v16 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
        v8 = [v7 _allWindows];
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v17 + 1) + 8 * v12);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                v3[2](v3, v13);
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
  v3 = [(NavModeController *)self chromeViewController];
  v4 = [v3 contexts];
  v5 = [v4 containsObject:self];

  if (v5)
  {
    v6 = [(NavModeController *)self containerViewController];
    v7 = [v6 traitCollection];
    v8 = [v7 isLuminanceReduced];

    v9 = +[MapsLightLevelController sharedController];
    LOBYTE(v7) = [v9 shouldUseNightMode];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10094E01C;
    v10[3] = &unk_10162F6A8;
    v11 = v7;
    v12 = v8;
    [(NavModeController *)self _forEachMapsNavigationWindow:v10];
  }
}

- (StatusBarSupplementaryView)statusBarSupplementaryView
{
  v2 = [(NavModeController *)self containerViewController];
  v3 = [v2 statusBarSupplementaryView];

  return v3;
}

- (StatusBarBackgroundViewStyle)statusBarBackgroundViewStyle
{
  v2 = [(NavModeController *)self containerViewController];
  v3 = [v2 statusBarBackgroundViewStyle];

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(NavModeController *)self containerViewController];
  v3 = [v2 preferredStatusBarStyle];

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(NavModeController *)self containerViewController];
  v3 = [v2 prefersStatusBarHidden];

  return v3;
}

- (BOOL)wantsStatusBarControl
{
  v2 = +[MNNavigationService sharedService];
  [v2 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  return IsNavigating;
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10094E22C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)screenLayoutDidChangeWithReason:(unint64_t)a3
{
  v9 = +[MapsScreenLayoutMonitor sharedMonitor];
  if ([v9 isScreenOn])
  {
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    v5 = [v4 arrivalInfo];
    v6 = [v5 isInArrivalState];

    if (v6)
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

- (void)navActionCoordinator:(id)a3 didChangeMapViewZoom:(unint64_t)a4
{
  v4 = [(NavModeController *)self chromeViewController:a3];
  [v4 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)personalizedItemSourceDidChangeItems:(id)a3
{
  v4 = a3;
  v5 = [(NavModeController *)self featuresSource];

  if (v5 == v4)
  {
    v6 = [(NavModeController *)self featuresSource];
    v7 = [v6 allItems];
    v8 = [v7 count];

    if (v8 == 1)
    {
      mapView = self->_mapView;
      v10 = 4;
    }

    else
    {
      v11 = [(NavModeController *)self featuresSource];
      v12 = [v11 allItems];
      v13 = [v12 count];

      mapView = self->_mapView;
      v10 = v13 != 0;
    }

    [(MKMapView *)mapView _setDisplayedSearchResultsType:v10];
  }
}

- (void)_sceneBackgroundedWithOurViewVisible:(id)a3
{
  if (+[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground])
  {
    v4 = sub_100035E6C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_sceneBackgroundedWithOurViewVisible: there is at least one foreground scene, ignoring this call.", buf, 2u);
    }
  }

  else
  {
    v5 = +[MNNavigationService sharedService];
    v4 = [v5 arrivalInfo];

    if (([v4 isInArrivalState]& 1) != 0)
    {
      v6 = [(NavModeController *)self isUtteringGuidanceAudio];
      v7 = sub_100035E6C();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (v6)
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

- (void)endNavModeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100035E6C();
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
      v9 = [(NavModeController *)v6 performSelector:"accessibilityIdentifier"];
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
    v16 = v11;
    v17 = 1024;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] endNavModeAnimated: %d", buf, 0x12u);
  }

  v12 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v12 stopMonitoringWithObserver:self];

  [(NavigationPowerLogger *)self->_powerLogger stopLogging];
  v13 = [(NavModeController *)self actionCoordinator];
  v14 = [v13 appCoordinator];
  [v14 endNavigationAndReturnToRoutePlanning:0];
}

- (void)setIncidentAlert:(id)a3
{
  v5 = a3;
  if (self->_incidentAlert != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_incidentAlert, a3);
    v6 = [(NavigationDisplay *)self->_navigationDisplay cameraController];
    [v6 setTrafficIncidentAlert:v9];

    routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
    self->_routeAnnotationsConfiguration = 0;

    v8 = [(NavModeController *)self chromeViewController];
    [v8 setNeedsUpdateComponent:@"routeAnnotations" animated:1];

    v5 = v9;
  }
}

- (void)_completeTrafficIncidentAlert
{
  if (![(NavModeController *)self isShowingFullScreenDirectionsList])
  {
    [(NavModeController *)self _dismissTrafficIncidentMapDisplay];
    v4 = [(NavModeController *)self navActionCoordinator];
    v3 = [v4 trafficIncidentAlertCoordinator];
    [v3 dismissVisibleTrafficAlertView:0];
  }
}

- (void)_dismissTrafficIncidentMapDisplay
{
  [(NavModeController *)self setIncidentAlert:0];
  v4 = [(NavModeController *)self navActionCoordinator];
  v3 = [v4 mapSelectionManager];
  [v3 clearSelection];
}

- (void)navigationService:(id)a3 didUpdateUpcomingAnchorPointIndex:(unint64_t)a4
{
  v4 = [(NavModeController *)self chromeViewController:a3];
  [v4 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4
{
  v4 = [(NavModeController *)self chromeViewController:a3];
  [v4 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v7 = [(NavModeController *)self route:a3];
  v8 = [v7 transportType];

  if (v8 == 2)
  {
    v9 = [(NavModeController *)self route];
    [v9 setCurrentDisplayStep:a4];
  }

  v10 = [(NavModeController *)self chromeViewController];
  [v10 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)a3 didUpdateAlternateRoutes:(id)a4 traffics:(id)a5
{
  routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
  self->_routeAnnotationsConfiguration = 0;

  v7 = [(NavModeController *)self chromeViewController];
  [v7 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)a3 didUpdateTrafficForRouteID:(id)a4
{
  v5 = a4;
  v6 = [(NavModeController *)self chromeViewController];
  v7 = [v6 routeAnnotationsController];
  v8 = [v7 configuration];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 routes];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 uniqueRouteID];
        v16 = [v15 isEqual:v5];

        if (v16)
        {
          [v14 _maps_refreshTrafficIncidentsOnRoute];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)navigationService:(id)a3 didUpdateTrafficIncidentAlert:(id)a4
{
  v14 = a4;
  if (![(NavModeController *)self isShowingFullScreenDirectionsList])
  {
    v5 = [v14 bannerID];
    v6 = [(NavModeController *)self navActionCoordinator];
    v7 = [v6 trafficIncidentAlertCoordinator];
    v8 = [v7 presentedAlert];
    v9 = [v8 bannerID];
    v10 = [v5 isEqualToString:v9];

    if (v10)
    {
      v11 = [(NavigationDisplay *)self->_navigationDisplay cameraController];
      [v11 setTrafficIncidentAlert:v14];

      v12 = [(NavModeController *)self navActionCoordinator];
      v13 = [v12 trafficIncidentAlertCoordinator];
      [v13 updatedAlertViewWithTrafficIncidentAlert:v14];
    }
  }
}

- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (![(NavModeController *)self isShowingFullScreenDirectionsList])
  {
    [(NavModeController *)self setIncidentAlert:v7];
    v9 = [(NavModeController *)self navActionCoordinator];
    v10 = [v9 trafficIncidentAlertCoordinator];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10094EF1C;
    v15 = &unk_101655D58;
    v16 = self;
    v17 = v8;
    [v10 presentAlertViewForTrafficIncidentAlert:v7 responseCallback:&v12];

    v11 = [(NavModeController *)self containerViewController:v12];
    [v11 updateLayoutAnimated:1];
  }
}

- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v6 = [(NavModeController *)self chromeViewController:a3];
  [v6 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v13 = a3;
  if (a5)
  {
    if (MNNavigationServiceStateChangedToNavigating())
    {
      v8 = [v13 route];
      v9 = [v8 traffic];

      v10 = [v13 route];
      [(NavModeController *)self _receivedNewRoute:v10 traffic:v9];
    }

    else if (a5 != a4 && a5 - 3 <= 2)
    {
      routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
      self->_routeAnnotationsConfiguration = 0;

      v12 = [(NavModeController *)self chromeViewController];
      [v12 setNeedsUpdateComponent:@"routeAnnotations" animated:1];

      [(NavModeController *)self _archiveMapsActivity];
    }
  }

  else
  {
    [(NavModeController *)self endNavModeAnimated:1];
  }
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v6 = a4;
  v7 = [v6 traffic];
  [(NavModeController *)self _receivedNewRoute:v6 traffic:v7];
}

- (unint64_t)_mapTypeFromMapView:(id)a3
{
  v3 = a3;
  if ([v3 _isShowingCuratedElevatedGround])
  {
    v4 = 2;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 _visibleTileSets];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 style] == 68)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v5 = UIAccessibilityLayoutChangedNotification;
  v6 = a3;
  UIAccessibilityPostNotification(v5, 0);
  v7 = [(NavModeController *)self _mapTypeFromMapView:v6];

  powerLogger = self->_powerLogger;

  [(NavigationPowerLogger *)powerLogger setMapType:v7];
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [v11 annotation];
  [v6 deselectAnnotation:v7 animated:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isVLFPuckVisible])
  {
    v8 = [(NavModeController *)self platformController];
    v9 = [v8 auxiliaryTasksManager];
    v10 = [v9 auxilaryTaskForClass:objc_opt_class()];

    [v10 showVLFUI];
  }
}

- (void)mapView:(id)a3 didUpdateYaw:(double)a4
{
  v6 = a3;
  v7 = [(NavModeController *)self actionCoordinator];
  [v7 mapView:v6 didUpdateYaw:a4];
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v17 = a3;
  v7 = [(NavModeController *)self chromeViewController];
  v8 = [v7 routeAnnotationsController];
  v9 = [v8 configuration];

  if ([v9 alternateRoutesEnabled])
  {
    mapView = self->_mapView;
    v11 = [v9 routes];
    v12 = [v9 selectedRoute];
    v13 = +[MNNavigationService sharedService];
    v14 = sub_1007D8258(v13);
    v15 = [RouteAnnotationsResponder routeAtPoint:mapView inMapView:v11 withRoutes:v12 selectedRoute:v14 overlappingRouteSelectorBlock:x, y];

    if (v15 && ([v15 source] & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v16 = [(NavModeController *)self navActionCoordinator];
      [v16 viewController:0 switchNavigationToRoute:v15];
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NavModeController *)self navActionCoordinator];
  [v16 didTapMapView:v17 atPoint:{x, y}];
LABEL_7:
}

- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)a3
{
  v7 = a3;
  v4 = [(NavModeController *)self navActionCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavModeController *)self navActionCoordinator];
    [v6 mapViewNavigationCameraDidReturnToDefaultZoom:v7];
  }
}

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3
{
  v7 = a3;
  v4 = [(NavModeController *)self navActionCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavModeController *)self navActionCoordinator];
    [v6 mapViewNavigationCameraDidLeaveDefaultZoom:v7];
  }
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3
{
  v7 = a3;
  v4 = [(NavModeController *)self navActionCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavModeController *)self navActionCoordinator];
    [v6 mapViewNavigationCameraHasStoppedPanning:v7];
  }
}

- (void)mapViewNavigationCameraHasStartedPanning:(id)a3
{
  v7 = a3;
  v4 = [(NavModeController *)self navActionCoordinator];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavModeController *)self navActionCoordinator];
    [v6 mapViewNavigationCameraHasStartedPanning:v7];
  }
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(NavModeController *)self navActionCoordinator];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(NavModeController *)self navActionCoordinator];
    [v9 mapView:v12 didDeselectLabelMarker:v6];
  }

  longitude = kCLLocationCoordinate2DInvalid.longitude;
  v11 = [(NavModeController *)self featuresSource];
  [v11 setOverriddenPointToFrame:{kCLLocationCoordinate2DInvalid.latitude, longitude}];
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(NavModeController *)self navActionCoordinator];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(NavModeController *)self navActionCoordinator];
    [v9 mapView:v15 didSelectLabelMarker:v6];
  }

  if (([v6 isRouteAnnotation] & 1) == 0 && (objc_msgSend(v6, "isRouteEta") & 1) == 0)
  {
    [v6 coordinate];
    v11 = v10;
    [v6 coordinate];
    v13 = CLLocationCoordinate2DMake(v11, v12);
    v14 = [(NavModeController *)self featuresSource];
    [v14 setOverriddenPointToFrame:{v13.latitude, v13.longitude}];
  }
}

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NavModeController *)self navActionCoordinator];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(NavModeController *)self navActionCoordinator];
    v11 = [v10 mapView:v6 shouldSelectLabelMarker:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)navigationDisplay:(id)a3 didChangeUserTrackingMode:(int64_t)a4
{
  v5 = +[UIApplication sharedMapsDelegate];
  [v5 setTrackingMode:a4 monitorBatteryState:0];
}

- (void)_updateArrivalState
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 arrivalInfo];
  if (![v4 arrivalState] || objc_msgSend(v4, "arrivalState") == -1)
  {
    v32 = +[MapsScreenLayoutMonitor sharedMonitor];
    [v32 stopMonitoringWithObserver:self];
LABEL_32:

    goto LABEL_33;
  }

  v5 = [(NavModeController *)self chromeViewController];
  [v5 setNeedsUpdateComponent:@"routeAnnotations" animated:1];

  v6 = [v3 route];
  v7 = [v6 isLegIndexOfLastLeg:{objc_msgSend(v4, "legIndex")}];

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
      v15 = [v4 isInArrivalState];
      v16 = sub_100035E6C();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v17 = self;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (objc_opt_respondsToSelector())
      {
        v20 = [(NavModeController *)v17 performSelector:"accessibilityIdentifier"];
        v21 = v20;
        if (v20 && ![v20 isEqualToString:v19])
        {
          v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

          goto LABEL_19;
        }
      }

      v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_19:

      *buf = 138543618;
      v52 = v22;
      v53 = 1024;
      v54 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Should auto end nav: %d", buf, 0x12u);

LABEL_20:
      if ((v15 & 1) == 0)
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

          v31 = [(NavModeController *)self navActionCoordinator];
          [v31 dismissShareETA];

          goto LABEL_33;
        }

        v25 = self;
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        if (objc_opt_respondsToSelector())
        {
          v28 = [(NavModeController *)v25 performSelector:"accessibilityIdentifier"];
          v29 = v28;
          if (v28 && ![v28 isEqualToString:v27])
          {
            v30 = [NSString stringWithFormat:@"%@<%p, %@>", v27, v25, v29];

            goto LABEL_29;
          }
        }

        v30 = [NSString stringWithFormat:@"%@<%p>", v27, v25];
LABEL_29:

        *buf = 138543362;
        v52 = v30;
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

        v36 = self;
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        if (objc_opt_respondsToSelector())
        {
          v39 = [(NavModeController *)v36 performSelector:"accessibilityIdentifier"];
          v40 = v39;
          if (v39 && ![v39 isEqualToString:v38])
          {
            v41 = [NSString stringWithFormat:@"%@<%p, %@>", v38, v36, v40];

            goto LABEL_42;
          }
        }

        v41 = [NSString stringWithFormat:@"%@<%p>", v38, v36];
LABEL_42:

        *buf = 138543362;
        v52 = v41;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[%{public}@] navigationServiceDidArrive: while Maps is in the lockscreen or the device is locked", buf, 0xCu);

LABEL_43:
        if (!v15)
        {
          goto LABEL_33;
        }

        goto LABEL_53;
      }

      v42 = sub_100035E6C();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
LABEL_52:

        v49 = [(NavModeController *)self navActionCoordinator];
        [v49 dismissShareETA];

        v50 = [(NavModeController *)self navActionCoordinator];
        [v50 dismissSearchAlongRoute];

        if (!v15)
        {
          goto LABEL_33;
        }

LABEL_53:
        v32 = +[MapsScreenLayoutMonitor sharedMonitor];
        [v32 startMonitoringWithObserver:self];
        goto LABEL_32;
      }

      v43 = self;
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      if (objc_opt_respondsToSelector())
      {
        v46 = [(NavModeController *)v43 performSelector:"accessibilityIdentifier"];
        v47 = v46;
        if (v46 && ![v46 isEqualToString:v45])
        {
          v48 = [NSString stringWithFormat:@"%@<%p, %@>", v45, v43, v47];

          goto LABEL_51;
        }
      }

      v48 = [NSString stringWithFormat:@"%@<%p>", v45, v43];
LABEL_51:

      *buf = 138543362;
      v52 = v48;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}@] navigationServiceDidArrive: while Maps is foreground", buf, 0xCu);

      goto LABEL_52;
    }

    v9 = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(NavModeController *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_11;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_11:

    *buf = 138543362;
    v52 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] navigationServiceDidArrive: will mark route as complete", buf, 0xCu);

    goto LABEL_12;
  }

LABEL_33:
}

- (void)_archiveMapsActivity
{
  v3 = [(NavModeController *)self actionCoordinator];
  v2 = [v3 appCoordinator];
  [v2 archiveMapsActivity];
}

- (void)_updateWithMatchedLocation:(id)a3
{
  navigationDisplay = self->_navigationDisplay;
  v5 = a3;
  [(NavigationDisplay *)navigationDisplay updateWithLocation:v5];
  v7 = [(NavModeController *)self chromeViewController];
  v6 = [v7 routeAnnotationsController];
  [v6 updateMatchedLocation:v5];
}

- (void)_startNavigationCameraMotionAnimated:(BOOL)a3
{
  v3 = a3;
  [(NavigationDisplay *)self->_navigationDisplay startMotion:?];
  v5 = [(NavigationDisplay *)self->_navigationDisplay userLocationAnnotationView];
  [v5 setInNavMode:1 animated:v3];
}

- (void)_updateWaypointAndOptionsOnRouteAnnotationsConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NavModeController *)self actionCoordinator];
  v6 = [v5 currentMapViewZoom];

  [v4 setAlternateRoutesEnabled:{-[NavModeController _shouldShowAlternateRoutesForZoom:](self, "_shouldShowAlternateRoutesForZoom:", v6)}];
  v7 = [(NavModeController *)self incidentAlert];
  [v4 setRouteMarkerOptions:{-[NavModeController _routeMarkerOptionsForMapViewZoom:incidentAlert:](self, "_routeMarkerOptionsForMapViewZoom:incidentAlert:", v6, v7)}];

  v8 = +[MNNavigationService sharedService];
  v9 = [v8 arrivalInfo];
  v10 = v9;
  if (v9 && [v9 isInArrivalState])
  {
    v11 = [v10 destination];
    v12 = 0;
    v13 = 2;
  }

  else
  {
    v14 = [v8 lastLocation];
    if (v14 && (v15 = v14, [v8 lastLocation], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "state"), v16, v15, v17 == 1))
    {
      route = self->_route;
      v19 = [v8 lastLocation];
      v20 = [v19 routeMatch];
      v27 = 0;
      v28 = 0;
      -[GEOComposedRoute nextWaypointOrAnchorPointFromRouteCoordinate:outWaypoint:outAnchorPoint:](route, "nextWaypointOrAnchorPointFromRouteCoordinate:outWaypoint:outAnchorPoint:", [v20 routeCoordinate], &v28, &v27);
      v11 = v28;
      v12 = v27;

      v13 = (v11 | v12) != 0;
    }

    else
    {
      v21 = -[GEOComposedRoute legIndexForStepIndex:](self->_route, "legIndexForStepIndex:", [v8 stepIndex]);
      v22 = [(GEOComposedRoute *)self->_route legs];
      if (v21 >= [v22 count])
      {
        v24 = 0;
      }

      else
      {
        v23 = [(GEOComposedRoute *)self->_route legs];
        v24 = [v23 objectAtIndexedSubscript:v21];
      }

      v11 = [v24 destination];
      v13 = v11 != 0;

      v12 = 0;
    }
  }

  if (v11)
  {
    v25 = v11;
  }

  else
  {
    v25 = v12;
  }

  [v4 setCurrentNavigationWaypoint:v25];
  [v4 setProximityToCurrentNavigationWaypoint:v13];
  v26 = sub_100035E6C();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Updated route annotations configuration: %{public}@", buf, 0xCu);
  }
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  v3 = [(NavModeController *)self chromeViewController];

  if (!v3)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v4 = [(NavModeController *)self navigationSession];
  v5 = [v4 sessionState];

  if (v5 != 1)
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
    v8 = [(NavModeController *)self _originalRoute];
    if (v8)
    {
      v9 = [(RouteAnnotationsConfiguration *)v7 routes];
      v10 = [v9 mutableCopy];

      [v10 addObject:v8];
      [(RouteAnnotationsConfiguration *)v7 setRoutes:v10];
    }

    v11 = [v8 uniqueRouteID];
    [(RouteAnnotationsConfiguration *)v7 setOriginalRouteID:v11];

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

- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NavModeController *)self containerViewController];
  [v5 insertDimmingOverlayForStaleMapEffectWithBlock:v4];
}

- (void)mapInsetsDidChangeAnimated:(BOOL)a3
{
  v8 = [(NavModeController *)self actionCoordinator];
  v4 = [(NavModeController *)self chromeViewController];
  v5 = [v4 view];
  v6 = [v5 traitCollection];
  v7 = [(NavModeController *)self containerViewController];
  [v8 updateCameraForTraits:v6 containerStyle:{objc_msgSend(v7, "containerStyle")}];
}

- (void)getCurrentSceneTitleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NavModeController *)self route];
  v6 = [v5 destination];
  v7 = [v6 name];

  v8 = +[NSBundle mainBundle];
  if (v7)
  {
    v9 = [v8 localizedStringForKey:@"[App switcher title] Directions to <destination>" value:@"localized string not found" table:0];
    v10 = [(NavModeController *)self route];
    v11 = [v10 destination];
    v12 = [v11 name];
    v13 = [NSString stringWithFormat:v9, v12];
  }

  else
  {
    v13 = [v8 localizedStringForKey:@"[App switcher title] Directions" value:@"localized string not found" table:0];
  }

  v4[2](v4, v13);
}

- (void)performTeardown
{
  v3 = [(NavModeController *)self route];
  v4 = [v3 transportType];

  if (v4 == 2)
  {
    v5 = [(NavModeController *)self route];
    [v5 setManeuverDisplayEnabled:0];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  [(NavModeController *)self unsetUserInterfaceStyle];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = 0;

  cardHidingToken = self->_cardHidingToken;
  self->_cardHidingToken = 0;

  [(MKMapView *)self->_mapView _setDisplayedSearchResultsType:0];
  v9 = [(MKMapView *)self->_mapView _mapLayer];
  [v9 setFocusedLabelsPolyline:0];

  [(MKMapView *)self->_mapView _setApplicationState:0];
  [(MKMapView *)self->_mapView _clearRouteContext];
  if (v4 == 2)
  {
    [(MKMapView *)self->_mapView _setShowHeadingIndicatorForStepping:0];
  }

  [(NavModeController *)self setMapView:0];
  [(MKMapView *)self->_mapView _setDebugConsoleAdditionalInfoProvider:0];
  v10 = [(NavigationDisplay *)self->_navigationDisplay cameraController];
  [v10 setTrafficIncidentAlert:0];

  [(NavigationDisplay *)self->_navigationDisplay stopCameraMotion];
  v11 = [(NavigationDisplay *)self->_navigationDisplay cameraController];
  [v11 resetMapViewNavigationState];

  v12 = [(NavigationDisplay *)self->_navigationDisplay userLocationAnnotationView];
  [v12 setInNavMode:0 animated:1];

  [(NavigationDisplay *)self->_navigationDisplay setUserLocationAnnotationView:0];
  [(NavigationDisplay *)self->_navigationDisplay setChromeViewController:0];
  v13 = [(NavModeController *)self navActionCoordinator];
  v14 = [v13 trafficIncidentAlertCoordinator];
  [v14 dismissVisibleTrafficAlertView:1];

  v15 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v15 stopMonitoringWithObserver:self];
}

- (void)_resignTopContextInChromeViewController:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
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
      v9 = [(NavModeController *)v6 performSelector:"accessibilityIdentifier"];
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
    v23 = v11;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Resign top context in chrome VC: %@", buf, 0x16u);
  }

  v12 = [v4 nextTopContext];
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

    v15 = self;
    if (!v15)
    {
      v20 = @"<nil>";
      goto LABEL_22;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(NavModeController *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_19;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_19:

LABEL_22:
    *buf = 138543362;
    v23 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] Next top context is the PedestrianAR one; not doing the usual teardown", buf, 0xCu);

    goto LABEL_23;
  }

  [(NavModeController *)self performTeardown];
  v21 = [(NavModeController *)self iosBasedChromeViewController];
  [v21 setStatusBarAdditionalColor:0];

LABEL_24:
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100951154;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [v7 addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_becomeTopContextInChromeViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_100035E6C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_10;
    }

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

LABEL_10:
    *buf = 138543618;
    v61 = v13;
    v62 = 2112;
    v63 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Becoming top context in chrome VC: %@", buf, 0x16u);
  }

  v14 = [v6 previousTopContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = sub_100035E6C();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_38:

      self->_isPedestrianARActive = 0;
      v27 = [(NavModeController *)self containerViewController];
      [v27 setLayoutIfSupported:1 animated:0];
      goto LABEL_39;
    }

    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_37;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(NavModeController *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_19;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_19:

LABEL_37:
    *buf = 138543362;
    v61 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] Previous top context is the PedestrianAR one; not doing the usual setup", buf, 0xCu);

    goto LABEL_38;
  }

  v23 = [v6 previousTopContext];
  if (objc_opt_respondsToSelector())
  {
    v24 = [v6 previousTopContext];
    v25 = [v24 fullscreenViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  [v27 setContaineesHidden:1];
  v28 = [(NavModeController *)self containerViewController];
  [v28 setChromeContext:self];

  v29 = [(NavModeController *)self chromeViewController];
  v30 = [(NavModeController *)self navigationDisplay];
  [v30 setChromeViewController:v29];

  v31 = [(NavModeController *)self isShowingFullScreenDirectionsList];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  if (v31)
  {
    if (!chromeDeactivationToken)
    {
      v33 = [(NavModeController *)self chromeViewController];
      v34 = [v33 acquireChromeDeactivationTokenForReason:@"full-screen directions list"];
      v35 = self->_chromeDeactivationToken;
      self->_chromeDeactivationToken = v34;
    }

    if (!self->_cardHidingToken)
    {
      v36 = [(NavModeController *)self chromeViewController];
      v37 = [v36 acquireCardHidingTokenForReason:@"full-screen directions list"];
      cardHidingToken = self->_cardHidingToken;
      self->_cardHidingToken = v37;
    }

    v39 = [(NavModeController *)self navigationDisplay];
    [v39 clearCache];

    mapView = self->_mapView;
    self->_mapView = 0;
  }

  else
  {
    self->_chromeDeactivationToken = 0;

    v41 = self->_cardHidingToken;
    self->_cardHidingToken = 0;

    mapView = [(NavModeController *)self chromeViewController];
    v42 = [mapView mapView];
    [(NavModeController *)self setMapView:v42];
  }

  v43 = +[MNNavigationService sharedService];
  v44 = [v43 desiredNavigationType];

  if (!v44)
  {
    v45 = +[MNNavigationService sharedService];
    v44 = [v45 navigationType];
  }

  [(NavModeController *)self setNavigationCameraMode:v44 != 3];
  v46 = [(NavModeController *)self chromeViewController];
  v47 = [v46 userLocationView];
  v48 = [(NavModeController *)self navigationDisplay];
  [v48 setUserLocationAnnotationView:v47];

  v49 = [(NavModeController *)self navigationDisplay];
  v50 = [v49 mapView];
  [v50 _setShouldSplitRouteLine:1];

  v51 = [(NavModeController *)self navigationDisplay];
  v52 = +[MNNavigationService sharedService];
  v53 = [v52 route];
  v54 = [v53 destination];
  [v51 setDestinationWaypoint:v54];

  v55 = [(NavModeController *)self navigationDisplay];
  v56 = +[MNNavigationService sharedService];
  [v55 setTransportType:{objc_msgSend(v56, "navigationTransportType")}];

  [(NavModeController *)self _startNavigationCameraMotionAnimated:v4];
  v57 = +[NSNotificationCenter defaultCenter];
  [v57 addObserver:self selector:"_sceneBackgroundedWithOurViewVisible:" name:UISceneDidEnterBackgroundNotification object:0];
  [v57 addObserver:self selector:"_sceneWillConnect" name:UISceneWillConnectNotification object:0];
  v58 = +[UIApplication sharedMapsDelegate];
  [v58 acquireSecureAppAssertionIfNeeded];

  v59 = [(NavModeController *)self containerViewController];
  [v59 updateStatusBarColor];

  [(NavModeController *)self overrideUserInterfaceStyle];
LABEL_39:
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  LOBYTE(self) = [v7 isAnimated];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10095196C;
  v9[3] = &unk_101632728;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  v12 = self;
  [v7 addPreparation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
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

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavModeController *)v6 performSelector:"accessibilityIdentifier"];
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
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Leaving stack while Pedestrian AR is active; performing teardown now (skipped on resign top because of pedestrian AR)", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a3;
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
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
      v10 = [(NavModeController *)v7 performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Entering stack in chrome VC: %@", buf, 0x16u);
  }

  [(NavModeController *)self _forEachMapsNavigationWindow:&stru_10162F688];
  v13 = +[MNNavigationService sharedService];
  v14 = [v13 route];

  if (v14)
  {
    v15 = [(NavModeController *)self containerViewController];
    [v15 loadViewIfNeeded];

    [(NavModeController *)self _setRoute:v14];
  }

  [(NavModeController *)self _archiveMapsActivity];
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
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
      v9 = [(NavModeController *)v6 performSelector:"accessibilityIdentifier"];
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
    v16 = v11;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Preparing to enter stack in chrome VC: %@", buf, 0x16u);
  }

  v12 = [v4 customPOIsController];
  v13 = [(NavModeController *)self navActionCoordinator];
  [v13 setCustomPOIsController:v12];

  v14 = [(NavModeController *)self containerViewController];
  [v14 setChromeViewController:v4];
}

- (id)personalizedItemSources
{
  v3 = [(NavModeController *)self chromeViewController];
  v4 = [v3 searchPinsManager];

  if (v4)
  {
    v10[0] = self->_featuresSource;
    v5 = [(NavModeController *)self chromeViewController];
    v6 = [v5 searchPinsManager];
    v7 = [v6 routeStartEndItemSource];
    v10[1] = v7;
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
  v2 = [(NavModeController *)self navActionCoordinator];
  [v2 enterPedestrianAR];
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
    v3 = [v2 activeBannerViewController];

    if (v3)
    {
      return 1;
    }
  }

  return +[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground];
}

- (void)_updateDetour
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 isDetour];

  v5 = [(NavModeController *)self containerViewController];
  v6 = [v5 bannerAction];

  v7 = sub_100035E6C();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  v8 = self;
  if (!v8)
  {
    v13 = @"<nil>";
    goto LABEL_10;
  }

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

LABEL_10:
  v14 = @"NO";
  if (v4)
  {
    v14 = @"YES";
  }

  v15 = v14;
  *buf = 138543874;
  v27 = v13;
  v28 = 2112;
  v29 = v15;
  v30 = 2112;
  v31 = v6;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] _updateDetour: %@ existingAction: %@", buf, 0x20u);

LABEL_13:
  if (!v4)
  {
    v17 = 0;
LABEL_20:
    v22 = [(NavModeController *)self containerViewController];
    [v22 setBannerAction:v17 animated:1];
    goto LABEL_21;
  }

  v16 = +[MNNavigationService sharedService];
  v17 = [v16 originalDestinationName];

  v18 = [v17 length];
  v19 = +[NSBundle mainBundle];
  v20 = v19;
  if (v18)
  {
    v21 = [v19 localizedStringForKey:@"[Navigation Top Banner View] Resume Route to %@" value:@"localized string not found" table:0];

    v22 = [NSString stringWithFormat:v21, v17];
    v20 = v21;
  }

  else
  {
    v22 = [v19 localizedStringForKey:@"[Navigation Top Banner View] Resume Original Route" value:@"localized string not found" table:0];
  }

  v23 = [v6 title];
  v24 = [v23 isEqualToString:v22];

  if ((v24 & 1) == 0)
  {
    v25 = objc_opt_new();
    [v25 setTitle:v22];
    [v25 setActionHandler:&stru_10162F648];

    v17 = v25;
    goto LABEL_20;
  }

LABEL_21:
}

- (unint64_t)_routeMarkerOptionsForMapViewZoom:(unint64_t)a3 incidentAlert:(id)a4
{
  if (a3 | a4)
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
  v3 = [v2 originalRoute];
  if ([v3 source] == 2 || objc_msgSend(v3, "source") == 3)
  {
    v4 = [v2 route];
    v5 = [v4 uniqueRouteID];
    v6 = [v3 uniqueRouteID];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldShowAlternateRoutesForZoom:(unint64_t)a3
{
  v5 = [(NavModeController *)self _originalRoute];

  if (v5)
  {
    return 1;
  }

  BOOL = GEOConfigGetBOOL();
  result = 1;
  if (!a3 && (BOOL & 1) == 0)
  {
    return self->_incidentAlert != 0;
  }

  return result;
}

- (void)_receivedNewRoute:(id)a3 traffic:(id)a4
{
  [(NavModeController *)self _setRoute:a3, a4];
  [(NavModeController *)self _updateDetour];

  [(NavModeController *)self _archiveMapsActivity];
}

- (void)_setRoute:(id)a3
{
  v5 = a3;
  v6 = sub_100035E6C();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

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
    v10 = [(NavModeController *)v7 performSelector:"accessibilityIdentifier"];
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
  *buf = 138543618;
  v24 = v12;
  v25 = 2112;
  v26 = v5;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating route: %@", buf, 0x16u);

LABEL_11:
  p_route = &self->_route;
  route = self->_route;
  if (route)
  {
    v15 = [(GEOComposedRoute *)route transportType];
  }

  else
  {
    v15 = 4;
  }

  v16 = [v5 transportType];
  objc_storeStrong(&self->_route, a3);
  if (-[GEOComposedRoute transportType](*p_route, "transportType") == 2 && ((GEOConfigGetBOOL() & 1) != 0 || ([v5 source] & 0xFFFFFFFFFFFFFFFELL) == 2))
  {
    [(GEOComposedRoute *)*p_route setManeuverDisplayEnabled:1];
    v17 = [(GEOComposedRoute *)*p_route steps];
    [(GEOComposedRoute *)*p_route setManeuverDisplaySteps:v17];
  }

  else
  {
    [(GEOComposedRoute *)*p_route setManeuverDisplayEnabled:0];
    [(GEOComposedRoute *)*p_route setManeuverDisplaySteps:0];
  }

  [(NavigationDisplay *)self->_navigationDisplay updateWithRoute:v5];
  v18 = [(NavModeController *)self route];
  v19 = [(NavModeController *)self containerViewController];
  [v19 setRoute:v18];

  routeAnnotationsConfiguration = self->_routeAnnotationsConfiguration;
  self->_routeAnnotationsConfiguration = 0;

  v21 = [(NavModeController *)self chromeViewController];
  [v21 setNeedsUpdateComponent:@"routeAnnotations" animated:1];

  if (v15 != v16)
  {
    v22 = [(NavModeController *)self navigationDisplay];
    [v22 setTransportType:v16 animated:v15 == 4];
  }
}

- (void)_setupMapView
{
  [(MKMapView *)self->_mapView _setApplicationState:2];
  v3 = [(MKMapView *)self->_mapView selectedAnnotations];
  v4 = [v3 firstObject];

  if (v4)
  {
    [(MKMapView *)self->_mapView deselectAnnotation:v4 animated:0];
  }

  [(MKMapView *)self->_mapView _deselectLabelMarkerAnimated:0];
}

- (void)setUtteringGuidanceAudio:(BOOL)a3
{
  if (self->_utteringGuidanceAudio != a3)
  {
    v15 = v3;
    v16 = v4;
    self->_utteringGuidanceAudio = a3;
    v6 = [(NavModeController *)self _anyNavUIForeground];
    v7 = +[MNNavigationService sharedService];
    v8 = [v7 arrivalInfo];
    v9 = [v8 isInArrivalState];
    v10 = [v8 legIndex];
    v11 = [v7 route];
    v12 = [v11 isLegIndexOfLastLeg:v10];

    if (!self->_utteringGuidanceAudio && (v6 & 1) == 0 && v9 && v12)
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

- (void)setNavigationCameraMode:(unint64_t)a3
{
  if (self->_navigationCameraMode == a3)
  {
    return;
  }

  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavModeController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    navigationCameraMode = self->_navigationCameraMode;
    *buf = 138543874;
    v25 = v11;
    v26 = 2048;
    v27 = navigationCameraMode;
    v28 = 2048;
    v29 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Changing navigationCameraMode from %lu to %lu", buf, 0x20u);
  }

  self->_navigationCameraMode = a3;
  if (a3 == 1)
  {
    v13 = [(NavModeController *)self navActionCoordinator];
    v14 = [v13 lowGuidanceUserPreferredHeadingOverride];

    v15 = 0;
    v16 = 1;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v15 = 1;
  }

  v17 = [(NavModeController *)self navActionCoordinator];
  [v17 setDefaultMapViewZoom:v16];
  v18 = [(NavModeController *)self navActionCoordinator];
  v19 = [v18 currentMapViewZoom] == 2;

  [v17 resetMapViewZoomToDefaultAndStartCameraTracking:v19];
  v20 = [(NavModeController *)self containerViewController];
  [v20 setSignStyle:v15];

  v21 = [(NavModeController *)self navigationDisplay];
  v22 = [v21 cameraController];
  [v22 setNavigationCameraHeadingOverride:v14];

  v23 = [(NavModeController *)self navigationDisplay];
  [v23 setNavigationDestinationState:1];
}

- (void)setShowFullScreenDirectionsList:(BOOL)a3
{
  if (self->_showFullScreenDirectionsList == a3)
  {
    return;
  }

  v3 = a3;
  self->_showFullScreenDirectionsList = a3;
  v5 = [(NavModeController *)self navActionCoordinator];
  [v5 setShowFullScreenDirectionsList:v3];

  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(NavModeController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    v13 = @"NO";
    if (v3)
    {
      v13 = @"YES";
    }

    v14 = v13;
    *buf = 138543618;
    v32 = v12;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Setting show fullscreen directions list: %@", buf, 0x16u);
  }

  v15 = [(NavModeController *)self containerViewController];
  v16 = [v15 view];

  if (v16)
  {
    v17 = [(NavModeController *)self containerViewController];
    [v17 setResumeRouteBannerHidden:v3];

    chromeDeactivationToken = self->_chromeDeactivationToken;
    if (v3)
    {
      if (!chromeDeactivationToken)
      {
        v19 = [(NavModeController *)self chromeViewController];
        v20 = [v19 acquireChromeDeactivationTokenForReason:@"full-screen directions list"];
        v21 = self->_chromeDeactivationToken;
        self->_chromeDeactivationToken = v20;
      }

      if (!self->_cardHidingToken)
      {
        v22 = [(NavModeController *)self chromeViewController];
        v23 = [v22 acquireCardHidingTokenForReason:@"full-screen directions list"];
        cardHidingToken = self->_cardHidingToken;
        self->_cardHidingToken = v23;
      }

      v25 = [(NavModeController *)self navigationDisplay];
      [v25 clearCache];

      mapView = self->_mapView;
      self->_mapView = 0;
    }

    else
    {
      self->_chromeDeactivationToken = 0;

      v27 = self->_cardHidingToken;
      self->_cardHidingToken = 0;

      v28 = [(NavModeController *)self chromeViewController];
      v29 = [v28 mapView];
      [(NavModeController *)self setMapView:v29];

      [(NavModeController *)self _startNavigationCameraMotionAnimated:0];
    }

    v30 = [(NavModeController *)self navActionCoordinator];
    [v30 presentTray];
  }
}

- (void)setMapView:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mapView != v5)
  {
    v10 = v5;
    if (!v5 || (v7 = [(NavModeController *)self isShowingFullScreenDirectionsList], v6 = v10, (v7 & 1) == 0))
    {
      objc_storeStrong(&self->_mapView, a3);
      [(NavigationPowerLogger *)self->_powerLogger setMapType:[(NavModeController *)self _mapTypeFromMapView:v10]];
      if (self->_mapView)
      {
        [(NavModeController *)self _setupMapView];
        [(NavModeController *)self _setRoute:self->_route];
      }

      else
      {
        v8 = [(NavModeController *)self chromeViewController];
        v9 = [v8 searchPinsManager];
        [v9 clearDirectionsPins];
      }

      v6 = v10;
    }
  }
}

- (NavigationSession)navigationSession
{
  v2 = [(NavModeController *)self platformController];
  v3 = [v2 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
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

- (NavActionCoordination)actionCoordinator
{
  v2 = [(NavModeController *)self containerViewController];
  v3 = [v2 coordinator];

  return v3;
}

- (void)dealloc
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
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
      v7 = [(NavModeController *)v4 performSelector:"accessibilityIdentifier"];
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
    v14 = v9;
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

- (NavModeController)initWithPlatformController:(id)a3
{
  v5 = a3;
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

  objc_storeStrong(&v6->_platformController, a3);
  v6->_navigationCameraMode = 0;
  v14 = objc_alloc_init(GuidanceObserver);
  guidanceObserver = v6->_guidanceObserver;
  v6->_guidanceObserver = v14;

  v16 = objc_alloc_init(NavigationDisplay);
  navigationDisplay = v6->_navigationDisplay;
  v6->_navigationDisplay = v16;

  [(NavigationDisplay *)v6->_navigationDisplay setDelegate:v6];
  v18 = [NavigationCustomFeaturesSource alloc];
  v19 = [(NavigationDisplay *)v6->_navigationDisplay cameraController];
  v20 = [(NavigationCustomFeaturesSource *)v18 initWithPointsFramer:v19];
  featuresSource = v6->_featuresSource;
  v6->_featuresSource = v20;

  [(NavigationCustomFeaturesSource *)v6->_featuresSource setFramingMode:1];
  [(PersonalizedItemSource *)v6->_featuresSource addObserver:v6];
  v22 = [[RAPNavigationTracker alloc] initWithPlatformController:v6->_platformController];
  rapNavigationTracker = v6->_rapNavigationTracker;
  v6->_rapNavigationTracker = v22;

  v24 = [NavActionCoordinator alloc];
  v25 = [(NavModeController *)v6 featuresSource];
  v26 = [(NavModeController *)v6 navigationDisplay];
  v27 = [(NavModeController *)v6 guidanceObserver];
  v28 = [(NavActionCoordinator *)v24 initWithMapItemDisplayer:v25 navigationDisplay:v26 guidanceObserver:v27 navigationCameraModeController:v6 rapNavigationTracker:v6->_rapNavigationTracker];
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
  v33 = [(NavModeController *)v6 navActionCoordinator];
  v34 = [(NavModeController *)v6 guidanceObserver];
  v35 = [(NavContainerViewController *)v32 initWithCoordinator:v33 guidanceObserver:v34 platformController:v6->_platformController];
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
      v7 = [(NavModeController *)v4 performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v13 = v9;
    v14 = 2080;
    v15 = "[NavModeController didEndDisplayingInLockScreen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  v10 = [(NavModeController *)self powerLogger];
  [v10 setDisplayingNavOnLockScreen:0];

  v11 = [(NavModeController *)self containerViewController];
  [v11 didEndDisplayingInLockScreen];
}

- (void)willBeginDisplayingInSecureLockScreen
{
  v3 = sub_100035E6C();
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
      v7 = [(NavModeController *)v4 performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v20 = v9;
    v21 = 2080;
    v22 = "[NavModeController willBeginDisplayingInSecureLockScreen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  v10 = [(NavModeController *)self containerViewController];
  [v10 willBeginDisplayingInSecureLockScreen];

  if (![(NavModeController *)self isShowingFullScreenDirectionsList])
  {
    v11 = [(NavModeController *)self navActionCoordinator];
    [v11 dismissPlacecard];

    v12 = [(NavModeController *)self navActionCoordinator];
    [v12 dismissSearchAlongRoute];

    v13 = [(NavModeController *)self navActionCoordinator];
    [v13 dismissModalContainee];

    v14 = [(NavModeController *)self navActionCoordinator];
    [v14 dismissShareETA];

    v15 = [(NavModeController *)self navActionCoordinator];
    [v15 dismissTray];

    v16 = [(NavModeController *)self navActionCoordinator];
    [v16 dismissAddStop];

    v17 = [(NavModeController *)self navActionCoordinator];
    [v17 dismissReportAnIncident];
  }

  v18 = [(NavModeController *)self powerLogger];
  [v18 setDisplayingNavOnLockScreen:1];
}

@end