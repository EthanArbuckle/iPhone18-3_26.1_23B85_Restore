@interface MapsAppTestPitch
- ($1AB5FA073B851C12C2339EC22442E995)testPoint;
- (BOOL)runTest;
- (MapsAppTestPitch)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (void)addFullyDrawnCallback:(id)a3;
- (void)onFullyDrawn:(id)a3;
- (void)pitchLoadCompleted;
- (void)pitchLoadFinished;
- (void)pitchToDegree:(unsigned int)a3;
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
  block[2] = sub_10072CBC8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)pitchLoadCompleted
{
  v3 = [(MapsAppTest *)self mainVKMapView];
  [v3 stopPitchingWithFocusPoint:{self->_focusPoint.x, self->_focusPoint.y}];
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
        v14 = [NSString stringWithFormat:@"sub:pitch:%@", v11];
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

- (void)pitchToDegree:(unsigned int)a3
{
  if (a3 < 0x64)
  {
    v5 = [(MapsAppTest *)self mainVKMapView];
    [v5 updatePitchWithFocusPoint:self->_focusPoint.x degrees:{self->_focusPoint.y, self->_pitchDegrees[a3]}];
    v6 = dispatch_time(0, (self->_animationDuration * 1000000000.0));
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10072D0A4;
    v7[3] = &unk_10164DC48;
    v7[4] = self;
    v8 = a3;
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

  v3 = [(MapsAppTest *)self mainMKMapView];
  [v3 _setLocationPulseEnabled:0];

  v4 = [(MapsAppTest *)self mainVKMapView];
  v5 = [(MapsAppTest *)self options];
  -[MapsAppTest switchToMapType:](self, "switchToMapType:", [v5 _mapstest_mapType]);
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
  [v4 setMapRegion:v12 pitch:v14 yaw:v15];
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

- (MapsAppTestPitch)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v30.receiver = self;
  v30.super_class = MapsAppTestPitch;
  v10 = [(MapsAppTest *)&v30 initWithApplication:a3 testName:v8 options:v9];
  if (v10)
  {
    v10->_isSubTest = [v8 rangeOfString:@"pitch"] != 0;
    v10->_startPitch = 0.0;
    v10->_endPitch = 60.0;
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
      v15 = [v14 containsObject:@"startPitch"];

      if (v15)
      {
        v16 = [(MapsAppTest *)v10 options];
        v17 = [v16 objectForKeyedSubscript:@"startPitch"];
        [v17 doubleValue];
        v10->_startPitch = v18;
      }

      v19 = [v9 allKeys];
      v20 = [v19 containsObject:@"endPitch"];

      if (v20)
      {
        v21 = [(MapsAppTest *)v10 options];
        v22 = [v21 objectForKeyedSubscript:@"endPitch"];
        [v22 doubleValue];
        v10->_endPitch = v23;
      }
    }

    [v9 _mapstest_pointWithKeys:&off_1016EC980];
    v10->_testPoint.latitude = v24;
    v10->_testPoint.longitude = v25;
    v10->_testPoint.altitude = v26;
    [v9 _mapstest_animationDurationWithDefault:3.0];
    v10->_animationDuration = v27 * 0.01;
    [v9 _mapstest_yaw];
    v10->_yaw = v28;
  }

  return v10;
}

@end