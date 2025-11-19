@interface GEOPlace(MKMapItemAdditions)
- (id)clLocation;
- (id)clRegion;
- (void)initWithCLLocation:()MKMapItemAdditions;
- (void)initWithPlacemark:()MKMapItemAdditions;
@end

@implementation GEOPlace(MKMapItemAdditions)

- (id)clRegion
{
  if ([a1 hasMapRegion])
  {
    v2 = MEMORY[0x1E695FBB0];
    v3 = [a1 mapRegion];
    v4 = [v2 circularRegionFromMapRegion:v3];

    v5 = [a1 referenceFrame];
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (v5 == 2);
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
  if ([a1 hasCenter])
  {
    v2 = objc_alloc(MEMORY[0x1E6985C40]);
    v3 = [a1 center];
    [v3 coordinate];
    v5 = v4;
    v7 = v6;
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [a1 referenceFrame];
    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (v9 == 2);
    }

    v11 = [v2 initWithCoordinate:v8 altitude:v10 horizontalAccuracy:v5 verticalAccuracy:v7 timestamp:0.0 referenceFrame:{0.0, -1.0}];
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
  v9 = [v4 mkPostalAddressDictionary];
  v10 = [a1 initWithLatitude:v9 longitude:v6 addressDictionary:v8];
  if (v10)
  {
    v11 = [v4 location];
    v12 = [v11 referenceFrame];
    if (v12 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v12 == 2);
    }

    [v10 setReferenceFrame:v13];

    v14 = [v4 region];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
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
  v5 = [a1 initWithLatitude:? longitude:?];
  if (v5)
  {
    v6 = [v4 referenceFrame];
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v6 == 2);
    }

    [v5 setReferenceFrame:v7];
    v8 = v5;
  }

  return v5;
}

@end