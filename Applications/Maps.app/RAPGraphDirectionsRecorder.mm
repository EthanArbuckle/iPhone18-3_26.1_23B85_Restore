@interface RAPGraphDirectionsRecorder
- (BOOL)_bucketHasOnlyMissedStep:(id)step;
- (BOOL)_bucketHasOnlyStoredSteps:(id)steps;
- (GEOComposedRoute)observedRoute;
- (RAPGraphDirectionsRecorder)init;
- (id)_userPathEntryWithRouteIndex:(unint64_t)index stepIndex:(unint64_t)stepIndex;
- (id)_userSearchInputForWaypoint:(id)waypoint;
- (id)copyCurrentPartialRecording;
- (void)_dispatch:(id)_dispatch;
- (void)_handleNewRoute:(id)route fromStepIndex:(unint64_t)index;
- (void)_immediatelyUpdateRecording:(id)recording withAuxiliaryControlsRecording:(id)controlsRecording;
- (void)_optimizeRecordingData;
- (void)_replaceUserPathWithRouteIndex:(unint64_t)index stepIndex:(unint64_t)stepIndex traversal:(int)traversal;
- (void)_storeUserPathWithRouteIndex:(unint64_t)index stepIndex:(unint64_t)stepIndex;
- (void)_updateRideSelectionsWithComposedRoute:(id)route;
- (void)clearAll;
- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)dealloc;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationServiceWillReroute:(id)reroute;
- (void)recordNewRequest:(id)request;
- (void)recordNewResponse:(id)response;
- (void)recordNewRoute:(id)route fromStepIndex:(unint64_t)index;
- (void)recordNewSessionID:(GEOSessionID)d;
- (void)recordWaypoints:(id)waypoints startWaypointSearchTicket:(id)ticket endWaypointSearchTicket:(id)searchTicket;
- (void)savePartialRecordingWithCompletion:(id)completion;
- (void)setLastGoodLocation:(id)location;
- (void)setObservedRoute:(id)route;
- (void)setOriginatingDeviceFromOrigin:(int64_t)origin;
- (void)setSelectedRoute:(id)route fromRouteList:(id)list;
- (void)startRecording;
- (void)stopRecording;
- (void)updateRideSelectionsWithComposedRoute:(id)route;
@end

@implementation RAPGraphDirectionsRecorder

- (GEOComposedRoute)observedRoute
{
  WeakRetained = objc_loadWeakRetained(&self->_observedRoute);

  return WeakRetained;
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  v7 = sub_100798874();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didSwitchToNewTransportType", v8, 2u);
  }

  self->_switchedTransportTypeWaitingForLocation = 1;
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  rerouteCopy = reroute;
  v7 = sub_100798874();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did reroute", v8, 2u);
  }

  [(RAPGraphDirectionsRecorder *)self _handleNewRoute:rerouteCopy fromStepIndex:0];
}

- (void)_handleNewRoute:(id)route fromStepIndex:(unint64_t)index
{
  routeCopy = route;
  routeInitializerData = [routeCopy routeInitializerData];
  directionsRequest = [routeInitializerData directionsRequest];
  [(RAPGraphDirectionsRecorder *)self recordNewRequest:directionsRequest];

  routeInitializerData2 = [routeCopy routeInitializerData];
  directionsResponse = [routeInitializerData2 directionsResponse];
  [(RAPGraphDirectionsRecorder *)self recordNewResponse:directionsResponse];

  [(RAPGraphDirectionsRecorder *)self recordNewRoute:routeCopy fromStepIndex:index];
  [(RAPGraphDirectionsRecorder *)self setObservedRoute:routeCopy];
}

- (id)_userPathEntryWithRouteIndex:(unint64_t)index stepIndex:(unint64_t)stepIndex
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  userPaths = [(RAPDirectionsRecording *)self->_recording userPaths];
  v7 = [userPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(userPaths);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 routeIndex] == index && objc_msgSend(v11, "stepIndex") == stepIndex)
        {
          v12 = v11;
          goto LABEL_12;
        }
      }

      v8 = [userPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)_replaceUserPathWithRouteIndex:(unint64_t)index stepIndex:(unint64_t)stepIndex traversal:(int)traversal
{
  v5 = *&traversal;
  v7 = [(RAPGraphDirectionsRecorder *)self _userPathEntryWithRouteIndex:index stepIndex:stepIndex];
  v8 = v7;
  if (v7)
  {
    [v7 setTraversal:v5];
    if ([v8 traversal] == 2)
    {
      v9 = [GEOLatLng alloc];
      [(GEORouteMatch *)self->_lastGoodLocation locationCoordinate3D];
      v11 = v10;
      [(GEORouteMatch *)self->_lastGoodLocation locationCoordinate3D];
      v12 = [v9 initWithLatitude:v11 longitude:?];
      [v8 setRerouteLocation:v12];

      [(GEORouteMatch *)self->_lastGoodLocation locationCoordinate3D];
      v14 = v13;
      rerouteLocation = [v8 rerouteLocation];
      [rerouteLocation setElevationM:v14];
    }

    v16 = sub_100798874();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      routeIndex = [v8 routeIndex];
      stepIndex = [v8 stepIndex];
      traversal = [v8 traversal];
      if (traversal >= 3)
      {
        v20 = [NSString stringWithFormat:@"(unknown: %i)", traversal];
      }

      else
      {
        v20 = off_10162AC28[traversal];
      }

      *buf = 134218754;
      v22 = v8;
      v23 = 2048;
      v24 = routeIndex;
      v25 = 2048;
      v26 = stepIndex;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "\nReplaced path entry %p:\n\trte: %lu\n\tstp: %lu\n\ttrv: %@\n", buf, 0x2Au);
    }
  }
}

- (void)_storeUserPathWithRouteIndex:(unint64_t)index stepIndex:(unint64_t)stepIndex
{
  v7 = objc_alloc_init(RAPUserPathEntry);
  [(RAPUserPathEntry *)v7 setRouteIndex:index];
  [(RAPUserPathEntry *)v7 setStepIndex:stepIndex];
  [(RAPUserPathEntry *)v7 setTraversal:0];
  v8 = sub_100798874();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    routeIndex = [(RAPUserPathEntry *)v7 routeIndex];
    stepIndex = [(RAPUserPathEntry *)v7 stepIndex];
    traversal = [(RAPUserPathEntry *)v7 traversal];
    if (traversal >= 3)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", traversal];
    }

    else
    {
      v12 = off_10162AC28[traversal];
    }

    *buf = 134218754;
    v14 = v7;
    v15 = 2048;
    v16 = routeIndex;
    v17 = 2048;
    v18 = stepIndex;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "\nStoring path entry %p:\n\trte: %lu\n\tstp: %lu\n\ttrv: %@\n", buf, 0x2Au);
  }

  [(RAPDirectionsRecording *)self->_recording addUserPath:v7];
}

- (void)navigationServiceWillReroute:(id)reroute
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007E8FAC;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(RAPGraphDirectionsRecorder *)self _dispatch:v3];
}

- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  if (index <= 0x7FFFFFFFFFFFFFFELL && self->_numRecordedRoutes != 0)
  {
    v8[7] = v5;
    v8[8] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1007E910C;
    v8[3] = &unk_1016575B0;
    v8[4] = self;
    v8[5] = index;
    v8[6] = segmentIndex;
    [(RAPGraphDirectionsRecorder *)self _dispatch:v8];
  }
}

- (void)setLastGoodLocation:(id)location
{
  locationCopy = location;
  dispatch_assert_queue_V2(self->_recordingQueue);
  objc_storeStrong(&self->_lastGoodLocation, location);
  v6 = sub_100798874();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    stepIndex = [(GEORouteMatch *)self->_lastGoodLocation stepIndex];
    v8 = 134217984;
    v9 = stepIndex;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Changing last good location:\tcurr step: %lu\n", &v8, 0xCu);
  }
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  serviceCopy = service;
  locationCopy = location;
  routeMatch = [locationCopy routeMatch];
  if (routeMatch)
  {
    v9 = routeMatch;
    routeMatch2 = [locationCopy routeMatch];
    isGoodMatch = [routeMatch2 isGoodMatch];

    if (isGoodMatch)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007E9418;
      v13[3] = &unk_101661A90;
      v13[4] = self;
      v14 = locationCopy;
      [(RAPGraphDirectionsRecorder *)self _dispatch:v13];
    }
  }

  if (self->_switchedTransportTypeWaitingForLocation)
  {
    self->_switchedTransportTypeWaitingForLocation = 0;
    route = [serviceCopy route];
    -[RAPGraphDirectionsRecorder _handleNewRoute:fromStepIndex:](self, "_handleNewRoute:fromStepIndex:", route, [locationCopy stepIndex]);
  }
}

- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  routeCopy = route;
  observedRoute = [(RAPGraphDirectionsRecorder *)self observedRoute];

  v8 = routeCopy;
  if (observedRoute == routeCopy)
  {
    [(RAPGraphDirectionsRecorder *)self updateRideSelectionsWithComposedRoute:routeCopy];
    v8 = routeCopy;
  }
}

- (void)setObservedRoute:(id)route
{
  obj = route;
  WeakRetained = objc_loadWeakRetained(&self->_observedRoute);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_observedRoute);
    [v5 unregisterObserver:self];

    v6 = objc_storeWeak(&self->_observedRoute, obj);
    [obj registerObserver:self];
  }
}

- (void)_dispatch:(id)_dispatch
{
  _dispatchCopy = _dispatch;
  v5 = _dispatchCopy;
  recordingQueue = self->_recordingQueue;
  if (recordingQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007E9628;
    block[3] = &unk_101661760;
    v8 = _dispatchCopy;
    dispatch_async(recordingQueue, block);
  }
}

- (void)recordNewSessionID:(GEOSessionID)d
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007E96E4;
  v3[3] = &unk_1016575B0;
  v3[4] = self;
  dCopy = d;
  [(RAPGraphDirectionsRecorder *)self _dispatch:v3];
}

- (void)clearAll
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1007E9760;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [(RAPGraphDirectionsRecorder *)self _dispatch:v2];
}

- (void)recordNewRoute:(id)route fromStepIndex:(unint64_t)index
{
  routeCopy = route;
  geoWaypointRoute = [routeCopy geoWaypointRoute];

  if (geoWaypointRoute)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1007E98F4;
    v8[3] = &unk_10165E668;
    v8[4] = self;
    v9 = routeCopy;
    indexCopy = index;
    [(RAPGraphDirectionsRecorder *)self _dispatch:v8];
  }
}

- (void)recordNewResponse:(id)response
{
  responseCopy = response;
  v5 = responseCopy;
  if (responseCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007E9ADC;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = responseCopy;
    [(RAPGraphDirectionsRecorder *)self _dispatch:v6];
  }
}

- (void)recordNewRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007E9C50;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = requestCopy;
    [(RAPGraphDirectionsRecorder *)self _dispatch:v6];
  }
}

- (void)recordWaypoints:(id)waypoints startWaypointSearchTicket:(id)ticket endWaypointSearchTicket:(id)searchTicket
{
  ticketCopy = ticket;
  searchTicketCopy = searchTicket;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007E9E3C;
  v17[3] = &unk_10162AC08;
  v17[4] = self;
  sub_100021DB0(waypoints, v17);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007E9EB8;
  v13[3] = &unk_101656A00;
  v14 = v13[4] = self;
  v15 = ticketCopy;
  v16 = searchTicketCopy;
  v10 = searchTicketCopy;
  v11 = ticketCopy;
  v12 = v14;
  [(RAPGraphDirectionsRecorder *)self _dispatch:v13];
}

- (id)_userSearchInputForWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v4 = objc_alloc_init(RAPUserSearchInput);
  requestSearchString = [waypointCopy requestSearchString];
  [(RAPUserSearchInput *)v4 setSearchString:requestSearchString];

  requestAddress = [waypointCopy requestAddress];

  if (requestAddress)
  {
    requestAddress2 = [waypointCopy requestAddress];
    singleLineAddress = [requestAddress2 singleLineAddress];
    [(RAPUserSearchInput *)v4 setSingleLineAddressString:singleLineAddress];
  }

  requestSearch = [waypointCopy requestSearch];
  mapItem = [requestSearch mapItem];

  _geoMapItem = [mapItem _geoMapItem];

  if (_geoMapItem)
  {
    _geoMapItemStorageForPersistence = [mapItem _geoMapItemStorageForPersistence];
    [(RAPUserSearchInput *)v4 setPlaceMapItemStorage:_geoMapItemStorageForPersistence];
  }

  completion = [waypointCopy completion];
  copyStorage = [completion copyStorage];
  [(RAPUserSearchInput *)v4 setCompletionStorage:copyStorage];

  requestSearch2 = [waypointCopy requestSearch];
  v16 = requestSearch2;
  if (requestSearch2)
  {
    type = [requestSearch2 type];
    if (type == 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2 * (type == 4);
    }

    [(RAPUserSearchInput *)v4 setOrigin:v18];
    v19 = objc_alloc_init(GEOLatLng);
    [v16 coordinate];
    [v19 setLat:?];
    [v16 coordinate];
    [v19 setLng:v20];
    [(RAPUserSearchInput *)v4 setCoordinate:v19];
    findMyHandle = [v16 findMyHandle];

    if (findMyHandle)
    {
      findMyHandle2 = [v16 findMyHandle];
      identifier = [findMyHandle2 identifier];
      [(RAPUserSearchInput *)v4 setFindMyHandleID:identifier];
    }
  }

  return v4;
}

- (void)updateRideSelectionsWithComposedRoute:(id)route
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007EA26C;
  v4[3] = &unk_101661A90;
  selfCopy = self;
  routeCopy = route;
  v3 = routeCopy;
  [(RAPGraphDirectionsRecorder *)selfCopy _dispatch:v4];
}

- (void)_updateRideSelectionsWithComposedRoute:(id)route
{
  routeCopy = route;
  rideSelectionsAsNSData = [routeCopy rideSelectionsAsNSData];
  bytes = [rideSelectionsAsNSData bytes];

  rideSelections = [routeCopy rideSelections];

  v8 = [rideSelections count];
  recording = self->_recording;

  [(RAPDirectionsRecording *)recording setClusteredRouteRideSelections:bytes count:v8];
}

- (void)setSelectedRoute:(id)route fromRouteList:(id)list
{
  routeCopy = route;
  listCopy = list;
  v8 = [routeCopy transportType] == 1;
  [(RAPGraphDirectionsRecorder *)self setObservedRoute:routeCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007EA3E8;
  v11[3] = &unk_101651258;
  v15 = v8;
  v12 = routeCopy;
  selfCopy = self;
  v14 = listCopy;
  v9 = listCopy;
  v10 = routeCopy;
  [(RAPGraphDirectionsRecorder *)self _dispatch:v11];
}

- (BOOL)_bucketHasOnlyMissedStep:(id)step
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  stepCopy = step;
  v4 = [stepCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        v8 = v5;
        if (*v12 != v6)
        {
          objc_enumerationMutation(stepCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 traversal] == 2 && (!objc_msgSend(v9, "stepIndex") || v8 && !objc_msgSend(v8, "traversal")))
        {
          LOBYTE(v4) = 1;
          goto LABEL_14;
        }

        v5 = v9;
      }

      v4 = [stepCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v8 = v5;
LABEL_14:
  }

  return v4;
}

- (BOOL)_bucketHasOnlyStoredSteps:(id)steps
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  stepsCopy = steps;
  v4 = [stepsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(stepsCopy);
        }

        if ([*(*(&v10 + 1) + 8 * i) traversal])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [stepsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (void)_optimizeRecordingData
{
  dispatch_assert_queue_V2(self->_recordingQueue);
  directionsResponses = [(RAPDirectionsRecording *)self->_recording directionsResponses];
  if ([directionsResponses count] == 1)
  {
  }

  else
  {
    userPaths = [(RAPDirectionsRecording *)self->_recording userPaths];
    v4 = [userPaths count];

    if (v4)
    {
      selfCopy = self;
      directionsResponsesCount = [(RAPDirectionsRecording *)self->_recording directionsResponsesCount];
      v6 = [[NSMutableArray alloc] initWithCapacity:directionsResponsesCount];
      if (directionsResponsesCount)
      {
        v7 = directionsResponsesCount;
        do
        {
          v8 = +[NSMutableArray array];
          [v6 addObject:v8];

          --v7;
        }

        while (v7);
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      userPaths2 = [(RAPDirectionsRecording *)selfCopy->_recording userPaths];
      v10 = [userPaths2 countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v69;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v69 != v12)
            {
              objc_enumerationMutation(userPaths2);
            }

            v14 = *(*(&v68 + 1) + 8 * i);
            if (directionsResponsesCount <= [v14 routeIndex])
            {
              v15 = sub_100798874();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
              {
                routeIndex = [v14 routeIndex];
                *buf = 67109120;
                LODWORD(v75) = routeIndex;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Route index: %u out of bounds for RAP user path entry.", buf, 8u);
              }
            }

            else
            {
              v15 = [v6 objectAtIndexedSubscript:{objc_msgSend(v14, "routeIndex")}];
              [v15 addObject:v14];
            }
          }

          v11 = [userPaths2 countByEnumeratingWithState:&v68 objects:v77 count:16];
        }

        while (v11);
      }

      v50 = objc_opt_new();
      v17 = selfCopy;
      v49 = objc_opt_new();
      v18 = +[NSMutableArray array];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v19 = v6;
      v53 = [v19 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v53)
      {
        v20 = 0;
        v51 = *v65;
        do
        {
          v21 = 0;
          do
          {
            if (*v65 != v51)
            {
              objc_enumerationMutation(v19);
            }

            v22 = *(*(&v64 + 1) + 8 * v21);
            v55 = v21;
            if ([(RAPGraphDirectionsRecorder *)v17 _bucketHasOnlyStoredSteps:v22]|| [(RAPGraphDirectionsRecorder *)v17 _bucketHasOnlyMissedStep:v22])
            {
              v23 = sub_100798874();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                v75 = v20;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Removing route #%lu", buf, 0xCu);
              }

              v24 = sub_100798874();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                directionsRequests = [(RAPDirectionsRecording *)v17->_recording directionsRequests];
                v26 = [directionsRequests objectAtIndexedSubscript:v20];
                *buf = 134217984;
                v75 = v26;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "\t Request: %p", buf, 0xCu);
              }

              [v50 addIndex:v20];
              v27 = sub_100798874();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                directionsResponses2 = [(RAPDirectionsRecording *)v17->_recording directionsResponses];
                v29 = [directionsResponses2 objectAtIndexedSubscript:v20];
                *buf = 134217984;
                v75 = v29;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "\tResponse: %p", buf, 0xCu);
              }

              [v49 addIndex:v20];
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v30 = v22;
              v31 = [v30 countByEnumeratingWithState:&v60 objects:v73 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v61;
                do
                {
                  for (j = 0; j != v32; j = j + 1)
                  {
                    if (*v61 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    [v18 addObject:*(*(&v60 + 1) + 8 * j)];
                  }

                  v32 = [v30 countByEnumeratingWithState:&v60 objects:v73 count:16];
                }

                while (v32);
              }

              for (k = (v20 + 1); k < directionsResponsesCount; ++k)
              {
                v36 = [v19 objectAtIndexedSubscript:k];
                v56 = 0u;
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v37 = [v36 countByEnumeratingWithState:&v56 objects:v72 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v57;
                  do
                  {
                    for (m = 0; m != v38; m = m + 1)
                    {
                      if (*v57 != v39)
                      {
                        objc_enumerationMutation(v36);
                      }

                      [*(*(&v56 + 1) + 8 * m) setRouteIndex:{objc_msgSend(*(*(&v56 + 1) + 8 * m), "routeIndex") - 1}];
                    }

                    v38 = [v36 countByEnumeratingWithState:&v56 objects:v72 count:16];
                  }

                  while (v38);
                }
              }
            }

            else
            {
              v41 = [v22 count];
              v42 = v41 - 1;
              if (v41 != 1)
              {
                while (1)
                {
                  v43 = [v22 objectAtIndexedSubscript:v42];
                  if ([v43 traversal])
                  {
                    break;
                  }

                  [v18 addObject:v43];

                  if (!--v42)
                  {
                    goto LABEL_55;
                  }
                }
              }
            }

LABEL_55:
            ++v20;
            v21 = v55 + 1;
            v17 = selfCopy;
          }

          while ((v55 + 1) != v53);
          v53 = [v19 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v53);
      }

      directionsRequests2 = [(RAPDirectionsRecording *)v17->_recording directionsRequests];
      [directionsRequests2 removeObjectsAtIndexes:v50];

      directionsResponses3 = [(RAPDirectionsRecording *)v17->_recording directionsResponses];
      [directionsResponses3 removeObjectsAtIndexes:v49];

      userPaths3 = [(RAPDirectionsRecording *)v17->_recording userPaths];
      [userPaths3 removeObjectsInArray:v18];

      v17->_numRecordedRoutes = [(RAPDirectionsRecording *)v17->_recording directionsResponsesCount];
      v47 = sub_100798874();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        numRecordedRoutes = v17->_numRecordedRoutes;
        *buf = 134217984;
        v75 = numRecordedRoutes;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "_optimizeRecordingData _numRecordedRoutes %lu", buf, 0xCu);
      }
    }
  }
}

- (void)stopRecording
{
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  [(RAPGraphDirectionsRecorder *)self _savePartialRecording];
  [(RAPAuxiliaryControlsRecorder *)self->_auxiliaryControlsRecorder stop];
  auxiliaryControlsRecorder = self->_auxiliaryControlsRecorder;
  self->_auxiliaryControlsRecorder = 0;

  [(RAPGraphDirectionsRecorder *)self setIsRecording:0];
}

- (void)savePartialRecordingWithCompletion:(id)completion
{
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1007EB228;
  v25[3] = &unk_10162ABE0;
  completionCopy = completion;
  v26 = completionCopy;
  v5 = objc_retainBlock(v25);
  if (![(RAPGraphDirectionsRecorder *)self isRecording])
  {
    v16 = @"not recording";
LABEL_10:
    v10 = [NSError GEOErrorWithCode:-13 reason:v16];
    (v5[2])(v5, 0, v10);
    goto LABEL_13;
  }

  historyItemIdentifier = [(RAPGraphDirectionsRecorder *)self historyItemIdentifier];

  if (!historyItemIdentifier)
  {
    v16 = @"historyItemIdentifier wasn't set when trying to save partial recording";
    goto LABEL_10;
  }

  copyCurrentPartialRecording = [(RAPAuxiliaryControlsRecorder *)self->_auxiliaryControlsRecorder copyCurrentPartialRecording];
  v8 = +[RAPStorageHistoryContainer directionsRecordingStorage];
  recordingQueue = self->_recordingQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v19 = sub_1007EB300;
  v20 = &unk_101660380;
  selfCopy = self;
  v10 = copyCurrentPartialRecording;
  v22 = v10;
  v11 = v8;
  v23 = v11;
  v24 = v5;
  v12 = recordingQueue;
  v13 = v18;
  label = dispatch_queue_get_label(v12);
  v15 = dispatch_queue_get_label(0);
  if (label == v15 || label && v15 && !strcmp(label, v15))
  {
    v17 = objc_autoreleasePoolPush();
    v19(v13);
    objc_autoreleasePoolPop(v17);
  }

  else
  {
    dispatch_sync(v12, v13);
  }

LABEL_13:
}

- (void)setOriginatingDeviceFromOrigin:(int64_t)origin
{
  self->_auxiliaryControlsOrigin = origin;
  self->_hasAuxiliaryControlsOrigin = 1;
  auxiliaryControlsRecorder = self->_auxiliaryControlsRecorder;
  if (auxiliaryControlsRecorder)
  {
    [(RAPAuxiliaryControlsRecorder *)auxiliaryControlsRecorder setOriginatingDeviceFromOrigin:?];
  }
}

- (void)_immediatelyUpdateRecording:(id)recording withAuxiliaryControlsRecording:(id)controlsRecording
{
  recordingCopy = recording;
  controlsRecordingCopy = controlsRecording;
  v6 = controlsRecordingCopy;
  if (controlsRecordingCopy)
  {
    auxiliaryControls = [controlsRecordingCopy auxiliaryControls];
    v8 = [auxiliaryControls mutableCopy];
    [recordingCopy setAuxiliaryControls:v8];

    if ([v6 hasOriginatingAuxiliaryControlIndex])
    {
      [recordingCopy setOriginatingAuxiliaryControlIndex:{objc_msgSend(v6, "originatingAuxiliaryControlIndex")}];
    }

    else
    {
      [recordingCopy setHasOriginatingAuxiliaryControlIndex:0];
    }
  }
}

- (id)copyCurrentPartialRecording
{
  if (![(RAPGraphDirectionsRecorder *)self isRecording])
  {
    return 0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1007EB6C0;
  v23 = sub_1007EB6D0;
  v24 = 0;
  recordingQueue = self->_recordingQueue;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1007EB6D8;
  v16 = &unk_101661600;
  selfCopy = self;
  v18 = &v19;
  v4 = recordingQueue;
  v5 = &v13;
  label = dispatch_queue_get_label(v4);
  v7 = dispatch_queue_get_label(0);
  if (label == v7 || label && v7 && !strcmp(label, v7))
  {
    v9 = objc_autoreleasePoolPush();
    v15(v5);
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    dispatch_sync(v4, v5);
  }

  v10 = v20[5];
  v11 = [(RAPAuxiliaryControlsRecorder *)self->_auxiliaryControlsRecorder copyCurrentPartialRecording:v13];
  [(RAPGraphDirectionsRecorder *)self _immediatelyUpdateRecording:v10 withAuxiliaryControlsRecording:v11];

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

- (void)startRecording
{
  v3 = objc_alloc_init(RAPDirectionsRecording);
  recording = self->_recording;
  self->_recording = v3;

  [(RAPGraphDirectionsRecorder *)self setIsRecording:1];
  v5 = objc_alloc_init(RAPAuxiliaryControlsRecorder);
  auxiliaryControlsRecorder = self->_auxiliaryControlsRecorder;
  self->_auxiliaryControlsRecorder = v5;

  [(RAPAuxiliaryControlsRecorder *)self->_auxiliaryControlsRecorder start];
  if (self->_hasAuxiliaryControlsOrigin)
  {
    [(RAPAuxiliaryControlsRecorder *)self->_auxiliaryControlsRecorder setOriginatingDeviceFromOrigin:self->_auxiliaryControlsOrigin];
  }

  v7 = +[MNNavigationService sharedService];
  [v7 registerObserver:self];
}

- (void)dealloc
{
  if ([(RAPGraphDirectionsRecorder *)self isRecording])
  {
    [(RAPGraphDirectionsRecorder *)self stopRecording];
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RAPGraphDirectionsRecorder;
  [(RAPGraphDirectionsRecorder *)&v4 dealloc];
}

- (RAPGraphDirectionsRecorder)init
{
  v8.receiver = self;
  v8.super_class = RAPGraphDirectionsRecorder;
  v2 = [(RAPGraphDirectionsRecorder *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Maps.RAPDirectionsRecorder", v3);
    recordingQueue = v2->_recordingQueue;
    v2->_recordingQueue = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_savePartialRecording" name:UIApplicationWillResignActiveNotification object:0];
  }

  return v2;
}

@end