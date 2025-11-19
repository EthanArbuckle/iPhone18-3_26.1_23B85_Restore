@interface SHLLocationTransformer
+ (CLLocationCoordinate2D)coordinateFromLocation:(id)a3;
+ (id)locationFromCoordinate:(CLLocationCoordinate2D)a3;
@end

@implementation SHLLocationTransformer

+ (id)locationFromCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if (CLLocationCoordinate2DIsValid(a3))
  {
    v5 = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (CLLocationCoordinate2D)coordinateFromLocation:(id)a3
{
  if (a3)
  {
    v3 = a3;
    [v3 coordinate];
    v5 = v4;
    [v3 coordinate];
    v7 = v6;

    v10 = CLLocationCoordinate2DMake(v5, v7);
    longitude = v10.longitude;
    latitude = v10.latitude;
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end