@interface MapsSunsetSunriseObserver
- (BOOL)_shouldCalculateState;
- (MapsSunsetSunriseObserver)initWithLocationManager:(id)manager sunsetSunriseCalculator:(id)calculator platformController:(id)controller transportTypeSupportProvider:(Class)provider;
- (PlatformController)platformController;
- (id)_sunrise;
- (id)_sunset;
- (int64_t)_currentTransportType;
- (void)_calculateState;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)registerObserver:(id)observer;
- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)setCurrentState:(int64_t)state;
- (void)setNavigationSession:(id)session;
- (void)setRoutePlanningSession:(id)session;
- (void)unregisterObserver:(id)observer;
@end

@implementation MapsSunsetSunriseObserver

- (int64_t)_currentTransportType
{
  routePlanningSession = [(MapsSunsetSunriseObserver *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(MapsSunsetSunriseObserver *)self routePlanningSession];
LABEL_5:
    v6 = routePlanningSession2;
    currentTransportType = [routePlanningSession2 currentTransportType];

    return currentTransportType;
  }

  navigationSession = [(MapsSunsetSunriseObserver *)self navigationSession];

  if (navigationSession)
  {
    routePlanningSession2 = [(MapsSunsetSunriseObserver *)self navigationSession];
    goto LABEL_5;
  }

  return 0;
}

- (BOOL)_shouldCalculateState
{
  lastCheckLocation = [(MapsSunsetSunriseObserver *)self lastCheckLocation];
  if (lastCheckLocation && (v4 = lastCheckLocation, [(MapsSunsetSunriseObserver *)self lastCheckTime], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    if (![(MapsSunsetSunriseObserver *)self transportTypeSupportProvider])
    {
LABEL_18:
      lastCheckTime = [(MapsSunsetSunriseObserver *)self lastCheckTime];
      [lastCheckTime timeIntervalSinceNow];
      v14 = v13;
      lastCheckTime2 = [(MapsSunsetSunriseObserver *)self lastCheckTime];
      [lastCheckTime2 timeIntervalSinceNow];
      v17 = v16;

      locationManager = [(MapsSunsetSunriseObserver *)self locationManager];
      lastLocation = [locationManager lastLocation];

      [lastLocation coordinate];
      [lastLocation coordinate];
      lastCheckLocation2 = [(MapsSunsetSunriseObserver *)self lastCheckLocation];
      [lastCheckLocation2 coordinate];
      lastCheckLocation3 = [(MapsSunsetSunriseObserver *)self lastCheckLocation];
      [lastCheckLocation3 coordinate];
      CLClientGetDistanceCoordinates();
      v22 = v21;

      [(MapsSunsetSunriseObserver *)self minimumDistanceThreshold];
      if (v22 >= v23)
      {
        v10 = 1;
      }

      else
      {
        if (v14 >= 0.0)
        {
          v24 = v17;
        }

        else
        {
          v24 = -v17;
        }

        [(MapsSunsetSunriseObserver *)self minimumTimeThreshold];
        v10 = v24 >= v25;
      }

      v26 = sub_10007178C();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = @"NO";
        if (v10)
        {
          v27 = @"YES";
        }

        v28 = v27;
        v30 = 134349314;
        selfCopy4 = self;
        v32 = 2112;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[%{public}p] shouldCalculateState %@", &v30, 0x16u);
      }

      goto LABEL_29;
    }

    _currentTransportType = [(MapsSunsetSunriseObserver *)self _currentTransportType];
    if (!_currentTransportType || ([(objc_class *)[(MapsSunsetSunriseObserver *)self transportTypeSupportProvider] isSupportedForTransportType:_currentTransportType]& 1) != 0)
    {
      v7 = sub_10007178C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        if ((_currentTransportType - 1) > 4)
        {
          v8 = @"Undefined";
        }

        else
        {
          v8 = off_10165F970[_currentTransportType - 1];
        }

        v30 = 134349314;
        selfCopy4 = self;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Current transport type (%@) is supported", &v30, 0x16u);
      }

      goto LABEL_18;
    }

    lastLocation = sub_10007178C();
    if (os_log_type_enabled(lastLocation, OS_LOG_TYPE_DEBUG))
    {
      if ((_currentTransportType - 2) > 3)
      {
        v11 = @"Drive";
      }

      else
      {
        v11 = off_10165F950[_currentTransportType - 2];
      }

      v30 = 134349314;
      selfCopy4 = self;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, lastLocation, OS_LOG_TYPE_DEBUG, "[%{public}p] Current transport type (%@) is NOT supported", &v30, 0x16u);
    }

    LOBYTE(v10) = 0;
  }

  else
  {
    lastLocation = sub_10007178C();
    if (os_log_type_enabled(lastLocation, OS_LOG_TYPE_DEBUG))
    {
      v30 = 134349056;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, lastLocation, OS_LOG_TYPE_DEBUG, "[%{public}p] Initial state check", &v30, 0xCu);
    }

    LOBYTE(v10) = 1;
  }

LABEL_29:

  return v10;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  if ([(MapsSunsetSunriseObserver *)self _shouldCalculateState:session])
  {

    [(MapsSunsetSunriseObserver *)self _calculateState];
  }
}

- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type
{
  if ([(MapsSunsetSunriseObserver *)self _shouldCalculateState:session])
  {

    [(MapsSunsetSunriseObserver *)self _calculateState];
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = toSessionCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(MapsSunsetSunriseObserver *)self setNavigationSession:v8];

  v11 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(MapsSunsetSunriseObserver *)self setRoutePlanningSession:v10];
  if ([(MapsSunsetSunriseObserver *)self _shouldCalculateState])
  {
    [(MapsSunsetSunriseObserver *)self _calculateState];
  }
}

- (void)locationManagerUpdatedLocation:(id)location
{
  if ([(MapsSunsetSunriseObserver *)self _shouldCalculateState])
  {

    [(MapsSunsetSunriseObserver *)self _calculateState];
  }
}

- (id)_sunrise
{
  sunsetSunriseCalculator = [(MapsSunsetSunriseObserver *)self sunsetSunriseCalculator];
  locationManager = [(MapsSunsetSunriseObserver *)self locationManager];
  lastLocation = [locationManager lastLocation];
  v6 = [sunsetSunriseCalculator _sunriseForLocation:lastLocation];

  return v6;
}

- (id)_sunset
{
  sunsetSunriseCalculator = [(MapsSunsetSunriseObserver *)self sunsetSunriseCalculator];
  locationManager = [(MapsSunsetSunriseObserver *)self locationManager];
  lastLocation = [locationManager lastLocation];
  v6 = [sunsetSunriseCalculator _sunsetForLocation:lastLocation];

  return v6;
}

- (void)_calculateState
{
  locationManager = [(MapsSunsetSunriseObserver *)self locationManager];
  hasLocation = [locationManager hasLocation];

  v5 = sub_10007178C();
  v6 = v5;
  if (hasLocation)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(MapsSunsetSunriseObserver *)self offsetThreshold];
      v17 = 134349312;
      selfCopy3 = self;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Calculating sunset/sunrise state with offset threshold: %f", &v17, 0x16u);
    }

    sunsetSunriseCalculator = [(MapsSunsetSunriseObserver *)self sunsetSunriseCalculator];
    locationManager2 = [(MapsSunsetSunriseObserver *)self locationManager];
    lastLocation = [locationManager2 lastLocation];
    [(MapsSunsetSunriseObserver *)self offsetThreshold];
    v11 = [sunsetSunriseCalculator currentStateForLocation:lastLocation offsetThreshold:?];

    v12 = sub_10007178C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if ((v11 - 1) > 3)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_10165F930[(v11 - 1)];
      }

      v17 = 134349314;
      selfCopy3 = self;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}p] Calculated sunset/sunrise state: %@", &v17, 0x16u);
    }

    [(MapsSunsetSunriseObserver *)self setCurrentState:v11];
    v14 = +[NSDate date];
    [(MapsSunsetSunriseObserver *)self setLastCheckTime:v14];

    locationManager3 = [(MapsSunsetSunriseObserver *)self locationManager];
    lastLocation2 = [locationManager3 lastLocation];
    [(MapsSunsetSunriseObserver *)self setLastCheckLocation:lastLocation2];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v17 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] No location estimate available; cannot calculate sunset/sunrise state", &v17, 0xCu);
    }

    [(MapsSunsetSunriseObserver *)self setCurrentState:0];
    [(MapsSunsetSunriseObserver *)self setLastCheckLocation:0];
  }
}

- (void)setCurrentState:(int64_t)state
{
  if (self->_currentState != state)
  {
    self->_currentState = state;
    observers = [(MapsSunsetSunriseObserver *)self observers];
    [observers sunsetSunriseObserver:self didUpdateState:self->_currentState];
  }
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  if (self->_routePlanningSession != sessionCopy)
  {
    v6 = sub_10007178C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Got new RoutePlanningSession: %@", &v7, 0x16u);
    }

    [(RoutePlanningSession *)self->_routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, session);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
  }
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  if (self->_navigationSession != sessionCopy)
  {
    v6 = sub_10007178C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Got new NavigationSession: %@", &v7, 0x16u);
    }

    [(NavigationSession *)self->_navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, session);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_10007178C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Unregistering observer: %@", &v7, 0x16u);
  }

  observers = [(MapsSunsetSunriseObserver *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_10007178C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Registering observer: %@", &v7, 0x16u);
  }

  observers = [(MapsSunsetSunriseObserver *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)dealloc
{
  v3 = sub_10007178C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(MKLocationManager *)self->_locationManager stopListeningForLocationUpdates:self];
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  [WeakRetained unregisterObserver:self];

  [(NavigationSession *)self->_navigationSession unregisterObserver:self];
  [(RoutePlanningSession *)self->_routePlanningSession unregisterObserver:self];
  v5.receiver = self;
  v5.super_class = MapsSunsetSunriseObserver;
  [(MapsSunsetSunriseObserver *)&v5 dealloc];
}

- (MapsSunsetSunriseObserver)initWithLocationManager:(id)manager sunsetSunriseCalculator:(id)calculator platformController:(id)controller transportTypeSupportProvider:(Class)provider
{
  managerCopy = manager;
  calculatorCopy = calculator;
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = MapsSunsetSunriseObserver;
  v14 = [(MapsSunsetSunriseObserver *)&v28 init];
  if (v14)
  {
    v15 = sub_10007178C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v14->_locationManager, manager);
    [(MKLocationManager *)v14->_locationManager listenForLocationUpdates:v14];
    objc_storeStrong(&v14->_sunsetSunriseCalculator, calculator);
    v16 = objc_storeWeak(&v14->_platformController, controllerCopy);
    [controllerCopy registerObserver:v14];

    WeakRetained = objc_loadWeakRetained(&v14->_platformController);
    currentSession = [WeakRetained currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = currentSession;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    [(MapsSunsetSunriseObserver *)v14 setNavigationSession:v20];
    v21 = objc_loadWeakRetained(&v14->_platformController);
    currentSession2 = [v21 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = currentSession2;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    [(MapsSunsetSunriseObserver *)v14 setRoutePlanningSession:v24];
    objc_storeStrong(&v14->_transportTypeSupportProvider, provider);
    v25 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MapsSunsetSunriseObservation queue:&_dispatch_main_q];
    observers = v14->_observers;
    v14->_observers = v25;

    [(MapsSunsetSunriseObserver *)v14 _calculateState];
  }

  return v14;
}

@end