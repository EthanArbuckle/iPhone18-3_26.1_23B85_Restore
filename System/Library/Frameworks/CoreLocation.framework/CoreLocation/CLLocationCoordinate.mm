@interface CLLocationCoordinate
- (BOOL)isEqualCoordinate:(id)a3;
- (CLLocationCoordinate)initWithCoder:(id)a3;
- (CLLocationCoordinate)initWithLatitude:(double)a3 longitude:(double)a4;
- (double)distanceFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLLocationCoordinate

- (CLLocationCoordinate)initWithLatitude:(double)a3 longitude:(double)a4
{
  v7.receiver = self;
  v7.super_class = CLLocationCoordinate;
  result = [(CLLocationCoordinate *)&v7 init];
  if (result)
  {
    result->_latitude = a3;
    result->_longitude = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(CLLocationCoordinate *)self latitude];
  v6 = v5;
  [(CLLocationCoordinate *)self longitude];

  return [v4 initWithLatitude:v6 longitude:v7];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLLocationCoordinate;
  [(CLLocationCoordinate *)&v2 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  return [v2 stringWithFormat:@"%@", NSStringFromClass(v3)];
}

- (void)encodeWithCoder:(id)a3
{
  [(CLLocationCoordinate *)self latitude];
  [a3 encodeDouble:@"latitude" forKey:?];
  [(CLLocationCoordinate *)self longitude];

  [a3 encodeDouble:@"longitude" forKey:?];
}

- (CLLocationCoordinate)initWithCoder:(id)a3
{
  v4 = [CLLocationCoordinate alloc];
  [a3 decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [a3 decodeDoubleForKey:@"longitude"];

  return [(CLLocationCoordinate *)v4 initWithLatitude:v6 longitude:v7];
}

- (BOOL)isEqualCoordinate:(id)a3
{
  latitude = self->_latitude;
  [a3 latitude];
  if (vabdd_f64(latitude, v6) >= 0.0000001)
  {
    return 0;
  }

  longitude = self->_longitude;
  [a3 longitude];
  return vabdd_f64(longitude, v8) < 0.0000001;
}

- (double)distanceFrom:(id)a3
{
  if (!a3)
  {
    return -1.0;
  }

  latitude = self->_latitude;
  longitude = self->_longitude;
  [a3 latitude];
  v7 = v6;
  [a3 longitude];

  MEMORY[0x1EEDE89A0](latitude, longitude, v7, v8);
  return result;
}

@end