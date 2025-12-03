@interface RideBookingPlanningSession
- (NSString)destinationName;
- (NSString)originName;
- (PlatformController)platformController;
- (Result)resolvedWaypointsResult;
- (RideBookingPlanningSession)initWithInitiator:(unint64_t)initiator waypointRequests:(id)requests traits:(id)traits;
- (RideBookingRideOptionStateObserverProxy)rideOptionStateObserver;
- (WaypointSet)resolvedWaypoints;
- (int64_t)requestState;
- (void)_handleReceivedWaypointSetResult;
- (void)cleanupStateReplay;
- (void)enumerateRequestsOrWaypointsUsingBlock:(id)block;
- (void)prepareToReplayCurrentState;
- (void)refresh;
- (void)registerObserver:(id)observer;
- (void)replayCurrentState;
- (void)resume;
- (void)rideOptionStateDidChange:(id)change;
- (void)suspend;
- (void)unregisterObserver:(id)observer;
- (void)waypointController:(id)controller didResolveWaypointSet:(id)set;
@end

@implementation RideBookingPlanningSession

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)rideOptionStateDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy noRideOptionsAvailable] && objc_msgSend(changeCopy, "noAppStoreSuggestionsAvailable"))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Directions Not Available" value:@"localized string not found" table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"No ride booking apps for your location are available from the App Store. [Ridesharing Route Planning]" value:@"localized string not found" table:0];

    v13[0] = NSLocalizedDescriptionKey;
    v13[1] = NSLocalizedFailureReasonErrorKey;
    v14[0] = v6;
    v14[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v10 = [NSError errorWithDomain:@"com.Maps.RideBooking" code:0 userInfo:v9];
    v11 = [Result resultWithError:v10];
    [(RideBookingPlanningSession *)self setRideOptionStateObserverResult:v11];
  }

  observers = [(RideBookingPlanningSession *)self observers];
  [observers RideBookingPlanningSession:self rideOptionStateDidChange:changeCopy];
}

- (void)waypointController:(id)controller didResolveWaypointSet:(id)set
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1007C44A0;
  v9 = &unk_101661A90;
  selfCopy = self;
  setCopy = set;
  v5 = setCopy;
  dispatch_async(&_dispatch_main_q, &v6);
  [(RideBookingPlanningSession *)self _handleReceivedWaypointSetResult:v6];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(RideBookingPlanningSession *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(RideBookingPlanningSession *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)_handleReceivedWaypointSetResult
{
  resolvedWaypointsResult = [(RideBookingPlanningSession *)self resolvedWaypointsResult];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007C46D8;
  v8[3] = &unk_10162A298;
  v8[4] = self;
  v4 = [resolvedWaypointsResult flatMap:v8];
  [(RideBookingPlanningSession *)self setRideOptionStateObserverResult:v4];

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007C4804;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)cleanupStateReplay
{
  observers = [(RideBookingPlanningSession *)self observers];
  [observers clearSnapshottedObservers];
}

- (void)replayCurrentState
{
  observers = [(RideBookingPlanningSession *)self observers];
  [observers removeSnapshottedObservers];

  observers2 = [(RideBookingPlanningSession *)self observers];
  [observers2 mapsSession:self didChangeState:{-[RideBookingPlanningSession sessionState](self, "sessionState")}];

  observers3 = [(RideBookingPlanningSession *)self observers];
  [observers3 restoreOriginalObservers];
}

- (void)prepareToReplayCurrentState
{
  observers = [(RideBookingPlanningSession *)self observers];
  [observers snapshotCurrentObservers];
}

- (void)suspend
{
  if ([(RideBookingPlanningSession *)self sessionState]== 1)
  {
    waypointController = [(RideBookingPlanningSession *)self waypointController];
    [waypointController stop];

    [(RideBookingPlanningSession *)self setRideOptionStateObserverResult:0];
    [(RideBookingPlanningSession *)self setSessionState:2];
    observers = [(RideBookingPlanningSession *)self observers];
    [observers mapsSession:self didChangeState:{-[RideBookingPlanningSession sessionState](self, "sessionState")}];
  }
}

- (void)resume
{
  if (![(RideBookingPlanningSession *)self sessionState])
  {
    [(RideBookingPlanningSession *)self setSessionState:1];
    observers = [(RideBookingPlanningSession *)self observers];
    [observers mapsSession:self didChangeState:{-[RideBookingPlanningSession sessionState](self, "sessionState")}];

    waypointController = [(RideBookingPlanningSession *)self waypointController];
    [waypointController start];
  }
}

- (void)refresh
{
  if ([(RideBookingPlanningSession *)self sessionState])
  {
    [(RideBookingPlanningSession *)self setRideOptionStateObserverResult:0];
    waypointController = [(RideBookingPlanningSession *)self waypointController];
    [waypointController refresh];
  }
}

- (RideBookingRideOptionStateObserverProxy)rideOptionStateObserver
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1007C4CE8;
  v10 = sub_1007C4CF8;
  v11 = 0;
  rideOptionStateObserverResult = [(RideBookingPlanningSession *)self rideOptionStateObserverResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007C4D00;
  v5[3] = &unk_10162A250;
  v5[4] = &v6;
  [rideOptionStateObserverResult withValue:v5 orError:&stru_10162A270];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (WaypointSet)resolvedWaypoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1007C4CE8;
  v10 = sub_1007C4CF8;
  v11 = 0;
  resolvedWaypointsResult = [(RideBookingPlanningSession *)self resolvedWaypointsResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007C4E2C;
  v5[3] = &unk_10165E600;
  v5[4] = &v6;
  [resolvedWaypointsResult withValue:v5 orError:&stru_10162A228];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (Result)resolvedWaypointsResult
{
  waypointController = [(RideBookingPlanningSession *)self waypointController];
  resolvedWaypointSetResult = [waypointController resolvedWaypointSetResult];

  return resolvedWaypointSetResult;
}

- (NSString)destinationName
{
  destinationRequest = [(RideBookingPlanningSession *)self destinationRequest];
  resolvedWaypoints = [(RideBookingPlanningSession *)self resolvedWaypoints];
  destination = [resolvedWaypoints destination];
  v6 = [destinationRequest nameWithResolvedWaypoint:destination allowCurrentLocation:0];

  return v6;
}

- (NSString)originName
{
  originRequest = [(RideBookingPlanningSession *)self originRequest];
  resolvedWaypoints = [(RideBookingPlanningSession *)self resolvedWaypoints];
  origin = [resolvedWaypoints origin];
  v6 = [originRequest nameWithResolvedWaypoint:origin allowCurrentLocation:1];

  return v6;
}

- (RideBookingPlanningSession)initWithInitiator:(unint64_t)initiator waypointRequests:(id)requests traits:(id)traits
{
  requestsCopy = requests;
  traitsCopy = traits;
  v28.receiver = self;
  v28.super_class = RideBookingPlanningSession;
  v11 = [(RideBookingPlanningSession *)&v28 init];
  v12 = v11;
  if (v11)
  {
    v11->_sessionInitiator = initiator;
    objc_storeStrong(&v11->_waypointRequests, requests);
    v13 = [requestsCopy objectAtIndexedSubscript:0];
    originRequest = v12->_originRequest;
    v12->_originRequest = v13;

    v15 = [requestsCopy objectAtIndexedSubscript:1];
    destinationRequest = v12->_destinationRequest;
    v12->_destinationRequest = v15;

    v17 = [traitsCopy copy];
    traits = v12->_traits;
    v12->_traits = v17;

    v19 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___RideBookingPlanningSessionObserver queue:0];
    observers = v12->_observers;
    v12->_observers = v19;

    waypointRequest = [(RoutePlanningWaypointRequest *)v12->_originRequest waypointRequest];
    v29[0] = waypointRequest;
    waypointRequest2 = [(RoutePlanningWaypointRequest *)v12->_destinationRequest waypointRequest];
    v29[1] = waypointRequest2;
    v23 = [NSArray arrayWithObjects:v29 count:2];

    v24 = [[WaypointControllerConfiguration alloc] initWithRequests:v23 traits:v12->_traits];
    v25 = [[WaypointController alloc] initWithConfiguration:v24];
    waypointController = v12->_waypointController;
    v12->_waypointController = v25;

    [(WaypointController *)v12->_waypointController setDelegate:v12];
  }

  return v12;
}

- (int64_t)requestState
{
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v3 isNetworkReachable];

  if (!isNetworkReachable)
  {
    return 3;
  }

  rideOptionStateObserverResult = [(RideBookingPlanningSession *)self rideOptionStateObserverResult];
  v6 = rideOptionStateObserverResult;
  if (rideOptionStateObserverResult)
  {
    if ([rideOptionStateObserverResult isSuccess])
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    resolvedWaypointsResult = [(RideBookingPlanningSession *)self resolvedWaypointsResult];
    if (resolvedWaypointsResult)
    {
      resolvedWaypointsResult2 = [(RideBookingPlanningSession *)self resolvedWaypointsResult];
      if ([resolvedWaypointsResult2 isSuccess])
      {
        v7 = 1;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)enumerateRequestsOrWaypointsUsingBlock:(id)block
{
  blockCopy = block;
  resolvedWaypoints = [(RideBookingPlanningSession *)self resolvedWaypoints];
  v6 = resolvedWaypoints;
  if (resolvedWaypoints)
  {
    v7 = [resolvedWaypoints count];
    waypointRequests = [(RideBookingPlanningSession *)self waypointRequests];
    v9 = [waypointRequests count];

    if (v7 != v9)
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v20 = "[RideBookingPlanningSession(WaypointsOrRequests) enumerateRequestsOrWaypointsUsingBlock:]";
        v21 = 2080;
        v22 = "RideBookingPlanningSession+WaypointsOrRequests.m";
        v23 = 1024;
        v24 = 21;
        v25 = 2080;
        v26 = "!resolvedWaypoints || resolvedWaypoints.count == self.waypointRequests.count";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  waypointRequests2 = [(RideBookingPlanningSession *)self waypointRequests];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F60878;
  v16[3] = &unk_101660280;
  v17 = v6;
  v18 = blockCopy;
  v14 = blockCopy;
  v15 = v6;
  [waypointRequests2 enumerateObjectsUsingBlock:v16];
}

@end