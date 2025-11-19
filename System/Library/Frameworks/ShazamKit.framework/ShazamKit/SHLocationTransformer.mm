@interface SHLocationTransformer
+ (BOOL)isValidCoordinateValue:(id)a3;
+ (CLLocationCoordinate2D)coordinateFromLocation:(id)a3;
+ (id)coordinateValueFromLatitude:(id)a3 longitude:(id)a4;
+ (id)coordinateValueFromLocation:(id)a3;
+ (id)locationFromCoordinate:(CLLocationCoordinate2D)a3;
+ (id)locationFromCoordinateValue:(id)a3;
+ (id)valueForCoordinate:(CLLocationCoordinate2D)a3;
@end

@implementation SHLocationTransformer

+ (id)locationFromCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if (CLLocationCoordinate2DIsValid(a3))
  {
    v5 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
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
    latitude = *MEMORY[0x277CE4278];
    longitude = *(MEMORY[0x277CE4278] + 8);
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

+ (id)coordinateValueFromLocation:(id)a3
{
  if (a3)
  {
    [a3 coordinate];
    v5 = [a1 valueForCoordinate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)coordinateValueFromLatitude:(id)a3 longitude:(id)a4
{
  v5 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    [a3 doubleValue];
    v9 = v8;
    [v7 doubleValue];
    v11 = v10;

    v12 = CLLocationCoordinate2DMake(v9, v11);
    v5 = [a1 valueForCoordinate:{v12.latitude, v12.longitude}];
  }

  return v5;
}

+ (id)valueForCoordinate:(CLLocationCoordinate2D)a3
{
  v5 = a3;
  if (CLLocationCoordinate2DIsValid(a3))
  {
    v3 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CLLocationCoordinate2D=dd}"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)locationFromCoordinateValue:(id)a3
{
  v4 = a3;
  if (v4 && [a1 isValidCoordinateValue:v4])
  {
    v7 = 0.0;
    v8 = 0.0;
    [v4 getValue:&v7 size:16];
    v5 = [a1 locationFromCoordinate:{v7, v8}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isValidCoordinateValue:(id)a3
{
  result = a3;
  if (a3)
  {
    return strcmp([a3 objCType], "{CLLocationCoordinate2D=dd}") == 0;
  }

  return result;
}

@end