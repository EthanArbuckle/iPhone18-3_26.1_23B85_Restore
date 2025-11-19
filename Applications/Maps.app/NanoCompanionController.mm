@interface NanoCompanionController
+ (void)initializePairedDeviceRegistry;
- (GEOCompanionRouteContext)sessionContext;
- (NanoCompanionController)initWithPlatformController:(id)a3 ipcServer:(id)a4;
- (id)_currentRouteID;
- (id)_routeIDFromRouteCollectionResult:(id)a3;
- (id)_syntheticRouteDetailsForCurrentRequest;
- (void)_clearRoutePreviews;
- (void)_createCompanionRoutesConnection;
- (void)_createCompanionRoutesConnectionOnIsolationQueue;
- (void)_enterRoutePlanningForRequest:(id)a3;
- (void)_sendStubRouteDetails;
- (void)_sendStubRouteDetailsIfNecessary;
- (void)_sendUpdatedResponse;
- (void)_sendUpdatedSelectedRouteID;
- (void)_updateDestinationName;
- (void)_updateResponseWithRouteCollectionResult:(id)a3;
- (void)_updateResponseWithRoutesResult:(id)a3 routeUpdates:(id)a4;
- (void)anticipateRoutePlanningRequest:(id)a3 completionHandler:(id)a4;
- (void)checkinForRoutePlanning;
- (void)clearRoutePlanningWithContext:(id)a3 completionHandler:(id)a4;
- (void)composedRoute:(id)a3 changedSelectedRideInClusteredSegment:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6;
- (void)dealloc;
- (void)failRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5;
- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)routePlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4;
- (void)routePlanningSession:(id)a3 didReceiveUpdates:(id)a4 forRoutesResult:(id)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setRoutePlanningSession:(id)a3;
- (void)updateRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5;
- (void)updateRoutePlanningRequest:(id)a3 withSelectedRouteID:(id)a4 completionHandler:(id)a5;
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

    v10 = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
    [v10 checkinForRoutePlanning];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (id)_routeIDFromRouteCollectionResult:(id)a3
{
  v3 = a3;
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
  [v3 withValue:v8 orError:&stru_101628A38];
  v4 = [v10[5] currentRoute];
  v5 = [v4 uniqueRouteID];
  v6 = [v5 _maps_data];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_currentRouteID
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(NanoCompanionController *)self routePlanningSession];
  v4 = [v3 currentRouteCollectionResult];
  v5 = [(NanoCompanionController *)self _routeIDFromRouteCollectionResult:v4];

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
      v5 = [(NanoCompanionController *)self sessionContext];
      v6 = [v5 simpleDescription];
      companionRoutesConnection = self->_companionRoutesConnection;
      v10 = 138412546;
      v11 = v6;
      v12 = 2114;
      v13 = companionRoutesConnection;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clearing preview routes (context:%@) to %{public}@", &v10, 0x16u);
    }

    v8 = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
    v9 = [(NanoCompanionController *)self sessionContext];
    [v8 clearRoutePlanningWithContext:v9 completionHandler:&stru_101628A18];
  }
}

- (id)_syntheticRouteDetailsForCurrentRequest
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(NanoCompanionController *)self routePlanningSession];
  v4 = [v3 currentTransportType];
  if ((v4 - 1) > 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_101216100[(v4 - 1)];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(NanoCompanionController *)self routePlanningSession];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10077A56C;
  v15 = &unk_1016289F8;
  v17 = &v18;
  v8 = v6;
  v16 = v8;
  [v7 enumerateRequestsOrWaypointsUsingBlock:&v12];

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
  v3 = [(NanoCompanionController *)self _currentRouteID];
  [(NanoCompanionController *)self _createCompanionRoutesConnectionOnIsolationQueue];
  v4 = sub_1000224F8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(NanoCompanionController *)self sessionContext];
    v6 = [v5 simpleDescription];
    companionRoutesConnection = self->_companionRoutesConnection;
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v6;
    v14 = 2114;
    v15 = companionRoutesConnection;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending selected route ID %@ (context:%@) to %{public}@", &v10, 0x20u);
  }

  v8 = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
  v9 = [(NanoRoutePlanningMutableRequest *)self->_request copy];
  [v8 updateRoutePlanningRequest:v9 withSelectedRouteID:v3 completionHandler:&stru_1016289D0];
}

- (void)_sendStubRouteDetails
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(NanoCompanionController *)self sessionContext];
  if (v3)
  {
    v4 = v3;
    anticipatingContext = self->_anticipatingContext;
    v6 = [(NanoCompanionController *)self sessionContext];
    LODWORD(anticipatingContext) = [(GEOCompanionRouteContext *)anticipatingContext isEqual:v6];

    if (!anticipatingContext)
    {
      v7 = [(NanoCompanionController *)self _syntheticRouteDetailsForCurrentRequest];
      if (v7)
      {
        v14 = [(NanoCompanionController *)self sessionContext];
        v8 = [NanoRoutePlanningRequest requestForDirectionsWithCompanionRouteDetails:v7 companionRouteContext:v14];

        v15 = [v8 mutableCopy];
        request = self->_request;
        self->_request = v15;

        [(NanoCompanionController *)self _createCompanionRoutesConnectionOnIsolationQueue];
        v17 = sub_1000224F8();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v7 transportType];
          if (v18 >= 7)
          {
            v19 = [NSString stringWithFormat:@"(unknown: %i)", v18];
          }

          else
          {
            v19 = *(&off_101628A90 + v18);
          }

          v20 = v19;
          v21 = [(NanoCompanionController *)self sessionContext];
          v22 = [v21 simpleDescription];
          companionRoutesConnection = self->_companionRoutesConnection;

          *buf = 138412802;
          v27 = v19;
          v28 = 2112;
          v29 = v22;
          v30 = 2114;
          v31 = companionRoutesConnection;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Sending stub route with transport type:(%@) (context:%@) to %{public}@", buf, 0x20u);
        }

        v24 = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
        v25 = [(NanoRoutePlanningMutableRequest *)self->_request copy];
        [v24 anticipateRoutePlanningRequest:v25 completionHandler:&stru_1016289B0];

        goto LABEL_15;
      }

      v8 = sub_1000224F8();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      *buf = 0;
      v10 = "Delaying stub route as not all waypoints are resolved";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 2;
LABEL_5:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
      goto LABEL_15;
    }
  }

  v7 = sub_1000224F8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(NanoCompanionController *)self sessionContext];
    v9 = self->_anticipatingContext;
    *buf = 138412546;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v10 = "Not sending stub route details (sessionContext: %@, anticipatingContext: %@)";
    v11 = v7;
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
    v4 = [(NanoRoutePlanningResponse *)self->_response numberOfRoutes];
    v5 = [(NanoCompanionController *)self sessionContext];
    v6 = [v5 simpleDescription];
    companionRoutesConnection = self->_companionRoutesConnection;
    *buf = 134218498;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    v17 = 2114;
    v18 = companionRoutesConnection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Sending all (%lu) routes (context:%@) to %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v8 = [(NSXPCConnection *)self->_companionRoutesConnection remoteObjectProxy];
  v9 = [(NanoRoutePlanningMutableRequest *)self->_request copy];
  v10 = [(NanoRoutePlanningMutableResponse *)self->_response copy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10077ADF0;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, buf);
  [v8 updateRoutePlanningRequest:v9 withResponse:v10 completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_sendStubRouteDetailsIfNecessary
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v4 = [(NanoCompanionController *)self routePlanningSession];
  if ([v4 sessionState] == 1)
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
  v3 = [(NanoCompanionController *)self routePlanningSession];
  v4 = [v3 configuration];
  v5 = [v4 destinationWaypointRequest];
  v6 = [(NanoCompanionController *)self routePlanningSession];
  v7 = [v6 resolvedWaypoints];
  v8 = [v7 destination];
  v9 = [RoutePlanningSession mostAppropriateNameForWaypointWithRequest:v5 composedWaypoint:v8];

  [(NanoCompanionController *)self setDestinationName:v9];
  [(NanoCompanionController *)self _sendStubRouteDetailsIfNecessary];
}

- (void)composedRoute:(id)a3 changedSelectedRideInClusteredSegment:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6
{
  v7 = a3;
  isolationQueue = self->_isolationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10077B10C;
  v10[3] = &unk_101661A90;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(isolationQueue, v10);
}

- (void)routePlanningSession:(id)a3 didReceiveUpdates:(id)a4 forRoutesResult:(id)a5
{
  v7 = a4;
  v8 = a5;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10077B358;
  block[3] = &unk_101661A40;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(isolationQueue, block);
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  isolationQueue = self->_isolationQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10077B430;
  v13[3] = &unk_10165EB08;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(isolationQueue, v13);
}

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  v6 = a3;
  isolationQueue = self->_isolationQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10077B51C;
  v9[3] = &unk_101661A90;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(isolationQueue, v9);
}

- (void)routePlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4
{
  v5 = a4;
  isolationQueue = self->_isolationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10077B67C;
  v8[3] = &unk_101661A90;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(isolationQueue, v8);
}

- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4
{
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10077B73C;
  v5[3] = &unk_101661650;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(isolationQueue, v5);
}

- (GEOCompanionRouteContext)sessionContext
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(NanoCompanionController *)self routePlanningSession];
  v4 = [v3 configuration];
  v5 = [v4 companionContext];

  return v5;
}

- (void)setRoutePlanningSession:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  routePlanningSession = self->_routePlanningSession;
  if (routePlanningSession != v7)
  {
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, a3);
    responseSnapshot = self->_responseSnapshot;
    self->_responseSnapshot = 0;

    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  isolationQueue = self->_isolationQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10077B968;
  v9[3] = &unk_101661A90;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(isolationQueue, v9);
}

- (void)_updateResponseWithRoutesResult:(id)a3 routeUpdates:(id)a4
{
  v6 = a3;
  v24 = a4;
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
  v21 = v6;
  [v6 withValue:v32 orError:&stru_101628990];
  if (v34[5])
  {
    v23 = self;
    v7 = [(NanoRoutePlanningResponse *)self->_response routes];
    v8 = [v7 mutableCopy];

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
          v13 = [v12 uniqueRouteID];
          v14 = v12;
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10077BED8;
          v26[3] = &unk_10163B1E8;
          v15 = v13;
          v27 = v15;
          v16 = [v8 indexOfObjectPassingTest:v26];
          if (v16 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = [v24 objectForKeyedSubscript:v15];
            if (v17)
            {
              [v8 replaceObjectAtIndex:v16 withObject:v14];
              [(NanoRoutePlanningMutableResponse *)v23->_response setObject:v17 forUserInfoKey:@"transitRouteUpdate" forRouteID:v15];
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
      [(NanoRoutePlanningResponse *)v23->_response setRoutes:v18];

      v19 = [(NanoRoutePlanningResponse *)v23->_response snapshot];
      v20 = [v19 deltaFromSnapshot:v23->_responseSnapshot];
      objc_storeStrong(&v23->_responseSnapshot, v19);
      if ([v20 routeRevisionsChanged])
      {
        [(NanoCompanionController *)v23 _sendUpdatedResponse];
      }
    }

    else
    {
      v19 = obj;
    }

LABEL_19:
  }

  _Block_object_dispose(&v33, 8);
}

- (void)_updateResponseWithRouteCollectionResult:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (v4)
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
    [v4 withValue:v53 orError:v52];
    v43 = sub_100021DB0(v67[5], &stru_101628970);
    v5 = [v67[5] firstObject];
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

    v15 = [v5 routeInitializerData];
    v16 = [v15 directionsRequest];
    [v14 setDirectionsRequest:v16];

    v17 = [v5 routeInitializerData];
    v18 = [v17 directionsResponse];
    [v14 setDirectionsResponse:v18];

    v19 = [v5 _maps_traceRecordingData];
    [v14 setTraceRecordingData:v19];

    [v14 setRoutes:v43];
    [v14 setSelectedRouteID:v55[5]];
    v20 = [v14 lastError];
    v21 = v61[5];
    v22 = v20;
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
    v25 = [v14 snapshot];
    v26 = [v25 deltaFromSnapshot:self->_responseSnapshot];
    objc_storeStrong(&self->_responseSnapshot, v25);
    objc_storeStrong(&self->_response, v14);
    if ([v5 transportType] == 1)
    {
      observingRoutes = self->_observingRoutes;
      v42 = v24;
      if (observingRoutes)
      {
        v28 = v4;
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

        v4 = v28;
        [(NSHashTable *)self->_observingRoutes removeAllObjects];
      }

      else
      {
        v34 = +[NSHashTable weakObjectsHashTable];
        v35 = self->_observingRoutes;
        self->_observingRoutes = v34;
      }

      v41 = v4;
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

      v4 = v41;
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
    v9 = [(NanoCompanionController *)self routePlanningSession];
    v10 = [v9 sessionState];

    response = self->_response;
    if (v10 == 1)
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

- (void)failRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v12 = sub_1000224F8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138412290;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd", buf, 0xCu);
  }

  v14 = [v9 companionRouteContext];
  v15 = [(NanoCompanionController *)self sessionContext];
  if ([v14 isStaleComparedToContext:v15])
  {
    v16 = sub_1000224F8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v14 simpleDescription];
      v18 = [v15 simpleDescription];
      *buf = 138412546;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Incoming context(%@) was stale compared to our current context(%@); ignoring fail route planning request", buf, 0x16u);
    }
  }

  else
  {
    v19 = [v9 mutableCopy];
    request = self->_request;
    self->_request = v19;

    v21 = [v10 mutableCopy];
    response = self->_response;
    self->_response = v21;

    v23 = sub_1000224F8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v14 simpleDescription];
      *buf = 138412290;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Failing preview routes and ending navigation (context:%@)", buf, 0xCu);
    }

    ipcServer = self->_ipcServer;
    v26 = [v10 lastError];
    [(IPCServer *)ipcServer navigationStateDidChangeTo:3 reason:@"Directions not available" error:v26];

    objc_storeStrong(&self->_clearingContext, v14);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10077C998;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_sync(&_dispatch_main_q, block);
    v11[2](v11);
  }
}

- (void)clearRoutePlanningWithContext:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v9 = sub_1000224F8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [v7 simpleDescription];
    *buf = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd with incoming route context: %@", buf, 0x16u);
  }

  v12 = [(NanoCompanionController *)self sessionContext];
  if ([v7 isStaleComparedToContext:v12])
  {
    v13 = sub_1000224F8();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_7:

      goto LABEL_16;
    }

    v14 = [v7 simpleDescription];
    v15 = [v12 simpleDescription];
    *buf = 138412546;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Incoming context(%@) was stale compared to our current context(%@); ignoring clear route planning request", buf, 0x16u);

LABEL_6:
    goto LABEL_7;
  }

  if (!v7 && v12 && [v12 origin] == 2)
  {
    v13 = sub_1000224F8();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v14 = [v12 simpleDescription];
    *buf = 138412290;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Received clear route planning without a context, and the current context is from companion (%@); dropping request", buf, 0xCu);
    goto LABEL_6;
  }

  [(IPCServer *)self->_ipcServer navigationStateDidChangeTo:4 reason:@"Directions were cleared"];
  objc_storeStrong(&self->_clearingContext, v12);
  v16 = sub_1000224F8();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v12 simpleDescription];
    *buf = 138412290;
    v23 = v17;
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

  v8[2](v8);
LABEL_16:
}

- (void)updateRoutePlanningRequest:(id)a3 withSelectedRouteID:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v12 = sub_1000224F8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromSelector(a2);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd", &buf, 0xCu);
  }

  v14 = [(NanoCompanionController *)self routePlanningSession];
  v15 = v14 == 0;

  if (v15)
  {
    v18 = sub_1000224F8();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Attempting to select a route ID when a RoutePlanningSession is not currently active.", &buf, 2u);
    }
  }

  else
  {
    v16 = [(NanoCompanionController *)self routePlanningSession];
    v17 = [v16 currentRouteCollection];
    v18 = [v17 routes];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v19 = [NSUUID _maps_UUIDWithData:v10];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10077D180;
    v24[3] = &unk_1016288C8;
    v20 = v19;
    v25 = v20;
    v26 = &v28;
    p_buf = &buf;
    [v18 enumerateObjectsUsingBlock:v24];
    if (*(*(&buf + 1) + 24))
    {
      objc_storeStrong(&self->_lastPreviewedRouteID, v19);
      v21 = [(NanoCompanionController *)self routePlanningSession];
      v22 = v29[3];
      v23 = [(NanoCompanionController *)self routePlanningSession];
      -[NSObject setSelectedRouteIndex:forTransportType:](v21, "setSelectedRouteIndex:forTransportType:", v22, [v23 currentTransportType]);
    }

    else
    {
      v21 = sub_1000224F8();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v32 = 138412290;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Cannot select route %@, doesn't match any we have locally", v32, 0xCu);
      }
    }

    v11[2](v11);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&buf, 8);
  }
}

- (void)updateRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v12 = sub_1000224F8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138412290;
    v40 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got %@ call from nanomapscd", buf, 0xCu);
  }

  v14 = [v9 companionRouteContext];
  if (v14)
  {
    v15 = [v10 routes];
    v16 = sub_100021DB0(v15, &stru_1016288A0);
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
      v21 = [v15 count];
      v22 = [v14 simpleDescription];
      *buf = 134218242;
      v40 = v21;
      v41 = 2112;
      v42 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Update with %ld routes from gizmo (context:%@)", buf, 0x16u);
    }

    objc_storeStrong(&self->_anticipatingContext, v14);
    v23 = [v9 mutableCopy];
    request = self->_request;
    self->_request = v23;

    v25 = [v10 mutableCopy];
    response = self->_response;
    self->_response = v25;

    v27 = [(NanoCompanionController *)self routePlanningSession];

    if (!v27)
    {
      [(NanoCompanionController *)self _enterRoutePlanningForRequest:v9];
LABEL_28:
      v11[2](v11);
LABEL_29:

      goto LABEL_30;
    }

    v38 = [[RouteCollection alloc] initWithRoutes:v15 currentRouteIndex:0];
    v37 = [Result resultWithValue:?];
    anticipatingContext = self->_anticipatingContext;
    v29 = [(NanoCompanionController *)self routePlanningSession];
    v30 = [v29 configuration];
    [v30 setCompanionContext:anticipatingContext];

    v31 = [v15 firstObject];
    v32 = [v31 transportType];
    if (v32 == 2)
    {
      v33 = [v31 isWalkingOnlyTransitRoute];
      v34 = [(NanoCompanionController *)self routePlanningSession];
      if ((v33 & 1) == 0)
      {
        v35 = 2;
LABEL_27:
        [v34 updateRouteCollectionResult:v37 forTransportType:v35];

        goto LABEL_28;
      }
    }

    else
    {
      v36 = v32;
      v34 = [(NanoCompanionController *)self routePlanningSession];
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

  v15 = sub_1000224F8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Cannot update routes without a context", buf, 2u);
  }

LABEL_30:
}

- (void)anticipateRoutePlanningRequest:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v12 = anticipatingContext;
    goto LABEL_6;
  }

  v12 = [(NanoCompanionController *)self sessionContext];
  if (v12)
  {
LABEL_6:
    v13 = [v7 companionRouteContext];
    v14 = [(GEOCompanionRouteContext *)v12 isEqual:v13];

    if (v14)
    {
      goto LABEL_21;
    }
  }

  v15 = [v7 resolvedTransportType];
  if (v15 > 5)
  {
    v16 = -1;
  }

  else
  {
    v16 = qword_1012160D0[v15] - 2;
  }

  v17 = [v7 companionRouteContext];
  v18 = sub_1000224F8();
  v19 = v18;
  if (v17)
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

      v21 = [v17 simpleDescription];
      v28 = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Anticipate routes from gizmo (transportType:%@, context:%@)", &v28, 0x16u);
    }

    lastPreviewedRouteID = self->_lastPreviewedRouteID;
    self->_lastPreviewedRouteID = 0;

    lastReceivedRouteIDs = self->_lastReceivedRouteIDs;
    self->_lastReceivedRouteIDs = 0;

    objc_storeStrong(&self->_anticipatingContext, v17);
    v24 = [v7 mutableCopy];
    request = self->_request;
    self->_request = v24;

    v26 = objc_alloc_init(NanoRoutePlanningMutableResponse);
    response = self->_response;
    self->_response = v26;

    [(NanoCompanionController *)self _enterRoutePlanningForRequest:v7];
    v8[2](v8);
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

- (void)_enterRoutePlanningForRequest:(id)a3
{
  v4 = a3;
  v5 = [DirectionItem directionItemWithNanoRoutePlanningRequest:v4];
  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = [v6 getActivePairedDevice];
  if (GEOConfigGetBOOL())
  {
    v8 = v7;
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
    v15 = [(GEOCompanionRouteContext *)self->_anticipatingContext simpleDescription];
    *buf = 138412546;
    v36 = v12;
    v37 = 2112;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Enter route planning with initiator: %@ (%@)", buf, 0x16u);
  }

  v33[0] = @"DirectionsSessionInitiatorKey";
  v16 = [NSNumber numberWithUnsignedInteger:v13];
  v33[1] = @"DirectionsCompanionRouteContextKey";
  v34[0] = v16;
  v34[1] = self->_anticipatingContext;
  v17 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

  v19 = [v4 startNavigationAutomatically];
  if (v19)
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

- (NanoCompanionController)initWithPlatformController:(id)a3 ipcServer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = NanoCompanionController;
  v9 = [(NanoCompanionController *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platformController, a3);
    objc_storeStrong(&v10->_ipcServer, a4);
    v11 = +[NSBundle mainBundle];
    v12 = [v11 bundleIdentifier];
    v13 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", v12, objc_opt_class(), v10];

    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
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