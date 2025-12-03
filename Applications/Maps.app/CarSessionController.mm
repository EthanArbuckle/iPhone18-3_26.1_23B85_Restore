@interface CarSessionController
+ (id)sharedInstance;
- (CarSessionController)init;
- (NSSet)sessionObservers;
- (PlatformController)platformController;
- (void)_handleIncomingSession:(id)session;
- (void)_handleTransportType:(int64_t)type;
- (void)_navigationSessionDidChangeState:(unint64_t)state;
- (void)_promptToEndNavigationAccepted:(id)accepted;
- (void)_routeGeniusSessionDidChangeState:(unint64_t)state;
- (void)_routePlanningSessionDidChangeState:(unint64_t)state;
- (void)_startNavigatingAnimated:(BOOL)animated;
- (void)_stopNavigation;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didUpdateRouteGenius:(id)genius;
- (void)endNavigationIfNeededWithPrompt:(BOOL)prompt andPerformBlock:(id)block;
- (void)mapsSession:(id)session didChangeState:(unint64_t)state;
- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)navigationServicePredictingDidArrive:(id)arrive;
- (void)navigationSession:(id)session didUpdateRouteCollection:(id)collection;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)removeObserver:(id)observer;
- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)setActive:(BOOL)active;
- (void)setNavigationSession:(id)session;
- (void)setRouteGeniusSession:(id)session;
- (void)setRoutePlanningSession:(id)session;
@end

@implementation CarSessionController

- (CarSessionController)init
{
  v6.receiver = self;
  v6.super_class = CarSessionController;
  v2 = [(CarSessionController *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableSet alloc] initWithCapacity:4];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_active = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10195E1C8 != -1)
  {
    dispatch_once(&qword_10195E1C8, &stru_101631F38);
  }

  v3 = qword_10195E1C0;

  return v3;
}

- (NSSet)sessionObservers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(CarSessionController *)selfCopy observers];
  v4 = [observers copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)didUpdateRouteGenius:(id)genius
{
  geniusCopy = genius;
  if (!geniusCopy)
  {
    v12 = sub_100799CA8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "didUpdateRouteGenius with nil entry, will pop RG session.", v17, 2u);
    }

    platformController = [(CarSessionController *)self platformController];
    [(RouteGeniusSession *)platformController clearIfCurrentSessionIsKindOfClass:objc_opt_class()];
    goto LABEL_12;
  }

  platformController2 = [(CarSessionController *)self platformController];
  sessionStack = [platformController2 sessionStack];
  v7 = [sessionStack count];

  if (!v7)
  {
    v13 = sub_100799CA8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "RG: pushing routeGeniusSession on platform sessionStack.", v15, 2u);
    }

    platformController = objc_alloc_init(RouteGeniusSession);
    platformController3 = [(CarSessionController *)self platformController];
    [platformController3 pushSession:platformController];

    goto LABEL_12;
  }

  platformController4 = [(CarSessionController *)self platformController];
  currentSession = [platformController4 currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    platformController = sub_100799CA8();
    if (os_log_type_enabled(&platformController->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &platformController->super, OS_LOG_TYPE_ERROR, "didUpdateRouteGenius, but the platform controller is in an invalid state.", buf, 2u);
    }

LABEL_12:
  }
}

- (void)_routeGeniusSessionDidChangeState:(unint64_t)state
{
  v4 = sub_100799CA8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NotStarted";
    if (state == 1)
    {
      v5 = @"Running";
    }

    if (state == 2)
    {
      v5 = @"Suspended";
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_routeGeniusSessionDidChangeState: %@", &v9, 0xCu);
  }

  if (state == 2)
  {
    if (GEOConfigGetBOOL())
    {
      v8 = +[MapsSuggestionsPredictor sharedPredictor];
      [v8 cancelCapturingAnalytics];
    }

    v7 = +[CarChromeModeCoordinator sharedInstance];
    [v7 endRouteGenius];
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    if (GEOConfigGetBOOL())
    {
      v6 = +[MapsSuggestionsPredictor sharedPredictor];
      [v6 capturePredictedTransportationMode:0];
    }

    v7 = +[CarChromeModeCoordinator sharedInstance];
    [v7 displayRouteGenius];
  }
}

- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v8 = sub_100799CA8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if ((type - 1) > 4)
    {
      v9 = @"Undefined";
    }

    else
    {
      v9 = *(&off_101631F58 + type - 1);
    }

    v10 = 138412546;
    v11 = v9;
    v12 = 1024;
    v13 = initiatedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "routePlanningSession:didChangeCurrentTransportType %@ userInitiated:%d", &v10, 0x12u);
  }

  [(CarSessionController *)self _handleTransportType:type];
}

- (void)_routePlanningSessionDidChangeState:(unint64_t)state
{
  if (state == 2)
  {
    if (!GEOConfigGetBOOL())
    {
      return;
    }

    routePlanningSession2 = +[MapsSuggestionsPredictor sharedPredictor];
    [routePlanningSession2 cancelCapturingAnalytics];
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    if (GEOConfigGetBOOL())
    {
      v4 = +[MapsSuggestionsPredictor sharedPredictor];
      [v4 capturePredictedTransportationMode:0];
    }

    routePlanningSession = [(CarSessionController *)self routePlanningSession];
    sessionInitiator = [routePlanningSession sessionInitiator];

    if (sessionInitiator != 2)
    {
      v7 = +[CarChromeModeCoordinator sharedInstance];
      [v7 displayRoutePlanningForExistingRoute];
    }

    routePlanningSession2 = [(CarSessionController *)self routePlanningSession];
    -[CarSessionController _handleTransportType:](self, "_handleTransportType:", [routePlanningSession2 currentTransportType]);
  }
}

- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  serviceCopy = service;
  infoCopy = info;
  if ([infoCopy arrivalState] - 1 <= 5)
  {
    route = [serviceCopy route];
    v10 = [route isLegIndexOfLastLeg:{objc_msgSend(infoCopy, "legIndex")}];

    if (v10)
    {
      v11 = state - 1;
      v12 = sub_100799CA8();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v11 > 5)
      {
        if (v13)
        {
          v15 = 138412290;
          v16 = infoCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CarSessionController: didUpdateArrivalInfo: %@, displaying navigation", &v15, 0xCu);
        }

        v12 = +[CarChromeModeCoordinator sharedInstance];
        [v12 displayNavigation];
        goto LABEL_12;
      }

      if (v13)
      {
        v15 = 138412290;
        v16 = infoCopy;
        v14 = "CarSessionController: didUpdateArrivalInfo: %@, has already arrived";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, &v15, 0xCu);
      }
    }

    else
    {
      v12 = sub_100799CA8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = infoCopy;
        v14 = "CarSessionController: didUpdateArrivalInfo: %@, did not arrive at destination";
        goto LABEL_8;
      }
    }

LABEL_12:
  }
}

- (void)navigationServicePredictingDidArrive:(id)arrive
{
  platformController = [(CarSessionController *)self platformController];
  [platformController clearIfCurrentSessionIsKindOfClass:objc_opt_class()];
}

- (void)navigationSession:(id)session didUpdateRouteCollection:(id)collection
{
  sessionCopy = session;
  navigationSession = [(CarSessionController *)self navigationSession];

  if (navigationSession == sessionCopy)
  {
    navigationSession2 = [(CarSessionController *)self navigationSession];
    -[CarSessionController _handleTransportType:](self, "_handleTransportType:", [navigationSession2 currentTransportType]);
  }

  else
  {
    v7 = sub_100799CA8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Navigation session didUpdateRouteCollection:, but currentSession is not navigation.", buf, 2u);
    }
  }
}

- (void)_promptToEndNavigationAccepted:(id)accepted
{
  acceptedCopy = accepted;
  v4 = +[MNNavigationService sharedService];
  isInNavigatingState = [v4 isInNavigatingState];

  if (isInNavigatingState)
  {
    v6 = [acceptedCopy copy];
    navigationEndedHandler = self->_navigationEndedHandler;
    self->_navigationEndedHandler = v6;

    v8 = +[MNNavigationService sharedService];
    [v8 stopNavigationWithReason:2];
  }

  else if (acceptedCopy)
  {
    (*(acceptedCopy + 2))(acceptedCopy, 1);
  }
}

- (void)endNavigationIfNeededWithPrompt:(BOOL)prompt andPerformBlock:(id)block
{
  blockCopy = block;
  [(CarSessionController *)self setNavigationEndedHandler:0];
  navigationSession = [(CarSessionController *)self navigationSession];

  if (navigationSession)
  {
    if (prompt)
    {
      objc_initWeak(location, self);
      v8 = sub_100799CA8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CarSessionController : Will prompt kMapsInterruptionMaybeEndNavigation", buf, 2u);
      }

      v9 = +[UIApplication sharedMapsDelegate];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100A191BC;
      v11[3] = &unk_10165E7A0;
      objc_copyWeak(&v13, location);
      v12 = blockCopy;
      [v9 interruptApplicationWithKind:7 userInfo:0 completionHandler:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    else
    {
      v10 = sub_100799CA8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "CarSessionController : Will not kMapsInterruptionMaybeEndNavigation, ending navigation and performing block immediately", location, 2u);
      }

      [(CarSessionController *)self _promptToEndNavigationAccepted:blockCopy];
    }
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 1);
  }
}

- (void)_stopNavigation
{
  v3 = sub_100799CA8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Navigation will stop running", v13, 2u);
  }

  v4 = +[CarChromeModeCoordinator sharedInstance];
  [v4 endNavigation];

  v5 = +[CarDisplayController sharedInstance];
  [v5 _carSessionController_updateNavigationHostingState];

  navigationEndedHandler = [(CarSessionController *)self navigationEndedHandler];

  if (navigationEndedHandler)
  {
    v7 = objc_retainBlock(self->_navigationEndedHandler);
    [(CarSessionController *)self setNavigationEndedHandler:0];
    v7[2](v7, 1);
  }

  else
  {
    v8 = +[MNNavigationService sharedService];
    isDetour = [v8 isDetour];

    if (!isDetour)
    {
      return;
    }

    v7 = +[CarChromeModeCoordinator sharedInstance];
    v10 = +[MNNavigationService sharedService];
    originalDestination = [v10 originalDestination];
    v14 = @"isOriginalDestination";
    v15 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v7 displayRoutePlanningForDestination:originalDestination userInfo:v12];
  }
}

- (void)_startNavigatingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationSession = [(CarSessionController *)self navigationSession];
  currentRouteCollection = [navigationSession currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];

  origin = [currentRoute origin];
  geoMapItem = [origin geoMapItem];

  destination = [currentRoute destination];
  geoMapItem2 = [destination geoMapItem];

  if (![currentRoute isMultipointRoute] && geoMapItem && geoMapItem2 && GEOConfigGetBOOL())
  {
    v11 = +[MapsSuggestionsPredictor sharedPredictor];
    [v11 captureActualTransportationMode:0 originMapItem:geoMapItem destinationMapItem:geoMapItem2];
  }

  v12 = sub_100799CA8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    if (animatedCopy)
    {
      v13 = @"YES";
    }

    v14 = v13;
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Navigation will launch animated=%@", &v21, 0xCu);
  }

  v15 = +[CarDisplayController sharedInstance];
  isCurrentlyConnectedToCarAppScene = [v15 isCurrentlyConnectedToCarAppScene];
  v17 = +[MNNavigationService sharedService];
  [v17 setIsConnectedToCarplay:isCurrentlyConnectedToCarAppScene];

  v18 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  [v18 setIsConnectedToCarplay:isCurrentlyConnectedToCarAppScene];

  v19 = +[CarChromeModeCoordinator sharedInstance];
  v20 = v19;
  if (animatedCopy)
  {
    [v19 displayNavigation];
  }

  else
  {
    [v19 launchIntoNavigation];
  }

  [v15 _carSessionController_updateNavigationHostingState];
}

- (void)_navigationSessionDidChangeState:(unint64_t)state
{
  if (state == 2)
  {
    [(CarSessionController *)self _stopNavigation];
  }

  else if (state == 1)
  {
    [(CarSessionController *)self _startNavigatingAnimated:?];
  }
}

- (void)mapsSession:(id)session didChangeState:(unint64_t)state
{
  sessionCopy = session;
  v7 = sub_100799CA8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = @"NotStarted";
    if (state == 1)
    {
      v11 = @"Running";
    }

    if (state == 2)
    {
      v11 = @"Suspended";
    }

    v30 = 138412546;
    v31 = v9;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "mapsSession:didChangeState: class: %@, state: %@", &v30, 0x16u);
  }

  navigationSession = [(CarSessionController *)self navigationSession];
  if (navigationSession && ((v13 = navigationSession, v14 = sessionCopy, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v15 = 0) : (v15 = v14), v16 = v15, v14, [(CarSessionController *)self navigationSession], v17 = objc_claimAutoreleasedReturnValue(), v16, v17, v13, v16 == v17))
  {
    [(CarSessionController *)self _navigationSessionDidChangeState:state];
  }

  else
  {
    routePlanningSession = [(CarSessionController *)self routePlanningSession];
    if (routePlanningSession && ((v19 = routePlanningSession, v20 = sessionCopy, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v21 = 0) : (v21 = v20), v22 = v21, v20, [(CarSessionController *)self routePlanningSession], v23 = objc_claimAutoreleasedReturnValue(), v22, v23, v19, v22 == v23))
    {
      [(CarSessionController *)self _routePlanningSessionDidChangeState:state];
    }

    else
    {
      routeGeniusSession = [(CarSessionController *)self routeGeniusSession];
      if (routeGeniusSession)
      {
        v25 = routeGeniusSession;
        v26 = sessionCopy;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;

        routeGeniusSession2 = [(CarSessionController *)self routeGeniusSession];

        if (v28 == routeGeniusSession2)
        {
          [(CarSessionController *)self _routeGeniusSessionDidChangeState:state];
        }
      }
    }
  }
}

- (void)setRouteGeniusSession:(id)session
{
  sessionCopy = session;
  routeGeniusSession = self->_routeGeniusSession;
  if (routeGeniusSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(RouteGeniusSession *)routeGeniusSession unregisterObserver:self];
    objc_storeStrong(&self->_routeGeniusSession, session);
    [(RouteGeniusSession *)self->_routeGeniusSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  navigationSession = self->_navigationSession;
  if (navigationSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(NavigationSession *)navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, session);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  routePlanningSession = self->_routePlanningSession;
  if (routePlanningSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, session);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)_handleTransportType:(int64_t)type
{
  v4 = sub_100799CA8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if ((type - 1) > 4)
    {
      v5 = @"Undefined";
    }

    else
    {
      v5 = *(&off_101631F58 + type - 1);
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_handleTransportType: %@", &v8, 0xCu);
  }

  if (type)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    if (type == 1)
    {
      [v6 dismissCurrentInterruptionOfKind:8];
    }

    else
    {
      v7 = sub_100FB1B44(type);
      [v6 interruptApplicationWithKind:8 userInfo:v7 completionHandler:0];
    }
  }
}

- (void)_handleIncomingSession:(id)session
{
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sessionCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(CarSessionController *)self setRoutePlanningSession:v6];

  v7 = sessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(CarSessionController *)self setNavigationSession:v9];
  v12 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [(CarSessionController *)self setRouteGeniusSession:v11];
  if (v12)
  {
    -[CarSessionController mapsSession:didChangeState:](self, "mapsSession:didChangeState:", v12, [v12 sessionState]);
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  v9 = sub_100799CA8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v34 = 138412546;
    v35 = v11;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "didChangeCurrentSessionFromSession from: %@ to: %@", &v34, 0x16u);
  }

  v14 = toSessionCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (!v14 || (isKindOfClass & 1) == 0)
  {
    v16 = +[CarDisplayController sharedInstance];
    routeGeniusManager = [v16 routeGeniusManager];
    [routeGeniusManager deactivateForAllChromes];
  }

  [(CarSessionController *)self _handleIncomingSession:v14];
  v18 = sessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    v21 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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
    }

    else
    {
      v24 = v21;
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (!v14 || (v25 & 1) == 0)
      {
        v33 = +[CarChromeModeCoordinator sharedInstance];
        [v33 endRoutePlanning];

        goto LABEL_24;
      }
    }
  }

  v26 = v18;
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v26 && (v27 & 1) != 0)
  {
    [(CarSessionController *)self _stopNavigation];
LABEL_24:
    v31 = +[UIApplication sharedMapsDelegate];
    [v31 dismissCurrentInterruptionOfKind:8];
    goto LABEL_25;
  }

  v28 = v26;
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();

  if (v26 && (v29 & 1) != 0)
  {
    v30 = +[CarChromeModeCoordinator sharedInstance];
    [v30 endRouteGenius];

    v31 = +[CarDisplayController sharedInstance];
    routeGeniusManager2 = [v31 routeGeniusManager];
    [routeGeniusManager2 deactivateForAllChromes];

LABEL_25:
  }
}

- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  v8 = sub_100799CA8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v27 = 138412546;
    v28 = v10;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "willChangeCurrentSessionFromSession from: %@ to: %@", &v27, 0x16u);
  }

  v13 = sessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v15)
  {
    if (v18)
    {
      configuration = [v15 configuration];
      automaticSharingContacts = [configuration automaticSharingContacts];
      v21 = [automaticSharingContacts count];

      if (v21)
      {
        v22 = sub_100799CA8();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Adding automatic sharing contacts from planning session to navigation session", &v27, 2u);
        }

        configuration2 = [v15 configuration];
        automaticSharingContacts2 = [configuration2 automaticSharingContacts];
        configuration3 = [v18 configuration];
        sharedTripPrefetchContext = [configuration3 sharedTripPrefetchContext];
        [sharedTripPrefetchContext setAutomaticSharingContacts:automaticSharingContacts2];
      }
    }
  }
}

- (PlatformController)platformController
{
  v2 = +[CarDisplayController sharedInstance];
  platformController = [v2 platformController];

  return platformController;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      platformController = [(CarSessionController *)self platformController];
      [platformController registerObserver:self];

      v5 = +[MNNavigationService sharedService];
      [v5 registerObserver:self];

      v6 = +[CarRouteGeniusService sharedService];
      [v6 registerObserver:self];

      platformController2 = [(CarSessionController *)self platformController];
      currentSession = [platformController2 currentSession];
      [(CarSessionController *)self _handleIncomingSession:currentSession];
    }

    else
    {
      [(CarSessionController *)self _handleIncomingSession:0];
      platformController3 = [(CarSessionController *)self platformController];
      [platformController3 unregisterObserver:self];

      v10 = +[MNNavigationService sharedService];
      [v10 unregisterObserver:self];

      platformController2 = +[CarRouteGeniusService sharedService];
      [platformController2 unregisterObserver:self];
    }

    v11 = +[CarDisplayController sharedInstance];
    [v11 _carSessionController_updateNavigationHostingState];

    v12 = sub_100799CA8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if (self->_active)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = v13;
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "setActive: %@, updating navigation hosting state", &v15, 0xCu);
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(CarSessionController *)selfCopy observers];
  v7 = [observers containsObject:observerCopy];

  if (v7)
  {
    observers2 = [(CarSessionController *)selfCopy observers];
    [observers2 removeObject:observerCopy];

    observers3 = [(CarSessionController *)selfCopy observers];
    v10 = [observers3 count];

    if (!v10)
    {
      [(CarSessionController *)selfCopy setActive:0];
    }

    v11 = sub_100799CA8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      observers4 = [(CarSessionController *)selfCopy observers];
      v15 = [observers4 count];
      isActive = [(CarSessionController *)selfCopy isActive];
      v17 = @"NO";
      if (isActive)
      {
        v17 = @"YES";
      }

      v18 = v17;
      v20 = 138412802;
      v21 = v13;
      v22 = 2048;
      v23 = v15;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "removeObserver: %@, observersCount: %lu, active: %@", &v20, 0x20u);
    }

    objc_sync_exit(selfCopy);
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 postNotificationName:@"CarSessionControllerObserversDidChangeNotification" object:selfCopy];
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(CarSessionController *)selfCopy observers];
  v7 = [observers containsObject:observerCopy];

  if (v7)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    observers2 = [(CarSessionController *)selfCopy observers];
    [observers2 addObject:observerCopy];

    observers3 = [(CarSessionController *)selfCopy observers];
    v10 = [observers3 count];

    if (v10)
    {
      [(CarSessionController *)selfCopy setActive:1];
    }

    v11 = sub_100799CA8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      observers4 = [(CarSessionController *)selfCopy observers];
      v15 = [observers4 count];
      isActive = [(CarSessionController *)selfCopy isActive];
      v17 = @"NO";
      if (isActive)
      {
        v17 = @"YES";
      }

      v18 = v17;
      v20 = 138412802;
      v21 = v13;
      v22 = 2048;
      v23 = v15;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "addObserver: %@, observersCount: %lu, active: %@", &v20, 0x20u);
    }

    objc_sync_exit(selfCopy);
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 postNotificationName:@"CarSessionControllerObserversDidChangeNotification" object:selfCopy];
  }
}

- (void)dealloc
{
  [(CarSessionController *)self setActive:0];
  v3.receiver = self;
  v3.super_class = CarSessionController;
  [(CarSessionController *)&v3 dealloc];
}

@end