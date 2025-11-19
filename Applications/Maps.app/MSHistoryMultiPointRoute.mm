@interface MSHistoryMultiPointRoute
- (GEOAutomobileOptions)automobileOptions;
- (GEOComposedWaypoint)endWaypoint;
- (GEOComposedWaypoint)startWaypoint;
- (GEOCyclingOptions)cyclingOptions;
- (GEOTransitOptions)transitOptions;
- (GEOWalkingOptions)walkingOptions;
- (NSArray)waypoints;
- (int64_t)transportType;
- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6;
@end

@implementation MSHistoryMultiPointRoute

- (void)ifSearch:(id)a3 ifRoute:(id)a4 ifPlaceDisplay:(id)a5 ifTransitLineItem:(id)a6
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (GEOCyclingOptions)cyclingOptions
{
  v2 = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  v3 = [v2 cyclingOptions];

  return v3;
}

- (GEOWalkingOptions)walkingOptions
{
  v2 = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  v3 = [v2 walkingOptions];

  return v3;
}

- (GEOTransitOptions)transitOptions
{
  v2 = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  v3 = [v2 transitOptions];

  return v3;
}

- (GEOAutomobileOptions)automobileOptions
{
  v2 = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  v3 = [v2 automobileOptions];

  return v3;
}

- (NSArray)waypoints
{
  v2 = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  v3 = [v2 waypoints];

  return v3;
}

- (GEOComposedWaypoint)endWaypoint
{
  v2 = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  v3 = [v2 waypoints];
  v4 = [v3 lastObject];

  return v4;
}

- (GEOComposedWaypoint)startWaypoint
{
  v2 = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
  v3 = [v2 waypoints];
  v4 = [v3 firstObject];

  return v4;
}

- (int64_t)transportType
{
  v2 = [(MSHistoryMultiPointRoute *)self routeRequestStorage];
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