@interface _MapsCoordinateKey
+ (id)coordinateKeyFromCoordinate:(CLLocationCoordinate2D)a3;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

+ (id)coordinateKeyFromCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = objc_alloc_init(a1);
  [v5 setCoordinate:{latitude, longitude}];

  return v5;
}

@end