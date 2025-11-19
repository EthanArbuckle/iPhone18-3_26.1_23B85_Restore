@interface CLRacingRouteState
- (CLRacingRouteState)initWithCoder:(id)a3;
- (CLRacingRouteState)initWithLatitude:(double)a3 longitude:(double)a4 altitude:(double)a5 odometer:(double)a6 timestamp:(double)a7 timeSinceStart:(double)a8 offRouteTime:(double)a9 distanceSinceStart:(double)a10 offRouteDistance:(double)a11 averagePace:(double)a12 distanceAlongReference:(double)a13;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLRacingRouteState

- (CLRacingRouteState)initWithLatitude:(double)a3 longitude:(double)a4 altitude:(double)a5 odometer:(double)a6 timestamp:(double)a7 timeSinceStart:(double)a8 offRouteTime:(double)a9 distanceSinceStart:(double)a10 offRouteDistance:(double)a11 averagePace:(double)a12 distanceAlongReference:(double)a13
{
  v22.receiver = self;
  v22.super_class = CLRacingRouteState;
  result = [(CLRacingRouteState *)&v22 init];
  if (result)
  {
    result->_latitude = a3;
    result->_longitude = a4;
    result->_altitude = a5;
    result->_odometer = a6;
    result->_timestamp = a7;
    result->_timeSinceStart = a8;
    result->_offRouteTime = a9;
    result->_distanceSinceStart = a10;
    result->_offRouteDistance = a11;
    result->_averagePace = a12;
    result->_distanceAlongReference = a13;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  [(CLRacingRouteState *)self latitude];
  [a3 encodeDouble:@"latitude" forKey:?];
  [(CLRacingRouteState *)self longitude];
  [a3 encodeDouble:@"longitude" forKey:?];
  [(CLRacingRouteState *)self altitude];
  [a3 encodeDouble:@"altitude" forKey:?];
  [(CLRacingRouteState *)self odometer];
  [a3 encodeDouble:@"odometer" forKey:?];
  [(CLRacingRouteState *)self timestamp];
  [a3 encodeDouble:@"timestamp" forKey:?];
  [(CLRacingRouteState *)self timeSinceStart];
  [a3 encodeDouble:@"timeSinceStart" forKey:?];
  [(CLRacingRouteState *)self offRouteTime];
  [a3 encodeDouble:@"offRouteTime" forKey:?];
  [(CLRacingRouteState *)self distanceSinceStart];
  [a3 encodeDouble:@"distanceSinceStart" forKey:?];
  [(CLRacingRouteState *)self offRouteDistance];
  [a3 encodeDouble:@"offRouteDistance" forKey:?];
  [(CLRacingRouteState *)self averagePace];
  [a3 encodeDouble:@"averagePace" forKey:?];
  [(CLRacingRouteState *)self distanceAlongReference];

  [a3 encodeDouble:@"distanceAlongReference" forKey:?];
}

- (CLRacingRouteState)initWithCoder:(id)a3
{
  v4 = [CLRacingRouteState alloc];
  [a3 decodeDoubleForKey:@"latitude"];
  v26 = v5;
  [a3 decodeDoubleForKey:@"longitude"];
  v25 = v6;
  [a3 decodeDoubleForKey:@"altitude"];
  v8 = v7;
  [a3 decodeDoubleForKey:@"odometer"];
  v10 = v9;
  [a3 decodeDoubleForKey:@"timestamp"];
  v12 = v11;
  [a3 decodeDoubleForKey:@"timeSinceStart"];
  v14 = v13;
  [a3 decodeDoubleForKey:@"offRouteTime"];
  v16 = v15;
  [a3 decodeDoubleForKey:@"distanceSinceStart"];
  v18 = v17;
  [a3 decodeDoubleForKey:@"offRouteDistance"];
  v20 = v19;
  [a3 decodeDoubleForKey:@"averagePace"];
  v22 = v21;
  [a3 decodeDoubleForKey:@"distanceAlongReference"];
  return [(CLRacingRouteState *)v4 initWithLatitude:v26 longitude:v25 altitude:v8 odometer:v10 timestamp:v12 timeSinceStart:v14 offRouteTime:v16 distanceSinceStart:v18 offRouteDistance:v20 averagePace:v22 distanceAlongReference:v23];
}

@end