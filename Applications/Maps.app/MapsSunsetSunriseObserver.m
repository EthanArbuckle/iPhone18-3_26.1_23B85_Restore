@interface MapsSunsetSunriseObserver
- (BOOL)_shouldCalculateState;
- (MapsSunsetSunriseObserver)initWithLocationManager:(id)a3 sunsetSunriseCalculator:(id)a4 platformController:(id)a5 transportTypeSupportProvider:(Class)a6;
- (PlatformController)platformController;
- (id)_sunrise;
- (id)_sunset;
- (int64_t)_currentTransportType;
- (void)_calculateState;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)registerObserver:(id)a3;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)setCurrentState:(int64_t)a3;
- (void)setNavigationSession:(id)a3;
- (void)setRoutePlanningSession:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation MapsSunsetSunriseObserver

- (int64_t)_currentTransportType
{
  v3 = [(MapsSunsetSunriseObserver *)self routePlanningSession];

  if (v3)
  {
    v4 = [(MapsSunsetSunriseObserver *)self routePlanningSession];
LABEL_5:
    v6 = v4;
    v7 = [v4 currentTransportType];

    return v7;
  }

  v5 = [(MapsSunsetSunriseObserver *)self navigationSession];

  if (v5)
  {
    v4 = [(MapsSunsetSunriseObserver *)self navigationSession];
    goto LABEL_5;
  }

  return 0;
}

- (BOOL)_shouldCalculateState
{
  v3 = [(MapsSunsetSunriseObserver *)self lastCheckLocation];
  if (v3 && (v4 = v3, [(MapsSunsetSunriseObserver *)self lastCheckTime], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    if (![(MapsSunsetSunriseObserver *)self transportTypeSupportProvider])
    {
LABEL_18:
      v12 = [(MapsSunsetSunriseObserver *)self lastCheckTime];
      [v12 timeIntervalSinceNow];
      v14 = v13;
      v15 = [(MapsSunsetSunriseObserver *)self lastCheckTime];
      [v15 timeIntervalSinceNow];
      v17 = v16;

      v18 = [(MapsSunsetSunriseObserver *)self locationManager];
      v9 = [v18 lastLocation];

      [v9 coordinate];
      [v9 coordinate];
      v19 = [(MapsSunsetSunriseObserver *)self lastCheckLocation];
      [v19 coordinate];
      v20 = [(MapsSunsetSunriseObserver *)self lastCheckLocation];
      [v20 coordinate];
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
        v31 = self;
        v32 = 2112;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[%{public}p] shouldCalculateState %@", &v30, 0x16u);
      }

      goto LABEL_29;
    }

    v6 = [(MapsSunsetSunriseObserver *)self _currentTransportType];
    if (!v6 || ([(objc_class *)[(MapsSunsetSunriseObserver *)self transportTypeSupportProvider] isSupportedForTransportType:v6]& 1) != 0)
    {
      v7 = sub_10007178C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        if ((v6 - 1) > 4)
        {
          v8 = @"Undefined";
        }

        else
        {
          v8 = off_10165F970[v6 - 1];
        }

        v30 = 134349314;
        v31 = self;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Current transport type (%@) is supported", &v30, 0x16u);
      }

      goto LABEL_18;
    }

    v9 = sub_10007178C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if ((v6 - 2) > 3)
      {
        v11 = @"Drive";
      }

      else
      {
        v11 = off_10165F950[v6 - 2];
      }

      v30 = 134349314;
      v31 = self;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Current transport type (%@) is NOT supported", &v30, 0x16u);
    }

    LOBYTE(v10) = 0;
  }

  else
  {
    v9 = sub_10007178C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v30 = 134349056;
      v31 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Initial state check", &v30, 0xCu);
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

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  if ([(MapsSunsetSunriseObserver *)self _shouldCalculateState:a3])
  {

    [(MapsSunsetSunriseObserver *)self _calculateState];
  }
}

- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4
{
  if ([(MapsSunsetSunriseObserver *)self _shouldCalculateState:a3])
  {

    [(MapsSunsetSunriseObserver *)self _calculateState];
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(MapsSunsetSunriseObserver *)self setNavigationSession:v8];

  v11 = v6;
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

- (void)locationManagerUpdatedLocation:(id)a3
{
  if ([(MapsSunsetSunriseObserver *)self _shouldCalculateState])
  {

    [(MapsSunsetSunriseObserver *)self _calculateState];
  }
}

- (id)_sunrise
{
  v3 = [(MapsSunsetSunriseObserver *)self sunsetSunriseCalculator];
  v4 = [(MapsSunsetSunriseObserver *)self locationManager];
  v5 = [v4 lastLocation];
  v6 = [v3 _sunriseForLocation:v5];

  return v6;
}

- (id)_sunset
{
  v3 = [(MapsSunsetSunriseObserver *)self sunsetSunriseCalculator];
  v4 = [(MapsSunsetSunriseObserver *)self locationManager];
  v5 = [v4 lastLocation];
  v6 = [v3 _sunsetForLocation:v5];

  return v6;
}

- (void)_calculateState
{
  v3 = [(MapsSunsetSunriseObserver *)self locationManager];
  v4 = [v3 hasLocation];

  v5 = sub_10007178C();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(MapsSunsetSunriseObserver *)self offsetThreshold];
      v17 = 134349312;
      v18 = self;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Calculating sunset/sunrise state with offset threshold: %f", &v17, 0x16u);
    }

    v8 = [(MapsSunsetSunriseObserver *)self sunsetSunriseCalculator];
    v9 = [(MapsSunsetSunriseObserver *)self locationManager];
    v10 = [v9 lastLocation];
    [(MapsSunsetSunriseObserver *)self offsetThreshold];
    v11 = [v8 currentStateForLocation:v10 offsetThreshold:?];

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
      v18 = self;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}p] Calculated sunset/sunrise state: %@", &v17, 0x16u);
    }

    [(MapsSunsetSunriseObserver *)self setCurrentState:v11];
    v14 = +[NSDate date];
    [(MapsSunsetSunriseObserver *)self setLastCheckTime:v14];

    v15 = [(MapsSunsetSunriseObserver *)self locationManager];
    v16 = [v15 lastLocation];
    [(MapsSunsetSunriseObserver *)self setLastCheckLocation:v16];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v17 = 134349056;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] No location estimate available; cannot calculate sunset/sunrise state", &v17, 0xCu);
    }

    [(MapsSunsetSunriseObserver *)self setCurrentState:0];
    [(MapsSunsetSunriseObserver *)self setLastCheckLocation:0];
  }
}

- (void)setCurrentState:(int64_t)a3
{
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    v5 = [(MapsSunsetSunriseObserver *)self observers];
    [v5 sunsetSunriseObserver:self didUpdateState:self->_currentState];
  }
}

- (void)setRoutePlanningSession:(id)a3
{
  v5 = a3;
  if (self->_routePlanningSession != v5)
  {
    v6 = sub_10007178C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      v8 = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Got new RoutePlanningSession: %@", &v7, 0x16u);
    }

    [(RoutePlanningSession *)self->_routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, a3);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
  }
}

- (void)setNavigationSession:(id)a3
{
  v5 = a3;
  if (self->_navigationSession != v5)
  {
    v6 = sub_10007178C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      v8 = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Got new NavigationSession: %@", &v7, 0x16u);
    }

    [(NavigationSession *)self->_navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, a3);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = sub_10007178C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Unregistering observer: %@", &v7, 0x16u);
  }

  v6 = [(MapsSunsetSunriseObserver *)self observers];
  [v6 unregisterObserver:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = sub_10007178C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Registering observer: %@", &v7, 0x16u);
  }

  v6 = [(MapsSunsetSunriseObserver *)self observers];
  [v6 registerObserver:v4];
}

- (void)dealloc
{
  v3 = sub_10007178C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v7 = self;
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

- (MapsSunsetSunriseObserver)initWithLocationManager:(id)a3 sunsetSunriseCalculator:(id)a4 platformController:(id)a5 transportTypeSupportProvider:(Class)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
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

    objc_storeStrong(&v14->_locationManager, a3);
    [(MKLocationManager *)v14->_locationManager listenForLocationUpdates:v14];
    objc_storeStrong(&v14->_sunsetSunriseCalculator, a4);
    v16 = objc_storeWeak(&v14->_platformController, v13);
    [v13 registerObserver:v14];

    WeakRetained = objc_loadWeakRetained(&v14->_platformController);
    v18 = [WeakRetained currentSession];

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

    [(MapsSunsetSunriseObserver *)v14 setNavigationSession:v20];
    v21 = objc_loadWeakRetained(&v14->_platformController);
    v22 = [v21 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    [(MapsSunsetSunriseObserver *)v14 setRoutePlanningSession:v24];
    objc_storeStrong(&v14->_transportTypeSupportProvider, a6);
    v25 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MapsSunsetSunriseObservation queue:&_dispatch_main_q];
    observers = v14->_observers;
    v14->_observers = v25;

    [(MapsSunsetSunriseObserver *)v14 _calculateState];
  }

  return v14;
}

@end