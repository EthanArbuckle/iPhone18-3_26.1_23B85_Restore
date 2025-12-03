@interface MapsAppTestPitch
- ($1AB5FA073B851C12C2339EC22442E995)testPoint;
- (BOOL)runTest;
- (MapsAppTestPitch)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)addFullyDrawnCallback:(id)callback;
- (void)onFullyDrawn:(id)drawn;
- (void)pitchLoadCompleted;
- (void)pitchLoadFinished;
- (void)pitchToDegree:(unsigned int)degree;
@end

@implementation MapsAppTestPitch

- ($1AB5FA073B851C12C2339EC22442E995)testPoint
{
  latitude = self->_testPoint.latitude;
  longitude = self->_testPoint.longitude;
  altitude = self->_testPoint.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

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
  block[2] = sub_10072CBC8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)pitchLoadCompleted
{
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView stopPitchingWithFocusPoint:{self->_focusPoint.x, self->_focusPoint.y}];
  [mainVKMapView disableTestStatistics];
  [mainVKMapView disableTileStatistics];
  savedDebugDrawContinuously = self->_savedDebugDrawContinuously;
  v5 = +[VKDebugSettings sharedSettingsExt];
  [v5 setLayoutContinuously:savedDebugDrawContinuously];

  v17 = mainVKMapView;
  testStatistics = [mainVKMapView testStatistics];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [testStatistics countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(testStatistics);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [testStatistics objectForKey:v11];
        results = [(MapsAppTest *)self results];
        v14 = [NSString stringWithFormat:@"sub:pitch:%@", v11];
        [results setObject:v12 forKey:v14];
      }

      v8 = [testStatistics countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  tileStatistics = [v17 tileStatistics];
  if (tileStatistics)
  {
    results2 = [(MapsAppTest *)self results];
    [results2 addEntriesFromDictionary:tileStatistics];
  }

  [v17 resetTestStatistics];
  [v17 resetTileStatistics];
  [(MapsAppTest *)self finishedTest];
}

- (void)pitchLoadFinished
{
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10072CE80;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)pitchToDegree:(unsigned int)degree
{
  if (degree < 0x64)
  {
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    [mainVKMapView updatePitchWithFocusPoint:self->_focusPoint.x degrees:{self->_focusPoint.y, self->_pitchDegrees[degree]}];
    v6 = dispatch_time(0, (self->_animationDuration * 1000000000.0));
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10072D0A4;
    v7[3] = &unk_10164DC48;
    v7[4] = self;
    degreeCopy = degree;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }

  else
  {

    [(MapsAppTestPitch *)self pitchLoadCompleted];
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
  [(MapsAppTestPitch *)self endPitch];
  v7 = v6;
  [(MapsAppTestPitch *)self startPitch];
  v8 = 0;
  v10 = (v7 - v9) * 0.0101010101;
  do
  {
    [(MapsAppTestPitch *)self startPitch];
    self->_pitchDegrees[v8] = v11 + v10 * v8;
    ++v8;
  }

  while (v8 != 100);
  v12 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:self->_testPoint.latitude, self->_testPoint.longitude, self->_testPoint.altitude];
  [(MapsAppTestPitch *)self startPitch];
  v14 = v13;
  [(MapsAppTestPitch *)self yaw];
  [mainVKMapView setMapRegion:v12 pitch:v14 yaw:v15];
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10072D2A4;
  v17[3] = &unk_101661B98;
  objc_copyWeak(&v18, &location);
  [(MapsAppTestPitch *)self addFullyDrawnCallback:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestPitch)initWithApplication:(id)application testName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = MapsAppTestPitch;
  v10 = [(MapsAppTest *)&v30 initWithApplication:application testName:nameCopy options:optionsCopy];
  if (v10)
  {
    v10->_isSubTest = [nameCopy rangeOfString:@"pitch"] != 0;
    v10->_startPitch = 0.0;
    v10->_endPitch = 60.0;
    if (optionsCopy)
    {
      allKeys = [optionsCopy allKeys];
      v12 = [allKeys containsObject:@"isSubTest"];

      if (v12)
      {
        v13 = [optionsCopy valueForKey:@"isSubTest"];
        v10->_isSubTest = [v13 BOOLValue];
      }

      allKeys2 = [optionsCopy allKeys];
      v15 = [allKeys2 containsObject:@"startPitch"];

      if (v15)
      {
        options = [(MapsAppTest *)v10 options];
        v17 = [options objectForKeyedSubscript:@"startPitch"];
        [v17 doubleValue];
        v10->_startPitch = v18;
      }

      allKeys3 = [optionsCopy allKeys];
      v20 = [allKeys3 containsObject:@"endPitch"];

      if (v20)
      {
        options2 = [(MapsAppTest *)v10 options];
        v22 = [options2 objectForKeyedSubscript:@"endPitch"];
        [v22 doubleValue];
        v10->_endPitch = v23;
      }
    }

    [optionsCopy _mapstest_pointWithKeys:&off_1016EC980];
    v10->_testPoint.latitude = v24;
    v10->_testPoint.longitude = v25;
    v10->_testPoint.altitude = v26;
    [optionsCopy _mapstest_animationDurationWithDefault:3.0];
    v10->_animationDuration = v27 * 0.01;
    [optionsCopy _mapstest_yaw];
    v10->_yaw = v28;
  }

  return v10;
}

@end