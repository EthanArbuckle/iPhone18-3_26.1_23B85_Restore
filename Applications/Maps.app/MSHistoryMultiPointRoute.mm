@interface MSHistoryMultiPointRoute
- (GEOAutomobileOptions)automobileOptions;
- (GEOComposedWaypoint)endWaypoint;
- (GEOComposedWaypoint)startWaypoint;
- (GEOCyclingOptions)cyclingOptions;
- (GEOTransitOptions)transitOptions;
- (GEOWalkingOptions)walkingOptions;
- (NSArray)waypoints;
- (int64_t)transportType;
- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item;
@end

@implementation MSHistoryMultiPointRoute

- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item
{
  if (route)
  {
    (*(route + 2))(route, self);
  }
}

- (GEOCyclingOptions)cyclingOptions
{
  routeRequestStorage = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  cyclingOptions = [routeRequestStorage cyclingOptions];

  return cyclingOptions;
}

- (GEOWalkingOptions)walkingOptions
{
  routeRequestStorage = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  walkingOptions = [routeRequestStorage walkingOptions];

  return walkingOptions;
}

- (GEOTransitOptions)transitOptions
{
  routeRequestStorage = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  transitOptions = [routeRequestStorage transitOptions];

  return transitOptions;
}

- (GEOAutomobileOptions)automobileOptions
{
  routeRequestStorage = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  automobileOptions = [routeRequestStorage automobileOptions];

  return automobileOptions;
}

- (NSArray)waypoints
{
  routeRequestStorage = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  waypoints = [routeRequestStorage waypoints];

  return waypoints;
}

- (GEOComposedWaypoint)endWaypoint
{
  routeRequestStorage = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  waypoints = [routeRequestStorage waypoints];
  lastObject = [waypoints lastObject];

  return lastObject;
}

- (GEOComposedWaypoint)startWaypoint
{
  routeRequestStorage = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  waypoints = [routeRequestStorage waypoints];
  firstObject = [waypoints firstObject];

  return firstObject;
}

- (int64_t)transportType
{
  routeRequestStorage = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  v3 = [routeRequestStorage transportType] - 1;
  if (v3 > 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_101216278[v3];
  }

  return v4;
}

@end