@interface NanoCompanionController
+ (void)initializePairedDeviceRegistry;
- (GEOCompanionRouteContext)sessionContext;
- (NanoCompanionController)initWithPlatformController:(id)controller ipcServer:(id)server;
- (id)_currentRouteID;
- (id)_routeIDFromRouteCollectionResult:(id)result;
- (id)_syntheticRouteDetailsForCurrentRequest;
- (void)_clearRoutePreviews;
- (void)_createCompanionRoutesConnection;
- (void)_createCompanionRoutesConnectionOnIsolationQueue;
- (void)_enterRoutePlanningForRequest:(id)request;
- (void)_sendStubRouteDetails;
- (void)_sendStubRouteDetailsIfNecessary;
- (void)_sendUpdatedResponse;
- (void)_sendUpdatedSelectedRouteID;
- (void)_updateDestinationName;
- (void)_updateResponseWithRouteCollectionResult:(id)result;
- (void)_updateResponseWithRoutesResult:(id)result routeUpdates:(id)updates;
- (void)anticipateRoutePlanningRequest:(id)request completionHandler:(id)handler;
- (void)checkinForRoutePlanning;
- (void)clearRoutePlanningWithContext:(id)context completionHandler:(id)handler;
- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)dealloc;
- (void)failRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler;
- (void)mapsSession:(id)session didChangeState:(unint64_t)state;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)routePlanningSession:(id)session didFinishResolvingWaypointSet:(id)set;
- (void)routePlanningSession:(id)session didReceiveUpdates:(id)updates forRoutesResult:(id)result;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setRoutePlanningSession:(id)session;
- (void)updateRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler;
- (void)updateRoutePlanningRequest:(id)request withSelectedRouteID:(id)d completionHandler:(id)handler;
@end

@implementation NanoCompanionController

- (void)_createCompanionRoutesConnection
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000221D0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

+ (void)initializePairedDeviceRegistry
{
  if (qword_10195D1F8 != -1)
  {
    dispatch_once(&qword_10195D1F8, &stru_101628880);
  }
}

- (void)_createCompanionRoutesConnectionOnIsolationQueue
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (!self->_companionRoutesConnection)
  {
    v3 = sub_1000224F8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Creating companion routes XPC connection", buf, 2u);
    }

    v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.nanomaps.xpc.Routes" options:0];
    companionRoutesConnection = self->_companionRoutesConnection;
    self->_companionRoutesConnection = v4;

    [(NSXPCConnection *)self->_companionRoutesConnection _setQueue:self->_isolationQueue];
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCRouting];
    [(NSXPCConnection *)self->_companionRoutesConnection setRemoteObjectInterface:v6];

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCRouting];
    [(NSXPCConnection *)self->_companionRoutesConnection setExportedInterface:v7];

    [(NSXPCConnection *)self->_companionRoutesConnection setExportedObject:self];
    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_companionRoutesConnection);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100022734;
    v17[3] = &unk_101654190;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    [(NSXPCConnection *)self->_companionRoutesConnection setInvalidationHandler:v17];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10077DEA8;
    v14 = &unk_101654190;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, &from);
    [(NSXPCConnection *)self->_companionRoutesConnection setInterruptionHandler:&v11];
    [(NSXPCConnection *)self->_companionRoutesConnection resume:v11];
    v8 = sub_1000224F8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_companionRoutesConnection;
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "checkinForRoutePlanning on connection: %@", buf, 0xCu);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
    [remoteObjectProxy checkinForRoutePlanning];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (id)_routeIDFromRouteCollectionResult:(id)result
{
  resultCopy = result;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10077A1A4;
  v13 = sub_10077A1B4;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10077A1BC;
  v8[3] = &unk_10165E5B8;
  v8[4] = &v9;
  [resultCopy withValue:v8 orError:&stru_101628A38];
  currentRoute = [v10[5] currentRoute];
  uniqueRouteID = [currentRoute uniqueRouteID];
  _maps_data = [uniqueRouteID _maps_data];

  _Block_object_dispose(&v9, 8);

  return _maps_data;
}

- (id)_currentRouteID
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  routePlanningSession = [(NanoCompanionController *)self routePlanningSession];
  currentRouteCollectionResult = [routePlanningSession currentRouteCollectionResult];
  v5 = [(NanoCompanionController *)self _routeIDFromRouteCollectionResult:currentRouteCollectionResult];

  return v5;
}

- (void)_clearRoutePreviews
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  clearingContext = self->_clearingContext;
  if (clearingContext)
  {
    self->_clearingContext = 0;
  }

  else
  {
    [(NanoCompanionController *)self _createCompanionRoutesConnectionOnIsolationQueue];
    v4 = sub_1000224F8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      sessionContext = [(NanoCompanionController *)self sessionContext];
      simpleDescription = [sessionContext simpleDescription];
      companionRoutesConnection = self->_companionRoutesConnection;
      v10 = 138412546;
      v11 = simpleDescription;
      v12 = 2114;
      v13 = companionRoutesConnection;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clearing preview routes (context:%@) to %{public}@", &v10, 0x16u);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
    sessionContext2 = [(NanoCompanionController *)self sessionContext];
    [remoteObjectProxy clearRoutePlanningWithContext:sessionContext2 completionHandler:&stru_101628A18];
  }
}

- (id)_syntheticRouteDetailsForCurrentRequest
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  routePlanningSession = [(NanoCompanionController *)self routePlanningSession];
  currentTransportType = [routePlanningSession currentTransportType];
  if ((currentTransportType - 1) > 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_101216100[(currentTransportType - 1)];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v6 = objc_alloc_init(NSMutableArray);
  routePlanningSession2 = [(NanoCompanionController *)self routePlanningSession];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10077A56C;
  v15 = &unk_1016289F8;
  v17 = &v18;
  v8 = v6;
  v16 = v8;
  [routePlanningSession2 enumerateRequestsOrWaypointsUsingBlock:&v12];

  if (v19[3])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(NanoCompanionController *)self destinationName:v12];
    v9 = [GEOCompanionRouteDetails syntheticRouteDetailsWithWaypoints:v8 transportType:v5 destinationName:v10];
  }

  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)_sendUpdatedSelectedRouteID
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  _currentRouteID = [(NanoCompanionController *)self _currentRouteID];
  [(NanoCompanionController *)self _createCompanionRoutesConnectionOnIsolationQueue];
  v4 = sub_1000224F8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sessionContext = [(NanoCompanionController *)self sessionContext];
    simpleDescription = [sessionContext simpleDescription];
    companionRoutesConnection = self->_companionRoutesConnection;
    v10 = 138412802;
    v11 = _currentRouteID;
    v12 = 2112;
    v13 = simpleDescription;
    v14 = 2114;
    v15 = companionRoutesConnection;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending selected route ID %@ (context:%@) to %{public}@", &v10, 0x20u);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
  v9 = [(NanoRoutePlanningMutableRequest *)self->_request copy];
  [remoteObjectProxy updateRoutePlanningRequest:v9 withSelectedRouteID:_currentRouteID completionHandler:&stru_1016289D0];
}

- (void)_sendStubRouteDetails
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  sessionContext = [(NanoCompanionController *)self sessionContext];
  if (sessionContext)
  {
    v4 = sessionContext;
    anticipatingContext = self->_anticipatingContext;
    sessionContext2 = [(NanoCompanionController *)self sessionContext];
    LODWORD(anticipatingContext) = [(GEOCompanionRouteContext *)anticipatingContext isEqual:sessionContext2];

    if (!anticipatingContext)
    {
      _syntheticRouteDetailsForCurrentRequest = [(NanoCompanionController *)self _syntheticRouteDetailsForCurrentRequest];
      if (_syntheticRouteDetailsForCurrentRequest)
      {
        sessionContext3 = [(NanoCompanionController *)self sessionContext];
        sessionContext5 = [NanoRoutePlanningRequest requestForDirectionsWithCompanionRouteDetails:_syntheticRouteDetailsForCurrentRequest companionRouteContext:sessionContext3];

        v15 = [sessionContext5 mutableCopy];
        request = self->_request;
        self->_request = v15;

        [(NanoCompanionController *)self _createCompanionRoutesConnectionOnIsolationQueue];
        v17 = sub_1000224F8();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          transportType = [_syntheticRouteDetailsForCurrentRequest transportType];
          if (transportType >= 7)
          {
            v19 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
          }

          else
          {
            v19 = *(&off_101628A90 + transportType);
          }

          v20 = v19;
          sessionContext4 = [(NanoCompanionController *)self sessionContext];
          simpleDescription = [sessionContext4 simpleDescription];
          companionRoutesConnection = self->_companionRoutesConnection;

          *buf = 138412802;
          v27 = v19;
          v28 = 2112;
          v29 = simpleDescription;
          v30 = 2114;
          v31 = companionRoutesConnection;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Sending stub route with transport type:(%@) (context:%@) to %{public}@", buf, 0x20u);
        }

        remoteObjectProxy = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
        v25 = [(NanoRoutePlanningMutableRequest *)self->_request copy];
        [remoteObjectProxy anticipateRoutePlanningRequest:v25 completionHandler:&stru_1016289B0];

        goto LABEL_15;
      }

      sessionContext5 = sub_1000224F8();
      if (!os_log_type_enabled(sessionContext5, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      *buf = 0;
      v10 = "Delaying stub route as not all waypoints are resolved";
      v11 = sessionContext5;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 2;
LABEL_5:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
      goto LABEL_15;
    }
  }

  _syntheticRouteDetailsForCurrentRequest = sub_1000224F8();
  if (os_log_type_enabled(_syntheticRouteDetailsForCurrentRequest, OS_LOG_TYPE_DEBUG))
  {
    sessionContext5 = [(NanoCompanionController *)self sessionContext];
    v9 = self->_anticipatingContext;
    *buf = 138412546;
    v27 = sessionContext5;
    v28 = 2112;
    v29 = v9;
    v10 = "Not sending stub route details (sessionContext: %@, anticipatingContext: %@)";
    v11 = _syntheticRouteDetailsForCurrentRequest;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 22;
    goto LABEL_5;
  }

LABEL_16:
}

- (void)_sendUpdatedResponse
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(NanoCompanionController *)self _createCompanionRoutesConnectionOnIsolationQueue];
  v3 = sub_1000224F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    numberOfRoutes = [(NanoRoutePlanningResponse *)self->_response numberOfRoutes];
    sessionContext = [(NanoCompanionController *)self sessionContext];
    simpleDescription = [sessionContext simpleDescription];
    companionRoutesConnection = self->_companionRoutesConnection;
    *buf = 134218498;
    v14 = numberOfRoutes;
    v15 = 2112;
    v16 = simpleDescription;
    v17 = 2114;
    v18 = companionRoutesConnection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Sending all (%lu) routes (context:%@) to %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  remoteObjectProxy = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
  v9 = [(NanoRoutePlanningMutableRequest *)self->_request copy];
  v10 = [(NanoRoutePlanningMutableResponse *)self->_response copy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10077ADF0;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, buf);
  [remoteObjectProxy updateRoutePlanningRequest:v9 withResponse:v10 completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_sendStubRouteDetailsIfNecessary
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  routePlanningSession = [(NanoCompanionController *)self routePlanningSession];
  if ([routePlanningSession sessionState] == 1)
  {
    response = self->_response;

    if (!response)
    {

      [(NanoCompanionController *)self _sendStubRouteDetails];
    }
  }

  else
  {
  }
}

- (void)_updateDestinationName
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  routePlanningSession = [(NanoCompanionController *)self routePlanningSession];
  configuration = [routePlanningSession configuration];
  destinationWaypointRequest = [configuration destinationWaypointRequest];
  routePlanningSession2 = [(NanoCompanionController *)self routePlanningSession];
  resolvedWaypoints = [routePlanningSession2 resolvedWaypoints];
  destination = [resolvedWaypoints destination];
  v9 = [RoutePlanningSession mostAppropriateNameForWaypointWithRequest:destinationWaypointRequest composedWaypoint:destination];

  [(NanoCompanionController *)self setDestinationName:v9];
  [(NanoCompanionController *)self _sendStubRouteDetailsIfNecessary];
}

- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  routeCopy = route;
  isolationQueue = self->_isolationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10077B10C;
  v10[3] = &unk_101661A90;
  v10[4] = self;
  v11 = routeCopy;
  v9 = routeCopy;
  dispatch_async(isolationQueue, v10);
}

- (void)routePlanningSession:(id)session didReceiveUpdates:(id)updates forRoutesResult:(id)result
{
  updatesCopy = updates;
  resultCopy = result;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10077B358;
  block[3] = &unk_101661A40;
  block[4] = self;
  v13 = resultCopy;
  v14 = updatesCopy;
  v10 = updatesCopy;
  v11 = resultCopy;
  dispatch_async(isolationQueue, block);
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  sessionCopy = session;
  resultCopy = result;
  isolationQueue = self->_isolationQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10077B430;
  v13[3] = &unk_10165EB08;
  v14 = sessionCopy;
  selfCopy = self;
  v16 = resultCopy;
  typeCopy = type;
  v11 = resultCopy;
  v12 = sessionCopy;
  dispatch_async(isolationQueue, v13);
}

- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  sessionCopy = session;
  isolationQueue = self->_isolationQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10077B51C;
  v9[3] = &unk_101661A90;
  v9[4] = self;
  v10 = sessionCopy;
  v8 = sessionCopy;
  dispatch_async(isolationQueue, v9);
}

- (void)routePlanningSession:(id)session didFinishResolvingWaypointSet:(id)set
{
  setCopy = set;
  isolationQueue = self->_isolationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10077B67C;
  v8[3] = &unk_101661A90;
  v9 = setCopy;
  selfCopy = self;
  v7 = setCopy;
  dispatch_async(isolationQueue, v8);
}

- (void)mapsSession:(id)session didChangeState:(unint64_t)state
{
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10077B73C;
  v5[3] = &unk_101661650;
  v5[4] = self;
  v5[5] = state;
  dispatch_async(isolationQueue, v5);
}

- (GEOCompanionRouteContext)sessionContext
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  routePlanningSession = [(NanoCompanionController *)self routePlanningSession];
  configuration = [routePlanningSession configuration];
  companionContext = [configuration companionContext];

  return companionContext;
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_isolationQueue);
  routePlanningSession = self->_routePlanningSession;
  if (routePlanningSession != sessionCopy)
  {
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, session);
    responseSnapshot = self->_responseSnapshot;
    self->_responseSnapshot = 0;

    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  isolationQueue = self->_isolationQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10077B968;
  v9[3] = &unk_101661A90;
  v10 = toSessionCopy;
  selfCopy = self;
  v8 = toSessionCopy;
  dispatch_async(isolationQueue, v9);
}

- (void)_updateResponseWithRoutesResult:(id)result routeUpdates:(id)updates
{
  resultCopy = result;
  updatesCopy = updates;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10077A1A4;
  v37 = sub_10077A1B4;
  v38 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10077BEC8;
  v32[3] = &unk_10165E808;
  v32[4] = &v33;
  v21 = resultCopy;
  [resultCopy withValue:v32 orError:&stru_101628990];
  if (v34[5])
  {
    selfCopy = self;
    routes = [(NanoRoutePlanningResponse *)self->_response routes];
    v8 = [routes mutableCopy];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v34[5];
    v9 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v9)
    {
      v22 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          uniqueRouteID = [v12 uniqueRouteID];
          v14 = v12;
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10077BED8;
          v26[3] = &unk_10163B1E8;
          v15 = uniqueRouteID;
          v27 = v15;
          v16 = [v8 indexOfObjectPassingTest:v26];
          if (v16 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = [updatesCopy objectForKeyedSubscript:v15];
            if (v17)
            {
              [v8 replaceObjectAtIndex:v16 withObject:v14];
              [(NanoRoutePlanningMutableResponse *)selfCopy->_response setObject:v17 forUserInfoKey:@"transitRouteUpdate" forRouteID:v15];
              v22 = 1;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
      }

      while (v9);

      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = [v8 copy];
      [(NanoRoutePlanningResponse *)selfCopy->_response setRoutes:v18];

      snapshot = [(NanoRoutePlanningResponse *)selfCopy->_response snapshot];
      v20 = [snapshot deltaFromSnapshot:selfCopy->_responseSnapshot];
      objc_storeStrong(&selfCopy->_responseSnapshot, snapshot);
      if ([v20 routeRevisionsChanged])
      {
        [(NanoCompanionController *)selfCopy _sendUpdatedResponse];
      }
    }

    else
    {
      snapshot = obj;
    }

LABEL_19:
  }

  _Block_object_dispose(&v33, 8);
}

- (void)_updateResponseWithRouteCollectionResult:(id)result
{
  resultCopy = result;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (resultCopy)
  {
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_10077A1A4;
    v70 = sub_10077A1B4;
    v71 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = sub_10077A1A4;
    v64 = sub_10077A1B4;
    v65 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_10077A1A4;
    v58 = sub_10077A1B4;
    v59 = 0;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10077C568;
    v53[3] = &unk_101628930;
    v53[4] = &v66;
    v53[5] = &v54;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10077C5FC;
    v52[3] = &unk_10165E590;
    v52[4] = &v60;
    [resultCopy withValue:v53 orError:v52];
    v43 = sub_100021DB0(v67[5], &stru_101628970);
    firstObject = [v67[5] firstObject];
    v6 = [(NanoRoutePlanningMutableResponse *)self->_response mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v14 = v8;

    routeInitializerData = [firstObject routeInitializerData];
    directionsRequest = [routeInitializerData directionsRequest];
    [v14 setDirectionsRequest:directionsRequest];

    routeInitializerData2 = [firstObject routeInitializerData];
    directionsResponse = [routeInitializerData2 directionsResponse];
    [v14 setDirectionsResponse:directionsResponse];

    _maps_traceRecordingData = [firstObject _maps_traceRecordingData];
    [v14 setTraceRecordingData:_maps_traceRecordingData];

    [v14 setRoutes:v43];
    [v14 setSelectedRouteID:v55[5]];
    lastError = [v14 lastError];
    v21 = v61[5];
    v22 = lastError;
    v23 = v21;
    if (v22 | v23)
    {
      v24 = [v22 isEqual:v23];
    }

    else
    {
      v24 = 1;
    }

    [v14 setLastError:v61[5]];
    snapshot = [v14 snapshot];
    v26 = [snapshot deltaFromSnapshot:self->_responseSnapshot];
    objc_storeStrong(&self->_responseSnapshot, snapshot);
    objc_storeStrong(&self->_response, v14);
    if ([firstObject transportType] == 1)
    {
      observingRoutes = self->_observingRoutes;
      v42 = v24;
      if (observingRoutes)
      {
        v28 = resultCopy;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v29 = observingRoutes;
        v30 = [(NSHashTable *)v29 countByEnumeratingWithState:&v48 objects:v73 count:16];
        if (v30)
        {
          v31 = *v49;
          do
          {
            for (i = 0; i != v30; i = i + 1)
            {
              if (*v49 != v31)
              {
                objc_enumerationMutation(v29);
              }

              [*(*(&v48 + 1) + 8 * i) unregisterObserver:self];
            }

            v30 = [(NSHashTable *)v29 countByEnumeratingWithState:&v48 objects:v73 count:16];
          }

          while (v30);
        }

        resultCopy = v28;
        [(NSHashTable *)self->_observingRoutes removeAllObjects];
      }

      else
      {
        v34 = +[NSHashTable weakObjectsHashTable];
        v35 = self->_observingRoutes;
        self->_observingRoutes = v34;
      }

      v41 = resultCopy;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v36 = v43;
      v37 = [v36 countByEnumeratingWithState:&v44 objects:v72 count:16];
      if (v37)
      {
        v38 = *v45;
        do
        {
          for (j = 0; j != v37; j = j + 1)
          {
            if (*v45 != v38)
            {
              objc_enumerationMutation(v36);
            }

            v40 = *(*(&v44 + 1) + 8 * j);
            [v40 registerObserver:self];
            [(NSHashTable *)self->_observingRoutes addObject:v40];
          }

          v37 = [v36 countByEnumeratingWithState:&v44 objects:v72 count:16];
        }

        while (v37);
      }

      resultCopy = v41;
      v24 = v42;
    }

    if ([v26 routeRevisionsChanged] & 1 | ((v24 & 1) == 0))
    {
      [(NanoCompanionController *)self _sendUpdatedResponse];
    }

    else if ([v26 selectedRouteChanged])
    {
      [(NanoCompanionController *)self _sendUpdatedSelectedRouteID];
    }

    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v60, 8);

    _Block_object_dispose(&v66, 8);
  }

  else
  {
    routePlanningSession = [(NanoCompanionController *)self routePlanningSession];
    sessionState = [routePlanningSession sessionState];

    response = self->_response;
    if (sessionState == 1)
    {
      self->_response = 0;

      responseSnapshot = self->_responseSnapshot;
      self->_responseSnapshot = 0;

      v13 = self->_observingRoutes;
      self->_observingRoutes = 0;

      [(NanoCompanionController *)self _sendStubRouteDetailsIfNecessary];
    }

    else if (response)
    {
      self->_response = 0;

      v33 = self->_observingRoutes;
      self->_observingRoutes = 0;

      [(NanoCompanionController *)self _clearRoutePreviews];
    }
  }
}

- (void)failRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler
{
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v12 = sub_1000224F8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138412290;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd", buf, 0xCu);
  }

  companionRouteContext = [requestCopy companionRouteContext];
  sessionContext = [(NanoCompanionController *)self sessionContext];
  if ([companionRouteContext isStaleComparedToContext:sessionContext])
  {
    v16 = sub_1000224F8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [companionRouteContext simpleDescription];
      simpleDescription2 = [sessionContext simpleDescription];
      *buf = 138412546;
      v29 = simpleDescription;
      v30 = 2112;
      v31 = simpleDescription2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Incoming context(%@) was stale compared to our current context(%@); ignoring fail route planning request", buf, 0x16u);
    }
  }

  else
  {
    v19 = [requestCopy mutableCopy];
    request = self->_request;
    self->_request = v19;

    v21 = [responseCopy mutableCopy];
    response = self->_response;
    self->_response = v21;

    v23 = sub_1000224F8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      simpleDescription3 = [companionRouteContext simpleDescription];
      *buf = 138412290;
      v29 = simpleDescription3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Failing preview routes and ending navigation (context:%@)", buf, 0xCu);
    }

    ipcServer = self->_ipcServer;
    lastError = [responseCopy lastError];
    [(IPCServer *)ipcServer navigationStateDidChangeTo:3 reason:@"Directions not available" error:lastError];

    objc_storeStrong(&self->_clearingContext, companionRouteContext);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10077C998;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_sync(&_dispatch_main_q, block);
    handlerCopy[2](handlerCopy);
  }
}

- (void)clearRoutePlanningWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v9 = sub_1000224F8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    simpleDescription = [contextCopy simpleDescription];
    *buf = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd with incoming route context: %@", buf, 0x16u);
  }

  sessionContext = [(NanoCompanionController *)self sessionContext];
  if ([contextCopy isStaleComparedToContext:sessionContext])
  {
    v13 = sub_1000224F8();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_7:

      goto LABEL_16;
    }

    simpleDescription2 = [contextCopy simpleDescription];
    simpleDescription3 = [sessionContext simpleDescription];
    *buf = 138412546;
    v23 = simpleDescription2;
    v24 = 2112;
    v25 = simpleDescription3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Incoming context(%@) was stale compared to our current context(%@); ignoring clear route planning request", buf, 0x16u);

LABEL_6:
    goto LABEL_7;
  }

  if (!contextCopy && sessionContext && [sessionContext origin] == 2)
  {
    v13 = sub_1000224F8();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    simpleDescription2 = [sessionContext simpleDescription];
    *buf = 138412290;
    v23 = simpleDescription2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Received clear route planning without a context, and the current context is from companion (%@); dropping request", buf, 0xCu);
    goto LABEL_6;
  }

  [(IPCServer *)self->_ipcServer navigationStateDidChangeTo:4 reason:@"Directions were cleared"];
  objc_storeStrong(&self->_clearingContext, sessionContext);
  v16 = sub_1000224F8();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    simpleDescription4 = [sessionContext simpleDescription];
    *buf = 138412290;
    v23 = simpleDescription4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Clearing preview routes and ending navigation (current context:%@)", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10077CD5C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
  lastReceivedRouteIDs = self->_lastReceivedRouteIDs;
  self->_lastReceivedRouteIDs = 0;

  lastPreviewedRouteID = self->_lastPreviewedRouteID;
  self->_lastPreviewedRouteID = 0;

  clearingContext = self->_clearingContext;
  self->_clearingContext = 0;

  handlerCopy[2](handlerCopy);
LABEL_16:
}

- (void)updateRoutePlanningRequest:(id)request withSelectedRouteID:(id)d completionHandler:(id)handler
{
  requestCopy = request;
  dCopy = d;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v12 = sub_1000224F8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromSelector(a2);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd", &buf, 0xCu);
  }

  routePlanningSession = [(NanoCompanionController *)self routePlanningSession];
  v15 = routePlanningSession == 0;

  if (v15)
  {
    routes = sub_1000224F8();
    if (os_log_type_enabled(routes, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, routes, OS_LOG_TYPE_ERROR, "Attempting to select a route ID when a RoutePlanningSession is not currently active.", &buf, 2u);
    }
  }

  else
  {
    routePlanningSession2 = [(NanoCompanionController *)self routePlanningSession];
    currentRouteCollection = [routePlanningSession2 currentRouteCollection];
    routes = [currentRouteCollection routes];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v19 = [NSUUID _maps_UUIDWithData:dCopy];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10077D180;
    v24[3] = &unk_1016288C8;
    v20 = v19;
    v25 = v20;
    v26 = &v28;
    p_buf = &buf;
    [routes enumerateObjectsUsingBlock:v24];
    if (*(*(&buf + 1) + 24))
    {
      objc_storeStrong(&self->_lastPreviewedRouteID, v19);
      routePlanningSession3 = [(NanoCompanionController *)self routePlanningSession];
      v22 = v29[3];
      routePlanningSession4 = [(NanoCompanionController *)self routePlanningSession];
      -[NSObject setSelectedRouteIndex:forTransportType:](routePlanningSession3, "setSelectedRouteIndex:forTransportType:", v22, [routePlanningSession4 currentTransportType]);
    }

    else
    {
      routePlanningSession3 = sub_1000224F8();
      if (os_log_type_enabled(routePlanningSession3, OS_LOG_TYPE_ERROR))
      {
        *v32 = 138412290;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, routePlanningSession3, OS_LOG_TYPE_ERROR, "Cannot select route %@, doesn't match any we have locally", v32, 0xCu);
      }
    }

    handlerCopy[2](handlerCopy);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&buf, 8);
  }
}

- (void)updateRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler
{
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v12 = sub_1000224F8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138412290;
    v40 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd", buf, 0xCu);
  }

  companionRouteContext = [requestCopy companionRouteContext];
  if (companionRouteContext)
  {
    routes = [responseCopy routes];
    v16 = sub_100021DB0(routes, &stru_1016288A0);
    if ([(NSArray *)self->_lastReceivedRouteIDs isEqualToArray:v16])
    {
      v17 = sub_1000224F8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "The routes which we just received are the same as the last ones we received; ignoring update route planning with response request", buf, 2u);
      }

      goto LABEL_29;
    }

    v18 = [v16 copy];
    lastReceivedRouteIDs = self->_lastReceivedRouteIDs;
    self->_lastReceivedRouteIDs = v18;

    v20 = sub_1000224F8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [routes count];
      simpleDescription = [companionRouteContext simpleDescription];
      *buf = 134218242;
      v40 = v21;
      v41 = 2112;
      v42 = simpleDescription;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Update with %ld routes from gizmo (context:%@)", buf, 0x16u);
    }

    objc_storeStrong(&self->_anticipatingContext, companionRouteContext);
    v23 = [requestCopy mutableCopy];
    request = self->_request;
    self->_request = v23;

    v25 = [responseCopy mutableCopy];
    response = self->_response;
    self->_response = v25;

    routePlanningSession = [(NanoCompanionController *)self routePlanningSession];

    if (!routePlanningSession)
    {
      [(NanoCompanionController *)self _enterRoutePlanningForRequest:requestCopy];
LABEL_28:
      handlerCopy[2](handlerCopy);
LABEL_29:

      goto LABEL_30;
    }

    v38 = [[RouteCollection alloc] initWithRoutes:routes currentRouteIndex:0];
    v37 = [Result resultWithValue:?];
    anticipatingContext = self->_anticipatingContext;
    routePlanningSession2 = [(NanoCompanionController *)self routePlanningSession];
    configuration = [routePlanningSession2 configuration];
    [configuration setCompanionContext:anticipatingContext];

    firstObject = [routes firstObject];
    transportType = [firstObject transportType];
    if (transportType == 2)
    {
      isWalkingOnlyTransitRoute = [firstObject isWalkingOnlyTransitRoute];
      routePlanningSession3 = [(NanoCompanionController *)self routePlanningSession];
      if ((isWalkingOnlyTransitRoute & 1) == 0)
      {
        v35 = 2;
LABEL_27:
        [routePlanningSession3 updateRouteCollectionResult:v37 forTransportType:v35];

        goto LABEL_28;
      }
    }

    else
    {
      v36 = transportType;
      routePlanningSession3 = [(NanoCompanionController *)self routePlanningSession];
      v35 = 1;
      if (v36 <= 3)
      {
        if (v36 != 1)
        {
          if (v36 == 3)
          {
            v35 = 5;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v36 == 4)
        {
          v35 = 0;
          goto LABEL_27;
        }

        if (v36 == 6)
        {
          v35 = 4;
          goto LABEL_27;
        }

        if (v36 != 5)
        {
          goto LABEL_27;
        }
      }
    }

    v35 = 3;
    goto LABEL_27;
  }

  routes = sub_1000224F8();
  if (os_log_type_enabled(routes, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, routes, OS_LOG_TYPE_ERROR, "Cannot update routes without a context", buf, 2u);
  }

LABEL_30:
}

- (void)anticipateRoutePlanningRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v9 = sub_1000224F8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    v28 = 138412290;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd", &v28, 0xCu);
  }

  anticipatingContext = self->_anticipatingContext;
  if (anticipatingContext)
  {
    sessionContext = anticipatingContext;
    goto LABEL_6;
  }

  sessionContext = [(NanoCompanionController *)self sessionContext];
  if (sessionContext)
  {
LABEL_6:
    companionRouteContext = [requestCopy companionRouteContext];
    v14 = [(GEOCompanionRouteContext *)sessionContext isEqual:companionRouteContext];

    if (v14)
    {
      goto LABEL_21;
    }
  }

  resolvedTransportType = [requestCopy resolvedTransportType];
  if (resolvedTransportType > 5)
  {
    v16 = -1;
  }

  else
  {
    v16 = qword_1012160D0[resolvedTransportType] - 2;
  }

  companionRouteContext2 = [requestCopy companionRouteContext];
  v18 = sub_1000224F8();
  v19 = v18;
  if (companionRouteContext2)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      if (v16 > 6)
      {
        v20 = @"AUTOMOBILE";
      }

      else
      {
        v20 = *(&off_101628A58 + v16);
      }

      simpleDescription = [companionRouteContext2 simpleDescription];
      v28 = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = simpleDescription;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Anticipate routes from gizmo (transportType:%@, context:%@)", &v28, 0x16u);
    }

    lastPreviewedRouteID = self->_lastPreviewedRouteID;
    self->_lastPreviewedRouteID = 0;

    lastReceivedRouteIDs = self->_lastReceivedRouteIDs;
    self->_lastReceivedRouteIDs = 0;

    objc_storeStrong(&self->_anticipatingContext, companionRouteContext2);
    v24 = [requestCopy mutableCopy];
    request = self->_request;
    self->_request = v24;

    v26 = objc_alloc_init(NanoRoutePlanningMutableResponse);
    response = self->_response;
    self->_response = v26;

    [(NanoCompanionController *)self _enterRoutePlanningForRequest:requestCopy];
    handlerCopy[2](handlerCopy);
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Cannot anticipate routes without a context", &v28, 2u);
    }
  }

LABEL_21:
}

- (void)checkinForRoutePlanning
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = sub_1000224F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd", &v5, 0xCu);
  }
}

- (void)_enterRoutePlanningForRequest:(id)request
{
  requestCopy = request;
  v5 = [DirectionItem directionItemWithNanoRoutePlanningRequest:requestCopy];
  v6 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v6 getActivePairedDevice];
  if (GEOConfigGetBOOL())
  {
    v8 = getActivePairedDevice;
    if (!v8 || (v9 = v8, [v8 valueForProperty:NRDevicePropertySystemVersion], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "compare:options:", @"9.0", 64), v10, v9, v9, v11 != -1))
    {
      v12 = @"Phone";
      v13 = 1;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = @"Watch";
  v13 = 3;
LABEL_7:

  v14 = sub_1000224F8();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    simpleDescription = [(GEOCompanionRouteContext *)self->_anticipatingContext simpleDescription];
    *buf = 138412546;
    v36 = v12;
    v37 = 2112;
    v38 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Enter route planning with initiator: %@ (%@)", buf, 0x16u);
  }

  v33[0] = @"DirectionsSessionInitiatorKey";
  v16 = [NSNumber numberWithUnsignedInteger:v13];
  v33[1] = @"DirectionsCompanionRouteContextKey";
  v34[0] = v16;
  v34[1] = self->_anticipatingContext;
  v17 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

  startNavigationAutomatically = [requestCopy startNavigationAutomatically];
  if (startNavigationAutomatically)
  {
    v20 = [NSNumber numberWithDouble:5.0];
    v21 = +[NSUserDefaults standardUserDefaults];
    v22 = [v21 objectForKey:@"NavigationAutoLaunchDelayKey"];

    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23;

    [v24 doubleValue];
    v26 = v25;

    v27 = [NSNumber numberWithDouble:v26];
    [v18 setObject:v27 forKeyedSubscript:@"DirectionsNavigationAutoLaunchDelayKey"];
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10077DE20;
  v30[3] = &unk_101661A90;
  v31 = v5;
  v32 = v18;
  v28 = v18;
  v29 = v5;
  dispatch_sync(&_dispatch_main_q, v30);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_companionRoutesConnection invalidate];
  companionRoutesConnection = self->_companionRoutesConnection;
  self->_companionRoutesConnection = 0;

  v4.receiver = self;
  v4.super_class = NanoCompanionController;
  [(NanoCompanionController *)&v4 dealloc];
}

- (NanoCompanionController)initWithPlatformController:(id)controller ipcServer:(id)server
{
  controllerCopy = controller;
  serverCopy = server;
  v24.receiver = self;
  v24.super_class = NanoCompanionController;
  v9 = [(NanoCompanionController *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platformController, controller);
    objc_storeStrong(&v10->_ipcServer, server);
    v11 = +[NSBundle mainBundle];
    bundleIdentifier = [v11 bundleIdentifier];
    v13 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", bundleIdentifier, objc_opt_class(), v10];

    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String, v15);
    isolationQueue = v10->_isolationQueue;
    v10->_isolationQueue = v16;

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v10 selector:"_deviceDidPairNotification:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

    v19 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10077E214;
    block[3] = &unk_101661B18;
    v20 = v10;
    v23 = v20;
    dispatch_async(v19, block);

    [(NanoCompanionController *)v20 _createCompanionRoutesConnection];
  }

  return v10;
}

@end