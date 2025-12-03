@interface DirectionsElevationGraphConfiguration
- (BOOL)isEqual:(id)equal;
- (DirectionsElevationGraphConfiguration)initWithUseType:(int64_t)type userInterfaceIdiom:(int64_t)idiom;
- (id)_JSONForType:(id)type;
- (id)_testDirectoryURL;
- (id)_urlForType:(id)type;
- (id)_urlForType:(id)type device:(id)device;
- (unint64_t)targetNumberOfBarsForRouteLength:(double)length availableWidth:(double)width;
@end

@implementation DirectionsElevationGraphConfiguration

- (id)_urlForType:(id)type device:(id)device
{
  typeCopy = type;
  deviceCopy = device;
  v32 = typeCopy;
  v51 = typeCopy;
  v39 = [NSArray arrayWithObjects:&v51 count:1];
  _testDirectoryURL = [(DirectionsElevationGraphConfiguration *)self _testDirectoryURL];
  v50 = _testDirectoryURL;
  v9 = [NSArray arrayWithObjects:&v50 count:1];

  v10 = +[NSBundle mainBundle];
  resourceURL = [v10 resourceURL];

  v30 = resourceURL;
  if (resourceURL)
  {
    v12 = [v9 arrayByAddingObject:resourceURL];

    v9 = v12;
  }

  v31 = deviceCopy;
  [NSOrderedSet orderedSetWithObjects:deviceCopy, @"phone", &stru_1016631F0, 0];
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
            path = [v25 path];
            v28 = [v26 fileExistsAtPath:path];

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

- (id)_urlForType:(id)type
{
  typeCopy = type;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  v7 = @"phone";
  if (userInterfaceIdiom == 5)
  {
    v7 = @"mac";
  }

  if (userInterfaceIdiom == 4)
  {
    v8 = @"watch";
  }

  else
  {
    v8 = v7;
  }

  v9 = [(DirectionsElevationGraphConfiguration *)self _urlForType:typeCopy device:v8];

  return v9;
}

- (id)_JSONForType:(id)type
{
  v3 = [(DirectionsElevationGraphConfiguration *)self _urlForType:type];
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
  path = [v2 path];
  v4 = [NSURL fileURLWithPath:path];

  return v4;
}

- (unint64_t)targetNumberOfBarsForRouteLength:(double)length availableWidth:(double)width
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
  if (v12 < length)
  {
    v13 = v12;
    GEOConfigGetDouble();
    if (v14 > length)
    {
      v15 = v14;
      if (GEOConfigGetBOOL())
      {
        GEOConfigGetDouble();
        v17 = v16;
        GEOConfigGetDouble();
        if (v17 > length)
        {
          v19 = fmin((length - v13) / (v17 - v13), 1.0);
          v20 = v18 * floor(width / v11);
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

        v20 = v18 + fmin((length - v17) / (v15 - v17), 1.0) * (1.0 - v18);
      }

      else
      {
        GEOConfigGetDouble();
        v24 = v23;
        GEOConfigGetDouble();
        v20 = fmin(fmax(v24 + v25 * log(length * 0.001), 0.0), 1.0);
      }

      v19 = floor(width / v11);
      goto LABEL_17;
    }

LABEL_7:
    v21 = vcvtmd_u64_f64(width / v11);
    goto LABEL_8;
  }

  return GEOConfigGetUInteger();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && [equalCopy isMemberOfClass:objc_opt_class()] && equalCopy[5] == self->_useType && equalCopy[2] && self->_userInterfaceIdiom != 0;

  return v5;
}

- (DirectionsElevationGraphConfiguration)initWithUseType:(int64_t)type userInterfaceIdiom:(int64_t)idiom
{
  v18.receiver = self;
  v18.super_class = DirectionsElevationGraphConfiguration;
  v6 = [(DirectionsElevationGraphConfiguration *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_useType = type;
    v6->_userInterfaceIdiom = idiom;
    *&v6->_barWidth = xmmword_101212AE0;
    switch(type)
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

        v7->_showElevationAxisLabels = idiom != 4;
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