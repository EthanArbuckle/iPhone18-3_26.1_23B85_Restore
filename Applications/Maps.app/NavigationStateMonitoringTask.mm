@interface NavigationStateMonitoringTask
- (BOOL)_shouldSuppressAnimationsForAndromeda;
- (BOOL)isNavigationAutoLaunchInProgress;
- (BOOL)shouldStartNavigationAutoLaunchTimer;
- (ChromeViewController)chromeViewController;
- (NavigationStateMonitoringTask)initWithPlatformController:(id)controller navigationService:(id)service;
- (PlatformController)platformController;
- (id)currentRoutePlanningSessionConfiguration;
- (void)_checkAnimationsForAndromeda:(id)andromeda;
- (void)_checkAnimationsMitigation;
- (void)_checkETAUpdatesMitigation;
- (void)_checkMapViewMitigation;
- (void)_checkModernMapMitigation;
- (void)beginNavigationWithRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options mapServiceTraits:(id)traits sessionInitiator:(unint64_t)initiator isResumingMultipointRoute:(BOOL)route;
- (void)callNavigationCompletionBlocksIfNecessary;
- (void)cancelNavigationAutoLaunchIfNeccessary;
- (void)dealloc;
- (void)didUpdateMitigationNamed:(id)named;
- (void)endNavigationWithCompletion:(id)completion;
- (void)handoffDestinationToExternalDevice:(id)device;
- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)platformControllerDidChangeChromeViewControllerNotification:(id)notification;
- (void)presentHandoffAlertForDestination:(id)destination;
- (void)releaseAutoLaunchAssertion;
- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setChromeViewController:(id)controller;
- (void)setObservedNavigationSession:(id)session;
- (void)setObservedRoutePlanningSession:(id)session;
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

    iosBasedChromeViewController = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
    v8 = [iosBasedChromeViewController acquireChromeDeactivationTokenForReason:@"thermal"];
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

    iosBasedChromeViewController = self->_thermalPressureChromeDeactivationToken;
    self->_thermalPressureChromeDeactivationToken = 0;
  }
}

- (BOOL)_shouldSuppressAnimationsForAndromeda
{
  iosChromeViewController = [(NavigationStateMonitoringTask *)self iosChromeViewController];
  isTransitioningToLockScreen = [iosChromeViewController isTransitioningToLockScreen];

  if (isTransitioningToLockScreen)
  {
    return 1;
  }

  chromeViewController = [(NavigationStateMonitoringTask *)self chromeViewController];
  traitCollection = [chromeViewController traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  navigationService = [(NavigationStateMonitoringTask *)self navigationService];
  if ([navigationService navigationState] == 6)
  {
    v10 = 1;
  }

  else
  {
    navigationService2 = [(NavigationStateMonitoringTask *)self navigationService];
    v10 = [navigationService2 navigationState] == 7;
  }

  navigationService3 = [(NavigationStateMonitoringTask *)self navigationService];
  [navigationService3 state];
  v13 = MNNavigationServiceStateIsNavigating() & v10;

  return isLuminanceReduced & (v13 ^ 1);
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

    iosBasedChromeViewController = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
    v8 = [iosBasedChromeViewController acquireModernMapTokenForReason:1];
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

    iosBasedChromeViewController = self->_thermalPressureMapToken;
    self->_thermalPressureMapToken = 0;
  }
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)platformControllerDidChangeChromeViewControllerNotification:(id)notification
{
  platformController = [(NavigationStateMonitoringTask *)self platformController];
  chromeViewController = [platformController chromeViewController];
  [(NavigationStateMonitoringTask *)self setChromeViewController:chromeViewController];
}

- (void)_checkAnimationsForAndromeda:(id)andromeda
{
  andromedaCopy = andromeda;
  v5 = andromedaCopy;
  if (andromedaCopy)
  {
    userInfo = [andromedaCopy userInfo];
    v7 = [userInfo objectForKey:@"kBacklightLuminanceInitialSetupDoneKey"];
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

- (void)didUpdateMitigationNamed:(id)named
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006C3228;
  v5[3] = &unk_101661A90;
  namedCopy = named;
  selfCopy = self;
  v4 = namedCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  v6 = [(NavigationStateMonitoringTask *)self chromeViewController:service];
  traitCollection = [v6 traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  if (isLuminanceReduced)
  {

    [(NavigationStateMonitoringTask *)self _checkAnimationsForAndromeda:0];
  }
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  routeCopy = route;
  if (([routeCopy transportType] & 0xFFFFFFFE) == 2 && !self->_navigationModernMapToken)
  {
    iosBasedChromeViewController = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
    v8 = [iosBasedChromeViewController acquireModernMapTokenForReason:0];
    navigationModernMapToken = self->_navigationModernMapToken;
    self->_navigationModernMapToken = v8;

    goto LABEL_7;
  }

  if (([routeCopy transportType] & 0xFFFFFFFE) != 2)
  {
    iosBasedChromeViewController = self->_navigationModernMapToken;
    if (iosBasedChromeViewController)
    {
      self->_navigationModernMapToken = 0;
LABEL_7:
    }
  }

  [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  route = +[UIDevice currentDevice];
  if ([route userInterfaceIdiom] || (MNNavigationServiceStateChangedToNavigating() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (MNNavigationServiceStateChangedFromNavigatingToStopped())
    {
      platformController = [(NavigationStateMonitoringTask *)self platformController];
      currentSession = [platformController currentSession];
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

        platformController2 = [(NavigationStateMonitoringTask *)self platformController];
        [platformController2 clearSessions];
      }

      else
      {
        [(NavigationStateMonitoringTask *)self callNavigationCompletionBlocksIfNecessary];
      }
    }

    goto LABEL_23;
  }

  platformController3 = [(NavigationStateMonitoringTask *)self platformController];
  currentSession2 = [platformController3 currentSession];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    goto LABEL_17;
  }

  route = [serviceCopy route];
  v11 = sub_1006C30F8();
  v12 = v11;
  if (route)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Detected MNNavigationService started navigation without a currently active NavigationSession; pushing new NavigationSession", buf, 2u);
    }

    v13 = [NSMutableArray arrayWithObject:route];
    alternateRoutes = [serviceCopy alternateRoutes];

    if (alternateRoutes)
    {
      alternateRoutes2 = [serviceCopy alternateRoutes];
      v16 = [v13 arrayByAddingObjectsFromArray:alternateRoutes2];
    }

    v30 = v13;
    v17 = [[RouteCollection alloc] initWithRoutes:v13 currentRouteIndex:0];
    observedRoutePlanningSession = [(NavigationStateMonitoringTask *)self observedRoutePlanningSession];
    configuration = [observedRoutePlanningSession configuration];
    traits = [configuration traits];
    v21 = traits;
    if (traits)
    {
      currentTraits = traits;
    }

    else
    {
      [(NavigationStateMonitoringTask *)self chromeViewController];
      v23 = v29 = route;
      currentTraits = [v23 currentTraits];

      route = v29;
    }

    +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
    [(NavigationStateMonitoringTask *)self beginNavigationWithRouteCollection:v17 navigationDetailsOptions:buf mapServiceTraits:currentTraits sessionInitiator:3 isResumingMultipointRoute:0];

    goto LABEL_16;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Navigation started without an active nav session but the service didn't have a route.  Telling navd to exit navigation state", buf, 2u);
  }

  [serviceCopy stopNavigationWithReason:1];
LABEL_23:
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  resultCopy = result;
  if ([session currentTransportType] == type && objc_msgSend(resultCopy, "isSuccess") && -[NavigationStateMonitoringTask shouldStartNavigationAutoLaunchTimer](self, "shouldStartNavigationAutoLaunchTimer"))
  {
    [(NavigationStateMonitoringTask *)self startNavigationAutoLaunchTimer];
  }
}

- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  sessionCopy = session;
  if (type == 5 || type == 2)
  {
    if (self->_routePlanningModernMapToken)
    {
      goto LABEL_8;
    }

    iosBasedChromeViewController = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
    v8 = [iosBasedChromeViewController acquireModernMapTokenForReason:0];
    routePlanningModernMapToken = self->_routePlanningModernMapToken;
    self->_routePlanningModernMapToken = v8;
  }

  else
  {
    iosBasedChromeViewController = self->_routePlanningModernMapToken;
    if (!iosBasedChromeViewController)
    {
      goto LABEL_8;
    }

    self->_routePlanningModernMapToken = 0;
  }

LABEL_8:
  [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
}

- (void)setObservedNavigationSession:(id)session
{
  sessionCopy = session;
  observedNavigationSession = self->_observedNavigationSession;
  if (observedNavigationSession != sessionCopy)
  {
    v7 = sessionCopy;
    [observedNavigationSession unregisterObserver:self];
    objc_storeStrong(&self->_observedNavigationSession, session);
    [self->_observedNavigationSession registerObserver:self];
    [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
    sessionCopy = v7;
  }
}

- (void)setObservedRoutePlanningSession:(id)session
{
  sessionCopy = session;
  observedRoutePlanningSession = self->_observedRoutePlanningSession;
  if (observedRoutePlanningSession != sessionCopy)
  {
    v12 = sessionCopy;
    [observedRoutePlanningSession unregisterObserver:self];
    [self->_observedRoutePlanningSession setNavigationStateMonitoringTask:0];
    objc_storeStrong(&self->_observedRoutePlanningSession, session);
    [self->_observedRoutePlanningSession registerObserver:self];
    [self->_observedRoutePlanningSession setNavigationStateMonitoringTask:self];
    v7 = self->_observedRoutePlanningSession;
    if (v7)
    {
      if (!self->_routePlanningModernMapToken)
      {
        currentTransportType = [(RoutePlanningSession *)v7 currentTransportType];
        if (currentTransportType == 5 || currentTransportType == 2)
        {
          iosBasedChromeViewController = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
          v10 = [iosBasedChromeViewController acquireModernMapTokenForReason:0];
          routePlanningModernMapToken = self->_routePlanningModernMapToken;
          self->_routePlanningModernMapToken = v10;
        }
      }
    }

    [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
    sessionCopy = v12;
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NavigationStateMonitoringTask *)self cancelNavigationAutoLaunchIfNeccessary];
    routePlanningModernMapToken = self->_routePlanningModernMapToken;
    self->_routePlanningModernMapToken = 0;

    routePlanningHikingMapToken = self->_routePlanningHikingMapToken;
    self->_routePlanningHikingMapToken = 0;
  }

  v10 = toSessionCopy;
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

- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = toSessionCopy;
  if (isKindOfClass)
  {
    currentTransportType = [toSessionCopy currentTransportType];
    if ((currentTransportType == 5 || currentTransportType == 2) && !self->_navigationModernMapToken)
    {
      iosBasedChromeViewController = [(NavigationStateMonitoringTask *)self iosBasedChromeViewController];
      v10 = [iosBasedChromeViewController acquireModernMapTokenForReason:0];
      navigationModernMapToken = self->_navigationModernMapToken;
      self->_navigationModernMapToken = v10;
    }

    [(NavigationStateMonitoringTask *)self updateHikingMapConfiguration];
    v7 = toSessionCopy;
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

  observedRoutePlanningSession = [(NavigationStateMonitoringTask *)self observedRoutePlanningSession];
  v10 = observedRoutePlanningSession == 0;

  if (v10)
  {
    routePlanningHikingMapToken = val->_routePlanningHikingMapToken;
    val->_routePlanningHikingMapToken = 0;
  }

  observedNavigationSession = [(NavigationStateMonitoringTask *)val observedNavigationSession];
  v13 = observedNavigationSession == 0;

  if (v13)
  {
    navigationHikingMapToken = val->_navigationHikingMapToken;
    val->_navigationHikingMapToken = 0;
  }

  v101 = +[NSMutableArray array];
  observedRoutePlanningSession2 = [(NavigationStateMonitoringTask *)val observedRoutePlanningSession];
  currentRouteCollection = [observedRoutePlanningSession2 currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];

  resolvedWaypoints = [observedRoutePlanningSession2 resolvedWaypoints];
  waypointsOrNull = [resolvedWaypoints waypointsOrNull];
  observedNavigationSession2 = [(NavigationStateMonitoringTask *)val observedNavigationSession];
  currentRouteCollection2 = [observedNavigationSession2 currentRouteCollection];
  currentRoute2 = [currentRouteCollection2 currentRoute];

  anchorPoints = [currentRoute2 anchorPoints];
  waypoints = [currentRoute2 waypoints];
  if (observedRoutePlanningSession2)
  {
    v17 = sub_1006C30F8();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = val;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Updating hiking map configuration in route planning", buf, 0xCu);
    }

    if (![resolvedWaypoints areAllValidWaypoints] || objc_msgSend(observedRoutePlanningSession2, "currentTransportType") != 2 || (MapsFeature_IsEnabled_HikingiOS() & 1) == 0)
    {
      v22 = sub_1006C30F8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        *&buf[4] = val;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Waypoints are not all valid or we are in an unsupported transport type; disabling topographic map", buf, 0xCu);
      }

      chromeViewController = val->_routePlanningHikingMapToken;
      val->_routePlanningHikingMapToken = 0;
      goto LABEL_44;
    }

    if ([currentRoute source] == 2)
    {
      v18 = sub_1006C30F8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        *&buf[4] = val;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Found curated route; enabling topographic map", buf, 0xCu);
      }

      chromeViewController = [(NavigationStateMonitoringTask *)val chromeViewController];
      acquireHikingMapToken = [chromeViewController acquireHikingMapToken];
      v21 = val->_routePlanningHikingMapToken;
      val->_routePlanningHikingMapToken = acquireHikingMapToken;

      goto LABEL_44;
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    chromeViewController = waypointsOrNull;
    v47 = [chromeViewController countByEnumeratingWithState:&v130 objects:v142 count:16];
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
        objc_enumerationMutation(chromeViewController);
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
          name = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = name;
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
          name2 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = name2;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "[%{public}p] Found waypoint to route; enabling topographic map (%@)", buf, 0x16u);
        }

LABEL_131:

        chromeViewController2 = [(NavigationStateMonitoringTask *)val chromeViewController];
        acquireHikingMapToken2 = [chromeViewController2 acquireHikingMapToken];
        v84 = val->_routePlanningHikingMapToken;
        val->_routePlanningHikingMapToken = acquireHikingMapToken2;

        goto LABEL_44;
      }

      if ([v50 isCurrentLocation])
      {
        v56 = sub_1006C30F8();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          name3 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = name3;
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
          name4 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = name4;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[%{public}p] Found location waypoint: %@", buf, 0x16u);
        }

        if (!GEOConfigGetBOOL())
        {
          goto LABEL_94;
        }
      }

      else
      {
        isAddressWaypointType = [v50 isAddressWaypointType];
        v54 = sub_1006C30F8();
        v61 = os_log_type_enabled(v54, OS_LOG_TYPE_INFO);
        if (!isAddressWaypointType)
        {
          if (v61)
          {
            name5 = [v50 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = name5;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "[%{public}p] Found other waypoint: %@", buf, 0x16u);
          }

LABEL_93:

          goto LABEL_94;
        }

        if (v61)
        {
          name6 = [v50 name];
          *buf = 134349314;
          *&buf[4] = val;
          *&buf[12] = 2112;
          *&buf[14] = name6;
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
        v47 = [chromeViewController countByEnumeratingWithState:&v130 objects:v142 count:16];
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
  if (!observedNavigationSession2)
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

  currentRouteCollection3 = [observedNavigationSession2 currentRouteCollection];
  currentRoute3 = [currentRouteCollection3 currentRoute];
  if (!currentRoute3)
  {
    goto LABEL_40;
  }

  if ([observedNavigationSession2 currentTransportType] != 2)
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

    chromeViewController = val->_navigationHikingMapToken;
    val->_navigationHikingMapToken = 0;
    goto LABEL_44;
  }

  if ([currentRoute2 source] == 2)
  {
    v28 = sub_1006C30F8();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = val;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Found curated route; enabling topographic map", buf, 0xCu);
    }

    chromeViewController = [(NavigationStateMonitoringTask *)val chromeViewController];
    acquireHikingMapToken3 = [chromeViewController acquireHikingMapToken];
    v30 = val->_navigationHikingMapToken;
    val->_navigationHikingMapToken = acquireHikingMapToken3;

    goto LABEL_44;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v64 = [anchorPoints count];
  v65 = anchorPoints;
  if (!v64)
  {
    v65 = waypoints;
  }

  chromeViewController = v65;
  v66 = [chromeViewController countByEnumeratingWithState:&v126 objects:v141 count:16];
  if (v66)
  {
    v67 = *v127;
    do
    {
      for (i = 0; i != v66; i = i + 1)
      {
        if (*v127 != v67)
        {
          objc_enumerationMutation(chromeViewController);
        }

        v69 = *(*(&v126 + 1) + 8 * i);
        if ([v69 mapDisplayType] == 1)
        {
          v85 = sub_1006C30F8();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            name7 = [v69 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = name7;
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
            name8 = [v69 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = name8;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "[%{public}p] Found waypoint to route; enabling topographic map (%@)", buf, 0x16u);
          }

LABEL_136:

          chromeViewController3 = [(NavigationStateMonitoringTask *)val chromeViewController];
          acquireHikingMapToken4 = [chromeViewController3 acquireHikingMapToken];
          v90 = val->_navigationHikingMapToken;
          val->_navigationHikingMapToken = acquireHikingMapToken4;

          goto LABEL_44;
        }

        if ([v69 isCurrentLocation])
        {
          v70 = sub_1006C30F8();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            name9 = [v69 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = name9;
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
            name10 = [v69 name];
            *buf = 134349314;
            *&buf[4] = val;
            *&buf[12] = 2112;
            *&buf[14] = name10;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "[%{public}p] Found location waypoint: %@", buf, 0x16u);
          }

          if (GEOConfigGetBOOL())
          {
            goto LABEL_120;
          }
        }

        else
        {
          isAddressWaypointType2 = [v69 isAddressWaypointType];
          v75 = sub_1006C30F8();
          v76 = os_log_type_enabled(v75, OS_LOG_TYPE_INFO);
          if (isAddressWaypointType2)
          {
            if (v76)
            {
              name11 = [v69 name];
              *buf = 134349314;
              *&buf[4] = val;
              *&buf[12] = 2112;
              *&buf[14] = name11;
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
              name12 = [v69 name];
              *buf = 134349314;
              *&buf[4] = val;
              *&buf[12] = 2112;
              *&buf[14] = name12;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "[%{public}p] Found other waypoint: %@", buf, 0x16u);
            }
          }
        }
      }

      v66 = [chromeViewController countByEnumeratingWithState:&v126 objects:v141 count:16];
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

          chromeViewController4 = [(NavigationStateMonitoringTask *)val chromeViewController];
          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_1006C5170;
          v113[3] = &unk_101626708;
          objc_copyWeak(&v116, &location);
          v117 = v42;
          v115 = buf;
          v114 = v34;
          [chromeViewController4 checkIfCoordinate:v113 isInHikingContextualRegionWithCompletionHandler:{v42.latitude, v42.longitude}];

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
    v109 = observedRoutePlanningSession2;
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
  platformController = [(NavigationStateMonitoringTask *)self platformController];
  currentSession = [platformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    navigationService = [(NavigationStateMonitoringTask *)self navigationService];
    isInNavigatingState = [navigationService isInNavigatingState];

    if ((isInNavigatingState & 1) == 0)
    {
      navigationCompletionBlocks = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
      objc_sync_enter(navigationCompletionBlocks);
      navigationCompletionBlocks2 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
      v8 = [navigationCompletionBlocks2 count];

      if (v8)
      {
        navigationCompletionBlocks3 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
        allObjects = [navigationCompletionBlocks3 allObjects];

        navigationCompletionBlocks4 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
        [navigationCompletionBlocks4 removeAllObjects];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1006C5584;
        block[3] = &unk_101661B18;
        v15 = allObjects;
        v12 = allObjects;
        dispatch_async(&_dispatch_main_q, block);
      }

      objc_sync_exit(navigationCompletionBlocks);
    }
  }
}

- (void)handoffDestinationToExternalDevice:(id)device
{
  deviceCopy = device;
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
  v9 = deviceCopy;
  v7 = deviceCopy;
  [v6 handoffDestination:v7 completion:v8];
}

- (void)presentHandoffAlertForDestination:(id)destination
{
  destinationCopy = destination;
  v3 = sub_1006C30F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Presenting NAD handoff alert", buf, 2u);
  }

  v4 = +[MapsExternalDevice sharedInstance];
  mapsDisplayName = [v4 mapsDisplayName];

  v6 = +[NSBundle mainBundle];
  if (mapsDisplayName)
  {
    v7 = [v6 localizedStringForKey:@"Destination handoff alert title [phone]" value:@"localized string not found" table:0];
    v8 = [NSString stringWithFormat:v7, mapsDisplayName];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Destination handoff alert message [phone]" value:@"localized string not found" table:0];
    v11 = [NSString stringWithFormat:v10, mapsDisplayName];
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
  v24 = destinationCopy;
  v18 = destinationCopy;
  v19 = [UIAlertAction actionWithTitle:v17 style:0 handler:v23];

  [v12 addAction:v19];
  [v12 setPreferredAction:v19];
  chromeViewController = [(NavigationStateMonitoringTask *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v12 animated:1 completion:0];
}

- (void)startNavigationAutoLaunchTimer
{
  navigationAutoLaunchTimer = [(NavigationStateMonitoringTask *)self navigationAutoLaunchTimer];

  if (!navigationAutoLaunchTimer)
  {
    [(NavigationStateMonitoringTask *)self takeAutoLaunchAssertion];
    currentRoutePlanningSessionConfiguration = [(NavigationStateMonitoringTask *)self currentRoutePlanningSessionConfiguration];
    navigationAutoLaunchDelay = [currentRoutePlanningSessionConfiguration navigationAutoLaunchDelay];
    [navigationAutoLaunchDelay doubleValue];
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
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = [bundleIdentifier stringByAppendingString:@".Maps.PrepareNavigation"];

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
  currentRoutePlanningSessionConfiguration = [(NavigationStateMonitoringTask *)self currentRoutePlanningSessionConfiguration];
  shouldAutoLaunchNavigation = [currentRoutePlanningSessionConfiguration shouldAutoLaunchNavigation];

  return shouldAutoLaunchNavigation;
}

- (id)currentRoutePlanningSessionConfiguration
{
  observedRoutePlanningSession = [(NavigationStateMonitoringTask *)self observedRoutePlanningSession];
  configuration = [observedRoutePlanningSession configuration];

  return configuration;
}

- (void)endNavigationWithCompletion:(id)completion
{
  completionCopy = completion;
  navigationService = [(NavigationStateMonitoringTask *)self navigationService];
  if ([navigationService isInNavigatingState])
  {

LABEL_4:
    if (completionCopy)
    {
      navigationCompletionBlocks = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
      objc_sync_enter(navigationCompletionBlocks);
      navigationCompletionBlocks2 = [(NavigationStateMonitoringTask *)self navigationCompletionBlocks];
      v11 = objc_retainBlock(completionCopy);
      [navigationCompletionBlocks2 addObject:v11];

      objc_sync_exit(navigationCompletionBlocks);
    }

    v12 = sub_1006C30F8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"with";
      if (!completionCopy)
      {
        v13 = @"without";
      }

      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Ending navigation %@ a completion block", &v16, 0xCu);
    }

    platformController = [(NavigationStateMonitoringTask *)self platformController];
    [platformController clearIfCurrentSessionIsKindOfClass:objc_opt_class()];

    goto LABEL_11;
  }

  platformController2 = [(NavigationStateMonitoringTask *)self platformController];
  currentSession = [platformController2 currentSession];
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_11:
}

- (void)beginNavigationWithRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options mapServiceTraits:(id)traits sessionInitiator:(unint64_t)initiator isResumingMultipointRoute:(BOOL)route
{
  routeCopy = route;
  collectionCopy = collection;
  traitsCopy = traits;
  if (!collectionCopy)
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

  if (!traitsCopy)
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
  platformController = [(NavigationStateMonitoringTask *)self platformController];
  currentSession = [platformController currentSession];
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

    lastObject = sub_1006C30F8();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      platformController2 = [(NavigationStateMonitoringTask *)self platformController];
      currentSession2 = [platformController2 currentSession];
      *buf = 138412290;
      *&buf[4] = currentSession2;
      _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_ERROR, "Attempted to begin navigation, but there is already a NavigationSession on the sessionStack: %@", buf, 0xCu);
LABEL_24:

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  optionsCopy = options;
  platformController3 = [(NavigationStateMonitoringTask *)self platformController];
  currentRoutePlanningSession = [platformController3 currentRoutePlanningSession];
  selfCopy = self;
  if (!currentRoutePlanningSession)
  {

LABEL_26:
    currentRoute = [collectionCopy currentRoute];
    carplayDestinationHandoffRequired = [currentRoute carplayDestinationHandoffRequired];

    if (carplayDestinationHandoffRequired)
    {
      currentRoute2 = [collectionCopy currentRoute];
      _maps_directionsWaypoints = [currentRoute2 _maps_directionsWaypoints];
      lastObject = [_maps_directionsWaypoints lastObject];

      v43 = [lastObject pin];
      if ([(NavigationStateMonitoringTask *)selfCopy shouldStartNavigationAutoLaunchTimer])
      {
        [(NavigationStateMonitoringTask *)selfCopy handoffDestinationToExternalDevice:v43];
      }

      else
      {
        [(NavigationStateMonitoringTask *)selfCopy presentHandoffAlertForDestination:v43];
      }
    }

    else
    {
      if (initiator == 6)
      {
        observedRoutePlanningSession = [(NavigationStateMonitoringTask *)selfCopy observedRoutePlanningSession];
        configuration = [observedRoutePlanningSession configuration];
        lastObject = [configuration tracePlaybackPath];
      }

      else
      {
        lastObject = 0;
      }

      v46 = [NavigationSessionBuilder alloc];
      v47 = *&optionsCopy->guidanceType;
      *buf = *&optionsCopy->shouldSimulateLocations;
      *&buf[16] = v47;
      *&buf[32] = *&optionsCopy->isReconnecting;
      navigationModeContext = optionsCopy->navigationModeContext;
      v48 = [(NavigationSessionBuilder *)v46 initWithRouteCollection:collectionCopy navigationDetailsOptions:buf mapServiceTraits:traitsCopy sessionInitiator:initiator isResumingMultipointRoute:routeCopy tracePlaybackPath:lastObject];
      build = [(NavigationSessionBuilder *)v48 build];

      platformController4 = [(NavigationStateMonitoringTask *)selfCopy platformController];
      [platformController4 pushSession:build];
    }

    goto LABEL_35;
  }

  v26 = currentRoutePlanningSession;
  platformController5 = [(NavigationStateMonitoringTask *)self platformController];
  [platformController5 chromeViewController];
  v28 = collectionCopy;
  initiatorCopy = initiator;
  v30 = traitsCopy;
  v32 = v31 = routeCopy;
  topMostPresentedViewController = [v32 topMostPresentedViewController];
  objc_opt_class();
  v34 = objc_opt_isKindOfClass();

  routeCopy = v31;
  traitsCopy = v30;
  initiator = initiatorCopy;
  collectionCopy = v28;

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

  lastObject = sub_1006C30F8();
  if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
  {
    platformController2 = [(NavigationStateMonitoringTask *)selfCopy platformController];
    currentSession2 = [platformController2 chromeViewController];
    topMostPresentedViewController2 = [currentSession2 topMostPresentedViewController];
    *buf = 138412290;
    *&buf[4] = topMostPresentedViewController2;
    _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_ERROR, "Attempted to begin navigation but there is an unexpected VC at the top of the stack: %@", buf, 0xCu);

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
  navigationAutoLaunchTimer = [(NavigationStateMonitoringTask *)self navigationAutoLaunchTimer];

  if (navigationAutoLaunchTimer)
  {
    navigationAutoLaunchTimer2 = [(NavigationStateMonitoringTask *)self navigationAutoLaunchTimer];
    [navigationAutoLaunchTimer2 invalidate];

    [(NavigationStateMonitoringTask *)self setNavigationAutoLaunchTimer:0];
  }

  currentRoutePlanningSessionConfiguration = [(NavigationStateMonitoringTask *)self currentRoutePlanningSessionConfiguration];
  [currentRoutePlanningSessionConfiguration setNavigationAutoLaunchDelay:0];
}

- (BOOL)isNavigationAutoLaunchInProgress
{
  navigationAutoLaunchTimer = [(NavigationStateMonitoringTask *)self navigationAutoLaunchTimer];
  v3 = navigationAutoLaunchTimer != 0;

  return v3;
}

- (void)setChromeViewController:(id)controller
{
  obj = controller;
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

- (NavigationStateMonitoringTask)initWithPlatformController:(id)controller navigationService:(id)service
{
  controllerCopy = controller;
  serviceCopy = service;
  v22.receiver = self;
  v22.super_class = NavigationStateMonitoringTask;
  v8 = [(NavigationStateMonitoringTask *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_platformController, controllerCopy);
    v10 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v9->_platformController);
    [v10 addObserver:v9 selector:"platformControllerDidChangeChromeViewControllerNotification:" name:@"PlatformControllerDidChangeChromeViewControllerNotification" object:WeakRetained];

    v12 = objc_loadWeakRetained(&v9->_platformController);
    chromeViewController = [v12 chromeViewController];
    [(NavigationStateMonitoringTask *)v9 setChromeViewController:chromeViewController];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v9 selector:"_checkAnimationsForAndromeda:" name:@"BacklightLuminanceDidChangeNotification" object:0];

    objc_storeStrong(&v9->_navigationService, service);
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