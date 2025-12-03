@interface NavigationSessionRAP
- (GEOComposedRoute)activeComposedRoute;
- (NavigationSessionRAP)initWithNavigationSession:(id)session routePlanningSession:(id)planningSession;
- (RAPDisplayedDirectionsPlan)displayedDirectionsPlan;
- (RAPDisplayedRouteState)currentDirections;
@end

@implementation NavigationSessionRAP

- (RAPDisplayedDirectionsPlan)displayedDirectionsPlan
{
  currentTransportType = [(NavigationSession *)self->_navigationSession currentTransportType];
  v4 = currentTransportType > 4 || ((1 << currentTransportType) & 0x19) == 0;
  if (v4 && (([(NavigationSession *)self->_navigationSession currentRouteCollection], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || ([(RoutePlanningSession *)self->_routePlanningSession currentRouteCollection], (v6 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v7 = v6;
    reportAProblemRecorder = [(RoutePlanningSession *)self->_routePlanningSession reportAProblemRecorder];
    copyCurrentPartialRecording = [reportAProblemRecorder copyCurrentPartialRecording];

    v5 = [[RAPDisplayedDirectionsPlan alloc] initWithRouteCollection:v7 recording:copyCurrentPartialRecording];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (RAPDisplayedRouteState)currentDirections
{
  activeComposedRoute = [(NavigationSessionRAP *)self activeComposedRoute];

  if (activeComposedRoute)
  {
    navigationSession = self->_navigationSession;
    if (!navigationSession)
    {
      navigationSession = self->_routePlanningSession;
    }

    currentTransportType = [navigationSession currentTransportType];
    v6 = [RAPDisplayedRouteState alloc];
    originName = [(RoutePlanningSession *)self->_routePlanningSession originName];
    destinationName = [(RoutePlanningSession *)self->_routePlanningSession destinationName];
    if ((currentTransportType - 2) > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_101212C30[(currentTransportType - 2)];
    }

    activeComposedRoute2 = [(NavigationSessionRAP *)self activeComposedRoute];
    v10 = [(RAPDisplayedRouteState *)v6 initWithStartWaypointTitle:originName endWaypointTitle:destinationName transportType:v9 composedRoute:activeComposedRoute2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (GEOComposedRoute)activeComposedRoute
{
  currentRouteCollection = [(NavigationSession *)self->_navigationSession currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];

  return currentRoute;
}

- (NavigationSessionRAP)initWithNavigationSession:(id)session routePlanningSession:(id)planningSession
{
  sessionCopy = session;
  planningSessionCopy = planningSession;
  v12.receiver = self;
  v12.super_class = NavigationSessionRAP;
  v9 = [(NavigationSessionRAP *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_navigationSession, session);
    objc_storeStrong(&v10->_routePlanningSession, planningSession);
  }

  return v10;
}

@end