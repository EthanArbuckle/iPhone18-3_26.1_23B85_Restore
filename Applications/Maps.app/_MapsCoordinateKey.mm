@interface _MapsCoordinateKey
+ (id)coordinateKeyFromCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)coordinate;
@end

@implementation _MapsCoordinateKey

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    latitude = self->_coordinate.latitude;
    [v5 coordinate];
    if (vabdd_f64(latitude, v7) <= 0.000000999999997)
    {
      longitude = self->_coordinate.longitude;
      [v5 coordinate];
      v8 = vabdd_f64(longitude, v10) <= 0.000000999999997;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)coordinateKeyFromCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v5 = objc_alloc_init(self);
  [v5 setCoordinate:{latitude, longitude}];

  return v5;
}

@end