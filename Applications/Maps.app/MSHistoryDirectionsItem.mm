@interface MSHistoryDirectionsItem
- (GEOAutomobileOptions)automobileOptions;
- (GEOComposedWaypoint)endWaypoint;
- (GEOComposedWaypoint)startWaypoint;
- (GEOCyclingOptions)cyclingOptions;
- (GEOTransitOptions)transitOptions;
- (GEOWalkingOptions)walkingOptions;
- (NSArray)waypoints;
- (id)routeInformationSource;
- (int64_t)transportType;
- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item;
@end

@implementation MSHistoryDirectionsItem

- (void)ifSearch:(id)search ifRoute:(id)route ifPlaceDisplay:(id)display ifTransitLineItem:(id)item
{
  if (route)
  {
    (*(route + 2))(route, self);
  }
}

- (id)routeInformationSource
{
  v2 = [[HistoryEntryRecentRouteInfoSource alloc] initWithItem:self];

  return v2;
}

- (GEOCyclingOptions)cyclingOptions
{
  routeRequestStorage = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  cyclingOptions = [routeRequestStorage cyclingOptions];

  return cyclingOptions;
}

- (GEOWalkingOptions)walkingOptions
{
  routeRequestStorage = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  walkingOptions = [routeRequestStorage walkingOptions];

  return walkingOptions;
}

- (GEOTransitOptions)transitOptions
{
  routeRequestStorage = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  transitOptions = [routeRequestStorage transitOptions];

  return transitOptions;
}

- (GEOAutomobileOptions)automobileOptions
{
  routeRequestStorage = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  automobileOptions = [routeRequestStorage automobileOptions];

  return automobileOptions;
}

- (NSArray)waypoints
{
  routeRequestStorage = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  waypoints = [routeRequestStorage waypoints];

  return waypoints;
}

- (GEOComposedWaypoint)endWaypoint
{
  routeRequestStorage = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  destinationRouteData = [routeRequestStorage destinationRouteData];

  if (destinationRouteData)
  {
    v5 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:destinationRouteData];
    buildRoute = [v5 buildRoute];

    lastObject = [[GEOComposedWaypointToRoute alloc] initWithRoute:buildRoute];
  }

  else
  {
    buildRoute = [(MSHistoryDirectionsItem *)self routeRequestStorage];
    waypoints = [buildRoute waypoints];
    lastObject = [waypoints lastObject];
  }

  return lastObject;
}

- (GEOComposedWaypoint)startWaypoint
{
  routeRequestStorage = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  waypoints = [routeRequestStorage waypoints];
  if ([waypoints count] == 2)
  {
    routeRequestStorage2 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
    waypoints2 = [routeRequestStorage2 waypoints];
    firstObject = [waypoints2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (int64_t)transportType
{
  routeRequestStorage = [(MSHistoryDirectionsItem *)self routeRequestStorage];
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