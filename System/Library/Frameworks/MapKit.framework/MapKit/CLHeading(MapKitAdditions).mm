@interface CLHeading(MapKitAdditions)
- (BOOL)hasGeomagneticVector;
- (id)compactDescription;
- (uint64_t)heading;
- (uint64_t)initWithHeading:()MapKitAdditions accuracy:;
@end

@implementation CLHeading(MapKitAdditions)

- (uint64_t)heading
{
  [self trueHeading];
  if (v2 >= 0.0)
  {

    return [self trueHeading];
  }

  else
  {

    return [self magneticHeading];
  }
}

- (id)compactDescription
{
  if ([self hasGeomagneticVector])
  {
    [self shortDescription];
  }

  else
  {
    v3 = MEMORY[0x1E696AEC0];
    [self heading];
    v5 = v4;
    [self headingAccuracy];
    [v3 stringWithFormat:@"%+.1f ±%.0f°", v5, v6];
  }
  v2 = ;

  return v2;
}

- (BOOL)hasGeomagneticVector
{
  [self x];
  if (v2 != 0.0)
  {
    return 1;
  }

  [self y];
  if (v3 != 0.0)
  {
    return 1;
  }

  [self z];
  return v5 != 0.0;
}

- (uint64_t)initWithHeading:()MapKitAdditions accuracy:
{
  memset(v4, 0, sizeof(v4));
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v5 = a2;
  v6 = a3;
  return [self initWithClientHeading:v4];
}

@end