@interface PedestrianARSessionArrivalStepAvailabilityMonitor
- (MKLocationManager)locationManager;
- (MNNavigationService)navigationService;
- (NSString)debugDescription;
- (PedestrianARSessionArrivalStepAvailabilityMonitor)initWithObserver:(id)a3 platformController:(id)a4 navigationService:(id)a5 locationManager:(id)a6;
- (PlatformController)platformController;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setRoutePlanningSession:(id)a3;
- (void)updateState;
@end

@implementation PedestrianARSessionArrivalStepAvailabilityMonitor

- (void)updateState
{
  v3 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self routePlanningSession];

  if (v3)
  {
    v4 = sub_100073758();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v91 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Checking whether to allow feature during route planning", buf, 0xCu);
    }

    v5 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self routePlanningSession];
    v6 = [v5 currentTransportType];

    if (v6 == 2)
    {
      v7 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self locationManager];
      v8 = [v7 lastLocation];

      if (v8)
      {
        v9 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self routePlanningSession];
        v10 = [v9 currentRouteCollection];
        v11 = [v10 currentRoute];

        if (v11)
        {
          v12 = [[GEOLocation alloc] initWithCLLocation:v8];
          v13 = [[GEORouteMatcher alloc] initWithRoute:v11 auditToken:0];
          v14 = [v13 matchToRouteWithLocation:v12];
          v15 = [v14 stepIndex];
          v16 = [v11 stepsCount] - 1;
          if (v15 == v16)
          {
            v17 = v11;
            v18 = v8;
          }

          else
          {
            v39 = sub_100073758();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v89 = [v14 stepIndex];
              [v11 steps];
              v40 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 134349568;
              v91 = self;
              v92 = 2048;
              v93 = v89;
              v94 = 2048;
              v95 = v40;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[%{public}p] We are in route planning but user is not on the final step yet (current step index: %lu, total steps: %lu); will not interfere with feature availability", buf, 0x20u);
            }

            [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:1];
            v18 = 0;
            v17 = 0;
          }

          if (v15 != v16)
          {
            goto LABEL_24;
          }

          goto LABEL_37;
        }

        v38 = sub_100073758();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          v91 = self;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[%{public}p] We are in route planning but do not have a route; will not interfere with feature availability", buf, 0xCu);
        }

        [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:1];
LABEL_23:
        v18 = 0;
        v17 = 0;
        goto LABEL_24;
      }

      v21 = sub_100073758();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v91 = self;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] We are in route planning but do not have a last location estimate; will not interfere with feature availability", buf, 0xCu);
      }

LABEL_22:

      [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:1];
      goto LABEL_23;
    }

    v21 = sub_100073758();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v25 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self routePlanningSession];
    v26 = [v25 currentTransportType];
    if ((v26 - 1) > 4)
    {
      v27 = @"Undefined";
    }

    else
    {
      v27 = *(&off_101632878 + (v26 - 1));
    }

    *buf = 134349314;
    v91 = self;
    v92 = 2112;
    v93 = v27;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] We are route planning with a non-walking transport type (%@); will not interfere with feature availability", buf, 0x16u);
LABEL_21:

    goto LABEL_22;
  }

  v19 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v20 = [v19 state];
  if (v20 <= 6 && ((1 << v20) & 0x47) != 0)
  {

    v21 = sub_100073758();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v22 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
    [v22 state];
    v23 = MNNavigationServiceStateAsString();
    *buf = 134349314;
    v91 = self;
    v92 = 2112;
    v93 = v23;
    v24 = "[%{public}p] We are not in route planning nor in a pedestrian AR navigation state (%@); will not interfere with feature availability";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v24, buf, 0x16u);

    goto LABEL_22;
  }

  v28 = sub_100073758();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v91 = self;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Checking whether to allow feature during active guidance", buf, 0xCu);
  }

  v29 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v30 = [v29 navigationTransportType];

  if (v30 != 2)
  {
    v21 = sub_100073758();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v22 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
    v62 = [v22 navigationTransportType];
    if (v62 >= 7)
    {
      v23 = [NSString stringWithFormat:@"(unknown: %i)", v62];
    }

    else
    {
      v23 = *(&off_101632840 + v62);
    }

    *buf = 134349314;
    v91 = self;
    v92 = 2112;
    v93 = v23;
    v24 = "[%{public}p] We are navigating with a non-walking transport type (%@); will not interfere with feature availability";
    goto LABEL_13;
  }

  v31 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v32 = [v31 stepIndex];
  v33 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v34 = [v33 route];
  v35 = [v34 stepsCount] - 1;

  if (v32 != v35)
  {
    v21 = sub_100073758();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v25 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
    v73 = [v25 stepIndex];
    v74 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
    v75 = [v74 route];
    v76 = COERCE_DOUBLE([v75 stepsCount]);
    *buf = 134349568;
    v91 = self;
    v92 = 2048;
    v93 = v73;
    v94 = 2048;
    v95 = v76;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] User is not on the final step yet (current step index: %lu, total steps: %lu); will not interfere with feature availability", buf, 0x20u);

    goto LABEL_21;
  }

  v36 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v17 = [v36 route];

  v37 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v18 = [v37 lastLocation];

LABEL_37:
  v41 = [v17 steps];
  v42 = [v41 lastObject];
  v43 = [v42 endRouteCoordinate];

  [v17 pointAtRouteCoordinate:v43];
  v45 = v44;
  v47 = v46;
  [v18 coordinate];
  v49 = v48;
  [v18 coordinate];
  v51 = v50;
  if ([v17 hasArrivalStorefrontGeometry])
  {
    [v17 arrivalStorefrontLocation];
    GEOCalculateDistance();
    v53 = v52;
    GEOConfigGetDouble();
    v55 = v54;
    if (v53 < v54)
    {
      v56 = sub_100073758();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        v91 = self;
        v92 = 2048;
        v93 = *&v53;
        v94 = 2048;
        v95 = v55;
        v57 = "[%{public}p] The arrival POI has storefront geometry and is sufficiently close to the end of the route (%f < %f)";
LABEL_41:
        v58 = v56;
        v59 = 32;
LABEL_59:
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
      }

LABEL_60:

      v77 = self;
      v78 = 1;
LABEL_61:
      [(PedestrianARSessionMonitor *)v77 setShouldShowPedestrianAR:v78];
      goto LABEL_24;
    }

    GEOCalculateDistance();
    v64 = v63;
    GEOConfigGetDouble();
    v66 = v65;
    v56 = sub_100073758();
    v67 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
    if (v64 >= v66)
    {
      if (v67)
      {
        *buf = 134350080;
        v91 = self;
        v92 = 2048;
        v93 = *&v53;
        v94 = 2048;
        v95 = v55;
        v96 = 2048;
        v97 = v64;
        v98 = 2048;
        v99 = v66;
        v57 = "[%{public}p] The arrival POI has storefront geometry and is too far from the end of the route (%f >= %f), but the user is not close enough to the end of the route (%f >= %f)";
        v58 = v56;
        v59 = 52;
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (v67)
    {
      *buf = 134350080;
      v91 = self;
      v92 = 2048;
      v93 = *&v53;
      v94 = 2048;
      v95 = v55;
      v96 = 2048;
      v97 = v64;
      v98 = 2048;
      v99 = v66;
      v68 = "[%{public}p] The arrival POI has storefront geometry but is too far from the end of the route (%f >= %f), and the user is sufficiently close to the end of the route (%f < %f)";
      v69 = v56;
      v70 = 52;
LABEL_68:
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v68, buf, v70);
      goto LABEL_69;
    }

    goto LABEL_69;
  }

  v60 = +[NSUserDefaults standardUserDefaults];
  v61 = [v60 BOOLForKey:@"PedestrianARInjectFakeStorefrontArrivalDataKey"];

  if (v61)
  {
    v56 = sub_100073758();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    *buf = 134349056;
    v91 = self;
    v57 = "[%{public}p] The arrival POI does NOT have storefront geometry BUT the inject fake storefront arrival data debug flag is enabled; will allow the feature to be visible";
LABEL_54:
    v58 = v56;
    v59 = 12;
    goto LABEL_59;
  }

  v71 = +[NSUserDefaults standardUserDefaults];
  v72 = [v71 BOOLForKey:@"PedestrianARForceShowArrivalOnLastStepKey"];

  if (v72)
  {
    v56 = sub_100073758();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    *buf = 134349056;
    v91 = self;
    v57 = "[%{public}p] The arrival POI does NOT have storefront geometry BUT the force show arrival on last step debug flag is enabled; will allow the feature to be visible";
    goto LABEL_54;
  }

  if (v18)
  {
    v79 = sub_100073758();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134350080;
      v91 = self;
      v92 = 2048;
      v93 = v49;
      v94 = 2048;
      v95 = v51;
      v96 = 2048;
      v97 = v45;
      v98 = 2048;
      v99 = v47;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "[%{public}p] Will calculate distance between user (%f, %f) and destination (%f, %f)", buf, 0x34u);
    }

    GEOCalculateDistance();
    v81 = v80;
    GEOConfigGetDouble();
    v83 = v82;
    v56 = sub_100073758();
    v84 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
    if (v81 >= v83)
    {
      if (!v84)
      {
        goto LABEL_60;
      }

      *buf = 134349568;
      v91 = self;
      v92 = 2048;
      v93 = *&v81;
      v94 = 2048;
      v95 = v83;
      v57 = "[%{public}p] The arrival POI does NOT have storefront geometry but the user is sufficiently far from the destination (%f >= %f); will allow the feature to be visible";
      goto LABEL_41;
    }

    if (v84)
    {
      *buf = 134349568;
      v91 = self;
      v92 = 2048;
      v93 = *&v81;
      v94 = 2048;
      v95 = v83;
      v68 = "[%{public}p] The arrival POI does NOT have storefront geometry and the user is too close to the destination (%f < %f); will not allow the feature to be visible";
      v69 = v56;
      v70 = 32;
      goto LABEL_68;
    }

LABEL_69:

    v77 = self;
    v78 = 0;
    goto LABEL_61;
  }

  v85 = sub_10006D178();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v91 = "[PedestrianARSessionArrivalStepAvailabilityMonitor updateState]";
    v92 = 2080;
    v93 = "PedestrianARSessionArrivalStepAvailabilityMonitor.m";
    v94 = 1024;
    LODWORD(v95) = 191;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v86 = sub_10006D178();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v91 = v87;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v88 = sub_100073758();
  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v91 = self;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "[%{public}p] The arrival POI does NOT have storefront geometry and we don't know the user's current location; will not allow the feature to be visible", buf, 0xCu);
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:0];
  v18 = 0;
LABEL_24:
}

- (MNNavigationService)navigationService
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationService);

  return WeakRetained;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (MKLocationManager)locationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_locationManager);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSUserDefaults standardUserDefaults];

  if (v13 != v11)
  {
    [(PedestrianARSessionArrivalStepAvailabilityMonitor *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6, self, PedestrianARSessionArrivalStepAvailabilityMonitor, v21.receiver, v21.super_class];
    goto LABEL_16;
  }

  if ([v10 isEqualToString:@"PedestrianARInjectFakeStorefrontArrivalDataKey"])
  {
    v14 = sub_100073758();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v16 = @"YES";
      if (!v15)
      {
        v16 = @"NO";
      }

      v17 = v16;
      *buf = 134349314;
      v23 = self;
      v24 = 2112;
      v25 = v17;
      v18 = "[%{public}p] Debug inject fake storefront arrival data key was toggled: %@; updating state";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, v18, buf, 0x16u);
    }
  }

  else
  {
    if (![v10 isEqualToString:@"PedestrianARForceShowArrivalOnLastStepKey"])
    {
      [(PedestrianARSessionArrivalStepAvailabilityMonitor *)&v21 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6, v20.receiver, v20.super_class, self, PedestrianARSessionArrivalStepAvailabilityMonitor];
      goto LABEL_16;
    }

    v14 = sub_100073758();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v19 = @"YES";
      if (!v15)
      {
        v19 = @"NO";
      }

      v17 = v19;
      *buf = 134349314;
      v23 = self;
      v24 = 2112;
      v25 = v17;
      v18 = "[%{public}p] Debug force show arrival on last step key was toggled: %@; updating state";
      goto LABEL_14;
    }
  }

  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
LABEL_16:
}

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  v7 = sub_100073758();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if ((a4 - 1) > 4)
    {
      v8 = @"Undefined";
    }

    else
    {
      v8 = *(&off_101632878 + a4 - 1);
    }

    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning updated the current transport type: %@", &v9, 0x16u);
  }

  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v7 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self routePlanningSession:a3];
  v8 = [v7 currentTransportType];

  if (v8 == a5)
  {
    v9 = sub_100073758();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134349056;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning updated the route collection for the current transport type", &v10, 0xCu);
    }

    [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  v7 = sub_100073758();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134349314;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Got a new session: %@", &v11, 0x16u);
  }

  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self setRoutePlanningSession:v10];
  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v5 = a4;
  v6 = sub_100073758();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] nav service updated matched location: %@", &v7, 0x16u);
  }

  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v6 = *&a4;
  v8 = sub_100073758();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v6 >= 7)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v9 = *(&off_101632840 + v6);
    }

    *buf = 134349314;
    v11 = self;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] nav service switched to new transport type: %@", buf, 0x16u);
  }

  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
}

- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v8 = sub_100073758();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134349568;
    v10 = self;
    v11 = 2048;
    v12 = a4;
    v13 = 2048;
    v14 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] nav service updated step index: %lu, segment index: %lu; updating state", &v9, 0x20u);
  }

  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v6 = sub_100073758();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MNNavigationServiceStateAsString();
    v8 = MNNavigationServiceStateAsString();
    v9 = 134349570;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] nav service changed from state %@ to state %@; updating state", &v9, 0x20u);
  }

  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = a3;
  v5 = sub_100073758();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 lastLocation];
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Got a new location update: %@", &v7, 0x16u);
  }

  [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self updateState];
}

- (NSString)debugDescription
{
  v44 = [objc_opt_class() friendlyName];
  GEOConfigGetDouble();
  v4 = v3;
  v41 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self locationManager];
  v43 = [v41 lastLocation];
  v40 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self routePlanningSession];
  if (v40)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v39 = v5;
  v38 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self routePlanningSession];
  v37 = [v38 currentRouteCollection];
  v36 = [v37 currentRoute];
  if (v36)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v42 = v6;
  v35 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self routePlanningSession];
  v7 = [v35 currentTransportType];
  if ((v7 - 1) > 4)
  {
    v8 = @"Undefined";
  }

  else
  {
    v8 = *(&off_101632878 + (v7 - 1));
  }

  v29 = v8;
  v33 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v32 = [v33 route];
  if (v32)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v27 = v9;
  v31 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  [v31 state];
  v30 = MNNavigationServiceStateAsString();
  v28 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v10 = [v28 navigationTransportType];
  if (v10 >= 7)
  {
    v11 = [NSString stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = *(&off_101632840 + v10);
  }

  v26 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v23 = [v26 stepIndex];
  v25 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v24 = [v25 route];
  v12 = [v24 stepsCount];
  v13 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self navigationService];
  v14 = [v13 route];
  if ([v14 hasArrivalStorefrontGeometry])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = v15;
  v17 = +[NSUserDefaults standardUserDefaults];
  if ([v17 BOOLForKey:@"PedestrianARInjectFakeStorefrontArrivalDataKey"])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = v18;
  v20 = +[NSUserDefaults standardUserDefaults];
  if ([v20 BOOLForKey:@"PedestrianARForceShowArrivalOnLastStepKey"])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v34 = [NSString stringWithFormat:@"%@\ncoarse arrival distance threshold: %f\nlast location: %@\nin route planning: %@\nhas route planning route: %@\nroute planning transport type: %@\nhas nav route: %@\nnav state: %@\nnav transport type: %@\nstep index: %lu\ntotal steps: %lu\narrival has storefront geometry: %@\ninject fake storefront arrival data debug flag: %@\nforce show arrival on last step debug flag: %@\n", v44, v4, v43, v39, v42, v29, v27, v30, v11, v23, v12, v16, v19, v21];

  return v34;
}

- (void)setRoutePlanningSession:(id)a3
{
  v4 = a3;
  [(RoutePlanningSession *)self->_routePlanningSession unregisterObserver:self];
  routePlanningSession = self->_routePlanningSession;
  self->_routePlanningSession = v4;
  v6 = v4;

  [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
  v7 = self->_routePlanningSession;
  v8 = [(PedestrianARSessionArrivalStepAvailabilityMonitor *)self locationManager];
  v9 = v8;
  if (v7)
  {
    [v8 listenForLocationUpdates:self];
  }

  else
  {
    [v8 stopListeningForLocationUpdates:self];
  }
}

- (void)dealloc
{
  v3 = sub_100073758();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"PedestrianARInjectFakeStorefrontArrivalDataKey"];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObserver:self forKeyPath:@"PedestrianARForceShowArrivalOnLastStepKey"];

  WeakRetained = objc_loadWeakRetained(&self->_navigationService);
  [WeakRetained unregisterObserver:self];

  v7 = objc_loadWeakRetained(&self->_locationManager);
  [v7 stopListeningForLocationUpdates:self];

  v8 = objc_loadWeakRetained(&self->_platformController);
  [v8 unregisterObserver:self];

  v9.receiver = self;
  v9.super_class = PedestrianARSessionArrivalStepAvailabilityMonitor;
  [(PedestrianARSessionMonitor *)&v9 dealloc];
}

- (PedestrianARSessionArrivalStepAvailabilityMonitor)initWithObserver:(id)a3 platformController:(id)a4 navigationService:(id)a5 locationManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v36 = "[PedestrianARSessionArrivalStepAvailabilityMonitor initWithObserver:platformController:navigationService:locationManager:]";
      v37 = 2080;
      v38 = "PedestrianARSessionArrivalStepAvailabilityMonitor.m";
      v39 = 1024;
      v40 = 58;
      v41 = 2080;
      v42 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v36 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v12)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v36 = "[PedestrianARSessionArrivalStepAvailabilityMonitor initWithObserver:platformController:navigationService:locationManager:]";
      v37 = 2080;
      v38 = "PedestrianARSessionArrivalStepAvailabilityMonitor.m";
      v39 = 1024;
      v40 = 59;
      v41 = 2080;
      v42 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v36 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v13)
  {
    v31 = sub_10006D178();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v36 = "[PedestrianARSessionArrivalStepAvailabilityMonitor initWithObserver:platformController:navigationService:locationManager:]";
      v37 = 2080;
      v38 = "PedestrianARSessionArrivalStepAvailabilityMonitor.m";
      v39 = 1024;
      v40 = 60;
      v41 = 2080;
      v42 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v36 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v34.receiver = self;
  v34.super_class = PedestrianARSessionArrivalStepAvailabilityMonitor;
  v14 = [(PedestrianARSessionMonitor *)&v34 initWithObserver:v10];
  if (v14)
  {
    v15 = sub_100073758();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v16 = +[NSUserDefaults standardUserDefaults];
    [v16 addObserver:v14 forKeyPath:@"PedestrianARInjectFakeStorefrontArrivalDataKey" options:1 context:0];

    v17 = +[NSUserDefaults standardUserDefaults];
    [v17 addObserver:v14 forKeyPath:@"PedestrianARForceShowArrivalOnLastStepKey" options:1 context:0];

    v18 = objc_storeWeak(&v14->_platformController, v11);
    [v11 registerObserver:v14];

    objc_storeWeak(&v14->_locationManager, v13);
    v19 = objc_storeWeak(&v14->_navigationService, v12);
    [v12 registerObserver:v14];

    WeakRetained = objc_loadWeakRetained(&v14->_platformController);
    v21 = [WeakRetained currentSession];

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

    [(PedestrianARSessionArrivalStepAvailabilityMonitor *)v14 setRoutePlanningSession:v23];
    [(PedestrianARSessionArrivalStepAvailabilityMonitor *)v14 updateState];
  }

  return v14;
}

@end