@interface _MKMultiPolygonGeoRegion
- (BOOL)_loadWithJSONObject:(id)a3 error:(id *)a4;
- (BOOL)_loadWithRootJSONObject:(id)a3 error:(id *)a4;
- (BOOL)coordinateLiesInRegion:(CLLocationCoordinate2D)a3;
- (_MKMultiPolygonGeoRegion)initWithContentsOfFile:(id)a3 error:(id *)a4;
- (_MKMultiPolygonGeoRegion)initWithJSONObject:(id)a3 error:(id *)a4;
@end

@implementation _MKMultiPolygonGeoRegion

- (BOOL)_loadWithJSONObject:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 count];
    if ((v8 - 1) >= 0x32)
    {
      if (a4)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of polygons: %lu. Expected between %lu and %lu.", v8, 1, 50];
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:v19 forKey:@"ParseError"];
        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Maps" code:0 userInfo:v20];

        LOBYTE(a4) = 0;
      }
    }

    else
    {
      v22 = self;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [[_MKPolygonGeoRegion alloc] initWithJSONObject:*(*(&v23 + 1) + 8 * i) error:a4];
            if (!v15)
            {

              LOBYTE(a4) = 0;
              goto LABEL_17;
            }

            v16 = v15;
            [v9 addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      [(_MKMultiPolygonGeoRegion *)v22 setPolygons:v9];
      LOBYTE(a4) = 1;
LABEL_17:
    }
  }

  else if (a4)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an array in the coordinates field."];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObject:v17 forKey:@"ParseError"];
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Maps" code:0 userInfo:v18];

    LOBYTE(a4) = 0;
  }

  return a4;
}

- (BOOL)_loadWithRootJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 objectForKey:@"type"];
    v9 = [v8 isEqual:@"MultiPolygon"];

    if (v9)
    {
      v10 = [v7 objectForKey:@"coordinates"];
      v11 = [(_MKMultiPolygonGeoRegion *)self _loadWithJSONObject:v10 error:a4];
    }

    else
    {
      if (!a4)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected MultiPolygon as the root type."];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:v10 forKey:@"ParseError"];
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Maps" code:0 userInfo:v12];

      v11 = 0;
    }
  }

  else
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected JSON root object to be NSDictionary"];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:@"ParseError"];
    [MEMORY[0x1E696ABC0] errorWithDomain:@"Maps" code:0 userInfo:v10];
    *a4 = v11 = 0;
  }

LABEL_9:
LABEL_10:

  return v11;
}

- (BOOL)coordinateLiesInRegion:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_polygons;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) coordinateLiesInRegion:{latitude, longitude, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (_MKMultiPolygonGeoRegion)initWithJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = _MKMultiPolygonGeoRegion;
  v7 = [(_MKMultiPolygonGeoRegion *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(_MKMultiPolygonGeoRegion *)v7 _loadWithJSONObject:v6 error:a4];
  }

  return v8;
}

- (_MKMultiPolygonGeoRegion)initWithContentsOfFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = _MKMultiPolygonGeoRegion;
  v7 = [(_MKMultiPolygonGeoRegion *)&v15 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v6 options:0 error:a4];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:a4];
  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(_MKMultiPolygonGeoRegion *)v7 _loadWithRootJSONObject:v10 error:a4];

  if (!v12)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v13 = v7;
LABEL_8:

  return v13;
}

@end