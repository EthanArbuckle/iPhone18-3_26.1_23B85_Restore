@interface CLRoutePoint
- (BOOL)isEqual:(id)a3;
- (CLRoutePoint)initWithCoder:(id)a3;
- (CLRoutePoint)initWithLatitude:(double)a3 longitude:(double)a4 altitude:(double)a5 odometer:(double)a6 timestamp:(double)a7 signalEnvironmentType:(int)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLRoutePoint

- (CLRoutePoint)initWithLatitude:(double)a3 longitude:(double)a4 altitude:(double)a5 odometer:(double)a6 timestamp:(double)a7 signalEnvironmentType:(int)a8
{
  v15.receiver = self;
  v15.super_class = CLRoutePoint;
  result = [(CLRoutePoint *)&v15 init];
  if (result)
  {
    result->_latitude_deg = a3;
    result->_longitude_deg = a4;
    result->_altitude_m = a5;
    result->_odometer_m = a6;
    result->_timestamp_s = a7;
    result->_signalEnvironmentType = a8;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(CLRoutePoint *)self latitude_deg];
  v6 = v5;
  [(CLRoutePoint *)self longitude_deg];
  v8 = v7;
  [(CLRoutePoint *)self altitude_m];
  v10 = v9;
  [(CLRoutePoint *)self odometer_m];
  v12 = v11;
  [(CLRoutePoint *)self timestamp_s];
  return [v3 stringWithFormat:@"<%@ latitude: %.7lf, longitude: %.7lf, altitude: %.3lf, odometer: %.3lf, timestamp: %.3lf, signalEnvironment: %d>", v4, v6, v8, v10, v12, v13, -[CLRoutePoint signalEnvironmentType](self, "signalEnvironmentType")];
}

- (BOOL)isEqual:(id)a3
{
  [(CLRoutePoint *)self latitude_deg];
  v6 = v5;
  [a3 latitude_deg];
  if (vabdd_f64(v6, v7) >= 0.0000001)
  {
    return 0;
  }

  [(CLRoutePoint *)self longitude_deg];
  v9 = v8;
  [a3 longitude_deg];
  if (vabdd_f64(v9, v10) >= 0.0000001)
  {
    return 0;
  }

  [(CLRoutePoint *)self altitude_m];
  v12 = v11;
  [a3 altitude_m];
  if (vabdd_f64(v12, v13) >= 0.0000001)
  {
    return 0;
  }

  [(CLRoutePoint *)self odometer_m];
  v15 = v14;
  [a3 odometer_m];
  if (vabdd_f64(v15, v16) >= 0.0000001)
  {
    return 0;
  }

  [(CLRoutePoint *)self timestamp_s];
  v18 = v17;
  [a3 timestamp_s];
  if (vabdd_f64(v18, v19) >= 0.0000001)
  {
    return 0;
  }

  v20 = [(CLRoutePoint *)self signalEnvironmentType];
  return v20 == [a3 signalEnvironmentType];
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(CLRoutePoint *)self latitude_deg];
  v4 = [objc_msgSend(v3 "numberWithDouble:"hash"")];
  v5 = MEMORY[0x1E696AD98];
  [(CLRoutePoint *)self longitude_deg];
  v6 = [objc_msgSend(v5 "numberWithDouble:"hash"")] ^ v4;
  v7 = MEMORY[0x1E696AD98];
  [(CLRoutePoint *)self altitude_m];
  v8 = [objc_msgSend(v7 "numberWithDouble:"hash"")];
  v9 = MEMORY[0x1E696AD98];
  [(CLRoutePoint *)self odometer_m];
  v10 = v6 ^ v8 ^ [objc_msgSend(v9 "numberWithDouble:"hash"")];
  v11 = MEMORY[0x1E696AD98];
  [(CLRoutePoint *)self timestamp_s];
  v12 = [objc_msgSend(v11 "numberWithDouble:"hash"")];
  return v10 ^ v12 ^ [(CLRoutePoint *)self signalEnvironmentType];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CLRoutePoint *)self latitude_deg];
  *(v4 + 16) = v5;
  [(CLRoutePoint *)self longitude_deg];
  *(v4 + 24) = v6;
  [(CLRoutePoint *)self altitude_m];
  *(v4 + 32) = v7;
  [(CLRoutePoint *)self odometer_m];
  *(v4 + 40) = v8;
  [(CLRoutePoint *)self timestamp_s];
  *(v4 + 48) = v9;
  *(v4 + 8) = [(CLRoutePoint *)self signalEnvironmentType];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [(CLRoutePoint *)self latitude_deg];
  [a3 encodeDouble:@"latitude" forKey:?];
  [(CLRoutePoint *)self longitude_deg];
  [a3 encodeDouble:@"longitude" forKey:?];
  [(CLRoutePoint *)self altitude_m];
  [a3 encodeDouble:@"altitude" forKey:?];
  [(CLRoutePoint *)self odometer_m];
  [a3 encodeDouble:@"odometer" forKey:?];
  [(CLRoutePoint *)self timestamp_s];
  [a3 encodeDouble:@"timestamp" forKey:?];
  v5 = [(CLRoutePoint *)self signalEnvironmentType];

  [a3 encodeInteger:v5 forKey:@"signalEnvironment"];
}

- (CLRoutePoint)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CLRoutePoint;
  v4 = [(CLRoutePoint *)&v11 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"latitude"];
    v4->_latitude_deg = v5;
    [a3 decodeDoubleForKey:@"longitude"];
    v4->_longitude_deg = v6;
    [a3 decodeDoubleForKey:@"altitude"];
    v4->_altitude_m = v7;
    [a3 decodeDoubleForKey:@"odometer"];
    v4->_odometer_m = v8;
    [a3 decodeDoubleForKey:@"timestamp"];
    v4->_timestamp_s = v9;
    v4->_signalEnvironmentType = [a3 decodeIntegerForKey:@"signalEnvironment"];
  }

  return v4;
}

@end