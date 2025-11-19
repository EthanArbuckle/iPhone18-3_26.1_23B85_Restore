@interface SHHapticsSpatialTrackParser
+ (id)spatialTrackInformationFromAttributes:(id)a3;
@end

@implementation SHHapticsSpatialTrackParser

+ (id)spatialTrackInformationFromAttributes:(id)a3
{
  v3 = a3;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Parsing spatial track information", buf, 2u);
  }

  if ([v3 count])
  {
    v5 = [v3 objectForKeyedSubscript:@"offsets"];
    v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"timeStampInMilliseconds"];
          v13 = [v11 objectForKeyedSubscript:@"offsetInMilliseconds"];
          [v12 doubleValue];
          v15 = v14 / 1000.0;
          [v13 doubleValue];
          v17 = [[SHHapticSpatialOffset alloc] initWithTimestamp:v15 offset:v16 / 1000.0];
          [v29 addObject:v17];
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v8);
    }

    v18 = [v3 objectForKeyedSubscript:@"startOffsetInMilliseconds"];
    v19 = [v3 objectForKeyedSubscript:@"timeDrift"];
    [v18 doubleValue];
    v21 = v20 / 1000.0;
    [v19 doubleValue];
    v23 = v22 / 1000.0;
    v24 = [v3 objectForKeyedSubscript:@"isCloseMatch"];
    v25 = [[SHHapticSpatialTrackInformation alloc] initWithSpatialStartOffset:v29 offsets:objc_msgSend(v24 timeDrift:"BOOLValue") matchesStereo:{v21, v23}];
    v26 = sh_log_object();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v25 description];
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Returning haptic track's spatial information: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No spatial track information in server response.", buf, 2u);
    }

    v25 = 0;
  }

  return v25;
}

@end