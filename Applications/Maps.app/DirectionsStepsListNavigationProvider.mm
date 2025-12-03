@interface DirectionsStepsListNavigationProvider
- (DirectionsStepsListNavigationDelegate)delegate;
- (DirectionsStepsListNavigationProvider)initWithDelegate:(id)delegate;
- (double)_progressAlongRouteWithDistanceInfo:(id)info;
- (double)elapsedDistance;
- (void)_startObservingNavigation;
- (void)_stopObservingNavigation;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didReceiveRealtimeUpdates:(id)updates;
- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)navigationService:(id)service didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
@end

@implementation DirectionsStepsListNavigationProvider

- (DirectionsStepsListNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_progressAlongRouteWithDistanceInfo:(id)info
{
  if (!info)
  {
    return 0.0;
  }

  navigationService = self->_navigationService;
  infoCopy = info;
  route = [(MNNavigationService *)navigationService route];
  [route distance];
  v7 = v6;
  [infoCopy distanceRemainingToEndOfLeg];
  v9 = v8;

  return fmax(v7 - v9, 0.0);
}

- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  distanceCopy = distance;
  delegate = [(DirectionsStepsListNavigationProvider *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(DirectionsStepsListNavigationProvider *)self delegate];
    [(DirectionsStepsListNavigationProvider *)self _progressAlongRouteWithDistanceInfo:distanceCopy];
    [delegate2 navigationProvider:self didUpdateElapsedDistanceAlongRoute:?];
  }
}

- (void)navigationService:(id)service didReceiveRealtimeUpdates:(id)updates
{
  updatesCopy = updates;
  route = [service route];
  uniqueRouteID = [route uniqueRouteID];

  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(updatesCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = updatesCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          routeID = [v14 routeID];
          v16 = [uniqueRouteID isEqual:routeID];

          if (v16)
          {
            v17 = v14;
            transitUpdate = [v17 transitUpdate];

            if (transitUpdate)
            {
              transitUpdate2 = [v17 transitUpdate];
              [v8 addObject:transitUpdate2];
            }
          }
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  delegate = [(DirectionsStepsListNavigationProvider *)self delegate];
  v21 = [v8 copy];
  [delegate navigationProvider:self didReceiveRealtimeUpdates:v21];
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  locationCopy = location;
  delegate = [(DirectionsStepsListNavigationProvider *)self delegate];
  [delegate navigationProvider:self didUpdateMatchedLocation:locationCopy];
}

- (void)navigationService:(id)service didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  v7 = [(DirectionsStepsListNavigationProvider *)self delegate:service];
  [v7 navigationProvider:self didUpdateDisplayedStepIndex:index];
}

- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = sub_100799650();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Auto-advance step index is NSNotFound, meaning no matched step. Ignore it and maintain what we have.", buf, 2u);
    }
  }

  else
  {
    v8 = [(DirectionsStepsListNavigationProvider *)self delegate:service];
    [v8 navigationProvider:self didUpdateActiveStepIndex:index];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  delegate = [(DirectionsStepsListNavigationProvider *)self delegate];
  IsNavigating = MNNavigationServiceStateIsNavigating();
  route = [serviceCopy route];

  [delegate navigationProvider:self didChangeToNavigating:IsNavigating withRoute:route];
}

- (double)elapsedDistance
{
  remainingDistanceInfo = [(MNNavigationService *)self->_navigationService remainingDistanceInfo];
  [(DirectionsStepsListNavigationProvider *)self _progressAlongRouteWithDistanceInfo:remainingDistanceInfo];
  v5 = v4;

  return v5;
}

- (void)_stopObservingNavigation
{
  navigationService = self->_navigationService;
  if (navigationService)
  {
    [(MNNavigationService *)navigationService unregisterObserver:self];
    v4 = self->_navigationService;
    self->_navigationService = 0;
  }
}

- (void)_startObservingNavigation
{
  if (!self->_navigationService)
  {
    v4 = +[MNNavigationService sharedService];
    navigationService = self->_navigationService;
    self->_navigationService = v4;

    v6 = self->_navigationService;

    [(MNNavigationService *)v6 registerObserver:self];
  }
}

- (DirectionsStepsListNavigationProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DirectionsStepsListNavigationProvider;
  v5 = [(DirectionsStepsListNavigationProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DirectionsStepsListNavigationProvider *)v5 setDelegate:delegateCopy];
    [(DirectionsStepsListNavigationProvider *)v6 _startObservingNavigation];
  }

  return v6;
}

- (void)dealloc
{
  [(DirectionsStepsListNavigationProvider *)self _stopObservingNavigation];
  v3.receiver = self;
  v3.super_class = DirectionsStepsListNavigationProvider;
  [(DirectionsStepsListNavigationProvider *)&v3 dealloc];
}

@end