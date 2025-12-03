@interface SHLocationTransformer
+ (BOOL)isValidCoordinateValue:(id)value;
+ (CLLocationCoordinate2D)coordinateFromLocation:(id)location;
+ (id)coordinateValueFromLatitude:(id)latitude longitude:(id)longitude;
+ (id)coordinateValueFromLocation:(id)location;
+ (id)locationFromCoordinate:(CLLocationCoordinate2D)coordinate;
+ (id)locationFromCoordinateValue:(id)value;
+ (id)valueForCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation SHLocationTransformer

+ (id)locationFromCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if (CLLocationCoordinate2DIsValid(coordinate))
  {
    v5 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
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
    latitude = *MEMORY[0x277CE4278];
    longitude = *(MEMORY[0x277CE4278] + 8);
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

+ (id)coordinateValueFromLocation:(id)location
{
  if (location)
  {
    [location coordinate];
    v5 = [self valueForCoordinate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)coordinateValueFromLatitude:(id)latitude longitude:(id)longitude
{
  v5 = 0;
  if (latitude && longitude)
  {
    longitudeCopy = longitude;
    [latitude doubleValue];
    v9 = v8;
    [longitudeCopy doubleValue];
    v11 = v10;

    v12 = CLLocationCoordinate2DMake(v9, v11);
    v5 = [self valueForCoordinate:{v12.latitude, v12.longitude}];
  }

  return v5;
}

+ (id)valueForCoordinate:(CLLocationCoordinate2D)coordinate
{
  coordinateCopy = coordinate;
  if (CLLocationCoordinate2DIsValid(coordinate))
  {
    v3 = [MEMORY[0x277CCAE60] valueWithBytes:&coordinateCopy objCType:"{CLLocationCoordinate2D=dd}"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)locationFromCoordinateValue:(id)value
{
  valueCopy = value;
  if (valueCopy && [self isValidCoordinateValue:valueCopy])
  {
    v7 = 0.0;
    v8 = 0.0;
    [valueCopy getValue:&v7 size:16];
    v5 = [self locationFromCoordinate:{v7, v8}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isValidCoordinateValue:(id)value
{
  result = value;
  if (value)
  {
    return strcmp([value objCType], "{CLLocationCoordinate2D=dd}") == 0;
  }

  return result;
}

@end