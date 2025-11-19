@interface MapsLocationProviderUpdater
- (MapsLocationProviderUpdater)initWithLocationManager:(id)a3;
- (void)_updateLocationProviderType;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)setLocationProviderType:(unint64_t)a3;
- (void)setObservedNavigationSession:(id)a3;
- (void)setObservedRoutePlanningSession:(id)a3;
@end

@implementation MapsLocationProviderUpdater

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
  [(MapsLocationProviderUpdater *)self setObservedNavigationSession:v8];

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

  [(MapsLocationProviderUpdater *)self setObservedRoutePlanningSession:v10];
  [(MapsLocationProviderUpdater *)self _updateLocationProviderType];
}

- (void)setLocationProviderType:(unint64_t)a3
{
  if (self->_locationProviderType != a3)
  {
    self->_locationProviderType = a3;
    v5 = sub_1005D031C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (a3 > 2)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1016230A0[a3];
      }

      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating location provider type: %{public}@", &v15, 0xCu);
    }

    if (a3 - 1 >= 2)
    {
      if (a3)
      {
        return;
      }

      v12 = sub_1005D031C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "provider:nil, corrector:nil, continuesWhileInactive:0", &v15, 2u);
      }

      v13 = [(MapsLocationProviderUpdater *)self locationManager];
      [v13 setLocationCorrector:0];

      v10 = [(MapsLocationProviderUpdater *)self locationManager];
      [v10 setLocationProvider:0];
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
      v9 = [(MapsLocationProviderUpdater *)self locationManager];
      [v9 setLocationProvider:v8];

      v10 = [(MapsLocationProviderUpdater *)self locationManager];
      [v10 setLocationCorrector:&stru_101623060];
      v11 = 1;
    }

    v14 = [(MapsLocationProviderUpdater *)self locationManager];
    [v14 setContinuesWhileInactive:v11];
  }
}

- (void)_updateLocationProviderType
{
  v3 = [(MapsLocationProviderUpdater *)self observedNavigationSession];

  if (!v3)
  {
    v8 = [(MapsLocationProviderUpdater *)self observedRoutePlanningSession];

    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = [(MapsLocationProviderUpdater *)self observedRoutePlanningSession];
    v10 = [v9 configuration];
    v11 = [v10 isNavigationTracePlayback];

    if (!v11)
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

  v4 = [(MapsLocationProviderUpdater *)self observedNavigationSession];
  v5 = [v4 sessionState];

  if (v5 == 2)
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

  if (v5 == 1)
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

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_12:
  v7 = 0;
LABEL_18:
  [(MapsLocationProviderUpdater *)self setLocationProviderType:v7, v14];
}

- (void)setObservedRoutePlanningSession:(id)a3
{
  v5 = a3;
  observedRoutePlanningSession = self->_observedRoutePlanningSession;
  if (observedRoutePlanningSession != v5)
  {
    [observedRoutePlanningSession unregisterObserver:self];
    v7 = self->_observedRoutePlanningSession;
    v8 = v5;
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
      objc_storeStrong(&self->_observedRoutePlanningSession, a3);
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

- (void)setObservedNavigationSession:(id)a3
{
  v5 = a3;
  observedNavigationSession = self->_observedNavigationSession;
  if (observedNavigationSession != v5)
  {
    [observedNavigationSession unregisterObserver:self];
    v7 = self->_observedNavigationSession;
    v8 = v5;
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
      objc_storeStrong(&self->_observedNavigationSession, a3);
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

- (MapsLocationProviderUpdater)initWithLocationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsLocationProviderUpdater;
  v6 = [(MapsLocationProviderUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationManager, a3);
  }

  return v7;
}

@end