@interface RoutePlanningSessionRouteLoadedNotifier
+ (id)_createAndSaveHistoryEntryFromSession:(id)session selectedRoute:(id)route;
- (RoutePlanningSessionRouteLoadedNotifier)initWithPlatformController:(id)controller handler:(id)handler;
- (void)_createAndSaveHistoryEntryFromOutgoingSession:(id)session;
- (void)_createAndSaveHistoryEntryFromUpdatedSession:(id)session;
- (void)_updateCurrentRouteHistoryEntryFromSession:(id)session;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setCurrentRouteHistoryEntry:(id)entry;
- (void)setObservedRoutePlanningSession:(id)session;
@end

@implementation RoutePlanningSessionRouteLoadedNotifier

- (void)_createAndSaveHistoryEntryFromOutgoingSession:(id)session
{
  sessionCopy = session;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v7 = [sessionCopy routeCollectionForTransportType:{objc_msgSend(sessionCopy, "currentTransportType")}];
    currentRoute = [v7 currentRoute];
    v9 = sub_100C07318();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (currentRoute)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_createAndSaveHistoryEntryFromOutgoingSession will create and save route", buf, 2u);
      }

      [(RoutePlanningSessionRouteLoadedNotifier *)self _updateCurrentRouteHistoryEntryFromSession:sessionCopy];
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

- (void)_createAndSaveHistoryEntryFromUpdatedSession:(id)session
{
  sessionCopy = session;
  v5 = [sessionCopy routeCollectionForTransportType:{objc_msgSend(sessionCopy, "currentTransportType")}];
  currentRoute = [v5 currentRoute];
  waypoints = [currentRoute waypoints];
  v8 = [waypoints count];

  if ((_UISolariumEnabled() & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 userInterfaceIdiom], v10, v11 != 5) || v8 > 2)
  {
    v9 = sub_100C07318();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_createAndSaveHistoryEntryFromUpdatedSession will create and save route from session: %@", &v13, 0xCu);
    }

    [(RoutePlanningSessionRouteLoadedNotifier *)self _updateCurrentRouteHistoryEntryFromSession:sessionCopy];
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

- (void)_updateCurrentRouteHistoryEntryFromSession:(id)session
{
  sessionCopy = session;
  v5 = [objc_opt_class() _createAndSaveHistoryEntryFromSession:sessionCopy selectedRoute:0];

  [(RoutePlanningSessionRouteLoadedNotifier *)self setCurrentRouteHistoryEntry:v5];
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  sessionCopy = session;
  resultCopy = result;
  observedRoutePlanningSession = [(RoutePlanningSessionRouteLoadedNotifier *)self observedRoutePlanningSession];

  if (observedRoutePlanningSession != sessionCopy)
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

  if ([sessionCopy currentTransportType] == type)
  {
    isSuccess = [resultCopy isSuccess];
    v12 = sub_100C07318();
    v13 = v12;
    if (isSuccess)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = sessionCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "didUpdateRouteCollectionResult was successful, will create a resume item with session: %@", &v18, 0xCu);
      }

      [(RoutePlanningSessionRouteLoadedNotifier *)self _createAndSaveHistoryEntryFromUpdatedSession:sessionCopy];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = sessionCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "didUpdateRouteCollectionResult but it was not successful, will not create a resume item. session: %@", &v18, 0xCu);
      }
    }

    handler = [(RoutePlanningSessionRouteLoadedNotifier *)self handler];
    (handler)[2](handler, resultCopy);
  }
}

- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  sessionCopy = session;
  v8 = [sessionCopy routeCollectionForTransportType:type];

  if (v8)
  {
    v9 = sub_100C07318();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "routePlanningSession:didChangeCurrentTransportType will save updated session: %@", &v10, 0xCu);
    }

    [(RoutePlanningSessionRouteLoadedNotifier *)self _createAndSaveHistoryEntryFromUpdatedSession:sessionCopy];
  }
}

- (void)setCurrentRouteHistoryEntry:(id)entry
{
  entryCopy = entry;
  if (self->_currentRouteHistoryEntry != entryCopy)
  {
    v6 = sub_100C07318();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      currentRouteHistoryEntry = self->_currentRouteHistoryEntry;
      v16 = 138412546;
      v17 = currentRouteHistoryEntry;
      v18 = 2112;
      v19 = entryCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will update currentRouteHistoryEntry from: %@ to %@", &v16, 0x16u);
    }

    objc_storeStrong(&self->_currentRouteHistoryEntry, entry);
    v8 = sub_100C07318();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      configuration = [self->_observedRoutePlanningSession configuration];
      originalHistoryEntryIdentifier = [configuration originalHistoryEntryIdentifier];
      historyEntry = [(HistoryEntryRecentsItem *)entryCopy historyEntry];
      storageIdentifier = [historyEntry storageIdentifier];
      v16 = 138412546;
      v17 = originalHistoryEntryIdentifier;
      v18 = 2112;
      v19 = storageIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will update session originalHistoryEntryIdentifier from %@ to %@", &v16, 0x16u);
    }

    historyEntry2 = [(HistoryEntryRecentsItem *)entryCopy historyEntry];
    storageIdentifier2 = [historyEntry2 storageIdentifier];
    configuration2 = [self->_observedRoutePlanningSession configuration];
    [configuration2 setOriginalHistoryEntryIdentifier:storageIdentifier2];
  }
}

- (void)setObservedRoutePlanningSession:(id)session
{
  sessionCopy = session;
  v6 = sessionCopy;
  observedRoutePlanningSession = self->_observedRoutePlanningSession;
  if (observedRoutePlanningSession != sessionCopy)
  {
    if (!sessionCopy && observedRoutePlanningSession)
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
    objc_storeStrong(&self->_observedRoutePlanningSession, session);
    [self->_observedRoutePlanningSession registerObserver:self];
    currentRouteCollection = [self->_observedRoutePlanningSession currentRouteCollection];

    if (currentRouteCollection)
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

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = toSessionCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(RoutePlanningSessionRouteLoadedNotifier *)self setObservedRoutePlanningSession:v7];
}

- (RoutePlanningSessionRouteLoadedNotifier)initWithPlatformController:(id)controller handler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if (!handlerCopy)
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
    v9 = [handlerCopy copy];
    handler = v8->_handler;
    v8->_handler = v9;

    sessionStack = [controllerCopy sessionStack];
    v12 = sub_1000282CC(sessionStack, &stru_10164DA00);
    firstObject = [v12 firstObject];
    [(RoutePlanningSessionRouteLoadedNotifier *)v8 setObservedRoutePlanningSession:firstObject];

    v14 = sub_100C07318();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      observedRoutePlanningSession = [(RoutePlanningSessionRouteLoadedNotifier *)v8 observedRoutePlanningSession];
      *buf = 138412290;
      v22 = observedRoutePlanningSession;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Initiated a loader notifier with current routePlanningSession: %@", buf, 0xCu);
    }
  }

  return v8;
}

+ (id)_createAndSaveHistoryEntryFromSession:(id)session selectedRoute:(id)route
{
  sessionCopy = session;
  routeCopy = route;
  v7 = [sessionCopy routeCollectionForTransportType:{objc_msgSend(sessionCopy, "currentTransportType")}];
  v8 = v7;
  if (routeCopy)
  {
    currentRoute = routeCopy;
LABEL_4:
    v10 = sub_100C07318();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      configuration = [sessionCopy configuration];
      originalHistoryEntryIdentifier = [configuration originalHistoryEntryIdentifier];
      v51 = 138412290;
      v52 = originalHistoryEntryIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Saving route as recent using identifier: %@", &v51, 0xCu);
    }

    configuration2 = [sessionCopy configuration];
    originalHistoryEntryIdentifier2 = [configuration2 originalHistoryEntryIdentifier];
    v15 = [HistoryEntryRecentsItem saveRoute:currentRoute withOriginalHistoryIdentifier:originalHistoryEntryIdentifier2 editBlock:0 completionBlock:&stru_10164DA20];

    v16 = sub_100C07318();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v51 = 138412546;
      v52 = v15;
      v53 = 2112;
      v54 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Created a historyRecentsItem: %@ from session: %@", &v51, 0x16u);
    }

    if (v15)
    {
      configuration3 = [sessionCopy configuration];
      originalHistoryEntryIdentifier3 = [configuration3 originalHistoryEntryIdentifier];

      if (!originalHistoryEntryIdentifier3)
      {
        historyEntry = [v15 historyEntry];
        storageIdentifier = [historyEntry storageIdentifier];
        configuration4 = [sessionCopy configuration];
        [configuration4 setOriginalHistoryEntryIdentifier:storageIdentifier];
      }

      reportAProblemRecorder = [sessionCopy reportAProblemRecorder];
      [reportAProblemRecorder clearAll];

      currentTransportType = [sessionCopy currentTransportType];
      if (currentTransportType > 4 || ((1 << currentTransportType) & 0x19) == 0)
      {
        historyEntry2 = [v15 historyEntry];
        storageIdentifier2 = [historyEntry2 storageIdentifier];
        reportAProblemRecorder2 = [sessionCopy reportAProblemRecorder];
        [reportAProblemRecorder2 setHistoryItemIdentifier:storageIdentifier2];

        reportAProblemRecorder3 = [sessionCopy reportAProblemRecorder];
        routeInitializerData = [currentRoute routeInitializerData];
        directionsRequest = [routeInitializerData directionsRequest];
        [reportAProblemRecorder3 recordNewRequest:directionsRequest];

        reportAProblemRecorder4 = [sessionCopy reportAProblemRecorder];
        routeInitializerData2 = [currentRoute routeInitializerData];
        directionsResponse = [routeInitializerData2 directionsResponse];
        [reportAProblemRecorder4 recordNewResponse:directionsResponse];

        reportAProblemRecorder5 = [sessionCopy reportAProblemRecorder];
        [reportAProblemRecorder5 recordNewRoute:currentRoute];

        reportAProblemRecorder6 = [sessionCopy reportAProblemRecorder];
        routes = [v8 routes];
        [reportAProblemRecorder6 setSelectedRoute:currentRoute fromRouteList:routes];

        resolvedWaypoints = [sessionCopy resolvedWaypoints];
        LOBYTE(routes) = [resolvedWaypoints areAllValidWaypoints];

        if ((routes & 1) == 0)
        {
          v37 = sub_100798874();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v51) = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Found NSNulls in resolved waypoints.", &v51, 2u);
          }
        }

        resolvedWaypoints2 = [sessionCopy resolvedWaypoints];
        waypointsOrNull = [resolvedWaypoints2 waypointsOrNull];
        v40 = sub_1000282CC(waypointsOrNull, &stru_10164DA60);

        reportAProblemRecorder7 = [sessionCopy reportAProblemRecorder];
        [reportAProblemRecorder7 recordWaypoints:v40 startWaypointSearchTicket:0 endWaypointSearchTicket:0];

        reportAProblemRecorder8 = [sessionCopy reportAProblemRecorder];
        [reportAProblemRecorder8 setOriginatingDeviceFromOrigin:0];
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

  currentRoute = [v7 currentRoute];
  if (currentRoute)
  {
    goto LABEL_4;
  }

  configuration5 = [sessionCopy configuration];
  isNavigationTracePlayback = [configuration5 isNavigationTracePlayback];

  if ((isNavigationTracePlayback & 1) == 0)
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

  currentRoute = sub_100C07318();
  if (os_log_type_enabled(currentRoute, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v51) = 0;
    _os_log_impl(&_mh_execute_header, currentRoute, OS_LOG_TYPE_ERROR, "Cannot save RAP history with a nil route.", &v51, 2u);
  }

  v15 = 0;
LABEL_23:

  return v15;
}

@end