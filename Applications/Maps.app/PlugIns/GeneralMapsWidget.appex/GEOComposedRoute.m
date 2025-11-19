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
  v3 = [(GEOComposedRoute *)self waypoints];
  v4 = [v3 count];

  if (v4 > 2)
  {
    v6 = [(GEOComposedRoute *)self waypoints];
    v5 = [v6 objectAtIndexedSubscript:1];
  }

  else
  {
    v5 = [(GEOComposedRoute *)self destination];
  }

  return v5;
}

- (GuidanceETA)guidanceETA
{
  [(GEOComposedRoute *)self distance];
  v4 = v3;
  [(GEOComposedRoute *)self travelAndChargingDuration];
  v6 = v5;
  v7 = [(GEOComposedRoute *)self destination];
  v8 = [v7 timezone];

  if ([(GEOComposedRoute *)self isEVRoute])
  {
    v9 = [(GEOComposedRoute *)self lastEVStep];
    v10 = [v9 evInfo];
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 remainingBatteryPercentage]);
  }

  else
  {
    v11 = 0;
  }

  v12 = [[GuidanceETA alloc] initWithRemainingTime:v11 remainingDistance:v8 arrivalBatteryCharge:[(GEOComposedRoute *)self transportType] destinationTimeZone:v6 transportType:v4];

  return v12;
}

@end