@interface CLRacingRouteState
- (CLRacingRouteState)initWithCoder:(id)coder;
- (CLRacingRouteState)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude odometer:(double)odometer timestamp:(double)timestamp timeSinceStart:(double)start offRouteTime:(double)time distanceSinceStart:(double)self0 offRouteDistance:(double)self1 averagePace:(double)self2 distanceAlongReference:(double)self3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRacingRouteState

- (CLRacingRouteState)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude odometer:(double)odometer timestamp:(double)timestamp timeSinceStart:(double)start offRouteTime:(double)time distanceSinceStart:(double)self0 offRouteDistance:(double)self1 averagePace:(double)self2 distanceAlongReference:(double)self3
{
  v22.receiver = self;
  v22.super_class = CLRacingRouteState;
  result = [(CLRacingRouteState *)&v22 init];
  if (result)
  {
    result->_latitude = latitude;
    result->_longitude = longitude;
    result->_altitude = altitude;
    result->_odometer = odometer;
    result->_timestamp = timestamp;
    result->_timeSinceStart = start;
    result->_offRouteTime = time;
    result->_distanceSinceStart = sinceStart;
    result->_offRouteDistance = distance;
    result->_averagePace = pace;
    result->_distanceAlongReference = reference;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  [(CLRacingRouteState *)self latitude];
  [coder encodeDouble:@"latitude" forKey:?];
  [(CLRacingRouteState *)self longitude];
  [coder encodeDouble:@"longitude" forKey:?];
  [(CLRacingRouteState *)self altitude];
  [coder encodeDouble:@"altitude" forKey:?];
  [(CLRacingRouteState *)self odometer];
  [coder encodeDouble:@"odometer" forKey:?];
  [(CLRacingRouteState *)self timestamp];
  [coder encodeDouble:@"timestamp" forKey:?];
  [(CLRacingRouteState *)self timeSinceStart];
  [coder encodeDouble:@"timeSinceStart" forKey:?];
  [(CLRacingRouteState *)self offRouteTime];
  [coder encodeDouble:@"offRouteTime" forKey:?];
  [(CLRacingRouteState *)self distanceSinceStart];
  [coder encodeDouble:@"distanceSinceStart" forKey:?];
  [(CLRacingRouteState *)self offRouteDistance];
  [coder encodeDouble:@"offRouteDistance" forKey:?];
  [(CLRacingRouteState *)self averagePace];
  [coder encodeDouble:@"averagePace" forKey:?];
  [(CLRacingRouteState *)self distanceAlongReference];

  [coder encodeDouble:@"distanceAlongReference" forKey:?];
}

- (CLRacingRouteState)initWithCoder:(id)coder
{
  v4 = [CLRacingRouteState alloc];
  [coder decodeDoubleForKey:@"latitude"];
  v26 = v5;
  [coder decodeDoubleForKey:@"longitude"];
  v25 = v6;
  [coder decodeDoubleForKey:@"altitude"];
  v8 = v7;
  [coder decodeDoubleForKey:@"odometer"];
  v10 = v9;
  [coder decodeDoubleForKey:@"timestamp"];
  v12 = v11;
  [coder decodeDoubleForKey:@"timeSinceStart"];
  v14 = v13;
  [coder decodeDoubleForKey:@"offRouteTime"];
  v16 = v15;
  [coder decodeDoubleForKey:@"distanceSinceStart"];
  v18 = v17;
  [coder decodeDoubleForKey:@"offRouteDistance"];
  v20 = v19;
  [coder decodeDoubleForKey:@"averagePace"];
  v22 = v21;
  [coder decodeDoubleForKey:@"distanceAlongReference"];
  return [(CLRacingRouteState *)v4 initWithLatitude:v26 longitude:v25 altitude:v8 odometer:v10 timestamp:v12 timeSinceStart:v14 offRouteTime:v16 distanceSinceStart:v18 offRouteDistance:v20 averagePace:v22 distanceAlongReference:v23];
}

@end