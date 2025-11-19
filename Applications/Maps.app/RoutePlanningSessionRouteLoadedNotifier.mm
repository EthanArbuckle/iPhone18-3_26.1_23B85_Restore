@interface RoutePlanningSessionRouteLoadedNotifier
+ (id)_createAndSaveHistoryEntryFromSession:(id)a3 selectedRoute:(id)a4;
- (RoutePlanningSessionRouteLoadedNotifier)initWithPlatformController:(id)a3 handler:(id)a4;
- (void)_createAndSaveHistoryEntryFromOutgoingSession:(id)a3;
- (void)_createAndSaveHistoryEntryFromUpdatedSession:(id)a3;
- (void)_updateCurrentRouteHistoryEntryFromSession:(id)a3;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setCurrentRouteHistoryEntry:(id)a3;
- (void)setObservedRoutePlanningSession:(id)a3;
@end

@implementation RoutePlanningSessionRouteLoadedNotifier

- (void)_createAndSaveHistoryEntryFromOutgoingSession:(id)a3
{
  v4 = a3;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    v7 = [v4 routeCollectionForTransportType:{objc_msgSend(v4, "currentTransportType")}];
    v8 = [v7 currentRoute];
    v9 = sub_100C07318();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_createAndSaveHistoryEntryFromOutgoingSession will create and save route", buf, 2u);
      }

      [(RoutePlanningSessionRouteLoadedNotifier *)self _updateCurrentRouteHistoryEntryFromSession:v4];
    }

    else
    {
      if (v10)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_createAndSaveHistoryEntryFromOutgoingSession does not have currentRoute. Ignoring", v11, 2u);
      }
    }
  }

  else
  {
    v7 = sub_100C07318();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_createAndSaveHistoryEntryFromOutgoingSession not on macOS, ignoring", v13, 2u);
    }
  }
}

- (void)_createAndSaveHistoryEntryFromUpdatedSession:(id)a3
{
  v4 = a3;
  v5 = [v4 routeCollectionForTransportType:{objc_msgSend(v4, "currentTransportType")}];
  v6 = [v5 currentRoute];
  v7 = [v6 waypoints];
  v8 = [v7 count];

  if ((_UISolariumEnabled() & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 userInterfaceIdiom], v10, v11 != 5) || v8 > 2)
  {
    v9 = sub_100C07318();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_createAndSaveHistoryEntryFromUpdatedSession will create and save route from session: %@", &v13, 0xCu);
    }

    [(RoutePlanningSessionRouteLoadedNotifier *)self _updateCurrentRouteHistoryEntryFromSession:v4];
  }

  else
  {
    v12 = sub_100C07318();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "_createAndSaveHistoryEntryFromUpdatedSession nonMPR on macOS, ignoring", &v13, 2u);
    }
  }
}

- (void)_updateCurrentRouteHistoryEntryFromSession:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _createAndSaveHistoryEntryFromSession:v4 selectedRoute:0];

  [(RoutePlanningSessionRouteLoadedNotifier *)self setCurrentRouteHistoryEntry:v5];
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(RoutePlanningSessionRouteLoadedNotifier *)self observedRoutePlanningSession];

  if (v10 != v8)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = "[RoutePlanningSessionRouteLoadedNotifier routePlanningSession:didUpdateRouteCollectionResult:forTransportType:]";
      v20 = 2080;
      v21 = "RoutePlanningSessionRouteLoadedNotifier.m";
      v22 = 1024;
      v23 = 120;
      v24 = 2080;
      v25 = "session == self.observedRoutePlanningSession";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v18, 0x26u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        v18 = 138412290;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
      }
    }
  }

  if ([v8 currentTransportType] == a5)
  {
    v11 = [v9 isSuccess];
    v12 = sub_100C07318();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "didUpdateRouteCollectionResult was successful, will create a resume item with session: %@", &v18, 0xCu);
      }

      [(RoutePlanningSessionRouteLoadedNotifier *)self _createAndSaveHistoryEntryFromUpdatedSession:v8];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "didUpdateRouteCollectionResult but it was not successful, will not create a resume item. session: %@", &v18, 0xCu);
      }
    }

    v14 = [(RoutePlanningSessionRouteLoadedNotifier *)self handler];
    (v14)[2](v14, v9);
  }
}

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  v7 = a3;
  v8 = [v7 routeCollectionForTransportType:a4];

  if (v8)
  {
    v9 = sub_100C07318();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "routePlanningSession:didChangeCurrentTransportType will save updated session: %@", &v10, 0xCu);
    }

    [(RoutePlanningSessionRouteLoadedNotifier *)self _createAndSaveHistoryEntryFromUpdatedSession:v7];
  }
}

- (void)setCurrentRouteHistoryEntry:(id)a3
{
  v5 = a3;
  if (self->_currentRouteHistoryEntry != v5)
  {
    v6 = sub_100C07318();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      currentRouteHistoryEntry = self->_currentRouteHistoryEntry;
      v16 = 138412546;
      v17 = currentRouteHistoryEntry;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will update currentRouteHistoryEntry from: %@ to %@", &v16, 0x16u);
    }

    objc_storeStrong(&self->_currentRouteHistoryEntry, a3);
    v8 = sub_100C07318();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [self->_observedRoutePlanningSession configuration];
      v10 = [v9 originalHistoryEntryIdentifier];
      v11 = [(HistoryEntryRecentsItem *)v5 historyEntry];
      v12 = [v11 storageIdentifier];
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will update session originalHistoryEntryIdentifier from %@ to %@", &v16, 0x16u);
    }

    v13 = [(HistoryEntryRecentsItem *)v5 historyEntry];
    v14 = [v13 storageIdentifier];
    v15 = [self->_observedRoutePlanningSession configuration];
    [v15 setOriginalHistoryEntryIdentifier:v14];
  }
}

- (void)setObservedRoutePlanningSession:(id)a3
{
  v5 = a3;
  v6 = v5;
  observedRoutePlanningSession = self->_observedRoutePlanningSession;
  if (observedRoutePlanningSession != v5)
  {
    if (!v5 && observedRoutePlanningSession)
    {
      [(RoutePlanningSessionRouteLoadedNotifier *)self _createAndSaveHistoryEntryFromOutgoingSession:?];
    }

    v8 = sub_100C07318();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_observedRoutePlanningSession;
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "setObservedRoutePlanningSession from: %@ to %@", &v12, 0x16u);
    }

    [self->_observedRoutePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_observedRoutePlanningSession, a3);
    [self->_observedRoutePlanningSession registerObserver:self];
    v10 = [self->_observedRoutePlanningSession currentRouteCollection];

    if (v10)
    {
      v11 = sub_100C07318();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "observedRoutePlanningSession has a loaded routeCollection. Will proceed to saving a history entry.", &v12, 2u);
      }

      [(RoutePlanningSessionRouteLoadedNotifier *)self _updateCurrentRouteHistoryEntryFromSession:self->_observedRoutePlanningSession];
    }
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(RoutePlanningSessionRouteLoadedNotifier *)self setObservedRoutePlanningSession:v7];
}

- (RoutePlanningSessionRouteLoadedNotifier)initWithPlatformController:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[RoutePlanningSessionRouteLoadedNotifier initWithPlatformController:handler:]";
      v23 = 2080;
      v24 = "RoutePlanningSessionRouteLoadedNotifier.m";
      v25 = 1024;
      v26 = 40;
      v27 = 2080;
      v28 = "handler != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v20.receiver = self;
  v20.super_class = RoutePlanningSessionRouteLoadedNotifier;
  v8 = [(RoutePlanningSessionRouteLoadedNotifier *)&v20 init];
  if (v8)
  {
    v9 = [v7 copy];
    handler = v8->_handler;
    v8->_handler = v9;

    v11 = [v6 sessionStack];
    v12 = sub_1000282CC(v11, &stru_10164DA00);
    v13 = [v12 firstObject];
    [(RoutePlanningSessionRouteLoadedNotifier *)v8 setObservedRoutePlanningSession:v13];

    v14 = sub_100C07318();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(RoutePlanningSessionRouteLoadedNotifier *)v8 observedRoutePlanningSession];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Initiated a loader notifier with current routePlanningSession: %@", buf, 0xCu);
    }
  }

  return v8;
}

+ (id)_createAndSaveHistoryEntryFromSession:(id)a3 selectedRoute:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 routeCollectionForTransportType:{objc_msgSend(v5, "currentTransportType")}];
  v8 = v7;
  if (v6)
  {
    v9 = v6;
LABEL_4:
    v10 = sub_100C07318();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 configuration];
      v12 = [v11 originalHistoryEntryIdentifier];
      v51 = 138412290;
      v52 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Saving route as recent using identifier: %@", &v51, 0xCu);
    }

    v13 = [v5 configuration];
    v14 = [v13 originalHistoryEntryIdentifier];
    v15 = [HistoryEntryRecentsItem saveRoute:v9 withOriginalHistoryIdentifier:v14 editBlock:0 completionBlock:&stru_10164DA20];

    v16 = sub_100C07318();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v51 = 138412546;
      v52 = v15;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Created a historyRecentsItem: %@ from session: %@", &v51, 0x16u);
    }

    if (v15)
    {
      v17 = [v5 configuration];
      v18 = [v17 originalHistoryEntryIdentifier];

      if (!v18)
      {
        v19 = [v15 historyEntry];
        v20 = [v19 storageIdentifier];
        v21 = [v5 configuration];
        [v21 setOriginalHistoryEntryIdentifier:v20];
      }

      v22 = [v5 reportAProblemRecorder];
      [v22 clearAll];

      v23 = [v5 currentTransportType];
      if (v23 > 4 || ((1 << v23) & 0x19) == 0)
      {
        v24 = [v15 historyEntry];
        v25 = [v24 storageIdentifier];
        v26 = [v5 reportAProblemRecorder];
        [v26 setHistoryItemIdentifier:v25];

        v27 = [v5 reportAProblemRecorder];
        v28 = [v9 routeInitializerData];
        v29 = [v28 directionsRequest];
        [v27 recordNewRequest:v29];

        v30 = [v5 reportAProblemRecorder];
        v31 = [v9 routeInitializerData];
        v32 = [v31 directionsResponse];
        [v30 recordNewResponse:v32];

        v33 = [v5 reportAProblemRecorder];
        [v33 recordNewRoute:v9];

        v34 = [v5 reportAProblemRecorder];
        v35 = [v8 routes];
        [v34 setSelectedRoute:v9 fromRouteList:v35];

        v36 = [v5 resolvedWaypoints];
        LOBYTE(v35) = [v36 areAllValidWaypoints];

        if ((v35 & 1) == 0)
        {
          v37 = sub_100798874();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v51) = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Found NSNulls in resolved waypoints.", &v51, 2u);
          }
        }

        v38 = [v5 resolvedWaypoints];
        v39 = [v38 waypointsOrNull];
        v40 = sub_1000282CC(v39, &stru_10164DA60);

        v41 = [v5 reportAProblemRecorder];
        [v41 recordWaypoints:v40 startWaypointSearchTicket:0 endWaypointSearchTicket:0];

        v42 = [v5 reportAProblemRecorder];
        [v42 setOriginatingDeviceFromOrigin:0];
      }

      v43 = v15;
    }

    else
    {
      v44 = sub_100C07318();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v51) = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Cannot save RAP history with because we failed to construct historyEntry.", &v51, 2u);
      }
    }

    goto LABEL_23;
  }

  v9 = [v7 currentRoute];
  if (v9)
  {
    goto LABEL_4;
  }

  v46 = [v5 configuration];
  v47 = [v46 isNavigationTracePlayback];

  if ((v47 & 1) == 0)
  {
    v48 = sub_10006D178();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v51 = 136315906;
      v52 = "+[RoutePlanningSessionRouteLoadedNotifier _createAndSaveHistoryEntryFromSession:selectedRoute:]";
      v53 = 2080;
      v54 = "RoutePlanningSessionRouteLoadedNotifier.m";
      v55 = 1024;
      v56 = 158;
      v57 = 2080;
      v58 = "composedRoute != nil || session.configuration.isNavigationTracePlayback";
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v51, 0x26u);
    }

    if (sub_100E03634())
    {
      v49 = sub_10006D178();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = +[NSThread callStackSymbols];
        v51 = 138412290;
        v52 = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%@", &v51, 0xCu);
      }
    }
  }

  v9 = sub_100C07318();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v51) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot save RAP history with a nil route.", &v51, 2u);
  }

  v15 = 0;
LABEL_23:

  return v15;
}

@end