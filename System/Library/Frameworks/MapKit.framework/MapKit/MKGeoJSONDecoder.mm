@interface MKGeoJSONDecoder
+ (id)_decodeGeometry:(id)geometry error:(id *)error;
+ (id)_decodeGeometryCollection:(id)collection error:(id *)error;
- (MKGeoJSONDecoder)init;
- (NSArray)geoJSONObjectsWithData:(NSData *)data error:(NSError *)errorPtr;
- (id)_decodeFeatureCollection:(id)collection error:(id *)error;
@end

@implementation MKGeoJSONDecoder

- (id)_decodeFeatureCollection:(id)collection error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [collection objectForKeyedSubscript:@"features"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [MKGeoJSONFeature alloc];
          v14 = [(MKGeoJSONFeature *)v13 _initWithGeoJSONObject:v12 error:error, v19];
          if (!v14)
          {

            v16 = 0;
            goto LABEL_15;
          }

          v15 = v14;
          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = v6;
LABEL_15:
  }

  else if (error)
  {
    if (v5)
    {
      v17 = @"FeatureCollection object has invalid 'features' value";
    }

    else
    {
      v17 = @"FeatureCollection object is missing 'features' value";
    }

    _errorWithReason(v17);
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSArray)geoJSONObjectsWithData:(NSData *)data error:(NSError *)errorPtr
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:0 error:errorPtr];
  if (!v6)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorPtr)
    {
      v12 = @"Root object is not a dictionary";
LABEL_12:
      _errorWithReason(v12);
      *errorPtr = v10 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v7 = [v6 objectForKeyedSubscript:@"type"];

  if (!v7)
  {
    if (errorPtr)
    {
      v12 = @"Root object is missing 'type' key";
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v8 = [v6 objectForKeyedSubscript:@"type"];
  v9 = _geoJSONObjectType(v8);

  v10 = 0;
  if (v9 > 7)
  {
    if (v9 == 8)
    {
      v14 = [[MKGeoJSONFeature alloc] _initWithGeoJSONObject:v6 error:errorPtr];
      v15 = v14;
      if (v14)
      {
        v16[0] = v14;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_20;
    }

    if (v9 == 9)
    {
      v11 = [(MKGeoJSONDecoder *)self _decodeFeatureCollection:v6 error:errorPtr];
      goto LABEL_7;
    }
  }

  else
  {
    if ((v9 - 1) < 7)
    {
      v11 = [MKGeoJSONDecoder _decodeGeometry:v6 error:errorPtr];
LABEL_7:
      v10 = v11;
      goto LABEL_20;
    }

    if (!v9)
    {
      if (errorPtr)
      {
        v12 = @"Root object has invalid value for 'type' key";
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

LABEL_20:

  return v10;
}

- (MKGeoJSONDecoder)init
{
  v5.receiver = self;
  v5.super_class = MKGeoJSONDecoder;
  v2 = [(MKGeoJSONDecoder *)&v5 init];
  if (v2)
  {
    v3 = +[MKUsageCounter sharedCounter];
    [v3 count:6];
  }

  return v2;
}

+ (id)_decodeGeometryCollection:(id)collection error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [collection objectForKeyedSubscript:@"geometries"];
  if (!v6)
  {
    if (error)
    {
      v17 = @"GeometryCollection object is missing 'geometries' value";
LABEL_20:
      _errorWithReason(v17);
      *error = v16 = 0;
      goto LABEL_24;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v17 = @"GeometryCollection's 'geometries' value must be an array";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [self _decodeGeometry:*(*(&v20 + 1) + 8 * i) error:error];
        if (!v13)
        {

          v16 = 0;
          goto LABEL_23;
        }

        v14 = v13;
        if ([v13 count] >= 2)
        {
          v15 = MKGetMKGeoJSONSerializationLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *v19 = 0;
            _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "To maximize interoperability, implementations should avoid nested geometry collections.", v19, 2u);
          }
        }

        [v7 addObjectsFromArray:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = v7;
LABEL_23:

LABEL_24:

  return v16;
}

+ (id)_decodeGeometry:(id)geometry error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  geometryCopy = geometry;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v12 = @"geometry object must be a dictionary";
LABEL_10:
      _errorWithReason(v12);
      *error = v6 = 0;
      goto LABEL_33;
    }

LABEL_23:
    v6 = 0;
    goto LABEL_33;
  }

  v6 = [geometryCopy objectForKeyedSubscript:@"type"];
  v7 = _geoJSONGeometryType(v6);

  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v16 = [[MKMultiPoint alloc] _initWithGeoJSONObject:geometryCopy error:error];
        v9 = v16;
        if (v16)
        {
          v23 = v16;
          v10 = MEMORY[0x1E695DEC8];
          v11 = &v23;
          goto LABEL_30;
        }
      }

      else
      {
        v14 = [[MKPolyline alloc] _initWithGeoJSONObject:geometryCopy error:error];
        v9 = v14;
        if (v14)
        {
          v22 = v14;
          v10 = MEMORY[0x1E695DEC8];
          v11 = &v22;
          goto LABEL_30;
        }
      }

      goto LABEL_31;
    }

    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_33;
      }

      v8 = [[MKPointAnnotation alloc] _initWithGeoJSONObject:geometryCopy error:error];
      v9 = v8;
      if (v8)
      {
        v24[0] = v8;
        v10 = MEMORY[0x1E695DEC8];
        v11 = v24;
LABEL_30:
        v6 = [v10 arrayWithObjects:v11 count:1];
LABEL_32:

        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (error)
    {
      v12 = @"Invalid geometry type";
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  if (v7 <= 5)
  {
    if (v7 == 4)
    {
      v15 = [[MKMultiPolyline alloc] _initWithGeoJSONObject:geometryCopy error:error];
      v9 = v15;
      if (v15)
      {
        v21 = v15;
        v10 = MEMORY[0x1E695DEC8];
        v11 = &v21;
        goto LABEL_30;
      }
    }

    else
    {
      v13 = [[MKPolygon alloc] _initWithGeoJSONObject:geometryCopy error:error];
      v9 = v13;
      if (v13)
      {
        v20 = v13;
        v10 = MEMORY[0x1E695DEC8];
        v11 = &v20;
        goto LABEL_30;
      }
    }

LABEL_31:
    v6 = 0;
    goto LABEL_32;
  }

  if (v7 == 6)
  {
    v17 = [[MKMultiPolygon alloc] _initWithGeoJSONObject:geometryCopy error:error];
    v9 = v17;
    if (v17)
    {
      v19 = v17;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v19;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v7 == 7)
  {
    v6 = [MKGeoJSONDecoder _decodeGeometryCollection:geometryCopy error:error];
  }

LABEL_33:

  return v6;
}

@end