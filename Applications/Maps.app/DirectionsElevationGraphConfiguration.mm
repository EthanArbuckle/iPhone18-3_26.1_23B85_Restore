@interface DirectionsElevationGraphConfiguration
- (BOOL)isEqual:(id)a3;
- (DirectionsElevationGraphConfiguration)initWithUseType:(int64_t)a3 userInterfaceIdiom:(int64_t)a4;
- (id)_JSONForType:(id)a3;
- (id)_testDirectoryURL;
- (id)_urlForType:(id)a3;
- (id)_urlForType:(id)a3 device:(id)a4;
- (unint64_t)targetNumberOfBarsForRouteLength:(double)a3 availableWidth:(double)a4;
@end

@implementation DirectionsElevationGraphConfiguration

- (id)_urlForType:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32 = v6;
  v51 = v6;
  v39 = [NSArray arrayWithObjects:&v51 count:1];
  v8 = [(DirectionsElevationGraphConfiguration *)self _testDirectoryURL];
  v50 = v8;
  v9 = [NSArray arrayWithObjects:&v50 count:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 resourceURL];

  v30 = v11;
  if (v11)
  {
    v12 = [v9 arrayByAddingObject:v11];

    v9 = v12;
  }

  v31 = v7;
  [NSOrderedSet orderedSetWithObjects:v7, @"phone", &stru_1016631F0, 0];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v36)
  {
    v34 = *v45;
    v35 = v9;
    do
    {
      v13 = 0;
      do
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v13;
        v14 = *(*(&v44 + 1) + 8 * v13);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v38 = v9;
        v15 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v41;
LABEL_10:
          v18 = 0;
          while (1)
          {
            if (*v41 != v17)
            {
              objc_enumerationMutation(v38);
            }

            v19 = *(*(&v40 + 1) + 8 * v18);
            if ([v14 length])
            {
              v20 = [v39 arrayByAddingObject:v14];
            }

            else
            {
              v20 = v39;
            }

            v21 = v20;
            v22 = [v20 componentsJoinedByString:@"_"];
            v23 = [NSString stringWithFormat:@"cycling_%@", v22];

            v24 = [v23 stringByAppendingPathExtension:@"json"];
            v25 = [v19 URLByAppendingPathComponent:v24];

            v26 = +[NSFileManager defaultManager];
            v27 = [v25 path];
            v28 = [v26 fileExistsAtPath:v27];

            if (v28)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
              if (v16)
              {
                goto LABEL_10;
              }

              goto LABEL_19;
            }
          }

          v9 = v35;
          if (v25)
          {
            goto LABEL_24;
          }
        }

        else
        {
LABEL_19:

          v9 = v35;
        }

        v13 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v36);
  }

  v25 = 0;
LABEL_24:

  return v25;
}

- (id)_urlForType:(id)a3
{
  v4 = a3;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = @"phone";
  if (v6 == 5)
  {
    v7 = @"mac";
  }

  if (v6 == 4)
  {
    v8 = @"watch";
  }

  else
  {
    v8 = v7;
  }

  v9 = [(DirectionsElevationGraphConfiguration *)self _urlForType:v4 device:v8];

  return v9;
}

- (id)_JSONForType:(id)a3
{
  v3 = [(DirectionsElevationGraphConfiguration *)self _urlForType:a3];
  v4 = [[NSData alloc] initWithContentsOfURL:v3];
  v5 = &stru_1016631F0;
  if ([v4 length])
  {
    v6 = [[NSString alloc] initWithData:v4 encoding:4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1016631F0;
    }

    v5 = v8;
  }

  return v5;
}

- (id)_testDirectoryURL
{
  v2 = +[NSFileManager _maps_globalCachesURL];
  v3 = [v2 path];
  v4 = [NSURL fileURLWithPath:v3];

  return v4;
}

- (unint64_t)targetNumberOfBarsForRouteLength:(double)a3 availableWidth:(double)a4
{
  useType = self->_useType;
  [(DirectionsElevationGraphConfiguration *)self barWidth];
  v9 = v8;
  [(DirectionsElevationGraphConfiguration *)self gapWidth];
  v11 = v10 + v9;
  if (useType != 1)
  {
    goto LABEL_7;
  }

  GEOConfigGetDouble();
  if (v12 < a3)
  {
    v13 = v12;
    GEOConfigGetDouble();
    if (v14 > a3)
    {
      v15 = v14;
      if (GEOConfigGetBOOL())
      {
        GEOConfigGetDouble();
        v17 = v16;
        GEOConfigGetDouble();
        if (v17 > a3)
        {
          v19 = fmin((a3 - v13) / (v17 - v13), 1.0);
          v20 = v18 * floor(a4 / v11);
LABEL_17:
          v21 = vcvtad_u64_f64(v20 * v19);
LABEL_8:
          result = GEOConfigGetUInteger();
          if (result <= v21)
          {
            return v21;
          }

          return result;
        }

        v20 = v18 + fmin((a3 - v17) / (v15 - v17), 1.0) * (1.0 - v18);
      }

      else
      {
        GEOConfigGetDouble();
        v24 = v23;
        GEOConfigGetDouble();
        v20 = fmin(fmax(v24 + v25 * log(a3 * 0.001), 0.0), 1.0);
      }

      v19 = floor(a4 / v11);
      goto LABEL_17;
    }

LABEL_7:
    v21 = vcvtmd_u64_f64(a4 / v11);
    goto LABEL_8;
  }

  return GEOConfigGetUInteger();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && [v4 isMemberOfClass:objc_opt_class()] && v4[5] == self->_useType && v4[2] && self->_userInterfaceIdiom != 0;

  return v5;
}

- (DirectionsElevationGraphConfiguration)initWithUseType:(int64_t)a3 userInterfaceIdiom:(int64_t)a4
{
  v18.receiver = self;
  v18.super_class = DirectionsElevationGraphConfiguration;
  v6 = [(DirectionsElevationGraphConfiguration *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_useType = a3;
    v6->_userInterfaceIdiom = a4;
    *&v6->_barWidth = xmmword_101212AE0;
    switch(a3)
    {
      case 2:
        specType = v6->_specType;
        v6->_specType = @"navigation";

        v7->_allowUserInteraction = 1;
        v13 = [NSSet setWithObjects:@"width", @"height", @"elevationDomainUnionWith", @"routeLength", @"progress", @"textSizes", @"yAxis", 0];
        supportedSignals = v7->_supportedSignals;
        v7->_supportedSignals = v13;

        *&v7->_barWidth = xmmword_101212AF0;
        return v7;
      case 1:
        v9 = v6->_specType;
        v6->_specType = @"planning";

        [NSSet setWithObjects:@"width", @"height", @"elevationDomainUnionWith", @"routeLength", @"selectedBarColor", 0, v16, v17];
        goto LABEL_7;
      case 0:
        v8 = v6->_specType;
        v6->_specType = @"details";

        v7->_showElevationAxisLabels = a4 != 4;
        v7->_allowUserInteraction = 1;
        [NSSet setWithObjects:@"width", @"height", @"elevationDomainUnionWith", @"routeLength", @"fadeDistance", @"fadeEnd", @"yAxis", 0];
        v10 = LABEL_7:;
        v11 = v7->_supportedSignals;
        v7->_supportedSignals = v10;

        break;
    }
  }

  return v7;
}

@end