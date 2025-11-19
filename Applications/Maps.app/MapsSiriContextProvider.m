@interface MapsSiriContextProvider
+ (id)sharedContextProvider;
- (id)_contextFromProvider:(id)a3;
- (id)_siriMapItemFromConvertibleObject:(id)a3;
- (id)_siriMapViewportWithRegion:(id)a3;
- (id)_siriSearchContextWithResults:(id)a3 selectedIndex:(unint64_t)a4;
- (id)getCurrentContext;
@end

@implementation MapsSiriContextProvider

+ (id)sharedContextProvider
{
  if (qword_10195F0D8 != -1)
  {
    dispatch_once(&qword_10195F0D8, &stru_101652AE8);
  }

  v3 = qword_10195F0D0;

  return v3;
}

- (id)_siriMapItemFromConvertibleObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SALocalSearchMapItem);
  [v3 coordinate];
  v6 = v5;
  v8 = v7;
  v9 = objc_alloc_init(SALocation);
  v10 = [NSNumber numberWithDouble:v6];
  [v9 setLatitude:v10];

  v11 = [NSNumber numberWithDouble:v8];
  [v9 setLongitude:v11];

  [v4 setLocation:v9];
  v12 = [v3 title];
  [v4 setLabel:v12];

  v13 = [v3 mapItem];
  v14 = [v13 _placeDataAsData];
  if (v14)
  {
    [v4 setPlaceData2:v14];
  }

  v15 = [v13 _detourInfo];
  v16 = [v15 detourInfoAsData];

  if (v16)
  {
    [v4 setResultDetourInfoData:v16];
  }

  if ([v3 isDynamicCurrentLocation])
  {
    [v4 setDetailType:SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue];
  }

  if ([v3 businessID])
  {
    v17 = objc_alloc_init(SALocalSearchBusiness2);
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"urn:places:%lld", [v3 businessID]);
    v19 = [NSURL URLWithString:v18];

    [v17 setIdentifier:v19];
    v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 localSearchProviderID]);
    [v4 setLocalSearchProviderId:v20];

    [v4 setDetailType:SALocalSearchMapItemMapItemTypeBUSINESS_ITEMValue];
    [v4 setDetail:v17];
  }

  return v4;
}

- (id)_siriSearchContextWithResults:(id)a3 selectedIndex:(unint64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = objc_alloc_init(SALocalSearchMapItemList);
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(MapsSiriContextProvider *)self _siriMapItemFromConvertibleObject:*(*(&v18 + 1) + 8 * i), v18];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    [v7 setDomainObjects:v15];

    if (a4 != 0x7FFFFFFFFFFFFFFFLL && [v9 count] > a4)
    {
      v16 = [NSNumber numberWithUnsignedInteger:a4];
      [v7 setSelectedIndex:v16];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_siriMapViewportWithRegion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SALocalSearchMapViewport);
  [v3 eastLng];
  [v4 setEastLongitude:?];
  [v3 westLng];
  [v4 setWestLongitude:?];
  [v3 northLat];
  [v4 setNorthLatitude:?];
  [v3 southLat];
  v6 = v5;

  [v4 setSouthLatitude:v6];

  return v4;
}

- (id)_contextFromProvider:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [v4 mapView];
  v7 = [v6 mapRegion];
  v8 = [(MapsSiriContextProvider *)self _siriMapViewportWithRegion:v7];

  if (v8)
  {
    [v5 addObject:v8];
  }

  v9 = [v4 searchResults];
  v10 = [NSMutableArray arrayWithArray:v9];

  v11 = [v4 selectedResult];
  v12 = [v4 selectedPOI];
  if (v11)
  {
    v13 = [v10 indexOfObject:v11];
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14;
  if (v15 && v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 addObject:v15];
    v13 = [v10 count] - 1;
  }

  v16 = [(MapsSiriContextProvider *)self _siriSearchContextWithResults:v10 selectedIndex:v13];
  if (v16)
  {
    [v5 addObject:v16];
  }

  v17 = [v5 copy];

  return v17;
}

- (id)getCurrentContext
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316418;
        v15 = "[MapsSiriContextProvider getCurrentContext]";
        v16 = 2080;
        v17 = "MapsSiriContextProvider.m";
        v18 = 1024;
        v19 = 55;
        v20 = 2080;
        v21 = "dispatch_get_main_queue()";
        v22 = 2080;
        v23 = dispatch_queue_get_label(&_dispatch_main_q);
        v24 = 2080;
        v25 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v14, 0x3Au);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }
    }
  }

  v6 = +[CarDisplayController sharedInstance];
  if ([v6 isChromeAvailable] && (objc_msgSend(v6, "isCurrentlyConnectedToCarAppScene") & 1) != 0)
  {
    v7 = off_1015F6168;
  }

  else
  {
    v7 = off_1015F6270;
  }

  v8 = objc_alloc_init(*v7);
  v9 = [(MapsSiriContextProvider *)self _contextFromProvider:v8];

  return v9;
}

@end