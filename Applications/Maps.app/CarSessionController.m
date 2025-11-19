@interface CarSessionController
+ (id)sharedInstance;
- (CarSessionController)init;
- (NSSet)sessionObservers;
- (PlatformController)platformController;
- (void)_handleIncomingSession:(id)a3;
- (void)_handleTransportType:(int64_t)a3;
- (void)_navigationSessionDidChangeState:(unint64_t)a3;
- (void)_promptToEndNavigationAccepted:(id)a3;
- (void)_routeGeniusSessionDidChangeState:(unint64_t)a3;
- (void)_routePlanningSessionDidChangeState:(unint64_t)a3;
- (void)_startNavigatingAnimated:(BOOL)a3;
- (void)_stopNavigation;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)didUpdateRouteGenius:(id)a3;
- (void)endNavigationIfNeededWithPrompt:(BOOL)a3 andPerformBlock:(id)a4;
- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4;
- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)navigationServicePredictingDidArrive:(id)a3;
- (void)navigationSession:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)removeObserver:(id)a3;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)setActive:(BOOL)a3;
- (void)setNavigationSession:(id)a3;
- (void)setRouteGeniusSession:(id)a3;
- (void)setRoutePlanningSession:(id)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CarSessionController *)v2 observers];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (void)didUpdateRouteGenius:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = sub_100799CA8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "didUpdateRouteGenius with nil entry, will pop RG session.", v17, 2u);
    }

    v11 = [(CarSessionController *)self platformController];
    [(RouteGeniusSession *)v11 clearIfCurrentSessionIsKindOfClass:objc_opt_class()];
    goto LABEL_12;
  }

  v5 = [(CarSessionController *)self platformController];
  v6 = [v5 sessionStack];
  v7 = [v6 count];

  if (!v7)
  {
    v13 = sub_100799CA8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "RG: pushing routeGeniusSession on platform sessionStack.", v15, 2u);
    }

    v11 = objc_alloc_init(RouteGeniusSession);
    v14 = [(CarSessionController *)self platformController];
    [v14 pushSession:v11];

    goto LABEL_12;
  }

  v8 = [(CarSessionController *)self platformController];
  v9 = [v8 currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = sub_100799CA8();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v11->super, OS_LOG_TYPE_ERROR, "didUpdateRouteGenius, but the platform controller is in an invalid state.", buf, 2u);
    }

LABEL_12:
  }
}

- (void)_routeGeniusSessionDidChangeState:(unint64_t)a3
{
  v4 = sub_100799CA8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NotStarted";
    if (a3 == 1)
    {
      v5 = @"Running";
    }

    if (a3 == 2)
    {
      v5 = @"Suspended";
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_routeGeniusSessionDidChangeState: %@", &v9, 0xCu);
  }

  if (a3 == 2)
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
    if (a3 != 1)
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

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v8 = sub_100799CA8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 1) > 4)
    {
      v9 = @"Undefined";
    }

    else
    {
      v9 = *(&off_101631F58 + a4 - 1);
    }

    v10 = 138412546;
    v11 = v9;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "routePlanningSession:didChangeCurrentTransportType %@ userInitiated:%d", &v10, 0x12u);
  }

  [(CarSessionController *)self _handleTransportType:a4];
}

- (void)_routePlanningSessionDidChangeState:(unint64_t)a3
{
  if (a3 == 2)
  {
    if (!GEOConfigGetBOOL())
    {
      return;
    }

    v8 = +[MapsSuggestionsPredictor sharedPredictor];
    [v8 cancelCapturingAnalytics];
  }

  else
  {
    if (a3 != 1)
    {
      return;
    }

    if (GEOConfigGetBOOL())
    {
      v4 = +[MapsSuggestionsPredictor sharedPredictor];
      [v4 capturePredictedTransportationMode:0];
    }

    v5 = [(CarSessionController *)self routePlanningSession];
    v6 = [v5 sessionInitiator];

    if (v6 != 2)
    {
      v7 = +[CarChromeModeCoordinator sharedInstance];
      [v7 displayRoutePlanningForExistingRoute];
    }

    v8 = [(CarSessionController *)self routePlanningSession];
    -[CarSessionController _handleTransportType:](self, "_handleTransportType:", [v8 currentTransportType]);
  }
}

- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 arrivalState] - 1 <= 5)
  {
    v9 = [v7 route];
    v10 = [v9 isLegIndexOfLastLeg:{objc_msgSend(v8, "legIndex")}];

    if (v10)
    {
      v11 = a5 - 1;
      v12 = sub_100799CA8();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v11 > 5)
      {
        if (v13)
        {
          v15 = 138412290;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CarSessionController: didUpdateArrivalInfo: %@, displaying navigation", &v15, 0xCu);
        }

        v12 = +[CarChromeModeCoordinator sharedInstance];
        [v12 displayNavigation];
        goto LABEL_12;
      }

      if (v13)
      {
        v15 = 138412290;
        v16 = v8;
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
        v16 = v8;
        v14 = "CarSessionController: didUpdateArrivalInfo: %@, did not arrive at destination";
        goto LABEL_8;
      }
    }

LABEL_12:
  }
}

- (void)navigationServicePredictingDidArrive:(id)a3
{
  v3 = [(CarSessionController *)self platformController];
  [v3 clearIfCurrentSessionIsKindOfClass:objc_opt_class()];
}

- (void)navigationSession:(id)a3 didUpdateRouteCollection:(id)a4
{
  v5 = a3;
  v6 = [(CarSessionController *)self navigationSession];

  if (v6 == v5)
  {
    v8 = [(CarSessionController *)self navigationSession];
    -[CarSessionController _handleTransportType:](self, "_handleTransportType:", [v8 currentTransportType]);
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

- (void)_promptToEndNavigationAccepted:(id)a3
{
  v9 = a3;
  v4 = +[MNNavigationService sharedService];
  v5 = [v4 isInNavigatingState];

  if (v5)
  {
    v6 = [v9 copy];
    navigationEndedHandler = self->_navigationEndedHandler;
    self->_navigationEndedHandler = v6;

    v8 = +[MNNavigationService sharedService];
    [v8 stopNavigationWithReason:2];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }
}

- (void)endNavigationIfNeededWithPrompt:(BOOL)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  [(CarSessionController *)self setNavigationEndedHandler:0];
  v7 = [(CarSessionController *)self navigationSession];

  if (v7)
  {
    if (a3)
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
      v12 = v6;
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

      [(CarSessionController *)self _promptToEndNavigationAccepted:v6];
    }
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 1);
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

  v6 = [(CarSessionController *)self navigationEndedHandler];

  if (v6)
  {
    v7 = objc_retainBlock(self->_navigationEndedHandler);
    [(CarSessionController *)self setNavigationEndedHandler:0];
    v7[2](v7, 1);
  }

  else
  {
    v8 = +[MNNavigationService sharedService];
    v9 = [v8 isDetour];

    if (!v9)
    {
      return;
    }

    v7 = +[CarChromeModeCoordinator sharedInstance];
    v10 = +[MNNavigationService sharedService];
    v11 = [v10 originalDestination];
    v14 = @"isOriginalDestination";
    v15 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v7 displayRoutePlanningForDestination:v11 userInfo:v12];
  }
}

- (void)_startNavigatingAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(CarSessionController *)self navigationSession];
  v5 = [v4 currentRouteCollection];
  v6 = [v5 currentRoute];

  v7 = [v6 origin];
  v8 = [v7 geoMapItem];

  v9 = [v6 destination];
  v10 = [v9 geoMapItem];

  if (![v6 isMultipointRoute] && v8 && v10 && GEOConfigGetBOOL())
  {
    v11 = +[MapsSuggestionsPredictor sharedPredictor];
    [v11 captureActualTransportationMode:0 originMapItem:v8 destinationMapItem:v10];
  }

  v12 = sub_100799CA8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    if (v3)
    {
      v13 = @"YES";
    }

    v14 = v13;
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Navigation will launch animated=%@", &v21, 0xCu);
  }

  v15 = +[CarDisplayController sharedInstance];
  v16 = [v15 isCurrentlyConnectedToCarAppScene];
  v17 = +[MNNavigationService sharedService];
  [v17 setIsConnectedToCarplay:v16];

  v18 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  [v18 setIsConnectedToCarplay:v16];

  v19 = +[CarChromeModeCoordinator sharedInstance];
  v20 = v19;
  if (v3)
  {
    [v19 displayNavigation];
  }

  else
  {
    [v19 launchIntoNavigation];
  }

  [v15 _carSessionController_updateNavigationHostingState];
}

- (void)_navigationSessionDidChangeState:(unint64_t)a3
{
  if (a3 == 2)
  {
    [(CarSessionController *)self _stopNavigation];
  }

  else if (a3 == 1)
  {
    [(CarSessionController *)self _startNavigatingAnimated:?];
  }
}

- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100799CA8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = @"NotStarted";
    if (a4 == 1)
    {
      v11 = @"Running";
    }

    if (a4 == 2)
    {
      v11 = @"Suspended";
    }

    v30 = 138412546;
    v31 = v9;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "mapsSession:didChangeState: class: %@, state: %@", &v30, 0x16u);
  }

  v12 = [(CarSessionController *)self navigationSession];
  if (v12 && ((v13 = v12, v14 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v15 = 0) : (v15 = v14), v16 = v15, v14, [(CarSessionController *)self navigationSession], v17 = objc_claimAutoreleasedReturnValue(), v16, v17, v13, v16 == v17))
  {
    [(CarSessionController *)self _navigationSessionDidChangeState:a4];
  }

  else
  {
    v18 = [(CarSessionController *)self routePlanningSession];
    if (v18 && ((v19 = v18, v20 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v21 = 0) : (v21 = v20), v22 = v21, v20, [(CarSessionController *)self routePlanningSession], v23 = objc_claimAutoreleasedReturnValue(), v22, v23, v19, v22 == v23))
    {
      [(CarSessionController *)self _routePlanningSessionDidChangeState:a4];
    }

    else
    {
      v24 = [(CarSessionController *)self routeGeniusSession];
      if (v24)
      {
        v25 = v24;
        v26 = v6;
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

        v29 = [(CarSessionController *)self routeGeniusSession];

        if (v28 == v29)
        {
          [(CarSessionController *)self _routeGeniusSessionDidChangeState:a4];
        }
      }
    }
  }
}

- (void)setRouteGeniusSession:(id)a3
{
  v5 = a3;
  routeGeniusSession = self->_routeGeniusSession;
  if (routeGeniusSession != v5)
  {
    v7 = v5;
    [(RouteGeniusSession *)routeGeniusSession unregisterObserver:self];
    objc_storeStrong(&self->_routeGeniusSession, a3);
    [(RouteGeniusSession *)self->_routeGeniusSession registerObserver:self];
    v5 = v7;
  }
}

- (void)setNavigationSession:(id)a3
{
  v5 = a3;
  navigationSession = self->_navigationSession;
  if (navigationSession != v5)
  {
    v7 = v5;
    [(NavigationSession *)navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, a3);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    v5 = v7;
  }
}

- (void)setRoutePlanningSession:(id)a3
{
  v5 = a3;
  routePlanningSession = self->_routePlanningSession;
  if (routePlanningSession != v5)
  {
    v7 = v5;
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, a3);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
    v5 = v7;
  }
}

- (void)_handleTransportType:(int64_t)a3
{
  v4 = sub_100799CA8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if ((a3 - 1) > 4)
    {
      v5 = @"Undefined";
    }

    else
    {
      v5 = *(&off_101631F58 + a3 - 1);
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_handleTransportType: %@", &v8, 0xCu);
  }

  if (a3)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    if (a3 == 1)
    {
      [v6 dismissCurrentInterruptionOfKind:8];
    }

    else
    {
      v7 = sub_100FB1B44(a3);
      [v6 interruptApplicationWithKind:8 userInfo:v7 completionHandler:0];
    }
  }
}

- (void)_handleIncomingSession:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(CarSessionController *)self setRoutePlanningSession:v6];

  v7 = v4;
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

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v7 = a4;
  v8 = a5;
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

  v14 = v8;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (!v14 || (isKindOfClass & 1) == 0)
  {
    v16 = +[CarDisplayController sharedInstance];
    v17 = [v16 routeGeniusManager];
    [v17 deactivateForAllChromes];
  }

  [(CarSessionController *)self _handleIncomingSession:v14];
  v18 = v7;
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
    v32 = [v31 routeGeniusManager];
    [v32 deactivateForAllChromes];

LABEL_25:
  }
}

- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a4;
  v7 = a5;
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

  v13 = v6;
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

  v16 = v7;
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
      v19 = [v15 configuration];
      v20 = [v19 automaticSharingContacts];
      v21 = [v20 count];

      if (v21)
      {
        v22 = sub_100799CA8();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Adding automatic sharing contacts from planning session to navigation session", &v27, 2u);
        }

        v23 = [v15 configuration];
        v24 = [v23 automaticSharingContacts];
        v25 = [v18 configuration];
        v26 = [v25 sharedTripPrefetchContext];
        [v26 setAutomaticSharingContacts:v24];
      }
    }
  }
}

- (PlatformController)platformController
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 platformController];

  return v3;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      v4 = [(CarSessionController *)self platformController];
      [v4 registerObserver:self];

      v5 = +[MNNavigationService sharedService];
      [v5 registerObserver:self];

      v6 = +[CarRouteGeniusService sharedService];
      [v6 registerObserver:self];

      v7 = [(CarSessionController *)self platformController];
      v8 = [v7 currentSession];
      [(CarSessionController *)self _handleIncomingSession:v8];
    }

    else
    {
      [(CarSessionController *)self _handleIncomingSession:0];
      v9 = [(CarSessionController *)self platformController];
      [v9 unregisterObserver:self];

      v10 = +[MNNavigationService sharedService];
      [v10 unregisterObserver:self];

      v7 = +[CarRouteGeniusService sharedService];
      [v7 unregisterObserver:self];
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

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CarSessionController *)v5 observers];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = [(CarSessionController *)v5 observers];
    [v8 removeObject:v4];

    v9 = [(CarSessionController *)v5 observers];
    v10 = [v9 count];

    if (!v10)
    {
      [(CarSessionController *)v5 setActive:0];
    }

    v11 = sub_100799CA8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [(CarSessionController *)v5 observers];
      v15 = [v14 count];
      v16 = [(CarSessionController *)v5 isActive];
      v17 = @"NO";
      if (v16)
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

    objc_sync_exit(v5);
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 postNotificationName:@"CarSessionControllerObserversDidChangeNotification" object:v5];
  }

  else
  {
    objc_sync_exit(v5);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CarSessionController *)v5 observers];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    objc_sync_exit(v5);
  }

  else
  {
    v8 = [(CarSessionController *)v5 observers];
    [v8 addObject:v4];

    v9 = [(CarSessionController *)v5 observers];
    v10 = [v9 count];

    if (v10)
    {
      [(CarSessionController *)v5 setActive:1];
    }

    v11 = sub_100799CA8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [(CarSessionController *)v5 observers];
      v15 = [v14 count];
      v16 = [(CarSessionController *)v5 isActive];
      v17 = @"NO";
      if (v16)
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

    objc_sync_exit(v5);
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 postNotificationName:@"CarSessionControllerObserversDidChangeNotification" object:v5];
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