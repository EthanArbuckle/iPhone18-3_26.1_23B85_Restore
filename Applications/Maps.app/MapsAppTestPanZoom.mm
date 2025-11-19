@interface MapsAppTestPanZoom
- (BOOL)runTest;
- (MapsAppTestPanZoom)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (void)addFullyDrawnCallback:(id)a3;
- (void)onFullyDrawn:(id)a3;
- (void)panLoadCompleted;
- (void)panLoadFinished;
- (void)panToTestPoint:(unsigned int)a3;
@end

@implementation MapsAppTestPanZoom

- (void)onFullyDrawn:(id)a3
{
  v18 = a3;
  v5 = [v18 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"hasFailedTiles"];
  v7 = [v6 BOOLValue];

  v8 = [v18 object];
  if (v8)
  {
    v6 = [v18 object];
    v9 = [(MapsAppTest *)self mainVKMapView];
    v3 = v9;
    if (v6 != v9)
    {

      goto LABEL_11;
    }
  }

  v10 = [(MapsAppTest *)self mainVKMapView];
  v11 = [v10 isFullyDrawn] & (v7 ^ 1);

  if (v8)
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v11)
  {
    goto LABEL_11;
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:self name:VKMapViewDidBecomeFullyDrawnNotification object:0];

  while (1)
  {
    v13 = [(MapsAppTest *)self fullyDrawnCallbacks];
    v14 = [v13 count];

    if (!v14)
    {
      break;
    }

    v15 = [(MapsAppTest *)self fullyDrawnCallbacks];
    v16 = [v15 firstObject];

    v17 = [(MapsAppTest *)self fullyDrawnCallbacks];
    [v17 removeObjectAtIndex:0];

    v16[2](v16);
  }

LABEL_11:
}

- (void)addFullyDrawnCallback:(id)a3
{
  v4 = a3;
  v5 = [(MapsAppTest *)self fullyDrawnCallbacks];
  v6 = [v4 copy];

  v7 = objc_retainBlock(v6);
  [v5 addObject:v7];

  v8 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007A9250;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)panLoadCompleted
{
  v3 = [(MapsAppTest *)self mainVKMapView];
  [v3 disableTestStatistics];
  [v3 disableTileStatistics];
  v15 = v3;
  v4 = [v3 testStatistics];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = [(MapsAppTest *)self results];
        v12 = [NSString stringWithFormat:@"sub:pan/zoom:%@", v9];
        [v11 setObject:v10 forKey:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [v15 tileStatistics];
  if (v13)
  {
    v14 = [(MapsAppTest *)self results];
    [v14 addEntriesFromDictionary:v13];
  }

  [v15 resetTestStatistics];
  [v15 resetTileStatistics];
  [(MapsAppTest *)self finishedTest];
}

- (void)panLoadFinished
{
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007A953C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)panToTestPoint:(unsigned int)a3
{
  v5 = [(MapsAppTestPanZoom *)self testPoints];
  v6 = [v5 count];

  if (v6 <= a3)
  {

    [(MapsAppTestPanZoom *)self panLoadCompleted];
  }

  else
  {
    v7 = [(MapsAppTest *)self mainVKMapView];
    v8 = [(MapsAppTestPanZoom *)self testPoints];
    v9 = [v8 objectAtIndex:a3];
    [v9 testPoint];
    v10 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:?];

    if (self->_shouldUseStyleZoom)
    {
      v11 = [(MapsAppTest *)self mainVKMapView];
      v12 = [(MapsAppTestPanZoom *)self testPoints];
      v34 = [v12 objectAtIndex:a3];
      [v34 testPoint];
      v13 = [(MapsAppTestPanZoom *)self testPoints];
      v14 = [v13 objectAtIndex:a3];
      [v14 testPoint];
      VKLocationCoordinate2DMake();
      v16 = v15;
      v18 = v17;
      [v7 altitude];
      v20 = v19;
      [(MapsAppTestPanZoom *)self yaw];
      v22 = v21;
      [(MapsAppTestPanZoom *)self pitch];
      v24 = v23;
      v25 = [(MapsAppTestPanZoom *)self testPoints];
      [v25 objectAtIndex:a3 - 1];
      v27 = v26 = v10;
      [v27 timeToNextPoint];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1007A98D4;
      v37[3] = &unk_1016332F0;
      v37[4] = self;
      v38 = a3;
      [v11 setCenterCoordinate:0 altitude:v37 yaw:v16 pitch:v18 duration:v20 timingCurve:v22 completion:{v24, v28}];

      v10 = v26;
    }

    else
    {
      [(MapsAppTestPanZoom *)self pitch];
      v30 = v29;
      [(MapsAppTestPanZoom *)self yaw];
      v32 = v31;
      v11 = [(MapsAppTestPanZoom *)self testPoints];
      v12 = [v11 objectAtIndex:a3 - 1];
      [v12 timeToNextPoint];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1007A9954;
      v35[3] = &unk_1016332F0;
      v35[4] = self;
      v36 = a3;
      [v7 setMapRegion:v10 pitch:v35 yaw:v30 duration:v32 completion:v33];
    }
  }
}

- (BOOL)runTest
{
  if (!self->_isSubTest)
  {
    [(MapsAppTest *)self setupForVKTest];
  }

  v3 = [(MapsAppTest *)self mainMKMapView];
  [v3 _setLocationPulseEnabled:0];

  v4 = [(MapsAppTest *)self mainVKMapView];
  v5 = [(MapsAppTest *)self options];
  -[MapsAppTest switchToMapType:](self, "switchToMapType:", [v5 _mapstest_mapType]);
  v6 = [(MapsAppTestPanZoom *)self testPoints];
  v7 = [v6 objectAtIndex:0];
  [v7 testPoint];
  v8 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:?];

  [(MapsAppTestPanZoom *)self pitch];
  v10 = v9;
  [(MapsAppTestPanZoom *)self yaw];
  [v4 setMapRegion:v8 pitch:v10 yaw:v11];
  if (self->_shouldUseStyleZoom)
  {
    [v4 bounds];
    MidX = CGRectGetMidX(v20);
    [v4 bounds];
    MidY = CGRectGetMidY(v21);
    v14 = [v4 cameraDelegate];
    [v14 mapLayerWillChangeRegionAnimated:0];

    [v4 zoomToLevel:self->_styleZoom withFocusPoint:{MidX, MidY}];
    v15 = [v4 cameraDelegate];
    [v15 mapLayerDidChangeRegionAnimated:0];
  }

  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007A9C3C;
  v17[3] = &unk_101661B98;
  objc_copyWeak(&v18, &location);
  [(MapsAppTestPanZoom *)self addFullyDrawnCallback:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestPanZoom)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v31.receiver = self;
  v31.super_class = MapsAppTestPanZoom;
  v10 = [(MapsAppTest *)&v31 initWithApplication:a3 testName:v8 options:v9];
  if (v10)
  {
    *(v10 + 64) = [v8 rangeOfString:@"pan"] != 0;
    *(v10 + 65) = 0;
    if (v9)
    {
      v11 = [v9 allKeys];
      v12 = [v11 containsObject:@"isSubTest"];

      if (v12)
      {
        v13 = [v9 valueForKey:@"isSubTest"];
        *(v10 + 64) = [v13 BOOLValue];
      }

      v14 = [v9 allKeys];
      v15 = [v14 containsObject:@"styleZoom"];

      if (v15)
      {
        v16 = [v9 valueForKey:@"styleZoom"];
        [v16 floatValue];
        *(v10 + 17) = v17;
        *(v10 + 65) = 1;
      }
    }

    v18 = objc_alloc_init(MapsPanTestPoint);
    v19 = objc_alloc_init(MapsPanTestPoint);
    [v9 _mapstest_startPoint];
    [(MapsPanTestPoint *)v18 setTestPoint:?];
    [v9 _mapstest_animationDurationWithDefault:1.0];
    [(MapsPanTestPoint *)v18 setTimeToNextPoint:?];
    [v9 _mapstest_endPoint];
    [(MapsPanTestPoint *)v19 setTestPoint:?];
    [v9 _mapstest_animationDurationWithDefault:1.0];
    [(MapsPanTestPoint *)v19 setTimeToNextPoint:?];
    if ([v9 _mapstest_hasMidPoint])
    {
      v20 = objc_alloc_init(MapsPanTestPoint);
      [v9 _mapstest_midPoint];
      [(MapsPanTestPoint *)v20 setTestPoint:?];
      [v9 _mapstest_animationDurationWithDefault:1.0];
      [(MapsPanTestPoint *)v20 setTimeToNextPoint:?];
      v21 = [[NSArray alloc] initWithObjects:{v18, v20, v19, 0}];
      v22 = *(v10 + 9);
      *(v10 + 9) = v21;
    }

    else
    {
      v23 = [v10 testName];
      v24 = [v23 rangeOfString:@"zoom"];

      v25 = [NSArray alloc];
      if (v24)
      {
        v26 = [v25 initWithObjects:{v18, v19, 0, v30}];
      }

      else
      {
        v26 = [v25 initWithObjects:{v18, v19, v18, 0}];
      }

      v20 = *(v10 + 9);
      *(v10 + 9) = v26;
    }

    [v9 _mapstest_pitch];
    *(v10 + 10) = v27;
    [v9 _mapstest_yaw];
    *(v10 + 11) = v28;
  }

  return v10;
}

@end