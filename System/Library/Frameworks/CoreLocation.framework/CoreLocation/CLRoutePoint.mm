@interface CLRoutePoint
- (BOOL)isEqual:(id)equal;
- (CLRoutePoint)initWithCoder:(id)coder;
- (CLRoutePoint)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude odometer:(double)odometer timestamp:(double)timestamp signalEnvironmentType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRoutePoint

- (CLRoutePoint)initWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude odometer:(double)odometer timestamp:(double)timestamp signalEnvironmentType:(int)type
{
  v15.receiver = self;
  v15.super_class = CLRoutePoint;
  result = [(CLRoutePoint *)&v15 init];
  if (result)
  {
    result->_latitude_deg = latitude;
    result->_longitude_deg = longitude;
    result->_altitude_m = altitude;
    result->_odometer_m = odometer;
    result->_timestamp_s = timestamp;
    result->_signalEnvironmentType = type;
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

- (BOOL)isEqual:(id)equal
{
  [(CLRoutePoint *)self latitude_deg];
  v6 = v5;
  [equal latitude_deg];
  if (vabdd_f64(v6, v7) >= 0.0000001)
  {
    return 0;
  }

  [(CLRoutePoint *)self longitude_deg];
  v9 = v8;
  [equal longitude_deg];
  if (vabdd_f64(v9, v10) >= 0.0000001)
  {
    return 0;
  }

  [(CLRoutePoint *)self altitude_m];
  v12 = v11;
  [equal altitude_m];
  if (vabdd_f64(v12, v13) >= 0.0000001)
  {
    return 0;
  }

  [(CLRoutePoint *)self odometer_m];
  v15 = v14;
  [equal odometer_m];
  if (vabdd_f64(v15, v16) >= 0.0000001)
  {
    return 0;
  }

  [(CLRoutePoint *)self timestamp_s];
  v18 = v17;
  [equal timestamp_s];
  if (vabdd_f64(v18, v19) >= 0.0000001)
  {
    return 0;
  }

  signalEnvironmentType = [(CLRoutePoint *)self signalEnvironmentType];
  return signalEnvironmentType == [equal signalEnvironmentType];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  [(CLRoutePoint *)self latitude_deg];
  [coder encodeDouble:@"latitude" forKey:?];
  [(CLRoutePoint *)self longitude_deg];
  [coder encodeDouble:@"longitude" forKey:?];
  [(CLRoutePoint *)self altitude_m];
  [coder encodeDouble:@"altitude" forKey:?];
  [(CLRoutePoint *)self odometer_m];
  [coder encodeDouble:@"odometer" forKey:?];
  [(CLRoutePoint *)self timestamp_s];
  [coder encodeDouble:@"timestamp" forKey:?];
  signalEnvironmentType = [(CLRoutePoint *)self signalEnvironmentType];

  [coder encodeInteger:signalEnvironmentType forKey:@"signalEnvironment"];
}

- (CLRoutePoint)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CLRoutePoint;
  v4 = [(CLRoutePoint *)&v11 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"latitude"];
    v4->_latitude_deg = v5;
    [coder decodeDoubleForKey:@"longitude"];
    v4->_longitude_deg = v6;
    [coder decodeDoubleForKey:@"altitude"];
    v4->_altitude_m = v7;
    [coder decodeDoubleForKey:@"odometer"];
    v4->_odometer_m = v8;
    [coder decodeDoubleForKey:@"timestamp"];
    v4->_timestamp_s = v9;
    v4->_signalEnvironmentType = [coder decodeIntegerForKey:@"signalEnvironment"];
  }

  return v4;
}

@end