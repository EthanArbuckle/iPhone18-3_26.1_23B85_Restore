@interface GEOComposedRoute
- (GuidanceETA)guidanceETA;
- (id)nextWaypoint;
- (unint64_t)mapType;
@end

@implementation GEOComposedRoute

- (unint64_t)mapType
{
  if ([(GEOComposedRoute *)self transportType]== 1)
  {
    return 104;
  }

  else
  {
    return 0;
  }
}

- (id)nextWaypoint
{
  waypoints = [(GEOComposedRoute *)self waypoints];
  v4 = [waypoints count];

  if (v4 > 2)
  {
    waypoints2 = [(GEOComposedRoute *)self waypoints];
    destination = [waypoints2 objectAtIndexedSubscript:1];
  }

  else
  {
    destination = [(GEOComposedRoute *)self destination];
  }

  return destination;
}

- (GuidanceETA)guidanceETA
{
  [(GEOComposedRoute *)self distance];
  v4 = v3;
  [(GEOComposedRoute *)self travelAndChargingDuration];
  v6 = v5;
  destination = [(GEOComposedRoute *)self destination];
  timezone = [destination timezone];

  if ([(GEOComposedRoute *)self isEVRoute])
  {
    lastEVStep = [(GEOComposedRoute *)self lastEVStep];
    evInfo = [lastEVStep evInfo];
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [evInfo remainingBatteryPercentage]);
  }

  else
  {
    v11 = 0;
  }

  v12 = [[GuidanceETA alloc] initWithRemainingTime:v11 remainingDistance:timezone arrivalBatteryCharge:[(GEOComposedRoute *)self transportType] destinationTimeZone:v6 transportType:v4];

  return v12;
}

@end