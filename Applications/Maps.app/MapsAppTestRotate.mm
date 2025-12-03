@interface MapsAppTestRotate
- ($1AB5FA073B851C12C2339EC22442E995)testPoint;
- (BOOL)runTest;
- (MapsAppTestRotate)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)addFullyDrawnCallback:(id)callback;
- (void)onFullyDrawn:(id)drawn;
- (void)rotateLoadCompleted;
- (void)rotateLoadFinished;
- (void)rotateToDegree:(unsigned int)degree;
@end

@implementation MapsAppTestRotate

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
  block[2] = sub_10072D8B0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)rotateLoadCompleted
{
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView stopRotatingWithFocusPoint:{self->_focusPoint.x, self->_focusPoint.y}];
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
        v14 = [NSString stringWithFormat:@"sub:rotate:%@", v11];
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

- (void)rotateLoadFinished
{
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10072DB68;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)rotateToDegree:(unsigned int)degree
{
  if (degree < 0x64)
  {
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    [mainVKMapView updateRotationWithFocusPoint:self->_focusPoint.x newValue:{self->_focusPoint.y, self->_rotateDegrees[degree]}];
    v6 = dispatch_time(0, (self->_animationDuration * 1000000000.0));
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10072DD8C;
    v7[3] = &unk_10164DC48;
    v7[4] = self;
    degreeCopy = degree;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }

  else
  {

    [(MapsAppTestRotate *)self rotateLoadCompleted];
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
  [(MapsAppTestRotate *)self targetAngleToRotate];
  v6 = 0;
  v8 = v7 * 0.0101010101;
  v9 = xmmword_1011F07A0;
  v10 = vdupq_n_s64(2uLL);
  do
  {
    *&self->_rotateDegrees[v6] = vmulq_n_f64(vcvtq_f64_u64(v9), v8);
    v9 = vaddq_s64(v9, v10);
    v6 += 2;
  }

  while (v6 != 100);
  v11 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:self->_testPoint.latitude, self->_testPoint.longitude, self->_testPoint.altitude];
  [mainVKMapView setMapRegion:v11 pitch:self->_pitch yaw:self->_yaw];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10072DF7C;
  v13[3] = &unk_101661B98;
  objc_copyWeak(&v14, &location);
  [(MapsAppTestRotate *)self addFullyDrawnCallback:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestRotate)initWithApplication:(id)application testName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = MapsAppTestRotate;
  v10 = [(MapsAppTest *)&v26 initWithApplication:application testName:nameCopy options:optionsCopy];
  if (v10)
  {
    v10->_isSubTest = [nameCopy rangeOfString:@"rotate"] != 0;
    v10->_targetAngleToRotate = 90.0;
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
      v15 = [allKeys2 containsObject:@"rotateAngles"];

      if (v15)
      {
        options = [(MapsAppTest *)v10 options];
        v17 = [options objectForKeyedSubscript:@"rotateAngles"];
        [v17 doubleValue];
        v10->_targetAngleToRotate = v18;
      }
    }

    [optionsCopy _mapstest_pointWithKeys:&off_1016EC998];
    v10->_testPoint.latitude = v19;
    v10->_testPoint.longitude = v20;
    v10->_testPoint.altitude = v21;
    [optionsCopy _mapstest_animationDurationWithDefault:3.0];
    v10->_animationDuration = v22 * 0.01;
    [optionsCopy _mapstest_pitch];
    v10->_pitch = v23;
    [optionsCopy _mapstest_yaw];
    v10->_yaw = v24;
  }

  return v10;
}

@end