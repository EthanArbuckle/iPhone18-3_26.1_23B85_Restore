@interface MapsAppTestPanZoom
- (BOOL)runTest;
- (MapsAppTestPanZoom)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)addFullyDrawnCallback:(id)callback;
- (void)onFullyDrawn:(id)drawn;
- (void)panLoadCompleted;
- (void)panLoadFinished;
- (void)panToTestPoint:(unsigned int)point;
@end

@implementation MapsAppTestPanZoom

- (void)onFullyDrawn:(id)drawn
{
  drawnCopy = drawn;
  userInfo = [drawnCopy userInfo];
  object2 = [userInfo objectForKeyedSubscript:@"hasFailedTiles"];
  bOOLValue = [object2 BOOLValue];

  object = [drawnCopy object];
  if (object)
  {
    object2 = [drawnCopy object];
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    v3 = mainVKMapView;
    if (object2 != mainVKMapView)
    {

      goto LABEL_11;
    }
  }

  mainVKMapView2 = [(MapsAppTest *)self mainVKMapView];
  v11 = [mainVKMapView2 isFullyDrawn] & (bOOLValue ^ 1);

  if (object)
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
    fullyDrawnCallbacks = [(MapsAppTest *)self fullyDrawnCallbacks];
    v14 = [fullyDrawnCallbacks count];

    if (!v14)
    {
      break;
    }

    fullyDrawnCallbacks2 = [(MapsAppTest *)self fullyDrawnCallbacks];
    firstObject = [fullyDrawnCallbacks2 firstObject];

    fullyDrawnCallbacks3 = [(MapsAppTest *)self fullyDrawnCallbacks];
    [fullyDrawnCallbacks3 removeObjectAtIndex:0];

    firstObject[2](firstObject);
  }

LABEL_11:
}

- (void)addFullyDrawnCallback:(id)callback
{
  callbackCopy = callback;
  fullyDrawnCallbacks = [(MapsAppTest *)self fullyDrawnCallbacks];
  v6 = [callbackCopy copy];

  v7 = objc_retainBlock(v6);
  [fullyDrawnCallbacks addObject:v7];

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
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView disableTestStatistics];
  [mainVKMapView disableTileStatistics];
  v15 = mainVKMapView;
  testStatistics = [mainVKMapView testStatistics];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [testStatistics countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(testStatistics);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [testStatistics objectForKey:v9];
        results = [(MapsAppTest *)self results];
        v12 = [NSString stringWithFormat:@"sub:pan/zoom:%@", v9];
        [results setObject:v10 forKey:v12];
      }

      v6 = [testStatistics countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  tileStatistics = [v15 tileStatistics];
  if (tileStatistics)
  {
    results2 = [(MapsAppTest *)self results];
    [results2 addEntriesFromDictionary:tileStatistics];
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

- (void)panToTestPoint:(unsigned int)point
{
  testPoints = [(MapsAppTestPanZoom *)self testPoints];
  v6 = [testPoints count];

  if (v6 <= point)
  {

    [(MapsAppTestPanZoom *)self panLoadCompleted];
  }

  else
  {
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    testPoints2 = [(MapsAppTestPanZoom *)self testPoints];
    v9 = [testPoints2 objectAtIndex:point];
    [v9 testPoint];
    v10 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:?];

    if (self->_shouldUseStyleZoom)
    {
      mainVKMapView2 = [(MapsAppTest *)self mainVKMapView];
      testPoints3 = [(MapsAppTestPanZoom *)self testPoints];
      v34 = [testPoints3 objectAtIndex:point];
      [v34 testPoint];
      testPoints4 = [(MapsAppTestPanZoom *)self testPoints];
      v14 = [testPoints4 objectAtIndex:point];
      [v14 testPoint];
      VKLocationCoordinate2DMake();
      v16 = v15;
      v18 = v17;
      [mainVKMapView altitude];
      v20 = v19;
      [(MapsAppTestPanZoom *)self yaw];
      v22 = v21;
      [(MapsAppTestPanZoom *)self pitch];
      v24 = v23;
      testPoints5 = [(MapsAppTestPanZoom *)self testPoints];
      [testPoints5 objectAtIndex:point - 1];
      v27 = v26 = v10;
      [v27 timeToNextPoint];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1007A98D4;
      v37[3] = &unk_1016332F0;
      v37[4] = self;
      pointCopy = point;
      [mainVKMapView2 setCenterCoordinate:0 altitude:v37 yaw:v16 pitch:v18 duration:v20 timingCurve:v22 completion:{v24, v28}];

      v10 = v26;
    }

    else
    {
      [(MapsAppTestPanZoom *)self pitch];
      v30 = v29;
      [(MapsAppTestPanZoom *)self yaw];
      v32 = v31;
      mainVKMapView2 = [(MapsAppTestPanZoom *)self testPoints];
      testPoints3 = [mainVKMapView2 objectAtIndex:point - 1];
      [testPoints3 timeToNextPoint];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1007A9954;
      v35[3] = &unk_1016332F0;
      v35[4] = self;
      pointCopy2 = point;
      [mainVKMapView setMapRegion:v10 pitch:v35 yaw:v30 duration:v32 completion:v33];
    }
  }
}

- (BOOL)runTest
{
  if (!self->_isSubTest)
  {
    [(MapsAppTest *)self setupForVKTest];
  }

  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  [mainMKMapView _setLocationPulseEnabled:0];

  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  options = [(MapsAppTest *)self options];
  -[MapsAppTest switchToMapType:](self, "switchToMapType:", [options _mapstest_mapType]);
  testPoints = [(MapsAppTestPanZoom *)self testPoints];
  v7 = [testPoints objectAtIndex:0];
  [v7 testPoint];
  v8 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:?];

  [(MapsAppTestPanZoom *)self pitch];
  v10 = v9;
  [(MapsAppTestPanZoom *)self yaw];
  [mainVKMapView setMapRegion:v8 pitch:v10 yaw:v11];
  if (self->_shouldUseStyleZoom)
  {
    [mainVKMapView bounds];
    MidX = CGRectGetMidX(v20);
    [mainVKMapView bounds];
    MidY = CGRectGetMidY(v21);
    cameraDelegate = [mainVKMapView cameraDelegate];
    [cameraDelegate mapLayerWillChangeRegionAnimated:0];

    [mainVKMapView zoomToLevel:self->_styleZoom withFocusPoint:{MidX, MidY}];
    cameraDelegate2 = [mainVKMapView cameraDelegate];
    [cameraDelegate2 mapLayerDidChangeRegionAnimated:0];
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

- (MapsAppTestPanZoom)initWithApplication:(id)application testName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v31.receiver = self;
  v31.super_class = MapsAppTestPanZoom;
  v10 = [(MapsAppTest *)&v31 initWithApplication:application testName:nameCopy options:optionsCopy];
  if (v10)
  {
    *(v10 + 64) = [nameCopy rangeOfString:@"pan"] != 0;
    *(v10 + 65) = 0;
    if (optionsCopy)
    {
      allKeys = [optionsCopy allKeys];
      v12 = [allKeys containsObject:@"isSubTest"];

      if (v12)
      {
        v13 = [optionsCopy valueForKey:@"isSubTest"];
        *(v10 + 64) = [v13 BOOLValue];
      }

      allKeys2 = [optionsCopy allKeys];
      v15 = [allKeys2 containsObject:@"styleZoom"];

      if (v15)
      {
        v16 = [optionsCopy valueForKey:@"styleZoom"];
        [v16 floatValue];
        *(v10 + 17) = v17;
        *(v10 + 65) = 1;
      }
    }

    v18 = objc_alloc_init(MapsPanTestPoint);
    v19 = objc_alloc_init(MapsPanTestPoint);
    [optionsCopy _mapstest_startPoint];
    [(MapsPanTestPoint *)v18 setTestPoint:?];
    [optionsCopy _mapstest_animationDurationWithDefault:1.0];
    [(MapsPanTestPoint *)v18 setTimeToNextPoint:?];
    [optionsCopy _mapstest_endPoint];
    [(MapsPanTestPoint *)v19 setTestPoint:?];
    [optionsCopy _mapstest_animationDurationWithDefault:1.0];
    [(MapsPanTestPoint *)v19 setTimeToNextPoint:?];
    if ([optionsCopy _mapstest_hasMidPoint])
    {
      v20 = objc_alloc_init(MapsPanTestPoint);
      [optionsCopy _mapstest_midPoint];
      [(MapsPanTestPoint *)v20 setTestPoint:?];
      [optionsCopy _mapstest_animationDurationWithDefault:1.0];
      [(MapsPanTestPoint *)v20 setTimeToNextPoint:?];
      v21 = [[NSArray alloc] initWithObjects:{v18, v20, v19, 0}];
      v22 = *(v10 + 9);
      *(v10 + 9) = v21;
    }

    else
    {
      testName = [v10 testName];
      v24 = [testName rangeOfString:@"zoom"];

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

    [optionsCopy _mapstest_pitch];
    *(v10 + 10) = v27;
    [optionsCopy _mapstest_yaw];
    *(v10 + 11) = v28;
  }

  return v10;
}

@end