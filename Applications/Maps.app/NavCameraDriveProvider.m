@interface NavCameraDriveProvider
- (MNLocation)lastLocation;
- (NavCameraDriveProvider)init;
- (NavCameraNavigationDelegate)delegate;
- (id)_matchedLocationForLocation:(id)a3;
- (int)navigationState;
- (unint64_t)navigationDestination;
- (void)_updateWithRoute:(id)a3;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)setRouteGeniusEntry:(id)a3;
@end

@implementation NavCameraDriveProvider

- (NavCameraNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  if (self->_roadMatcher)
  {
    v4 = [a3 lastLocation];
    if (v4)
    {
      v7 = v4;
      v5 = [(NavCameraDriveProvider *)self _matchedLocationForLocation:v4];
      if (v5)
      {
        v6 = [(NavCameraDriveProvider *)self delegate];
        [v6 navigationProvider:self didUpdateMatchedLocation:v5];
      }

      v4 = v7;
    }
  }
}

- (MNLocation)lastLocation
{
  lastLocation = self->_lastLocation;
  if (!lastLocation)
  {
    v4 = +[MKLocationManager sharedLocationManager];
    v5 = [v4 lastLocation];
    v6 = [(NavCameraDriveProvider *)self _matchedLocationForLocation:v5];
    v7 = self->_lastLocation;
    self->_lastLocation = v6;

    lastLocation = self->_lastLocation;
  }

  return lastLocation;
}

- (unint64_t)navigationDestination
{
  v2 = [(NavCameraDriveProvider *)self routeGeniusEntry];
  v3 = 2 * (v2 != 0);

  return v3;
}

- (int)navigationState
{
  v2 = [(NavCameraDriveProvider *)self route];
  v3 = 2 * (v2 != 0);

  return v3;
}

- (id)_matchedLocationForLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[GEOLocation alloc] initWithCLLocation:v4];
    routeMatcher = self->_routeMatcher;
    if (!routeMatcher || (-[GEORouteMatcher matchToRouteWithLocation:previousRouteMatch:](routeMatcher, "matchToRouteWithLocation:previousRouteMatch:", v5, self->_previousRouteMatch), v7 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(&self->_previousRouteMatch, v7), !v7) || (v8 = [[MNLocation alloc] initWithRouteMatch:v7 rawLocation:v4 locationFixType:2], v7, !v8))
    {
      v9 = [(GEORoadMatcher *)self->_roadMatcher matchLocation:v5 forTransportType:0];
      if (!v9 || (v10 = v9, v8 = [[MNLocation alloc] initWithRoadMatch:v9 rawLocation:v4 locationFixType:0], v10, !v8))
      {
        v8 = [[MNLocation alloc] initWithRawLocation:v4 locationFixType:1];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateWithRoute:(id)a3
{
  p_route = &self->_route;
  v11 = a3;
  if (([(GEOComposedRoute *)*p_route _MapsCarPlay_isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_route, a3);
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

    v9 = [(NavCameraDriveProvider *)self delegate];
    [v9 navigationProvider:self didChangeNavigationState:{-[NavCameraDriveProvider navigationState](self, "navigationState")}];

    v10 = [(NavCameraDriveProvider *)self delegate];
    [v10 navigationProvider:self didUpdateRoute:self->_route traffic:0];
  }
}

- (void)setRouteGeniusEntry:(id)a3
{
  objc_storeStrong(&self->_routeGeniusEntry, a3);
  v5 = a3;
  v6 = [(NavCameraDriveProvider *)self delegate];
  [v6 navigationProvider:self didChangeNavigationDestination:{-[NavCameraDriveProvider navigationDestination](self, "navigationDestination")}];

  v7 = [v5 route];

  [(NavCameraDriveProvider *)self _updateWithRoute:v7];
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