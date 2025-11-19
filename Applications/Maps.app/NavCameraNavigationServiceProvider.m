@interface NavCameraNavigationServiceProvider
- (BOOL)isInNavigatingState;
- (GEOComposedRoute)route;
- (MNLocation)lastLocation;
- (NSArray)alternateRoutes;
- (NSDictionary)alternateRouteTraffics;
- (NavCameraNavigationDelegate)delegate;
- (NavCameraNavigationServiceProvider)init;
- (double)distanceUntilManeuver;
- (double)timeUntilManeuver;
- (int)navigationState;
- (unint64_t)displayedStepIndex;
- (unint64_t)stepIndex;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeNavigationState:(int)a4;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateAlternateRoutes:(id)a4 traffics:(id)a5;
- (void)navigationService:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
@end

@implementation NavCameraNavigationServiceProvider

- (NavCameraNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GEOComposedRoute)route
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 route];

  return v3;
}

- (unint64_t)displayedStepIndex
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 displayedStepIndex];

  return v3;
}

- (unint64_t)stepIndex
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 stepIndex];

  return v3;
}

- (int)navigationState
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 navigationState];

  return v3;
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(NavCameraNavigationServiceProvider *)self delegate];
  [v10 navigationProvider:self didUpdateRoute:v9 traffic:v8];
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v6 = a4;
  v8 = [(NavCameraNavigationServiceProvider *)self delegate];
  v7 = [v6 traffic];
  [v8 navigationProvider:self didUpdateRoute:v6 traffic:v7];
}

- (void)navigationService:(id)a3 didUpdateAlternateRoutes:(id)a4 traffics:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(NavCameraNavigationServiceProvider *)self delegate];
  [v9 navigationProvider:self didUpdateAlternateRoutes:v8 traffics:v7];
}

- (void)navigationService:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6
{
  v10 = [(NavCameraNavigationServiceProvider *)self delegate];
  [v10 navigationProvider:self didUpdateDistanceUntilManeuver:a6 timeUntilManeuver:a4 forStepIndex:a5];
}

- (void)navigationService:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v8 = [(NavCameraNavigationServiceProvider *)self delegate];
  [v8 navigationProvider:self didUpdateStepIndex:a4 segmentIndex:a5];
}

- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v8 = [(NavCameraNavigationServiceProvider *)self delegate];
  [v8 navigationProvider:self didUpdateStepIndex:a4 segmentIndex:a5];
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v5 = a4;
  v6 = [(NavCameraNavigationServiceProvider *)self delegate];
  [v6 navigationProvider:self didUpdateMatchedLocation:v5];
}

- (void)navigationService:(id)a3 didChangeNavigationState:(int)a4
{
  v4 = *&a4;
  v6 = [(NavCameraNavigationServiceProvider *)self delegate];
  [v6 navigationProvider:self didChangeNavigationState:v4];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v6 = [(NavCameraNavigationServiceProvider *)self delegate];
  [v6 navigationProvider:self didChangeToNavigating:MNNavigationServiceStateChangedToNavigating()];
}

- (NSDictionary)alternateRouteTraffics
{
  v2 = [(NavCameraNavigationServiceProvider *)self alternateRoutes];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 traffic];
        v11 = [v9 uniqueRouteID];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (NSArray)alternateRoutes
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 alternateRoutes];

  return v3;
}

- (double)timeUntilManeuver
{
  v2 = +[MNNavigationService sharedService];
  [v2 timeUntilManeuver];
  v4 = v3;

  return v4;
}

- (double)distanceUntilManeuver
{
  v2 = +[MNNavigationService sharedService];
  [v2 distanceUntilManeuver];
  v4 = v3;

  return v4;
}

- (MNLocation)lastLocation
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 lastLocation];

  return v3;
}

- (BOOL)isInNavigatingState
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 isInNavigatingState];

  return v3;
}

- (NavCameraNavigationServiceProvider)init
{
  v5.receiver = self;
  v5.super_class = NavCameraNavigationServiceProvider;
  v2 = [(NavCameraNavigationServiceProvider *)&v5 init];
  if (v2)
  {
    v3 = +[MNNavigationService sharedService];
    [v3 registerObserver:v2];
  }

  return v2;
}

@end