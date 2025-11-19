@interface DirectionsStepsListNavigationProvider
- (DirectionsStepsListNavigationDelegate)delegate;
- (DirectionsStepsListNavigationProvider)initWithDelegate:(id)a3;
- (double)_progressAlongRouteWithDistanceInfo:(id)a3;
- (double)elapsedDistance;
- (void)_startObservingNavigation;
- (void)_stopObservingNavigation;
- (void)dealloc;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didReceiveRealtimeUpdates:(id)a4;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationService:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
@end

@implementation DirectionsStepsListNavigationProvider

- (DirectionsStepsListNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_progressAlongRouteWithDistanceInfo:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  navigationService = self->_navigationService;
  v4 = a3;
  v5 = [(MNNavigationService *)navigationService route];
  [v5 distance];
  v7 = v6;
  [v4 distanceRemainingToEndOfLeg];
  v9 = v8;

  return fmax(v7 - v9, 0.0);
}

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v10 = a5;
  v7 = [(DirectionsStepsListNavigationProvider *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(DirectionsStepsListNavigationProvider *)self delegate];
    [(DirectionsStepsListNavigationProvider *)self _progressAlongRouteWithDistanceInfo:v10];
    [v9 navigationProvider:self didUpdateElapsedDistanceAlongRoute:?];
  }
}

- (void)navigationService:(id)a3 didReceiveRealtimeUpdates:(id)a4
{
  v5 = a4;
  v6 = [a3 route];
  v7 = [v6 uniqueRouteID];

  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v5;
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
          v15 = [v14 routeID];
          v16 = [v7 isEqual:v15];

          if (v16)
          {
            v17 = v14;
            v18 = [v17 transitUpdate];

            if (v18)
            {
              v19 = [v17 transitUpdate];
              [v8 addObject:v19];
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

  v20 = [(DirectionsStepsListNavigationProvider *)self delegate];
  v21 = [v8 copy];
  [v20 navigationProvider:self didReceiveRealtimeUpdates:v21];
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v5 = a4;
  v6 = [(DirectionsStepsListNavigationProvider *)self delegate];
  [v6 navigationProvider:self didUpdateMatchedLocation:v5];
}

- (void)navigationService:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v7 = [(DirectionsStepsListNavigationProvider *)self delegate:a3];
  [v7 navigationProvider:self didUpdateDisplayedStepIndex:a4];
}

- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
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
    v8 = [(DirectionsStepsListNavigationProvider *)self delegate:a3];
    [v8 navigationProvider:self didUpdateActiveStepIndex:a4];
  }
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v6 = a3;
  v9 = [(DirectionsStepsListNavigationProvider *)self delegate];
  IsNavigating = MNNavigationServiceStateIsNavigating();
  v8 = [v6 route];

  [v9 navigationProvider:self didChangeToNavigating:IsNavigating withRoute:v8];
}

- (double)elapsedDistance
{
  v3 = [(MNNavigationService *)self->_navigationService remainingDistanceInfo];
  [(DirectionsStepsListNavigationProvider *)self _progressAlongRouteWithDistanceInfo:v3];
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

- (DirectionsStepsListNavigationProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DirectionsStepsListNavigationProvider;
  v5 = [(DirectionsStepsListNavigationProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DirectionsStepsListNavigationProvider *)v5 setDelegate:v4];
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