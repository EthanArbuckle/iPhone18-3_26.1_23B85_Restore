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
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didChangeNavigationState:(int)state;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)navigationService:(id)service didUpdateAlternateRoutes:(id)routes traffics:(id)traffics;
- (void)navigationService:(id)service didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationService:(id)service didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
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
  route = [v2 route];

  return route;
}

- (unint64_t)displayedStepIndex
{
  v2 = +[MNNavigationService sharedService];
  displayedStepIndex = [v2 displayedStepIndex];

  return displayedStepIndex;
}

- (unint64_t)stepIndex
{
  v2 = +[MNNavigationService sharedService];
  stepIndex = [v2 stepIndex];

  return stepIndex;
}

- (int)navigationState
{
  v2 = +[MNNavigationService sharedService];
  navigationState = [v2 navigationState];

  return navigationState;
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  trafficCopy = traffic;
  routeCopy = route;
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  [delegate navigationProvider:self didUpdateRoute:routeCopy traffic:trafficCopy];
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  rerouteCopy = reroute;
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  traffic = [rerouteCopy traffic];
  [delegate navigationProvider:self didUpdateRoute:rerouteCopy traffic:traffic];
}

- (void)navigationService:(id)service didUpdateAlternateRoutes:(id)routes traffics:(id)traffics
{
  trafficsCopy = traffics;
  routesCopy = routes;
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  [delegate navigationProvider:self didUpdateAlternateRoutes:routesCopy traffics:trafficsCopy];
}

- (void)navigationService:(id)service didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index
{
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  [delegate navigationProvider:self didUpdateDistanceUntilManeuver:index timeUntilManeuver:maneuver forStepIndex:untilManeuver];
}

- (void)navigationService:(id)service didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  [delegate navigationProvider:self didUpdateStepIndex:index segmentIndex:segmentIndex];
}

- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  [delegate navigationProvider:self didUpdateStepIndex:index segmentIndex:segmentIndex];
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  locationCopy = location;
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  [delegate navigationProvider:self didUpdateMatchedLocation:locationCopy];
}

- (void)navigationService:(id)service didChangeNavigationState:(int)state
{
  v4 = *&state;
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  [delegate navigationProvider:self didChangeNavigationState:v4];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  delegate = [(NavCameraNavigationServiceProvider *)self delegate];
  [delegate navigationProvider:self didChangeToNavigating:MNNavigationServiceStateChangedToNavigating()];
}

- (NSDictionary)alternateRouteTraffics
{
  alternateRoutes = [(NavCameraNavigationServiceProvider *)self alternateRoutes];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [alternateRoutes count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = alternateRoutes;
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
        traffic = [v9 traffic];
        uniqueRouteID = [v9 uniqueRouteID];
        [v3 setObject:traffic forKeyedSubscript:uniqueRouteID];
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
  alternateRoutes = [v2 alternateRoutes];

  return alternateRoutes;
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
  lastLocation = [v2 lastLocation];

  return lastLocation;
}

- (BOOL)isInNavigatingState
{
  v2 = +[MNNavigationService sharedService];
  isInNavigatingState = [v2 isInNavigatingState];

  return isInNavigatingState;
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