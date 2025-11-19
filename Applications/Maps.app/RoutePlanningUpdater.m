@interface RoutePlanningUpdater
- (BOOL)shouldRefreshRoutesForCurrentLocation;
- (BOOL)shouldRefreshRoutesForLocationManagerUpdate;
- (BOOL)shouldRefreshRoutesForUserLocation:(id)a3;
- (MNRouteProximitySensor)proximitySensor;
- (NSSet)eligibleTransportTypes;
- (RouteCollection)currentRouteCollection;
- (RoutePlanningSession)session;
- (RoutePlanningUpdater)init;
- (void)_mapsBackgrounded;
- (void)_mapsForegrounded;
- (void)_networkReachabilityChanged:(id)a3;
- (void)_preparePeriodicRouteRefreshTimerWithError:(id)a3;
- (void)_updateRefreshStateWithError:(id)a3;
- (void)_vlfSessionDidStop:(id)a3;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)offlineService:(id)a3 wouldLikeToSwitchToState:(id)a4;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)refreshRoutesForced:(BOOL)a3;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)routePlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setPause:(BOOL)a3;
- (void)setSession:(id)a3;
@end

@implementation RoutePlanningUpdater

- (void)_mapsBackgrounded
{
  v3 = [(RoutePlanningUpdater *)self periodicRouteRefreshTimer];

  if (v3)
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

- (void)offlineService:(id)a3 wouldLikeToSwitchToState:(id)a4
{
  var0 = a4.var1.var0;
  v6 = a3;
  v7 = v6;
  if (var0 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v9 = [WeakRetained waypointConfiguration];

    v10 = [v9 origin];
    [v10 coordinate];
    GEOMapPointForCoordinate();
    v12 = v11;
    v14 = v13;

    v15 = [v9 destination];
    [v15 coordinate];
    GEOMapPointForCoordinate();
    v17 = v16;
    v19 = v18;

    v20 = [(RoutePlanningUpdater *)self currentRouteCollection];
    v21 = [v20 currentRoute];

    if (v21 && ([v21 startRouteCoordinate], GEOPolylineCoordinateIsValid()) && (objc_msgSend(v21, "endRouteCoordinate"), GEOPolylineCoordinateIsValid()))
    {
      v22 = [v21 startRouteCoordinate];
      v23 = [v21 endRouteCoordinate];
      if (GEOPolylineCoordinateIsInvalid())
      {
        v24 = LODWORD(GEOPolylineCoordinateInvalid[0]);
        v25 = GEOPolylineCoordinateInvalid[1];
      }

      else
      {
        v25 = *(&v22 + 1) - floorf(*(&v22 + 1));
        v24 = vcvtms_u32_f32(*(&v22 + 1)) + v22;
      }

      v32 = v24 | (LODWORD(v25) << 32);
      if (GEOPolylineCoordinateIsInvalid())
      {
        v33 = LODWORD(GEOPolylineCoordinateInvalid[0]);
        v34 = GEOPolylineCoordinateInvalid[1];
      }

      else
      {
        v34 = *(&v23 + 1) - floorf(*(&v23 + 1));
        v33 = vcvtms_u32_f32(*(&v23 + 1)) + v23;
      }

      [v21 coarseBoundsForRange:{v32, v33 | (LODWORD(v34) << 32), 0, 0, 0, 0, 0, 0}];
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
            v43 = [v21 uniqueRouteID];
            *v47 = 138412802;
            *&v47[4] = v42;
            *&v47[12] = 2112;
            *&v47[14] = v43;
            *&v47[22] = 2112;
            v48 = *&v9;
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
            v43 = GEOOfflineModeAsString();
            *v47 = 138412546;
            *&v47[4] = v42;
            *&v47[12] = 2112;
            *&v47[14] = v43;
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

  [v6 delegate:self prefersMode:var0];
LABEL_36:
}

- (void)_networkReachabilityChanged:(id)a3
{
  v4 = a3;
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

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:GEONetworkObserverReachable];
  v10 = [v9 BOOLValue];

  v11 = sub_10076A8AC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = @"NO";
    if (v10)
    {
      v12 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Network reachability changed: %@", buf, 0xCu);
  }

  if (v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v23 = sub_10076AD1C;
    *(&v23 + 1) = sub_10076AD2C;
    v24 = 0;
    v14 = [(RoutePlanningUpdater *)self session];
    v15 = [v14 currentRouteCollectionResult];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10076AD34;
    v21[3] = &unk_10165E590;
    v21[4] = buf;
    [v15 withValue:&stru_101628670 orError:v21];

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

- (void)refreshRoutesForced:(BOOL)a3
{
  if ([(RoutePlanningUpdater *)self isPaused])
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v6 = "Skipping route update, route planning is paused";
LABEL_18:
      v12 = v5;
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

    if (a3 || !self->_lastRefreshTime || (GEOConfigGetDouble(), v10 >= v11))
    {
      v15 = +[GEONetworkObserver sharedNetworkObserver];
      v16 = [v15 isNetworkReachable];

      if (v16)
      {
        v17 = [(RoutePlanningUpdater *)self isUpdatingRoute];
        v18 = sub_10076A8AC();
        v5 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v21) = 0;
            v6 = "An existing route request is in progress; ignoring";
            v12 = v5;
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
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "requesting route update", &v21, 2u);
          }

          v19 = +[NSDate date];
          lastRefreshTime = self->_lastRefreshTime;
          self->_lastRefreshTime = v19;

          self->_performedInitialRefresh = 1;
          [(RoutePlanningUpdater *)self setUpdatingRoute:1];
          v5 = [(RoutePlanningUpdater *)self session];
          [v5 requestUpdatedRouteWithRefreshedOrigin:1];
        }
      }

      else
      {
        v5 = sub_10076A8AC();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          v6 = "Skipping route update, device cannot reach network";
          goto LABEL_18;
        }
      }
    }

    else
    {
      v5 = sub_10076A8AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v21 = 134217984;
        v22 = v10;
        v6 = "Skipping route update, last refresh happened (%f) seconds ago";
        v12 = v5;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 12;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v12, v13, v6, &v21, v14);
      }
    }
  }
}

- (void)_vlfSessionDidStop:(id)a3
{
  v4 = a3;
  if (GEOConfigGetBOOL())
  {
    v5 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [(RoutePlanningUpdater *)self session];
      if (v8 && (v9 = [v7 wasLastLocalizationSuccessful], v8, v9))
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
        v18 = [v4 object];
        *buf = 138412290;
        v22 = v18;
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
  v3 = [(RoutePlanningUpdater *)self periodicRouteRefreshTimer];
  if (v3)
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

- (void)_preparePeriodicRouteRefreshTimerWithError:(id)a3
{
  v4 = a3;
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
      v19 = v4;
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

- (void)_updateRefreshStateWithError:(id)a3
{
  v4 = a3;
  [(RoutePlanningUpdater *)self setProximitySensor:0];
  [(RoutePlanningUpdater *)self setUpdatingRoute:0];
  [(RoutePlanningUpdater *)self setOffRouteRefreshTimer:0];
  [(RoutePlanningUpdater *)self setPeriodicRouteRefreshTimer:0];
  v5 = +[NSDate date];
  lastRefreshTime = self->_lastRefreshTime;
  self->_lastRefreshTime = v5;

  BOOL = GEOConfigGetBOOL();
  if (v4 && (BOOL & 1) != 0 || [(RoutePlanningUpdater *)self shouldRefreshRoutesForLocationManagerUpdate])
  {
    v8 = sub_10076A8AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "updating route state to enable updates", buf, 2u);
    }

    v9 = +[MKLocationManager sharedLocationManager];
    [v9 listenForLocationUpdates:self];

    [(RoutePlanningUpdater *)self _preparePeriodicRouteRefreshTimerWithError:v4];
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

- (BOOL)shouldRefreshRoutesForUserLocation:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningUpdater *)self proximitySensor];

  if (!v5)
  {
    v10 = sub_10076A8AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Route proximity doesn't have a valid or eligible route", &v16, 2u);
    }

    goto LABEL_11;
  }

  v6 = [(RoutePlanningUpdater *)self proximitySensor];
  [v6 updateForLocation:v4];

  v7 = [(RoutePlanningUpdater *)self proximitySensor];
  v8 = [v7 proximity];

  v9 = sub_10076A8AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = 134217984;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got proximity from route: %lu", &v16, 0xCu);
  }

  v10 = sub_10076A8AC();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v8 > 1)
  {
    if (v11)
    {
      v14 = [NSNumber numberWithUnsignedInteger:v8];
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
    v12 = [NSNumber numberWithUnsignedInteger:v8];
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

  v3 = [(RoutePlanningUpdater *)self currentRouteCollection];
  v4 = [v3 currentRoute];
  v5 = [v4 origin];
  v6 = [v5 isCurrentLocation];

  if (!v6)
  {
    return 0;
  }

  v7 = +[MKLocationManager sharedLocationManager];
  v8 = [v7 currentLocation];
  v9 = [(RoutePlanningUpdater *)self shouldRefreshRoutesForUserLocation:v8];

  return v9;
}

- (BOOL)shouldRefreshRoutesForLocationManagerUpdate
{
  if (!GEOConfigGetBOOL())
  {
    return 0;
  }

  v3 = [(RoutePlanningUpdater *)self session];
  v4 = [(RoutePlanningUpdater *)self session];
  v5 = [v4 configuration];
  v6 = [v5 originWaypointRequest];
  v7 = [v6 waypointRequest];
  v8 = [v7 isCurrentLocation];

  v9 = [(RoutePlanningUpdater *)self currentRouteCollection];
  v10 = [v9 currentRoute];
  v11 = [v10 origin];
  v12 = [v11 isCurrentLocation];

  if ((v8 & 1) == 0 && (v12 & 1) == 0)
  {
    v13 = sub_10076A8AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Route origin is not the user's current location; should not refresh routes", v19, 2u);
    }

    return 0;
  }

  v15 = [v3 currentTransportType];
  v16 = [(RoutePlanningUpdater *)self eligibleTransportTypes];
  v17 = [NSNumber numberWithInteger:v15];
  v18 = [v16 containsObject:v17];

  return v18;
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = a3;
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

  v6 = [v4 currentLocation];

  if (!v6)
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "We don't know what the user's current location is; will not update route", buf, 2u);
    }

    goto LABEL_8;
  }

  if ([v4 isLastLocationStale])
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      [v4 currentLocation];
      v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The user's current location is stale (%@); will not update route", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v8 = [v4 currentLocation];
  [v8 horizontalAccuracy];
  v10 = v9;
  GEOConfigGetDouble();
  v12 = v11;

  if (v10 > v12)
  {
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 currentLocation];
      [v13 horizontalAccuracy];
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
    v17 = [v4 currentLocation];
    v18 = [(RoutePlanningUpdater *)self shouldRefreshRoutesForUserLocation:v17];

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

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  [(RoutePlanningUpdater *)self _updateRefreshStateWithError:0, a4, a5];
  if ([(RoutePlanningUpdater *)self shouldRefreshRoutesForCurrentLocation])
  {

    [(RoutePlanningUpdater *)self refreshRoutesForced:1];
  }
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v6 = [a4 error];
  [(RoutePlanningUpdater *)self _updateRefreshStateWithError:v6];
}

- (void)routePlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4
{
  v5 = [a4 error];
  [(RoutePlanningUpdater *)self _updateRefreshStateWithError:v5];
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v7 = a4;
  v8 = a5;
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
  [(RoutePlanningUpdater *)self setSession:v10];

  v11 = v7;
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

  v14 = [(RoutePlanningUpdater *)self session];

  if (v14)
  {
    if (v13)
    {
      if ([v13 guidanceType] == 2 && objc_msgSend(v13, "currentTransportType") == 2)
      {
        v28 = [v13 currentRouteCollection];
        v27 = [v28 currentRoute];
        v26 = [v27 uniqueRouteID];
        v15 = [v26 UUIDString];
        v16 = [(RoutePlanningUpdater *)self session];
        v17 = [v16 currentRouteCollection];
        v18 = [v17 currentRoute];
        v19 = [v18 uniqueRouteID];
        v20 = [v19 UUIDString];
        v25 = [v15 isEqualToString:v20];

        if ((v25 & 1) == 0)
        {
          v21 = sub_10076A8AC();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Detected coming back from pedestrian navigation in route preview mode with different routes; updating routes now", buf, 2u);
          }

          v22 = [(RoutePlanningUpdater *)self session];
          v23 = [v13 currentRouteCollection];
          v24 = [Result resultWithValue:v23];
          [v22 updateRouteCollectionResult:v24 forTransportType:{objc_msgSend(v13, "currentTransportType")}];
        }
      }
    }
  }
}

- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
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

- (void)setPause:(BOOL)a3
{
  if (self->_pause != a3)
  {
    v3 = a3;
    v5 = sub_10076A8AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "pause did change to %d", v6, 8u);
    }

    self->_pause = v3;
    if (v3)
    {
      [(RoutePlanningUpdater *)self setUpdatingRoute:0];
    }
  }
}

- (void)setSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_session);
    [v6 unregisterObserver:self];
    objc_storeWeak(&self->_session, v4);
    self->_performedInitialRefresh = 0;
    [v4 registerObserver:self];
    v7 = sub_10076A8AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "session did change from %@ to %@", &v8, 0x16u);
    }

    [(RoutePlanningUpdater *)self _updateRefreshStateWithError:0];
  }
}

- (RouteCollection)currentRouteCollection
{
  v2 = [(RoutePlanningUpdater *)self session];
  v3 = [v2 currentRouteCollection];

  return v3;
}

- (MNRouteProximitySensor)proximitySensor
{
  v3 = [(RoutePlanningUpdater *)self currentRouteCollection];
  v4 = [v3 currentRoute];

  if (self->_proximitySensor)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = [(RoutePlanningUpdater *)self eligibleTransportTypes];
    v7 = [v4 transportType] - 1;
    if (v7 > 5)
    {
      v8 = 1;
    }

    else
    {
      v8 = qword_101216278[v7];
    }

    v9 = [NSNumber numberWithInteger:v8];
    v10 = [v6 containsObject:v9];

    if (v10)
    {
      v11 = [[MNRouteProximitySensor alloc] initWithRoute:v4];
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
    v11 = self;
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