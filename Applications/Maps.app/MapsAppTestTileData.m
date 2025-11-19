@interface MapsAppTestTileData
- (BOOL)runTest;
- (MapsAppTestTileData)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
@end

@implementation MapsAppTestTileData

- (BOOL)runTest
{
  [(MapsAppTest *)self startedTest];
  if (self->_hasRequiredOptions)
  {
    v3 = [(MapsAppTest *)self mainVKMapView];
    CLLocationCoordinate2DMake(self->_latitude, self->_longitude);
    v4 = [(MapsAppTest *)self mainMKMapView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    MKCoordinateRegionMakeWithZoomLevel();
    GEOMapRectForCoordinateRegion();
    v17 = v9;
    *&v9 = self->_zoom;
    v13 = [v3 pptTileStatisticsForMapType:self->_mapType latitude:self->_latitude longitude:self->_longitude zoom:v9 width:v6 height:v8 rect:{v10, v11, *&v17, v12}];
    v14 = v13 != 0;
    if (v13)
    {
      v15 = [(MapsAppTest *)self results];
      [v15 addEntriesFromDictionary:v13];

      [(MapsAppTest *)self finishedTest];
    }

    else
    {
      [(MapsAppTest *)self failedTest];
    }
  }

  else
  {
    [(MapsAppTest *)self failedTest];
    return 0;
  }

  return v14;
}

- (MapsAppTestTileData)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a5;
  v24.receiver = self;
  v24.super_class = MapsAppTestTileData;
  v9 = [(MapsAppTest *)&v24 initWithApplication:a3 testName:a4 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"latitude"];
    if (v10)
    {
      v11 = [v8 objectForKeyedSubscript:@"longitude"];
      if (v11)
      {
        v12 = [v8 objectForKeyedSubscript:@"zoom"];
        if (v12)
        {
          v13 = [v8 objectForKeyedSubscript:@"mapType"];
          p_hasRequiredOptions = &v9->_hasRequiredOptions;
          v9->_hasRequiredOptions = v13 != 0;
        }

        else
        {
          p_hasRequiredOptions = &v9->_hasRequiredOptions;
          v9->_hasRequiredOptions = 0;
        }
      }

      else
      {
        p_hasRequiredOptions = &v9->_hasRequiredOptions;
        v9->_hasRequiredOptions = 0;
      }
    }

    else
    {
      p_hasRequiredOptions = &v9->_hasRequiredOptions;
      v9->_hasRequiredOptions = 0;
    }

    if (*p_hasRequiredOptions)
    {
      v15 = [v8 objectForKeyedSubscript:@"latitude"];
      [v15 doubleValue];
      v9->_latitude = v16;

      v17 = [v8 objectForKeyedSubscript:@"longitude"];
      [v17 doubleValue];
      v9->_longitude = v18;

      v19 = [v8 objectForKeyedSubscript:@"zoom"];
      [v19 floatValue];
      v9->_zoom = v20;

      v21 = [v8 objectForKeyedSubscript:@"mapType"];
      if ([v21 isEqualToString:@"VKMapTypeStandard"])
      {
        v22 = 0;
      }

      else if ([v21 isEqualToString:@"VKMapTypeSatellite"])
      {
        v22 = 1;
      }

      else if ([v21 isEqualToString:@"VKMapTypeHybrid"])
      {
        v22 = 2;
      }

      else if ([v21 isEqualToString:@"VKMapTypeSatelliteGlobe"])
      {
        v22 = 3;
      }

      else if ([v21 isEqualToString:@"VKMapTypeHybridGlobe"])
      {
        v22 = 4;
      }

      else if ([v21 isEqualToString:@"VKMapTypeNavigation"])
      {
        v22 = 5;
      }

      else if ([v21 isEqualToString:@"VKMapTypeStandardGrid"])
      {
        v22 = 6;
      }

      else if ([v21 isEqualToString:@"VKMapTypeSatelliteGrid"])
      {
        v22 = 7;
      }

      else if ([v21 isEqualToString:@"VKMapTypeTransit"])
      {
        v22 = 8;
      }

      else if ([v21 isEqualToString:@"VKMapTypeMunin"])
      {
        v22 = 10;
      }

      else if ([v21 isEqualToString:@"VKMapTypeARWalking"])
      {
        v22 = 9;
      }

      else
      {
        v22 = 0;
      }

      v9->_mapType = v22;
    }
  }

  return v9;
}

@end