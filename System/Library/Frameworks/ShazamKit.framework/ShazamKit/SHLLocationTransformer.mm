@interface SHLLocationTransformer
+ (CLLocationCoordinate2D)coordinateFromLocation:(id)location;
+ (id)locationFromCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation SHLLocationTransformer

+ (id)locationFromCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if (CLLocationCoordinate2DIsValid(coordinate))
  {
    v5 = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (CLLocationCoordinate2D)coordinateFromLocation:(id)location
{
  if (location)
  {
    locationCopy = location;
    [locationCopy coordinate];
    v5 = v4;
    [locationCopy coordinate];
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