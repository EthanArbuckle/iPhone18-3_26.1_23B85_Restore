@interface RoutePlanningUpdater
- (BOOL)shouldRefreshRoutesForCurrentLocation;
- (BOOL)shouldRefreshRoutesForLocationManagerUpdate;
- (BOOL)shouldRefreshRoutesForUserLocation:(id)location;
- (MNRouteProximitySensor)proximitySensor;
- (NSSet)eligibleTransportTypes;
- (RouteCollection)currentRouteCollection;
- (RoutePlanningSession)session;
- (RoutePlanningUpdater)init;
- (void)_mapsBackgrounded;
- (void)_mapsForegrounded;
- (void)_networkReachabilityChanged:(id)changed;
- (void)_preparePeriodicRouteRefreshTimerWithError:(id)error;
- (void)_updateRefreshStateWithError:(id)error;
- (void)_vlfSessionDidStop:(id)stop;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)offlineService:(id)service wouldLikeToSwitchToState:(id)state;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)refreshRoutesForced:(BOOL)forced;
- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)routePlanningSession:(id)session didFinishResolvingWaypointSet:(id)set;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setPause:(BOOL)pause;
- (void)setSession:(id)session;
@end

@implementation RoutePlanningUpdater

- (void)_mapsBackgrounded
{
  periodicRouteRefreshTimer = [(RoutePlanningUpdater *)self periodicRouteRefreshTimer];

  if (periodicRouteRefreshTimer)
  {
    v4 = sub_10076A8AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Disabling periodicRouteRefreshTimer", v5, 2u);
    }

    [(RoutePlanningUpdater *)self setPeriodicRouteRefreshTimer:0];
  }
}

- (RoutePlanningSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)offlineService:(id)service wouldLikeToSwitchToState:(id)state
{
  var0 = state.var1.var0;
  serviceCopy = service;
  v7 = serviceCopy;
  if (var0 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    waypointConfiguration = [WeakRetained waypointConfiguration];

    origin = [waypointConfiguration origin];
    [origin coordinate];
    GEOMapPointForCoordinate();
    v12 = v11;
    v14 = v13;

    destination = [waypointConfiguration destination];
    [destination coordinate];
    GEOMapPointForCoordinate();
    v17 = v16;
    v19 = v18;

    currentRouteCollection = [(RoutePlanningUpdater *)self currentRouteCollection];
    currentRoute = [currentRouteCollection currentRoute];

    if (currentRoute && ([currentRoute startRouteCoordinate], GEOPolylineCoordinateIsValid()) && (objc_msgSend(currentRoute, "endRouteCoordinate"), GEOPolylineCoordinateIsValid()))
    {
      startRouteCoordinate = [currentRoute startRouteCoordinate];
      endRouteCoordinate = [currentRoute endRouteCoordinate];
      if (GEOPolylineCoordinateIsInvalid())
      {
        v24 = LODWORD(GEOPolylineCoordinateInvalid[0]);
        v25 = GEOPolylineCoordinateInvalid[1];
      }

      else
      {
        v25 = *(&startRouteCoordinate + 1) - floorf(*(&startRouteCoordinate + 1));
        v24 = vcvtms_u32_f32(*(&startRouteCoordinate + 1)) + startRouteCoordinate;
      }

      v32 = v24 | (LODWORD(v25) << 32);
      if (GEOPolylineCoordinateIsInvalid())
      {
        v33 = LODWORD(GEOPolylineCoordinateInvalid[0]);
        v34 = GEOPolylineCoordinateInvalid[1];
      }

      else
      {
        v34 = *(&endRouteCoordinate + 1) - floorf(*(&endRouteCoordinate + 1));
        v33 = vcvtms_u32_f32(*(&endRouteCoordinate + 1)) + endRouteCoordinate;
      }

      [currentRoute coarseBoundsForRange:{v32, v33 | (LODWORD(v34) << 32), 0, 0, 0, 0, 0, 0}];
    }

    else
    {
      v26 = kGEOCoordinateRegionInvalid[0];
      v27 = kGEOCoordinateRegionInvalid[1];
      v28 = kGEOCoordinateRegionInvalid[2];
      v29 = kGEOCoordinateRegionInvalid[3];
      if (v12 < 0.0 || v14 < 0.0 || (v30 = GEOMapRectWorld[2], v12 > v30) || (v31 = GEOMapRectWorld[3], v14 > v31) || v17 < 0.0 || v19 < 0.0 || v17 > v30 || v19 > v31)
      {
LABEL_23:
        if (fabs(v27) > 180.0 || v26 < -90.0 || v26 > 90.0 || v28 < 0.0 || v28 > 180.0 || v29 < 0.0 || v29 > 360.0)
        {
          v41 = sub_10076A8AC();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = GEOOfflineModeAsString();
            uniqueRouteID = [currentRoute uniqueRouteID];
            *v47 = 138412802;
            *&v47[4] = v42;
            *&v47[12] = 2112;
            *&v47[14] = uniqueRouteID;
            *&v47[22] = 2112;
            v48 = *&waypointConfiguration;
            v44 = "GEOOfflineService wouldLikeToSwitchToState to %@, Ignoring for route %@, configuration %@";
            v45 = v41;
            v46 = 32;
            goto LABEL_34;
          }
        }

        else
        {
          v39 = +[GEOOfflineService shared];
          v40 = [v39 canUseOfflineForCoordinateRegion:{v26, v27, v28, v29}];

          [v7 delegate:self prefersMode:v40];
          v41 = sub_10076A8AC();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = GEOOfflineModeAsString();
            uniqueRouteID = GEOOfflineModeAsString();
            *v47 = 138412546;
            *&v47[4] = v42;
            *&v47[12] = 2112;
            *&v47[14] = uniqueRouteID;
            v44 = "GEOOfflineService wouldLikeToSwitchToState to %@, RoutePlanningUpdater prefers %@";
            v45 = v41;
            v46 = 22;
LABEL_34:
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, v44, v47, v46);
          }
        }

        goto LABEL_36;
      }

      *v47 = v12;
      *&v47[8] = v14;
      *&v47[16] = v17;
      v48 = v19;
      GEOMapRectBoundingMapPoints();
    }

    GEOCoordinateRegionForMapRect();
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    goto LABEL_23;
  }

  [serviceCopy delegate:self prefersMode:var0];
LABEL_36:
}

- (void)_networkReachabilityChanged:(id)changed
{
  changedCopy = changed;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "[RoutePlanningUpdater _networkReachabilityChanged:]";
        *&buf[12] = 2080;
        *&buf[14] = "RoutePlanningUpdater.m";
        *&buf[22] = 1024;
        LODWORD(v23) = 412;
        WORD2(v23) = 2080;
        *(&v23 + 6) = "dispatch_get_main_queue()";
        HIWORD(v23) = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          *buf = 138412290;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  userInfo = [changedCopy userInfo];
  v9 = [userInfo objectForKey:GEONetworkObserverReachable];
  bOOLValue = [v9 BOOLValue];

  v11 = sub_10076A8AC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = @"NO";
    if (bOOLValue)
    {
      v12 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Network reachability changed: %@", buf, 0xCu);
  }

  if (bOOLValue)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v23 = sub_10076AD1C;
    *(&v23 + 1) = sub_10076AD2C;
    v24 = 0;
    session = [(RoutePlanningUpdater *)self session];
    currentRouteCollectionResult = [session currentRouteCollectionResult];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10076AD34;
    v21[3] = &unk_10165E590;
    v21[4] = buf;
    [currentRouteCollectionResult withValue:&stru_101628670 orError:v21];

    if (*(*&buf[8] + 40))
    {
      v16 = sub_10076A8AC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Network is now reachable and directions previously failed to load. Retrying.", v20, 2u);
      }

      [(RoutePlanningUpdater *)self refreshRoutesForced:1];
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)refreshRoutesForced:(BOOL)forced
{
  if ([(RoutePlanningUpdater *)self isPaused])
  {
    session = sub_10076A8AC();
    if (os_log_type_enabled(session, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v6 = "Skipping route update, route planning is paused";
LABEL_18:
      v12 = session;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }
  }

  else
  {
    [(NSDate *)self->_lastRefreshTime timeIntervalSinceNow];
    v8 = v7;
    [(NSDate *)self->_lastRefreshTime timeIntervalSinceNow];
    if (v8 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    if (forced || !self->_lastRefreshTime || (GEOConfigGetDouble(), v10 >= v11))
    {
      v15 = +[GEONetworkObserver sharedNetworkObserver];
      isNetworkReachable = [v15 isNetworkReachable];

      if (isNetworkReachable)
      {
        isUpdatingRoute = [(RoutePlanningUpdater *)self isUpdatingRoute];
        v18 = sub_10076A8AC();
        session = v18;
        if (isUpdatingRoute)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v21) = 0;
            v6 = "An existing route request is in progress; ignoring";
            v12 = session;
            v13 = OS_LOG_TYPE_DEBUG;
LABEL_19:
            v14 = 2;
            goto LABEL_20;
          }
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_INFO, "requesting route update", &v21, 2u);
          }

          v19 = +[NSDate date];
          lastRefreshTime = self->_lastRefreshTime;
          self->_lastRefreshTime = v19;

          self->_performedInitialRefresh = 1;
          [(RoutePlanningUpdater *)self setUpdatingRoute:1];
          session = [(RoutePlanningUpdater *)self session];
          [session requestUpdatedRouteWithRefreshedOrigin:1];
        }
      }

      else
      {
        session = sub_10076A8AC();
        if (os_log_type_enabled(session, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          v6 = "Skipping route update, device cannot reach network";
          goto LABEL_18;
        }
      }
    }

    else
    {
      session = sub_10076A8AC();
      if (os_log_type_enabled(session, OS_LOG_TYPE_INFO))
      {
        v21 = 134217984;
        v22 = v10;
        v6 = "Skipping route update, last refresh happened (%f) seconds ago";
        v12 = session;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 12;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v12, v13, v6, &v21, v14);
      }
    }
  }
}

- (void)_vlfSessionDidStop:(id)stop
{
  stopCopy = stop;
  if (GEOConfigGetBOOL())
  {
    object = [stopCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = object;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      session = [(RoutePlanningUpdater *)self session];
      if (session && (v9 = [v7 wasLastLocalizationSuccessful], session, v9))
      {
        v10 = sub_10076A8AC();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Detected VLF localized during route planning; waiting for another location update before force refreshing routes", buf, 2u);
        }

        objc_initWeak(buf, self);
        v11 = +[MKLocationManager sharedLocationManager];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10076B3B8;
        v19[3] = &unk_10164DEA0;
        objc_copyWeak(&v20, buf);
        v12 = [v11 singleLocationUpdateWithHandler:v19];
        [v12 start];

        objc_destroyWeak(&v20);
        objc_destroyWeak(buf);
      }

      else if ([v7 wasLastLocalizationSuccessful])
      {
        v13 = sub_10076A8AC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "VLF localized outside of route planning; ignoring", buf, 2u);
        }
      }
    }

    else
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v22 = "[RoutePlanningUpdater _vlfSessionDidStop:]";
        v23 = 2080;
        v24 = "RoutePlanningUpdater.m";
        v25 = 1024;
        v26 = 356;
        v27 = 2080;
        v28 = "vlfSession != nil";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v22 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v17 = sub_10076A8AC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        object2 = [stopCopy object];
        *buf = 138412290;
        v22 = object2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Expected notification object to be a VLFSession and it wasn't: %@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = sub_10076A8AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "VLF ended but the geo default to reload routes was off; ignoring", buf, 2u);
    }
  }
}

- (void)_mapsForegrounded
{
  periodicRouteRefreshTimer = [(RoutePlanningUpdater *)self periodicRouteRefreshTimer];
  if (periodicRouteRefreshTimer)
  {
  }

  else if ([(RoutePlanningUpdater *)self shouldRefreshRoutesForLocationManagerUpdate])
  {
    v4 = sub_10076A8AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Enabling periodicRouteRefreshTimer", v5, 2u);
    }

    [(RoutePlanningUpdater *)self _preparePeriodicRouteRefreshTimerWithError:0];
  }
}

- (void)_preparePeriodicRouteRefreshTimerWithError:(id)error
{
  errorCopy = error;
  if (GEOConfigGetBOOL())
  {
    objc_initWeak(&location, self);
    GEOConfigGetDouble();
    v6 = v5;
    v7 = sub_10076A8AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v17 = v6;
      v18 = 2114;
      v19 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Scheduling route refresh in %{public}f, error: %{public}@", buf, 0x16u);
    }

    v8 = &_dispatch_main_q;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10076B784;
    v13 = &unk_1016616E8;
    objc_copyWeak(&v14, &location);
    v9 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v10 block:v6];
    [(RoutePlanningUpdater *)self setPeriodicRouteRefreshTimer:v9, v10, v11, v12, v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)_updateRefreshStateWithError:(id)error
{
  errorCopy = error;
  [(RoutePlanningUpdater *)self setProximitySensor:0];
  [(RoutePlanningUpdater *)self setUpdatingRoute:0];
  [(RoutePlanningUpdater *)self setOffRouteRefreshTimer:0];
  [(RoutePlanningUpdater *)self setPeriodicRouteRefreshTimer:0];
  v5 = +[NSDate date];
  lastRefreshTime = self->_lastRefreshTime;
  self->_lastRefreshTime = v5;

  BOOL = GEOConfigGetBOOL();
  if (errorCopy && (BOOL & 1) != 0 || [(RoutePlanningUpdater *)self shouldRefreshRoutesForLocationManagerUpdate])
  {
    v8 = sub_10076A8AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "updating route state to enable updates", buf, 2u);
    }

    v9 = +[MKLocationManager sharedLocationManager];
    [v9 listenForLocationUpdates:self];

    [(RoutePlanningUpdater *)self _preparePeriodicRouteRefreshTimerWithError:errorCopy];
  }

  else
  {
    v10 = sub_10076A8AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "updating route state to disable updates", v12, 2u);
    }

    v11 = +[MKLocationManager sharedLocationManager];
    [v11 stopListeningForLocationUpdates:self];
  }
}

- (BOOL)shouldRefreshRoutesForUserLocation:(id)location
{
  locationCopy = location;
  proximitySensor = [(RoutePlanningUpdater *)self proximitySensor];

  if (!proximitySensor)
  {
    v10 = sub_10076A8AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Route proximity doesn't have a valid or eligible route", &v16, 2u);
    }

    goto LABEL_11;
  }

  proximitySensor2 = [(RoutePlanningUpdater *)self proximitySensor];
  [proximitySensor2 updateForLocation:locationCopy];

  proximitySensor3 = [(RoutePlanningUpdater *)self proximitySensor];
  proximity = [proximitySensor3 proximity];

  v9 = sub_10076A8AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = 134217984;
    v17 = proximity;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got proximity from route: %lu", &v16, 0xCu);
  }

  v10 = sub_10076A8AC();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (proximity > 1)
  {
    if (v11)
    {
      v14 = [NSNumber numberWithUnsignedInteger:proximity];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Route proximity is NOT far nor unknown (%@); NOT scheduling route update", &v16, 0xCu);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  if (v11)
  {
    v12 = [NSNumber numberWithUnsignedInteger:proximity];
    v16 = 138412290;
    v17 = v12;
    v13 = 1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Route proximity is far or unknown (%@); scheduling route update", &v16, 0xCu);
  }

  else
  {
    v13 = 1;
  }

LABEL_12:

  return v13;
}

- (BOOL)shouldRefreshRoutesForCurrentLocation
{
  if (!GEOConfigGetBOOL())
  {
    return 0;
  }

  currentRouteCollection = [(RoutePlanningUpdater *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];
  origin = [currentRoute origin];
  isCurrentLocation = [origin isCurrentLocation];

  if (!isCurrentLocation)
  {
    return 0;
  }

  v7 = +[MKLocationManager sharedLocationManager];
  currentLocation = [v7 currentLocation];
  v9 = [(RoutePlanningUpdater *)self shouldRefreshRoutesForUserLocation:currentLocation];

  return v9;
}

- (BOOL)shouldRefreshRoutesForLocationManagerUpdate
{
  if (!GEOConfigGetBOOL())
  {
    return 0;
  }

  session = [(RoutePlanningUpdater *)self session];
  session2 = [(RoutePlanningUpdater *)self session];
  configuration = [session2 configuration];
  originWaypointRequest = [configuration originWaypointRequest];
  waypointRequest = [originWaypointRequest waypointRequest];
  isCurrentLocation = [waypointRequest isCurrentLocation];

  currentRouteCollection = [(RoutePlanningUpdater *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];
  origin = [currentRoute origin];
  isCurrentLocation2 = [origin isCurrentLocation];

  if ((isCurrentLocation & 1) == 0 && (isCurrentLocation2 & 1) == 0)
  {
    v13 = sub_10076A8AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Route origin is not the user's current location; should not refresh routes", v19, 2u);
    }

    return 0;
  }

  currentTransportType = [session currentTransportType];
  eligibleTransportTypes = [(RoutePlanningUpdater *)self eligibleTransportTypes];
  v17 = [NSNumber numberWithInteger:currentTransportType];
  v18 = [eligibleTransportTypes containsObject:v17];

  return v18;
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The route planning geo default is not enabled; will not update route", buf, 2u);
    }

    goto LABEL_8;
  }

  if ([(RoutePlanningUpdater *)self isUpdatingRoute])
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "A route update is already in progress; will not update route", buf, 2u);
    }

LABEL_8:

    goto LABEL_9;
  }

  currentLocation = [locationCopy currentLocation];

  if (!currentLocation)
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "We don't know what the user's current location is; will not update route", buf, 2u);
    }

    goto LABEL_8;
  }

  if ([locationCopy isLastLocationStale])
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      [locationCopy currentLocation];
      v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The user's current location is stale (%@); will not update route", buf, 0xCu);
    }

    goto LABEL_8;
  }

  currentLocation2 = [locationCopy currentLocation];
  [currentLocation2 horizontalAccuracy];
  v10 = v9;
  GEOConfigGetDouble();
  v12 = v11;

  if (v10 > v12)
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      currentLocation3 = [locationCopy currentLocation];
      [currentLocation3 horizontalAccuracy];
      v15 = v14;
      GEOConfigGetDouble();
      *buf = 134218240;
      v37 = v15;
      v38 = 2048;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The current location's horizontal accuracy (%f) is bigger than the threshold (%f); will not update route", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if ([(RoutePlanningUpdater *)self shouldRefreshRoutesForLocationManagerUpdate])
  {
    currentLocation4 = [locationCopy currentLocation];
    v18 = [(RoutePlanningUpdater *)self shouldRefreshRoutesForUserLocation:currentLocation4];

    if (v18)
    {
      GEOConfigGetDouble();
      v20 = v19;
      objc_initWeak(&location, self);
      v21 = sub_10076A8AC();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v37 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Starting off route refresh timer with refresh interval: %f", buf, 0xCu);
      }

      v22 = &_dispatch_main_q;
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_10076C3B8;
      v33 = &unk_1016616E8;
      objc_copyWeak(&v34, &location);
      v23 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v30 block:v20];
      [(RoutePlanningUpdater *)self setOffRouteRefreshTimer:v23, v30, v31, v32, v33];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }
  }

  lastRefreshTime = self->_lastRefreshTime;
  if (lastRefreshTime)
  {
    [(NSDate *)lastRefreshTime timeIntervalSinceNow];
    v26 = v25;
    GEOConfigGetDouble();
    if (v27 < -v26)
    {
      v28 = sub_10076A8AC();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        GEOConfigGetDouble();
        *buf = 134217984;
        v37 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Route planning update frequency limit has been reached (%f); will refresh route now", buf, 0xCu);
      }

      [(RoutePlanningUpdater *)self refreshRoutesForced:0];
    }
  }

LABEL_9:
}

- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  [(RoutePlanningUpdater *)self _updateRefreshStateWithError:0, type, initiated];
  if ([(RoutePlanningUpdater *)self shouldRefreshRoutesForCurrentLocation])
  {

    [(RoutePlanningUpdater *)self refreshRoutesForced:1];
  }
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  error = [result error];
  [(RoutePlanningUpdater *)self _updateRefreshStateWithError:error];
}

- (void)routePlanningSession:(id)session didFinishResolvingWaypointSet:(id)set
{
  error = [set error];
  [(RoutePlanningUpdater *)self _updateRefreshStateWithError:error];
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = toSessionCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [(RoutePlanningUpdater *)self setSession:v10];

  v11 = sessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  session = [(RoutePlanningUpdater *)self session];

  if (session)
  {
    if (v13)
    {
      if ([v13 guidanceType] == 2 && objc_msgSend(v13, "currentTransportType") == 2)
      {
        currentRouteCollection = [v13 currentRouteCollection];
        currentRoute = [currentRouteCollection currentRoute];
        uniqueRouteID = [currentRoute uniqueRouteID];
        uUIDString = [uniqueRouteID UUIDString];
        session2 = [(RoutePlanningUpdater *)self session];
        currentRouteCollection2 = [session2 currentRouteCollection];
        currentRoute2 = [currentRouteCollection2 currentRoute];
        uniqueRouteID2 = [currentRoute2 uniqueRouteID];
        uUIDString2 = [uniqueRouteID2 UUIDString];
        v25 = [uUIDString isEqualToString:uUIDString2];

        if ((v25 & 1) == 0)
        {
          v21 = sub_10076A8AC();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Detected coming back from pedestrian navigation in route preview mode with different routes; updating routes now", buf, 2u);
          }

          session3 = [(RoutePlanningUpdater *)self session];
          currentRouteCollection3 = [v13 currentRouteCollection];
          v24 = [Result resultWithValue:currentRouteCollection3];
          [session3 updateRouteCollectionResult:v24 forTransportType:{objc_msgSend(v13, "currentTransportType")}];
        }
      }
    }
  }
}

- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = +[GEOOfflineService shared];
  v9 = v8;
  if (isKindOfClass)
  {
    [v8 setDelegate:self];
  }

  else
  {
    [v8 removeDelegate:self];
  }
}

- (void)setPause:(BOOL)pause
{
  if (self->_pause != pause)
  {
    pauseCopy = pause;
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = pauseCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "pause did change to %d", v6, 8u);
    }

    self->_pause = pauseCopy;
    if (pauseCopy)
    {
      [(RoutePlanningUpdater *)self setUpdatingRoute:0];
    }
  }
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained != sessionCopy)
  {
    v6 = objc_loadWeakRetained(&self->_session);
    [v6 unregisterObserver:self];
    objc_storeWeak(&self->_session, sessionCopy);
    self->_performedInitialRefresh = 0;
    [sessionCopy registerObserver:self];
    v7 = sub_10076A8AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "session did change from %@ to %@", &v8, 0x16u);
    }

    [(RoutePlanningUpdater *)self _updateRefreshStateWithError:0];
  }
}

- (RouteCollection)currentRouteCollection
{
  session = [(RoutePlanningUpdater *)self session];
  currentRouteCollection = [session currentRouteCollection];

  return currentRouteCollection;
}

- (MNRouteProximitySensor)proximitySensor
{
  currentRouteCollection = [(RoutePlanningUpdater *)self currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];

  if (self->_proximitySensor)
  {
    v5 = 1;
  }

  else
  {
    v5 = currentRoute == 0;
  }

  if (!v5)
  {
    eligibleTransportTypes = [(RoutePlanningUpdater *)self eligibleTransportTypes];
    v7 = [currentRoute transportType] - 1;
    if (v7 > 5)
    {
      v8 = 1;
    }

    else
    {
      v8 = qword_101216278[v7];
    }

    v9 = [NSNumber numberWithInteger:v8];
    v10 = [eligibleTransportTypes containsObject:v9];

    if (v10)
    {
      v11 = [[MNRouteProximitySensor alloc] initWithRoute:currentRoute];
      proximitySensor = self->_proximitySensor;
      self->_proximitySensor = v11;

      GEOConfigGetDouble();
      [(MNRouteProximitySensor *)self->_proximitySensor setProximityThreshold:?];
    }
  }

  v13 = self->_proximitySensor;
  v14 = v13;

  return v13;
}

- (NSSet)eligibleTransportTypes
{
  eligibleTransportTypes = self->_eligibleTransportTypes;
  if (!eligibleTransportTypes)
  {
    v4 = [NSSet setWithArray:&off_1016ECA40];
    v5 = self->_eligibleTransportTypes;
    self->_eligibleTransportTypes = v4;

    eligibleTransportTypes = self->_eligibleTransportTypes;
  }

  return eligibleTransportTypes;
}

- (void)dealloc
{
  v3 = sub_10076A8AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "dealloc - Removing %@ from session %@", buf, 0x16u);
  }

  v5 = objc_loadWeakRetained(&self->_session);
  [v5 unregisterObserver:self];

  v6 = +[MKLocationManager sharedLocationManager];
  [v6 stopListeningForLocationUpdates:self];

  v7 = +[GEONetworkObserver sharedNetworkObserver];
  [v7 removeNetworkReachableObserver:self];

  v8 = +[GEOOfflineService shared];
  [v8 removeDelegate:self];

  v9.receiver = self;
  v9.super_class = RoutePlanningUpdater;
  [(RoutePlanningUpdater *)&v9 dealloc];
}

- (RoutePlanningUpdater)init
{
  v8.receiver = self;
  v8.super_class = RoutePlanningUpdater;
  v2 = [(RoutePlanningUpdater *)&v8 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_mapsForegrounded" name:UIApplicationWillEnterForegroundNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_mapsBackgrounded" name:UIApplicationDidEnterBackgroundNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_vlfSessionDidStop:" name:@"VLFSessionDidStopNotification" object:0];

    v6 = +[GEONetworkObserver sharedNetworkObserver];
    [v6 addNetworkReachableObserver:v2 selector:"_networkReachabilityChanged:"];
  }

  return v2;
}

@end