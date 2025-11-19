@interface NavigationStateMonitoringTask
- (BOOL)_shouldSuppressAnimationsForAndromeda;
- (BOOL)isNavigationAutoLaunchInProgress;
- (BOOL)shouldStartNavigationAutoLaunchTimer;
- (ChromeViewController)chromeViewController;
- (NavigationStateMonitoringTask)initWithPlatformController:(id)a3 navigationService:(id)a4;
- (PlatformController)platformController;
- (id)currentRoutePlanningSessionConfiguration;
- (void)_checkAnimationsForAndromeda:(id)a3;
- (void)_checkAnimationsMitigation;
- (void)_checkETAUpdatesMitigation;
- (void)_checkMapViewMitigation;
- (void)_checkModernMapMitigation;
- (void)beginNavigationWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4 mapServiceTraits:(id)a5 sessionInitiator:(unint64_t)a6 isResumingMultipointRoute:(BOOL)a7;
- (void)callNavigationCompletionBlocksIfNecessary;
- (void)cancelNavigationAutoLaunchIfNeccessary;
- (void)dealloc;
- (void)didUpdateMitigationNamed:(id)a3;
- (void)endNavigationWithCompletion:(id)a3;
- (void)handoffDestinationToExternalDevice:(id)a3;
- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)platformControllerDidChangeChromeViewControllerNotification:(id)a3;
- (void)presentHandoffAlertForDestination:(id)a3;
- (void)releaseAutoLaunchAssertion;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setChromeViewController:(id)a3;
- (void)setObservedNavigationSession:(id)a3;
- (void)setObservedRoutePlanningSession:(id)a3;
- (void)startNavigationAutoLaunchTimer;
- (void)takeAutoLaunchAssertion;
- (void)updateHikingMapConfiguration;
@end

@implementation NavigationStateMonitoringTask

- (void)_checkAnimationsMitigation
{
  v3 = +[MapsThermalPressureController sharedController];
  v4 = [v3 shouldActivateMitigationNamed:@"NavigationSuppressAllAnimations"];

  thermalPressureAnimationSuppressionToken = self->_thermalPressureAnimationSuppressionToken;
  if (v4)
  {
    if (thermalPressureAnimationSuppressionToken)
    {
      return;
    }

    v6 = sub_1006C30F8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Acquiring thermal pressure animation suppression token", buf, 2u);
    }

    v7 = [MapsAppAnimationSuppressor acquireAnimationSuppressionTokenForReason:@"Thermal Pressure"];
  }

  else
  {
    if (!thermalPressureAnimationSuppressionToken)
    {
      return;
    }

    v8 = sub_1006C30F8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Releasing thermal pressure animation suppression token", v10, 2u);
    }

    v7 = 0;
  }

  v9 = self->_thermalPressureAnimationSuppressionToken;
  self->_thermalPressureAnimationSuppressionToken = v7;
}

- (void)_checkETAUpdatesMitigation
{
  v3 = +[MapsThermalPressureController sharedController];
  v4 = [v3 shouldActivateMitigationNamed:@"NavigationSuppressETAUpdates"];

  navigationService = self->_navigationService;
  if (v4)
  {

    [(MNNavigationService *)navigationService disableNavigationCapability:1 reason:1];
  }

  else
  {

    [(MNNavigationService *)navigationService enableNavigationCapability:1 reason:1];
  }
}

- (void)_checkMapViewMitigation
{
  v3 = +[MapsThermalPressureController sharedController];
  v4 = [v3 shouldActivateMitigationNamed:@"NavigationThermalMitigationForceMapInactive"];

  thermalPressureChromeDeactivationToken = self->_thermalPressureChromeDeactivationToken;
  if (v4)
  {
    if (thermalPressureChromeDeactivationToken)
    {
      return;
    }

    v6 = sub_1006C30F8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Acquiring thermal pressure chrome deactivation token", buf, 2u);
    }

    v7 = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
    v8 = [v7 acquireChromeDeactivationTokenForReason:@"thermal"];
    v9 = self->_thermalPressureChromeDeactivationToken;
    self->_thermalPressureChromeDeactivationToken = v8;
  }

  else
  {
    if (!thermalPressureChromeDeactivationToken)
    {
      return;
    }

    v10 = sub_1006C30F8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Releasing thermal pressure chrome deactivation token", v11, 2u);
    }

    v7 = self->_thermalPressureChromeDeactivationToken;
    self->_thermalPressureChromeDeactivationToken = 0;
  }
}

- (BOOL)_shouldSuppressAnimationsForAndromeda
{
  v3 = [(NavigationStateMonitoringTask *)self iosChromeViewController];
  v4 = [v3 isTransitioningToLockScreen];

  if (v4)
  {
    return 1;
  }

  v6 = [(NavigationStateMonitoringTask *)self chromeViewController];
  v7 = [v6 traitCollection];
  v8 = [v7 isLuminanceReduced];

  v9 = [(NavigationStateMonitoringTask *)self navigationService];
  if ([v9 navigationState] == 6)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(NavigationStateMonitoringTask *)self navigationService];
    v10 = [v11 navigationState] == 7;
  }

  v12 = [(NavigationStateMonitoringTask *)self navigationService];
  [v12 state];
  v13 = MNNavigationServiceStateIsNavigating() & v10;

  return v8 & (v13 ^ 1);
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_checkModernMapMitigation
{
  v3 = +[MapsThermalPressureController sharedController];
  v4 = [v3 shouldActivateMitigationNamed:@"NavigationForceModernMapMitigation"];

  thermalPressureMapToken = self->_thermalPressureMapToken;
  if (v4)
  {
    if (thermalPressureMapToken)
    {
      return;
    }

    v6 = sub_1006C30F8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Acquiring thermal pressure map mode token", buf, 2u);
    }

    v7 = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
    v8 = [v7 acquireModernMapTokenForReason:1];
    v9 = self->_thermalPressureMapToken;
    self->_thermalPressureMapToken = v8;
  }

  else
  {
    if (!thermalPressureMapToken)
    {
      return;
    }

    v10 = sub_1006C30F8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Releasing thermal pressure map mode token", v11, 2u);
    }

    v7 = self->_thermalPressureMapToken;
    self->_thermalPressureMapToken = 0;
  }
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)platformControllerDidChangeChromeViewControllerNotification:(id)a3
{
  v5 = [(NavigationStateMonitoringTask *)self platformController];
  v4 = [v5 chromeViewController];
  [(NavigationStateMonitoringTask *)self setChromeViewController:v4];
}

- (void)_checkAnimationsForAndromeda:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:@"kBacklightLuminanceInitialSetupDoneKey"];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  if ((-[NavigationStateMonitoringTask _shouldSuppressAnimationsForAndromeda](self, "_shouldSuppressAnimationsForAndromeda") || v8) && (+[BLSBacklight sharedBacklight](BLSBacklight, "sharedBacklight"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isAlwaysOnEnabled], v9, v10))
  {
    if (!self->_andromedaAnimationSuppressionToken)
    {
      v11 = sub_1006C30F8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Acquiring animation suppression token", buf, 2u);
      }

      v12 = [MapsAppAnimationSuppressor acquireAnimationSuppressionTokenForReason:@"Backlight Luminance"];
      andromedaAnimationSuppressionToken = self->_andromedaAnimationSuppressionToken;
      self->_andromedaAnimationSuppressionToken = v12;
LABEL_15:
    }
  }

  else if (self->_andromedaAnimationSuppressionToken)
  {
    v14 = sub_1006C30F8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Releasing animation suppression token", v15, 2u);
    }

    andromedaAnimationSuppressionToken = self->_andromedaAnimationSuppressionToken;
    self->_andromedaAnimationSuppressionToken = 0;
    goto LABEL_15;
  }
}

- (void)didUpdateMitigationNamed:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006C3228;
  v5[3] = &unk_101661A90;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v6 = [(NavigationStateMonitoringTask *)self chromeViewController:a3];
  v7 = [v6 traitCollection];
  v8 = [v7 isLuminanceReduced];

  if (v8)
  {

    [(NavigationStateMonitoringTask *)self _checkAnimationsForAndromeda:0];
  }
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v10 = a5;
  if (([v10 transportType] & 0xFFFFFFFE) == 2 && !self->_navigationModernMapToken)
  {
    v7 = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
    v8 = [v7 acquireModernMapTokenForReason:0];
    navigationModernMapToken = self->_navigationModernMapToken;
    self->_navigationModernMapToken = v8;

    goto LABEL_7;
  }

  if (([v10 transportType] & 0xFFFFFFFE) != 2)
  {
    v7 = self->_navigationModernMapToken;
    if (v7)
    {
      self->_navigationModernMapToken = 0;
LABEL_7:
    }
  }

  [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v6 = a3;
  v7 = +[UIDevice currentDevice];
  if ([v7 userInterfaceIdiom] || (MNNavigationServiceStateChangedToNavigating() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (MNNavigationServiceStateChangedFromNavigatingToStopped())
    {
      v24 = [(NavigationStateMonitoringTask *)self platformController];
      v25 = [v24 currentSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v27 = sub_1006C30F8();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Detected MNNavigationService ended navigation with a currently active NavigationSession; clearing session stack", buf, 2u);
        }

        v28 = [(NavigationStateMonitoringTask *)self platformController];
        [v28 clearSessions];
      }

      else
      {
        [(NavigationStateMonitoringTask *)self callNavigationCompletionBlocksIfNecessary];
      }
    }

    goto LABEL_23;
  }

  v8 = [(NavigationStateMonitoringTask *)self platformController];
  v9 = [v8 currentSession];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    goto LABEL_17;
  }

  v7 = [v6 route];
  v11 = sub_1006C30F8();
  v12 = v11;
  if (v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Detected MNNavigationService started navigation without a currently active NavigationSession; pushing new NavigationSession", buf, 2u);
    }

    v13 = [NSMutableArray arrayWithObject:v7];
    v14 = [v6 alternateRoutes];

    if (v14)
    {
      v15 = [v6 alternateRoutes];
      v16 = [v13 arrayByAddingObjectsFromArray:v15];
    }

    v30 = v13;
    v17 = [[RouteCollection alloc] initWithRoutes:v13 currentRouteIndex:0];
    v18 = [(NavigationStateMonitoringTask *)self observedRoutePlanningSession];
    v19 = [v18 configuration];
    v20 = [v19 traits];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      [(NavigationStateMonitoringTask *)self chromeViewController];
      v23 = v29 = v7;
      v22 = [v23 currentTraits];

      v7 = v29;
    }

    +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
    [(NavigationStateMonitoringTask *)self beginNavigationWithRouteCollection:v17 navigationDetailsOptions:buf mapServiceTraits:v22 sessionInitiator:3 isResumingMultipointRoute:0];

    goto LABEL_16;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Navigation started without an active nav session but the service didn't have a route.  Telling navd to exit navigation state", buf, 2u);
  }

  [v6 stopNavigationWithReason:1];
LABEL_23:
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v8 = a4;
  if ([a3 currentTransportType] == a5 && objc_msgSend(v8, "isSuccess") && -[NavigationStateMonitoringTask shouldStartNavigationAutoLaunchTimer](self, "shouldStartNavigationAutoLaunchTimer"))
  {
    [(NavigationStateMonitoringTask *)self startNavigationAutoLaunchTimer];
  }
}

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  v10 = a3;
  if (a4 == 5 || a4 == 2)
  {
    if (self->_routePlanningModernMapToken)
    {
      goto LABEL_8;
    }

    v7 = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
    v8 = [v7 acquireModernMapTokenForReason:0];
    routePlanningModernMapToken = self->_routePlanningModernMapToken;
    self->_routePlanningModernMapToken = v8;
  }

  else
  {
    v7 = self->_routePlanningModernMapToken;
    if (!v7)
    {
      goto LABEL_8;
    }

    self->_routePlanningModernMapToken = 0;
  }

LABEL_8:
  [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
}

- (void)setObservedNavigationSession:(id)a3
{
  v5 = a3;
  observedNavigationSession = self->_observedNavigationSession;
  if (observedNavigationSession != v5)
  {
    v7 = v5;
    [observedNavigationSession unregisterObserver:self];
    objc_storeStrong(&self->_observedNavigationSession, a3);
    [self->_observedNavigationSession registerObserver:self];
    [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
    v5 = v7;
  }
}

- (void)setObservedRoutePlanningSession:(id)a3
{
  v5 = a3;
  observedRoutePlanningSession = self->_observedRoutePlanningSession;
  if (observedRoutePlanningSession != v5)
  {
    v12 = v5;
    [observedRoutePlanningSession unregisterObserver:self];
    [self->_observedRoutePlanningSession setNavigationStateMonitoringTask:0];
    objc_storeStrong(&self->_observedRoutePlanningSession, a3);
    [self->_observedRoutePlanningSession registerObserver:self];
    [self->_observedRoutePlanningSession setNavigationStateMonitoringTask:self];
    v7 = self->_observedRoutePlanningSession;
    if (v7)
    {
      if (!self->_routePlanningModernMapToken)
      {
        v8 = [(RoutePlanningSession *)v7 currentTransportType];
        if (v8 == 5 || v8 == 2)
        {
          v9 = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
          v10 = [v9 acquireModernMapTokenForReason:0];
          routePlanningModernMapToken = self->_routePlanningModernMapToken;
          self->_routePlanningModernMapToken = v10;
        }
      }
    }

    [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
    v5 = v12;
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v18 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NavigationStateMonitoringTask *)self cancelNavigationAutoLaunchIfNeccessary];
    routePlanningModernMapToken = self->_routePlanningModernMapToken;
    self->_routePlanningModernMapToken = 0;

    routePlanningHikingMapToken = self->_routePlanningHikingMapToken;
    self->_routePlanningHikingMapToken = 0;
  }

  v10 = v7;
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

  [(NavigationStateMonitoringTask *)self setObservedRoutePlanningSession:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NavigationStateMonitoringTask *)self callNavigationCompletionBlocksIfNecessary];
    navigationModernMapToken = self->_navigationModernMapToken;
    self->_navigationModernMapToken = 0;

    navigationHikingMapToken = self->_navigationHikingMapToken;
    self->_navigationHikingMapToken = 0;
  }

  v15 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  [(NavigationStateMonitoringTask *)self setObservedNavigationSession:v17];
}

- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v12 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v12;
  if (isKindOfClass)
  {
    v8 = [v12 currentTransportType];
    if ((v8 == 5 || v8 == 2) && !self->_navigationModernMapToken)
    {
      v9 = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
      v10 = [v9 acquireModernMapTokenForReason:0];
      navigationModernMapToken = self->_navigationModernMapToken;
      self->_navigationModernMapToken = v10;
    }

    [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
    v7 = v12;
  }
}

- (void)updateHikingMapConfiguration
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  val = self;
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v91 = sub_10006D178();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v92 = dispatch_queue_get_label(&_dispatch_main_q);
        v93 = dispatch_queue_get_label(0);
        *buf = 136316418;
        *&buf[4] = "[NavigationStateMonitoringTask updateHikingMapConfiguration]";
        *&buf[12] = 2080;
        *&buf[14] = "NavigationStateMonitoringTask.m";
        *&buf[22] = 1024;
        v144 = 436;
        v145 = 2080;
        v146 = "dispatch_get_main_queue()";
        v147 = 2080;
        v148 = v92;
        v149 = 2080;
        v150 = v93;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v94 = sub_10006D178();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v95 = +[NSThread callStackSymbols];
          *buf = 138412290;
          *&buf[4] = v95;
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        self = val;
      }
    }
  }

  droppedPinBlock = self->_droppedPinBlock;
  if (droppedPinBlock)
  {
    dispatch_block_cancel(droppedPinBlock);
    v7 = self->_droppedPinBlock;
    self->_droppedPinBlock = 0;

    self = val;
  }

  if (self->_routePlanningHikingMapToken)
  {
    v8 = self->_navigationHikingMapToken != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NavigationStateMonitoringTask *)self observedRoutePlanningSession];
  v10 = v9 == 0;

  if (v10)
  {
    routePlanningHikingMapToken = val->_routePlanningHikingMapToken;
    val->_routePlanningHikingMapToken = 0;
  }

  v12 = [(NavigationStateMonitoringTask *)val observedNavigationSession];
  v13 = v12 == 0;

  if (v13)
  {
    navigationHikingMapToken = val->_navigationHikingMapToken;
    val->_navigationHikingMapToken = 0;
  }

  v101 = +[NSMutableArray array];
  v105 = [(NavigationStateMonitoringTask *)val observedRoutePlanningSession];
  v15 = [v105 currentRouteCollection];
  v99 = [v15 currentRoute];

  v102 = [v105 resolvedWaypoints];
  v98 = [v102 waypointsOrNull];
  v103 = [(NavigationStateMonitoringTask *)val observedNavigationSession];
  v16 = [v103 currentRouteCollection];
  v104 = [v16 currentRoute];

  v97 = [v104 anchorPoints];
  v96 = [v104 waypoints];
  if (v105)
  {
    v17 = sub_1006C30F8();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = val;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Updating hiking map configuration in route planning", buf, 0xCu);
    }

    if (![v102 areAllValidWaypoints] || objc_msgSend(v105, "currentTransportType") != 2 || (MapsFeature_IsEnabled_HikingiOS() & 1) == 0)
    {
      v22 = sub_1006C30F8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        *&buf[4] = val;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Waypoints are not all valid or we are in an unsupported transport type; disabling topographic map", buf, 0xCu);
      }

      v19 = val->_routePlanningHikingMapToken;
      val->_routePlanningHikingMapToken = 0;
      goto LABEL_44;
    }

    if ([v99 source] == 2)
    {
      v18 = sub_1006C30F8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        *&buf[4] = val;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Found curated route; enabling topographic map", buf, 0xCu);
      }

      v19 = [(NavigationStateMonitoringTask *)val chromeViewController];
      v20 = [v19 acquireHikingMapToken];
      v21 = val->_routePlanningHikingMapToken;
      val->_routePlanningHikingMapToken = v20;

      goto LABEL_44;
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v19 = v98;
    v47 = [v19 countByEnumeratingWithState:&v130 objects:v142 count:16];
    if (!v47)
    {
      goto LABEL_44;
    }

    v48 = *v131;
LABEL_64:
    v49 = 0;
    while (1)
    {
      if (*v131 != v48)
      {
        objc_enumerationMutation(v19);
      }

      v50 = *(*(&v130 + 1) + 8 * v49);
      v51 = +[NSNull null];
      v52 = [v50 isEqual:v51];

      if (v52)
      {
        break;
      }

      if ([v50 mapDisplayType] == 1)
      {
        v79 = sub_1006C30F8();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v80 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = v80;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "[%{public}p] Found waypoint with topographic map display type; enabling topographic map (%@)", buf, 0x16u);
        }

        goto LABEL_131;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v79 = sub_1006C30F8();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v81 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = v81;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "[%{public}p] Found waypoint to route; enabling topographic map (%@)", buf, 0x16u);
        }

LABEL_131:

        v82 = [(NavigationStateMonitoringTask *)val chromeViewController];
        v83 = [v82 acquireHikingMapToken];
        v84 = val->_routePlanningHikingMapToken;
        val->_routePlanningHikingMapToken = v83;

        goto LABEL_44;
      }

      if ([v50 isCurrentLocation])
      {
        v56 = sub_1006C30F8();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "[%{public}p] Found current location waypoint: %@", buf, 0x16u);
        }

        if (!GEOConfigGetBOOL())
        {
          goto LABEL_94;
        }
      }

      else if ([v50 isLocationWaypointType])
      {
        v58 = sub_1006C30F8();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = v59;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[%{public}p] Found location waypoint: %@", buf, 0x16u);
        }

        if (!GEOConfigGetBOOL())
        {
          goto LABEL_94;
        }
      }

      else
      {
        v60 = [v50 isAddressWaypointType];
        v54 = sub_1006C30F8();
        v61 = os_log_type_enabled(v54, OS_LOG_TYPE_INFO);
        if (!v60)
        {
          if (v61)
          {
            v63 = [v50 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = v63;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "[%{public}p] Found other waypoint: %@", buf, 0x16u);
          }

LABEL_93:

          goto LABEL_94;
        }

        if (v61)
        {
          v62 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = v62;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "[%{public}p] Found address waypoint: %@", buf, 0x16u);
        }

        if (!GEOConfigGetBOOL())
        {
          goto LABEL_94;
        }
      }

      [v101 addObject:v50];
LABEL_94:
      if (v47 == ++v49)
      {
        v47 = [v19 countByEnumeratingWithState:&v130 objects:v142 count:16];
        if (v47)
        {
          goto LABEL_64;
        }

        goto LABEL_44;
      }
    }

    v53 = sub_10006D178();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[NavigationStateMonitoringTask updateHikingMapConfiguration]";
      *&buf[12] = 2080;
      *&buf[14] = "NavigationStateMonitoringTask.m";
      *&buf[22] = 1024;
      v144 = 471;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (!sub_100E03634())
    {
      goto LABEL_94;
    }

    v54 = sub_10006D178();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = +[NSThread callStackSymbols];
      *buf = 138412290;
      *&buf[4] = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_93;
  }

  v23 = val;
  if (!v103)
  {
    goto LABEL_45;
  }

  v24 = sub_1006C30F8();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = val;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}p] Updating hiking map configuration in navigation", buf, 0xCu);
  }

  v25 = [v103 currentRouteCollection];
  v26 = [v25 currentRoute];
  if (!v26)
  {
    goto LABEL_40;
  }

  if ([v103 currentTransportType] != 2)
  {

LABEL_40:
    goto LABEL_41;
  }

  IsEnabled_HikingiOS = MapsFeature_IsEnabled_HikingiOS();

  if ((IsEnabled_HikingiOS & 1) == 0)
  {
LABEL_41:
    v31 = sub_1006C30F8();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = val;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%{public}p] We have no route or we are in an unsupported transport type; disabling topographic map", buf, 0xCu);
    }

    v19 = val->_navigationHikingMapToken;
    val->_navigationHikingMapToken = 0;
    goto LABEL_44;
  }

  if ([v104 source] == 2)
  {
    v28 = sub_1006C30F8();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = val;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Found curated route; enabling topographic map", buf, 0xCu);
    }

    v19 = [(NavigationStateMonitoringTask *)val chromeViewController];
    v29 = [v19 acquireHikingMapToken];
    v30 = val->_navigationHikingMapToken;
    val->_navigationHikingMapToken = v29;

    goto LABEL_44;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v64 = [v97 count];
  v65 = v97;
  if (!v64)
  {
    v65 = v96;
  }

  v19 = v65;
  v66 = [v19 countByEnumeratingWithState:&v126 objects:v141 count:16];
  if (v66)
  {
    v67 = *v127;
    do
    {
      for (i = 0; i != v66; i = i + 1)
      {
        if (*v127 != v67)
        {
          objc_enumerationMutation(v19);
        }

        v69 = *(*(&v126 + 1) + 8 * i);
        if ([v69 mapDisplayType] == 1)
        {
          v85 = sub_1006C30F8();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            v86 = [v69 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = v86;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "[%{public}p] Found waypoint with topographic map display type; enabling topographic map (%@)", buf, 0x16u);
          }

          goto LABEL_136;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v85 = sub_1006C30F8();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            v87 = [v69 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = v87;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "[%{public}p] Found waypoint to route; enabling topographic map (%@)", buf, 0x16u);
          }

LABEL_136:

          v88 = [(NavigationStateMonitoringTask *)val chromeViewController];
          v89 = [v88 acquireHikingMapToken];
          v90 = val->_navigationHikingMapToken;
          val->_navigationHikingMapToken = v89;

          goto LABEL_44;
        }

        if ([v69 isCurrentLocation])
        {
          v70 = sub_1006C30F8();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            v71 = [v69 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = v71;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "[%{public}p] Found current location waypoint: %@", buf, 0x16u);
          }

          if (GEOConfigGetBOOL())
          {
            goto LABEL_120;
          }
        }

        else if ([v69 isLocationWaypointType])
        {
          v72 = sub_1006C30F8();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v73 = [v69 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = v73;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "[%{public}p] Found location waypoint: %@", buf, 0x16u);
          }

          if (GEOConfigGetBOOL())
          {
            goto LABEL_120;
          }
        }

        else
        {
          v74 = [v69 isAddressWaypointType];
          v75 = sub_1006C30F8();
          v76 = os_log_type_enabled(v75, OS_LOG_TYPE_INFO);
          if (v74)
          {
            if (v76)
            {
              v77 = [v69 name];
              *buf = 134349314;
              *&buf[4] = val;
              *&buf[12] = 2112;
              *&buf[14] = v77;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "[%{public}p] Found address waypoint: %@", buf, 0x16u);
            }

            if (GEOConfigGetBOOL())
            {
LABEL_120:
              [v101 addObject:v69];
              continue;
            }
          }

          else
          {
            if (v76)
            {
              v78 = [v69 name];
              *buf = 134349314;
              *&buf[4] = val;
              *&buf[12] = 2112;
              *&buf[14] = v78;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "[%{public}p] Found other waypoint: %@", buf, 0x16u);
            }
          }
        }
      }

      v66 = [v19 countByEnumeratingWithState:&v126 objects:v141 count:16];
    }

    while (v66);
  }

LABEL_44:

  v23 = val;
LABEL_45:
  objc_initWeak(&location, v23);
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_1006C50F0;
  v122[3] = &unk_101661368;
  objc_copyWeak(&v123, &location);
  v124 = v8;
  v100 = objc_retainBlock(v122);
  v32 = v100;
  if (![v101 count] || val->_routePlanningHikingMapToken || val->_navigationHikingMapToken)
  {
    (v100[2])(v100);
  }

  else
  {
    v33 = sub_1006C30F8();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = val;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}p] Checking all location waypoints for hiking contextual regions", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v144) = 0;
    v34 = dispatch_group_create();
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    obj = v101;
    v35 = [obj countByEnumeratingWithState:&v118 objects:v140 count:16];
    if (v35)
    {
      v36 = *v119;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v119 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v118 + 1) + 8 * j);
          dispatch_group_enter(v34);
          [v38 coordinate];
          v40 = v39;
          [v38 coordinate];
          v42 = CLLocationCoordinate2DMake(v40, v41);
          v43 = sub_1006C30F8();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            *v134 = 134349569;
            v135 = val;
            v136 = 2049;
            latitude = v42.latitude;
            v138 = 2049;
            longitude = v42.longitude;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}p] Checking location %{private}f, %{private}f", v134, 0x20u);
          }

          v44 = [(NavigationStateMonitoringTask *)val chromeViewController];
          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_1006C5170;
          v113[3] = &unk_101626708;
          objc_copyWeak(&v116, &location);
          v117 = v42;
          v115 = buf;
          v114 = v34;
          [v44 checkIfCoordinate:v113 isInHikingContextualRegionWithCompletionHandler:{v42.latitude, v42.longitude}];

          objc_destroyWeak(&v116);
        }

        v35 = [obj countByEnumeratingWithState:&v118 objects:v140 count:16];
      }

      while (v35);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006C5270;
    block[3] = &unk_101626730;
    objc_copyWeak(&v112, &location);
    v111 = buf;
    v109 = v105;
    v110 = v100;
    v45 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    v46 = val->_droppedPinBlock;
    val->_droppedPinBlock = v45;

    dispatch_group_notify(v34, &_dispatch_main_q, val->_droppedPinBlock);
    objc_destroyWeak(&v112);

    _Block_object_dispose(buf, 8);
    v32 = v100;
  }

  objc_destroyWeak(&v123);
  objc_destroyWeak(&location);
}

- (void)callNavigationCompletionBlocksIfNecessary
{
  v13 = [(NavigationStateMonitoringTask *)self platformController];
  v3 = [v13 currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v4 = [(NavigationStateMonitoringTask *)self navigationService];
    v5 = [v4 isInNavigatingState];

    if ((v5 & 1) == 0)
    {
      v6 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
      objc_sync_enter(v6);
      v7 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
        v10 = [v9 allObjects];

        v11 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
        [v11 removeAllObjects];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1006C5584;
        block[3] = &unk_101661B18;
        v15 = v10;
        v12 = v10;
        dispatch_async(&_dispatch_main_q, block);
      }

      objc_sync_exit(v6);
    }
  }
}

- (void)handoffDestinationToExternalDevice:(id)a3
{
  v4 = a3;
  v5 = sub_1006C30F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Performing NAD handoff", buf, 2u);
  }

  v6 = +[MapsExternalDevice sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006C57D4;
  v8[3] = &unk_10163BE28;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 handoffDestination:v7 completion:v8];
}

- (void)presentHandoffAlertForDestination:(id)a3
{
  v21 = a3;
  v3 = sub_1006C30F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Presenting NAD handoff alert", buf, 2u);
  }

  v4 = +[MapsExternalDevice sharedInstance];
  v5 = [v4 mapsDisplayName];

  v6 = +[NSBundle mainBundle];
  if (v5)
  {
    v7 = [v6 localizedStringForKey:@"Destination handoff alert title [phone]" value:@"localized string not found" table:0];
    v8 = [NSString stringWithFormat:v7, v5];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Destination handoff alert message [phone]" value:@"localized string not found" table:0];
    v11 = [NSString stringWithFormat:v10, v5];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"Unknown destination handoff alert title [phone]" value:@"localized string not found" table:0];

    v9 = +[NSBundle mainBundle];
    v11 = [v9 localizedStringForKey:@"Unknown destination handoff alert message [phone]" value:@"localized string not found" table:0];
  }

  v12 = [UIAlertController alertControllerWithTitle:v8 message:v11 preferredStyle:1];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Cancel [destination handoff action to CarPlay car]" value:@"localized string not found" table:0];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];

  [v12 addAction:v15];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Continue [destination handoff action to CarPlay car]" value:@"localized string not found" table:0];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1006C5C70;
  v23[3] = &unk_1016383E0;
  v23[4] = self;
  v24 = v21;
  v18 = v21;
  v19 = [UIAlertAction actionWithTitle:v17 style:0 handler:v23];

  [v12 addAction:v19];
  [v12 setPreferredAction:v19];
  v20 = [(NavigationStateMonitoringTask *)self chromeViewController];
  [v20 _maps_topMostPresentViewController:v12 animated:1 completion:0];
}

- (void)startNavigationAutoLaunchTimer
{
  v3 = [(NavigationStateMonitoringTask *)self navigationAutoLaunchTimer];

  if (!v3)
  {
    [(NavigationStateMonitoringTask *)self takeAutoLaunchAssertion];
    v4 = [(NavigationStateMonitoringTask *)self currentRoutePlanningSessionConfiguration];
    v5 = [v4 navigationAutoLaunchDelay];
    [v5 doubleValue];
    v7 = v6;

    v8 = sub_1006C30F8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting navigation auto launch timer with delay: %f", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = &_dispatch_main_q;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1006C5E58;
    v11[3] = &unk_1016616E8;
    objc_copyWeak(&v12, buf);
    v10 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v11 block:v7];
    [(NavigationStateMonitoringTask *)self setNavigationAutoLaunchTimer:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)releaseAutoLaunchAssertion
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_autoLaunchAssertion)
  {
    v3 = sub_1006C30F8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing auto launch timer assertion", v5, 2u);
    }

    [(BKSAssertion *)self->_autoLaunchAssertion invalidate];
    autoLaunchAssertion = self->_autoLaunchAssertion;
    self->_autoLaunchAssertion = 0;
  }
}

- (void)takeAutoLaunchAssertion
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!self->_autoLaunchAssertion)
  {
    v3 = sub_1006C30F8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Acquiring auto launch timer assertion", buf, 2u);
    }

    v4 = +[NSBundle mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 stringByAppendingString:@".Maps.PrepareNavigation"];

    objc_initWeak(buf, self);
    v7 = [BKSProcessAssertion alloc];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006C64D8;
    v10[3] = &unk_1016619A8;
    objc_copyWeak(&v11, buf);
    v8 = [v7 initWithBundleIdentifier:@"com.apple.Maps" flags:43 reason:7 name:v6 withHandler:v10];
    autoLaunchAssertion = self->_autoLaunchAssertion;
    self->_autoLaunchAssertion = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (BOOL)shouldStartNavigationAutoLaunchTimer
{
  v2 = [(NavigationStateMonitoringTask *)self currentRoutePlanningSessionConfiguration];
  v3 = [v2 shouldAutoLaunchNavigation];

  return v3;
}

- (id)currentRoutePlanningSessionConfiguration
{
  v2 = [(NavigationStateMonitoringTask *)self observedRoutePlanningSession];
  v3 = [v2 configuration];

  return v3;
}

- (void)endNavigationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NavigationStateMonitoringTask *)self navigationService];
  if ([v5 isInNavigatingState])
  {

LABEL_4:
    if (v4)
    {
      v9 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
      objc_sync_enter(v9);
      v10 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
      v11 = objc_retainBlock(v4);
      [v10 addObject:v11];

      objc_sync_exit(v9);
    }

    v12 = sub_1006C30F8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"with";
      if (!v4)
      {
        v13 = @"without";
      }

      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Ending navigation %@ a completion block", &v16, 0xCu);
    }

    v14 = [(NavigationStateMonitoringTask *)self platformController];
    [v14 clearIfCurrentSessionIsKindOfClass:objc_opt_class()];

    goto LABEL_11;
  }

  v6 = [(NavigationStateMonitoringTask *)self platformController];
  v7 = [v6 currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v15 = sub_1006C30F8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Cannot end navigation when navigation is not running", &v16, 2u);
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_11:
}

- (void)beginNavigationWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4 mapServiceTraits:(id)a5 sessionInitiator:(unint64_t)a6 isResumingMultipointRoute:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a5;
  if (!v12)
  {
    v51 = sub_10006D178();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[NavigationStateMonitoringTask beginNavigationWithRouteCollection:navigationDetailsOptions:mapServiceTraits:sessionInitiator:isResumingMultipointRoute:]";
      *&buf[12] = 2080;
      *&buf[14] = "NavigationStateMonitoringTask.m";
      *&buf[22] = 1024;
      *&buf[24] = 189;
      *&buf[28] = 2080;
      *&buf[30] = "routeCollection != nil";
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v52 = sub_10006D178();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v13)
  {
    v54 = sub_10006D178();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[NavigationStateMonitoringTask beginNavigationWithRouteCollection:navigationDetailsOptions:mapServiceTraits:sessionInitiator:isResumingMultipointRoute:]";
      *&buf[12] = 2080;
      *&buf[14] = "NavigationStateMonitoringTask.m";
      *&buf[22] = 1024;
      *&buf[24] = 190;
      *&buf[28] = 2080;
      *&buf[30] = "mapServiceTraits != nil";
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v55 = sub_10006D178();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v14 = sub_1006C30F8();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to begin navigation", buf, 2u);
  }

  [(NavigationStateMonitoringTask *)self cancelNavigationAutoLaunchIfNeccessary];
  v15 = [(NavigationStateMonitoringTask *)self platformController];
  v16 = [v15 currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[NavigationStateMonitoringTask beginNavigationWithRouteCollection:navigationDetailsOptions:mapServiceTraits:sessionInitiator:isResumingMultipointRoute:]";
      *&buf[12] = 2080;
      *&buf[14] = "NavigationStateMonitoringTask.m";
      *&buf[22] = 1024;
      *&buf[24] = 196;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v21 = sub_1006C30F8();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(NavigationStateMonitoringTask *)self platformController];
      v23 = [v22 currentSession];
      *buf = 138412290;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Attempted to begin navigation, but there is already a NavigationSession on the sessionStack: %@", buf, 0xCu);
LABEL_24:

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v57 = a4;
  v24 = [(NavigationStateMonitoringTask *)self platformController];
  v25 = [v24 currentRoutePlanningSession];
  v58 = self;
  if (!v25)
  {

LABEL_26:
    v39 = [v12 currentRoute];
    v40 = [v39 carplayDestinationHandoffRequired];

    if (v40)
    {
      v41 = [v12 currentRoute];
      v42 = [v41 _maps_directionsWaypoints];
      v21 = [v42 lastObject];

      v43 = [v21 pin];
      if ([(NavigationStateMonitoringTask *)v58 shouldStartNavigationAutoLaunchTimer])
      {
        [(NavigationStateMonitoringTask *)v58 handoffDestinationToExternalDevice:v43];
      }

      else
      {
        [(NavigationStateMonitoringTask *)v58 presentHandoffAlertForDestination:v43];
      }
    }

    else
    {
      if (a6 == 6)
      {
        v44 = [(NavigationStateMonitoringTask *)v58 observedRoutePlanningSession];
        v45 = [v44 configuration];
        v21 = [v45 tracePlaybackPath];
      }

      else
      {
        v21 = 0;
      }

      v46 = [NavigationSessionBuilder alloc];
      v47 = *&v57->guidanceType;
      *buf = *&v57->shouldSimulateLocations;
      *&buf[16] = v47;
      *&buf[32] = *&v57->isReconnecting;
      navigationModeContext = v57->navigationModeContext;
      v48 = [(NavigationSessionBuilder *)v46 initWithRouteCollection:v12 navigationDetailsOptions:buf mapServiceTraits:v13 sessionInitiator:a6 isResumingMultipointRoute:v7 tracePlaybackPath:v21];
      v49 = [(NavigationSessionBuilder *)v48 build];

      v50 = [(NavigationStateMonitoringTask *)v58 platformController];
      [v50 pushSession:v49];
    }

    goto LABEL_35;
  }

  v26 = v25;
  v27 = [(NavigationStateMonitoringTask *)self platformController];
  [v27 chromeViewController];
  v28 = v12;
  v29 = a6;
  v30 = v13;
  v32 = v31 = v7;
  v33 = [v32 topMostPresentedViewController];
  objc_opt_class();
  v34 = objc_opt_isKindOfClass();

  v7 = v31;
  v13 = v30;
  a6 = v29;
  v12 = v28;

  if (v34)
  {
    goto LABEL_26;
  }

  v35 = sub_10006D178();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "[NavigationStateMonitoringTask beginNavigationWithRouteCollection:navigationDetailsOptions:mapServiceTraits:sessionInitiator:isResumingMultipointRoute:]";
    *&buf[12] = 2080;
    *&buf[14] = "NavigationStateMonitoringTask.m";
    *&buf[22] = 1024;
    *&buf[24] = 202;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v36 = sub_10006D178();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = +[NSThread callStackSymbols];
      *buf = 138412290;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v21 = sub_1006C30F8();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [(NavigationStateMonitoringTask *)v58 platformController];
    v23 = [v22 chromeViewController];
    v38 = [v23 topMostPresentedViewController];
    *buf = 138412290;
    *&buf[4] = v38;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Attempted to begin navigation but there is an unexpected VC at the top of the stack: %@", buf, 0xCu);

    goto LABEL_24;
  }

LABEL_35:
}

- (void)cancelNavigationAutoLaunchIfNeccessary
{
  v3 = sub_1006C30F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling auto launch timer", v7, 2u);
  }

  [(NavigationStateMonitoringTask *)self releaseAutoLaunchAssertion];
  v4 = [(NavigationStateMonitoringTask *)self navigationAutoLaunchTimer];

  if (v4)
  {
    v5 = [(NavigationStateMonitoringTask *)self navigationAutoLaunchTimer];
    [v5 invalidate];

    [(NavigationStateMonitoringTask *)self setNavigationAutoLaunchTimer:0];
  }

  v6 = [(NavigationStateMonitoringTask *)self currentRoutePlanningSessionConfiguration];
  [v6 setNavigationAutoLaunchDelay:0];
}

- (BOOL)isNavigationAutoLaunchInProgress
{
  v2 = [(NavigationStateMonitoringTask *)self navigationAutoLaunchTimer];
  v3 = v2 != 0;

  return v3;
}

- (void)setChromeViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  if (WeakRetained != obj)
  {
    navigationModernMapToken = self->_navigationModernMapToken;
    self->_navigationModernMapToken = 0;

    routePlanningModernMapToken = self->_routePlanningModernMapToken;
    self->_routePlanningModernMapToken = 0;

    navigationHikingMapToken = self->_navigationHikingMapToken;
    self->_navigationHikingMapToken = 0;

    routePlanningHikingMapToken = self->_routePlanningHikingMapToken;
    self->_routePlanningHikingMapToken = 0;

    thermalPressureMapToken = self->_thermalPressureMapToken;
    self->_thermalPressureMapToken = 0;

    thermalPressureChromeDeactivationToken = self->_thermalPressureChromeDeactivationToken;
    self->_thermalPressureChromeDeactivationToken = 0;

    objc_storeWeak(&self->_chromeViewController, obj);
    [(NavigationStateMonitoringTask *)self _checkModernMapMitigation];
    [(NavigationStateMonitoringTask *)self _checkMapViewMitigation];
  }
}

- (void)dealloc
{
  [(NavigationStateMonitoringTask *)self cancelNavigationAutoLaunchIfNeccessary];
  [(MNNavigationService *)self->_navigationService unregisterObserver:self];
  [(MNNavigationService *)self->_navigationService closeForClient:self];
  v3.receiver = self;
  v3.super_class = NavigationStateMonitoringTask;
  [(NavigationStateMonitoringTask *)&v3 dealloc];
}

- (NavigationStateMonitoringTask)initWithPlatformController:(id)a3 navigationService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = NavigationStateMonitoringTask;
  v8 = [(NavigationStateMonitoringTask *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_platformController, v6);
    v10 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v9->_platformController);
    [v10 addObserver:v9 selector:"platformControllerDidChangeChromeViewControllerNotification:" name:@"PlatformControllerDidChangeChromeViewControllerNotification" object:WeakRetained];

    v12 = objc_loadWeakRetained(&v9->_platformController);
    v13 = [v12 chromeViewController];
    [(NavigationStateMonitoringTask *)v9 setChromeViewController:v13];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v9 selector:"_checkAnimationsForAndromeda:" name:@"BacklightLuminanceDidChangeNotification" object:0];

    objc_storeStrong(&v9->_navigationService, a4);
    v15 = [NSHashTable hashTableWithOptions:66048];
    navigationCompletionBlocks = v9->_navigationCompletionBlocks;
    v9->_navigationCompletionBlocks = v15;

    [(MNNavigationService *)v9->_navigationService registerObserver:v9];
    [(MNNavigationService *)v9->_navigationService openForClient:v9];
    v17 = +[MapsThermalPressureController sharedController];
    [v17 addObserver:v9 forMitigationNamed:@"NavigationForceModernMapMitigation"];

    v18 = +[MapsThermalPressureController sharedController];
    [v18 addObserver:v9 forMitigationNamed:@"NavigationSuppressAllAnimations"];

    v19 = +[MapsThermalPressureController sharedController];
    [v19 addObserver:v9 forMitigationNamed:@"NavigationSuppressETAUpdates"];

    v20 = +[MapsThermalPressureController sharedController];
    [v20 addObserver:v9 forMitigationNamed:@"NavigationThermalMitigationForceMapInactive"];

    [(NavigationStateMonitoringTask *)v9 _checkModernMapMitigation];
    [(NavigationStateMonitoringTask *)v9 _checkAnimationsMitigation];
    [(NavigationStateMonitoringTask *)v9 _checkETAUpdatesMitigation];
    [(NavigationStateMonitoringTask *)v9 _checkMapViewMitigation];
    [(NavigationStateMonitoringTask *)v9 _checkAnimationsForAndromeda:0];
  }

  return v9;
}

@end