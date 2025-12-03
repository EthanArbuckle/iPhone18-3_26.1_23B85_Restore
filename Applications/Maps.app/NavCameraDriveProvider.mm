@interface NavCameraDriveProvider
- (MNLocation)lastLocation;
- (NavCameraDriveProvider)init;
- (NavCameraNavigationDelegate)delegate;
- (id)_matchedLocationForLocation:(id)location;
- (int)navigationState;
- (unint64_t)navigationDestination;
- (void)_updateWithRoute:(id)route;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)setRouteGeniusEntry:(id)entry;
@end

@implementation NavCameraDriveProvider

- (NavCameraNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)locationManagerUpdatedLocation:(id)location
{
  if (self->_roadMatcher)
  {
    lastLocation = [location lastLocation];
    if (lastLocation)
    {
      v7 = lastLocation;
      v5 = [(NavCameraDriveProvider *)self _matchedLocationForLocation:lastLocation];
      if (v5)
      {
        delegate = [(NavCameraDriveProvider *)self delegate];
        [delegate navigationProvider:self didUpdateMatchedLocation:v5];
      }

      lastLocation = v7;
    }
  }
}

- (MNLocation)lastLocation
{
  lastLocation = self->_lastLocation;
  if (!lastLocation)
  {
    v4 = +[MKLocationManager sharedLocationManager];
    lastLocation = [v4 lastLocation];
    v6 = [(NavCameraDriveProvider *)self _matchedLocationForLocation:lastLocation];
    v7 = self->_lastLocation;
    self->_lastLocation = v6;

    lastLocation = self->_lastLocation;
  }

  return lastLocation;
}

- (unint64_t)navigationDestination
{
  routeGeniusEntry = [(NavCameraDriveProvider *)self routeGeniusEntry];
  v3 = 2 * (routeGeniusEntry != 0);

  return v3;
}

- (int)navigationState
{
  route = [(NavCameraDriveProvider *)self route];
  v3 = 2 * (route != 0);

  return v3;
}

- (id)_matchedLocationForLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v5 = [[GEOLocation alloc] initWithCLLocation:locationCopy];
    routeMatcher = self->_routeMatcher;
    if (!routeMatcher || (-[GEORouteMatcher matchToRouteWithLocation:previousRouteMatch:](routeMatcher, "matchToRouteWithLocation:previousRouteMatch:", v5, self->_previousRouteMatch), v7 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(&self->_previousRouteMatch, v7), !v7) || (v8 = [[MNLocation alloc] initWithRouteMatch:v7 rawLocation:locationCopy locationFixType:2], v7, !v8))
    {
      v9 = [(GEORoadMatcher *)self->_roadMatcher matchLocation:v5 forTransportType:0];
      if (!v9 || (v10 = v9, v8 = [[MNLocation alloc] initWithRoadMatch:v9 rawLocation:locationCopy locationFixType:0], v10, !v8))
      {
        v8 = [[MNLocation alloc] initWithRawLocation:locationCopy locationFixType:1];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateWithRoute:(id)route
{
  p_route = &self->_route;
  routeCopy = route;
  if (([(GEOComposedRoute *)*p_route _MapsCarPlay_isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_route, route);
    if (self->_route)
    {
      v6 = [[GEORouteMatcher alloc] initWithRoute:*p_route auditToken:0];
    }

    else
    {
      previousRouteMatch = self->_previousRouteMatch;
      self->_previousRouteMatch = 0;

      v6 = 0;
    }

    routeMatcher = self->_routeMatcher;
    self->_routeMatcher = v6;

    delegate = [(NavCameraDriveProvider *)self delegate];
    [delegate navigationProvider:self didChangeNavigationState:{-[NavCameraDriveProvider navigationState](self, "navigationState")}];

    delegate2 = [(NavCameraDriveProvider *)self delegate];
    [delegate2 navigationProvider:self didUpdateRoute:self->_route traffic:0];
  }
}

- (void)setRouteGeniusEntry:(id)entry
{
  objc_storeStrong(&self->_routeGeniusEntry, entry);
  entryCopy = entry;
  delegate = [(NavCameraDriveProvider *)self delegate];
  [delegate navigationProvider:self didChangeNavigationDestination:{-[NavCameraDriveProvider navigationDestination](self, "navigationDestination")}];

  route = [entryCopy route];

  [(NavCameraDriveProvider *)self _updateWithRoute:route];
}

- (NavCameraDriveProvider)init
{
  v7.receiver = self;
  v7.super_class = NavCameraDriveProvider;
  v2 = [(NavCameraDriveProvider *)&v7 init];
  if (v2)
  {
    v3 = [[GEORoadMatcher alloc] initWithAuditToken:0];
    roadMatcher = v2->_roadMatcher;
    v2->_roadMatcher = v3;

    [(GEORoadMatcher *)v2->_roadMatcher setSearchRadius:35.0];
    v5 = +[MKLocationManager sharedLocationManager];
    [v5 listenForLocationUpdates:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[MKLocationManager sharedLocationManager];
  [v3 stopListeningForLocationUpdates:self];

  v4.receiver = self;
  v4.super_class = NavCameraDriveProvider;
  [(NavCameraDriveProvider *)&v4 dealloc];
}

@end