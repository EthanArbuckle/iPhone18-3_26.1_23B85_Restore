@interface CLLocationCoordinate
- (BOOL)isEqualCoordinate:(id)coordinate;
- (CLLocationCoordinate)initWithCoder:(id)coder;
- (CLLocationCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude;
- (double)distanceFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationCoordinate

- (CLLocationCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v7.receiver = self;
  v7.super_class = CLLocationCoordinate;
  result = [(CLLocationCoordinate *)&v7 init];
  if (result)
  {
    result->_latitude = latitude;
    result->_longitude = longitude;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  [(CLLocationCoordinate *)self latitude];
  [coder encodeDouble:@"latitude" forKey:?];
  [(CLLocationCoordinate *)self longitude];

  [coder encodeDouble:@"longitude" forKey:?];
}

- (CLLocationCoordinate)initWithCoder:(id)coder
{
  v4 = [CLLocationCoordinate alloc];
  [coder decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [coder decodeDoubleForKey:@"longitude"];

  return [(CLLocationCoordinate *)v4 initWithLatitude:v6 longitude:v7];
}

- (BOOL)isEqualCoordinate:(id)coordinate
{
  latitude = self->_latitude;
  [coordinate latitude];
  if (vabdd_f64(latitude, v6) >= 0.0000001)
  {
    return 0;
  }

  longitude = self->_longitude;
  [coordinate longitude];
  return vabdd_f64(longitude, v8) < 0.0000001;
}

- (double)distanceFrom:(id)from
{
  if (!from)
  {
    return -1.0;
  }

  latitude = self->_latitude;
  longitude = self->_longitude;
  [from latitude];
  v7 = v6;
  [from longitude];

  MEMORY[0x1EEDE89A0](latitude, longitude, v7, v8);
  return result;
}

@end