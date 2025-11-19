@interface NavigationSessionRAP
- (GEOComposedRoute)activeComposedRoute;
- (NavigationSessionRAP)initWithNavigationSession:(id)a3 routePlanningSession:(id)a4;
- (RAPDisplayedDirectionsPlan)displayedDirectionsPlan;
- (RAPDisplayedRouteState)currentDirections;
@end

@implementation NavigationSessionRAP

- (RAPDisplayedDirectionsPlan)displayedDirectionsPlan
{
  v3 = [(NavigationSession *)self->_navigationSession currentTransportType];
  v4 = v3 > 4 || ((1 << v3) & 0x19) == 0;
  if (v4 && (([(NavigationSession *)self->_navigationSession currentRouteCollection], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || ([(RoutePlanningSession *)self->_routePlanningSession currentRouteCollection], (v6 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v7 = v6;
    v8 = [(RoutePlanningSession *)self->_routePlanningSession reportAProblemRecorder];
    v9 = [v8 copyCurrentPartialRecording];

    v5 = [[RAPDisplayedDirectionsPlan alloc] initWithRouteCollection:v7 recording:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (RAPDisplayedRouteState)currentDirections
{
  v3 = [(NavigationSessionRAP *)self activeComposedRoute];

  if (v3)
  {
    navigationSession = self->_navigationSession;
    if (!navigationSession)
    {
      navigationSession = self->_routePlanningSession;
    }

    v5 = [navigationSession currentTransportType];
    v6 = [RAPDisplayedRouteState alloc];
    v7 = [(RoutePlanningSession *)self->_routePlanningSession originName];
    v8 = [(RoutePlanningSession *)self->_routePlanningSession destinationName];
    if ((v5 - 2) > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_101212C30[(v5 - 2)];
    }

    v11 = [(NavigationSessionRAP *)self activeComposedRoute];
    v10 = [(RAPDisplayedRouteState *)v6 initWithStartWaypointTitle:v7 endWaypointTitle:v8 transportType:v9 composedRoute:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (GEOComposedRoute)activeComposedRoute
{
  v2 = [(NavigationSession *)self->_navigationSession currentRouteCollection];
  v3 = [v2 currentRoute];

  return v3;
}

- (NavigationSessionRAP)initWithNavigationSession:(id)a3 routePlanningSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NavigationSessionRAP;
  v9 = [(NavigationSessionRAP *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_navigationSession, a3);
    objc_storeStrong(&v10->_routePlanningSession, a4);
  }

  return v10;
}

@end