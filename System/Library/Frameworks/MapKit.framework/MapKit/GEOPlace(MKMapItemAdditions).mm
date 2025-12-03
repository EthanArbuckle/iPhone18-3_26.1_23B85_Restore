@interface GEOPlace(MKMapItemAdditions)
- (id)clLocation;
- (id)clRegion;
- (void)initWithCLLocation:()MKMapItemAdditions;
- (void)initWithPlacemark:()MKMapItemAdditions;
@end

@implementation GEOPlace(MKMapItemAdditions)

- (id)clRegion
{
  if ([self hasMapRegion])
  {
    v2 = MEMORY[0x1E695FBB0];
    mapRegion = [self mapRegion];
    v4 = [v2 circularRegionFromMapRegion:mapRegion];

    referenceFrame = [self referenceFrame];
    if (referenceFrame == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (referenceFrame == 2);
    }

    [v4 setGeoReferenceFrame:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)clLocation
{
  if ([self hasCenter])
  {
    v2 = objc_alloc(MEMORY[0x1E6985C40]);
    center = [self center];
    [center coordinate];
    v5 = v4;
    v7 = v6;
    date = [MEMORY[0x1E695DF00] date];
    referenceFrame = [self referenceFrame];
    if (referenceFrame == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (referenceFrame == 2);
    }

    v11 = [v2 initWithCoordinate:date altitude:v10 horizontalAccuracy:v5 verticalAccuracy:v7 timestamp:0.0 referenceFrame:{0.0, -1.0}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)initWithPlacemark:()MKMapItemAdditions
{
  v4 = a3;
  [v4 coordinate];
  v6 = v5;
  v8 = v7;
  mkPostalAddressDictionary = [v4 mkPostalAddressDictionary];
  v10 = [self initWithLatitude:mkPostalAddressDictionary longitude:v6 addressDictionary:v8];
  if (v10)
  {
    location = [v4 location];
    referenceFrame = [location referenceFrame];
    if (referenceFrame == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (referenceFrame == 2);
    }

    [v10 setReferenceFrame:v13];

    region = [v4 region];
    if (region)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = region;
        [v15 center];
        v17 = v16;
        [v15 center];
        v19 = v18;
        [v15 radius];
        v21 = v20;

        v22 = MKMapRectMakeWithRadialDistance(v17, v19, v21);
        v26 = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v22, v23, v24, v25}];
        [v10 setMapRegion:v26];
      }
    }

    v27 = v10;
  }

  return v10;
}

- (void)initWithCLLocation:()MKMapItemAdditions
{
  v4 = a3;
  [v4 coordinate];
  v5 = [self initWithLatitude:? longitude:?];
  if (v5)
  {
    referenceFrame = [v4 referenceFrame];
    if (referenceFrame == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (referenceFrame == 2);
    }

    [v5 setReferenceFrame:v7];
    v8 = v5;
  }

  return v5;
}

@end