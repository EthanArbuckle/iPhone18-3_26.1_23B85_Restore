@interface MapsAppTestRotate
- ($1AB5FA073B851C12C2339EC22442E995)testPoint;
- (BOOL)runTest;
- (MapsAppTestRotate)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (void)addFullyDrawnCallback:(id)a3;
- (void)onFullyDrawn:(id)a3;
- (void)rotateLoadCompleted;
- (void)rotateLoadFinished;
- (void)rotateToDegree:(unsigned int)a3;
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
  block[2] = sub_10072D8B0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)rotateLoadCompleted
{
  v3 = [(MapsAppTest *)self mainVKMapView];
  [v3 stopRotatingWithFocusPoint:{self->_focusPoint.x, self->_focusPoint.y}];
  [v3 disableTestStatistics];
  [v3 disableTileStatistics];
  savedDebugDrawContinuously = self->_savedDebugDrawContinuously;
  v5 = +[VKDebugSettings sharedSettingsExt];
  [v5 setLayoutContinuously:savedDebugDrawContinuously];

  v17 = v3;
  v6 = [v3 testStatistics];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        v13 = [(MapsAppTest *)self results];
        v14 = [NSString stringWithFormat:@"sub:rotate:%@", v11];
        [v13 setObject:v12 forKey:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v17 tileStatistics];
  if (v15)
  {
    v16 = [(MapsAppTest *)self results];
    [v16 addEntriesFromDictionary:v15];
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

- (void)rotateToDegree:(unsigned int)a3
{
  if (a3 < 0x64)
  {
    v5 = [(MapsAppTest *)self mainVKMapView];
    [v5 updateRotationWithFocusPoint:self->_focusPoint.x newValue:{self->_focusPoint.y, self->_rotateDegrees[a3]}];
    v6 = dispatch_time(0, (self->_animationDuration * 1000000000.0));
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10072DD8C;
    v7[3] = &unk_10164DC48;
    v7[4] = self;
    v8 = a3;
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

  v3 = [(MapsAppTest *)self mainMKMapView];
  [v3 _setLocationPulseEnabled:0];

  v4 = [(MapsAppTest *)self mainVKMapView];
  v5 = [(MapsAppTest *)self options];
  -[MapsAppTest switchToMapType:](self, "switchToMapType:", [v5 _mapstest_mapType]);
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
  [v4 setMapRegion:v11 pitch:self->_pitch yaw:self->_yaw];
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

- (MapsAppTestRotate)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = MapsAppTestRotate;
  v10 = [(MapsAppTest *)&v26 initWithApplication:a3 testName:v8 options:v9];
  if (v10)
  {
    v10->_isSubTest = [v8 rangeOfString:@"rotate"] != 0;
    v10->_targetAngleToRotate = 90.0;
    if (v9)
    {
      v11 = [v9 allKeys];
      v12 = [v11 containsObject:@"isSubTest"];

      if (v12)
      {
        v13 = [v9 valueForKey:@"isSubTest"];
        v10->_isSubTest = [v13 BOOLValue];
      }

      v14 = [v9 allKeys];
      v15 = [v14 containsObject:@"rotateAngles"];

      if (v15)
      {
        v16 = [(MapsAppTest *)v10 options];
        v17 = [v16 objectForKeyedSubscript:@"rotateAngles"];
        [v17 doubleValue];
        v10->_targetAngleToRotate = v18;
      }
    }

    [v9 _mapstest_pointWithKeys:&off_1016EC998];
    v10->_testPoint.latitude = v19;
    v10->_testPoint.longitude = v20;
    v10->_testPoint.altitude = v21;
    [v9 _mapstest_animationDurationWithDefault:3.0];
    v10->_animationDuration = v22 * 0.01;
    [v9 _mapstest_pitch];
    v10->_pitch = v23;
    [v9 _mapstest_yaw];
    v10->_yaw = v24;
  }

  return v10;
}

@end