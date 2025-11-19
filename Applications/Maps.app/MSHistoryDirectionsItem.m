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
- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6;
@end

@implementation MSHistoryDirectionsItem

- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (id)routeInformationSource
{
  v2 = [[HistoryEntryRecentRouteInfoSource alloc] initWithItem:self];

  return v2;
}

- (GEOCyclingOptions)cyclingOptions
{
  v2 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  v3 = [v2 cyclingOptions];

  return v3;
}

- (GEOWalkingOptions)walkingOptions
{
  v2 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  v3 = [v2 walkingOptions];

  return v3;
}

- (GEOTransitOptions)transitOptions
{
  v2 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  v3 = [v2 transitOptions];

  return v3;
}

- (GEOAutomobileOptions)automobileOptions
{
  v2 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  v3 = [v2 automobileOptions];

  return v3;
}

- (NSArray)waypoints
{
  v2 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  v3 = [v2 waypoints];

  return v3;
}

- (GEOComposedWaypoint)endWaypoint
{
  v3 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  v4 = [v3 destinationRouteData];

  if (v4)
  {
    v5 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:v4];
    v6 = [v5 buildRoute];

    v7 = [[GEOComposedWaypointToRoute alloc] initWithRoute:v6];
  }

  else
  {
    v6 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
    v8 = [v6 waypoints];
    v7 = [v8 lastObject];
  }

  return v7;
}

- (GEOComposedWaypoint)startWaypoint
{
  v3 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  v4 = [v3 waypoints];
  if ([v4 count] == 2)
  {
    v5 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
    v6 = [v5 waypoints];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)transportType
{
  v2 = [(MSHistoryDirectionsItem *)self routeRequestStorage];
  v3 = [v2 transportType] - 1;
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