@interface GEOMapRegion(MKAdditions)
+ (id)_mapkit_mapRegionEnclosingAnnotations:()MKAdditions;
+ (id)_mapkit_mapRegionForCoordinateRegion:()MKAdditions;
@end

@implementation GEOMapRegion(MKAdditions)

+ (id)_mapkit_mapRegionForCoordinateRegion:()MKAdditions
{
  v8 = 0;
  if (fabs(a3) <= 180.0 && fabs(a2) <= 90.0)
  {
    v8 = 0;
    if (a4 >= 0.0 && a4 <= 180.0 && a5 >= 0.0 && a5 <= 360.0)
    {
      v8 = [a1 _geo_mapRegionForGEOCoordinateRegion:v5];
    }
  }

  return v8;
}

+ (id)_mapkit_mapRegionEnclosingAnnotations:()MKAdditions
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 objectAtIndexedSubscript:0];
      [v4 coordinate];
      v6 = v5;
      v8 = v7;

      v9 = [objc_alloc(MEMORY[0x1E69A2200]) initWithLatitude:v6 longitude:v8];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
      v12 = -180.0;
      if (v11)
      {
        v13 = v11;
        v14 = *v38;
        v15 = 90.0;
        v16 = -180.0;
        v17 = 180.0;
        v18 = -90.0;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v38 != v14)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v37 + 1) + 8 * i) coordinate];
            if (v20 < v15)
            {
              v15 = v20;
            }

            if (v20 > v18)
            {
              v18 = v20;
            }

            if (v21 < v17)
            {
              v17 = v21;
            }

            if (v21 > v16)
            {
              v16 = v21;
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v13);
      }

      else
      {
        v15 = 90.0;
        v18 = -90.0;
        v17 = 180.0;
        v16 = -180.0;
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v22 = v10;
      v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
      v24 = 180.0;
      if (v23)
      {
        v25 = v23;
        v26 = *v34;
        v12 = -180.0;
        v24 = 180.0;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v22);
            }

            [*(*(&v33 + 1) + 8 * j) coordinate];
            if (v28 >= 0.0)
            {
              if (v28 < v24)
              {
                v24 = v28;
              }
            }

            else if (v28 > v12)
            {
              v12 = v28;
            }
          }

          v25 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v25);
      }

      v29 = 180.0 - v24 + v12 + 180.0;
      v9 = objc_alloc_init(MEMORY[0x1E69A2200]);
      [v9 setSouthLat:v15];
      [v9 setNorthLat:v18];
      if (v16 - v17 >= v29)
      {
        v30 = v24;
      }

      else
      {
        v30 = v17;
      }

      if (v16 - v17 >= v29)
      {
        v31 = v12;
      }

      else
      {
        v31 = v16;
      }

      [v9 setWestLng:{v30, v33}];
      [v9 setEastLng:v31];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end