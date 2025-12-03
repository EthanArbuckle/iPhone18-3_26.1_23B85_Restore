@interface MapsLocationProviderUpdater
- (MapsLocationProviderUpdater)initWithLocationManager:(id)manager;
- (void)_updateLocationProviderType;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)setLocationProviderType:(unint64_t)type;
- (void)setObservedNavigationSession:(id)session;
- (void)setObservedRoutePlanningSession:(id)session;
@end

@implementation MapsLocationProviderUpdater

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
  [(MapsLocationProviderUpdater *)self setObservedNavigationSession:v8];

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

  [(MapsLocationProviderUpdater *)self setObservedRoutePlanningSession:v10];
  [(MapsLocationProviderUpdater *)self _updateLocationProviderType];
}

- (void)setLocationProviderType:(unint64_t)type
{
  if (self->_locationProviderType != type)
  {
    self->_locationProviderType = type;
    v5 = sub_1005D031C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (type > 2)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1016230A0[type];
      }

      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating location provider type: %{public}@", &v15, 0xCu);
    }

    if (type - 1 >= 2)
    {
      if (type)
      {
        return;
      }

      v12 = sub_1005D031C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "provider:nil, corrector:nil, continuesWhileInactive:0", &v15, 2u);
      }

      locationManager = [(MapsLocationProviderUpdater *)self locationManager];
      [locationManager setLocationCorrector:0];

      locationManager2 = [(MapsLocationProviderUpdater *)self locationManager];
      [locationManager2 setLocationProvider:0];
      v11 = 0;
    }

    else
    {
      v7 = sub_1005D031C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "provider:NavigationLocationProvider, corrector: return location unchanged, continuesWhileInactive:1", &v15, 2u);
      }

      v8 = objc_alloc_init(NavigationLocationProvider);
      locationManager3 = [(MapsLocationProviderUpdater *)self locationManager];
      [locationManager3 setLocationProvider:v8];

      locationManager2 = [(MapsLocationProviderUpdater *)self locationManager];
      [locationManager2 setLocationCorrector:&stru_101623060];
      v11 = 1;
    }

    locationManager4 = [(MapsLocationProviderUpdater *)self locationManager];
    [locationManager4 setContinuesWhileInactive:v11];
  }
}

- (void)_updateLocationProviderType
{
  observedNavigationSession = [(MapsLocationProviderUpdater *)self observedNavigationSession];

  if (!observedNavigationSession)
  {
    observedRoutePlanningSession = [(MapsLocationProviderUpdater *)self observedRoutePlanningSession];

    if (!observedRoutePlanningSession)
    {
      goto LABEL_12;
    }

    observedRoutePlanningSession2 = [(MapsLocationProviderUpdater *)self observedRoutePlanningSession];
    configuration = [observedRoutePlanningSession2 configuration];
    isNavigationTracePlayback = [configuration isNavigationTracePlayback];

    if (!isNavigationTracePlayback)
    {
      goto LABEL_12;
    }

    v6 = sub_1005D031C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 2;
      goto LABEL_17;
    }

    LOWORD(v14) = 0;
    v12 = "Observed route planning session is for trace playback, setting .Trace";
    v7 = 2;
    v13 = &v14;
    goto LABEL_15;
  }

  observedNavigationSession2 = [(MapsLocationProviderUpdater *)self observedNavigationSession];
  sessionState = [observedNavigationSession2 sessionState];

  if (sessionState == 2)
  {
LABEL_5:
    v6 = sub_1005D031C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Observed navigation session is suspended or not started, setting .None", buf, 2u);
    }

    v7 = 0;
    goto LABEL_17;
  }

  if (sessionState == 1)
  {
    v6 = sub_1005D031C();
    v7 = 1;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      goto LABEL_18;
    }

    *v15 = 0;
    v12 = "Observed navigation session is running, setting .Navigation";
    v7 = 1;
    v13 = v15;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v12, v13, 2u);
    goto LABEL_17;
  }

  if (!sessionState)
  {
    goto LABEL_5;
  }

LABEL_12:
  v7 = 0;
LABEL_18:
  [(MapsLocationProviderUpdater *)self setLocationProviderType:v7, v14];
}

- (void)setObservedRoutePlanningSession:(id)session
{
  sessionCopy = session;
  observedRoutePlanningSession = self->_observedRoutePlanningSession;
  if (observedRoutePlanningSession != sessionCopy)
  {
    [observedRoutePlanningSession unregisterObserver:self];
    v7 = self->_observedRoutePlanningSession;
    v8 = sessionCopy;
    if (!(v8 | v7))
    {
      goto LABEL_23;
    }

    v9 = v8;
    v10 = [v7 isEqual:v8];

    if (v10)
    {
      goto LABEL_23;
    }

    v11 = sub_1005D031C();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_22:

LABEL_23:
      objc_storeStrong(&self->_observedRoutePlanningSession, session);
      [self->_observedRoutePlanningSession registerObserver:self];
      goto LABEL_24;
    }

    v12 = self->_observedRoutePlanningSession;
    v13 = &selRef__updatePIPLayout;
    if (!v12)
    {
      v18 = @"<nil>";
LABEL_13:

      v19 = v18;
      v20 = v9;
      if (!v9)
      {
        v26 = @"<nil>";
        goto LABEL_21;
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = v13[456];
      if (objc_opt_respondsToSelector())
      {
        v24 = [v20 performSelector:v23];
        v25 = v24;
        if (v24 && ![v24 isEqualToString:v22])
        {
          v26 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v25];

          goto LABEL_19;
        }
      }

      v26 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_19:

LABEL_21:
      *buf = 138543618;
      v28 = v19;
      v29 = 2114;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Will update observed route planning session from %{public}@ to %{public}@", buf, 0x16u);

      goto LABEL_22;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(RoutePlanningSession *)v12 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v12, v17];

        goto LABEL_11;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v12];
LABEL_11:

    v13 = &selRef__updatePIPLayout;
    goto LABEL_13;
  }

LABEL_24:
}

- (void)setObservedNavigationSession:(id)session
{
  sessionCopy = session;
  observedNavigationSession = self->_observedNavigationSession;
  if (observedNavigationSession != sessionCopy)
  {
    [observedNavigationSession unregisterObserver:self];
    v7 = self->_observedNavigationSession;
    v8 = sessionCopy;
    if (!(v8 | v7))
    {
      goto LABEL_23;
    }

    v9 = v8;
    v10 = [v7 isEqual:v8];

    if (v10)
    {
      goto LABEL_23;
    }

    v11 = sub_1005D031C();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_22:

LABEL_23:
      objc_storeStrong(&self->_observedNavigationSession, session);
      [self->_observedNavigationSession registerObserver:self];
      goto LABEL_24;
    }

    v12 = self->_observedNavigationSession;
    v13 = &selRef__updatePIPLayout;
    if (!v12)
    {
      v18 = @"<nil>";
LABEL_13:

      v19 = v18;
      v20 = v9;
      if (!v9)
      {
        v26 = @"<nil>";
        goto LABEL_21;
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = v13[456];
      if (objc_opt_respondsToSelector())
      {
        v24 = [v20 performSelector:v23];
        v25 = v24;
        if (v24 && ![v24 isEqualToString:v22])
        {
          v26 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v25];

          goto LABEL_19;
        }
      }

      v26 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_19:

LABEL_21:
      *buf = 138543618;
      v28 = v19;
      v29 = 2114;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Will update observed navigation session from %{public}@ to %{public}@", buf, 0x16u);

      goto LABEL_22;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(NavigationSession *)v12 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v12, v17];

        goto LABEL_11;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v12];
LABEL_11:

    v13 = &selRef__updatePIPLayout;
    goto LABEL_13;
  }

LABEL_24:
}

- (MapsLocationProviderUpdater)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = MapsLocationProviderUpdater;
  v6 = [(MapsLocationProviderUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationManager, manager);
  }

  return v7;
}

@end