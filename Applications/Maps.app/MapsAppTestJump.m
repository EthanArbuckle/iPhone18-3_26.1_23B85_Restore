@interface MapsAppTestJump
- ($1AB5FA073B851C12C2339EC22442E995)endPoint;
- (BOOL)runTest;
- (MapsAppTestJump)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (void)didFinishJumping;
- (void)finishedFps;
- (void)jumpToBayArea;
- (void)jumpToCupertino;
- (void)startTimingFps;
@end

@implementation MapsAppTestJump

- ($1AB5FA073B851C12C2339EC22442E995)endPoint
{
  latitude = self->_endPoint.latitude;
  longitude = self->_endPoint.longitude;
  altitude = self->_endPoint.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)finishedFps
{
  savedDebugDrawContinuously = self->_savedDebugDrawContinuously;
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setLayoutContinuously:savedDebugDrawContinuously];

  [(MapsAppTest *)self finishedSubTest:@"timingFPS"];
  v20 = [(MapsAppTest *)self mainVKMapView];
  [v20 disableTestStatistics];
  [v20 disableTileStatistics];
  [v20 testStatistics];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v5 = v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v5 objectForKey:v9];
        v11 = [(MapsAppTest *)self results];
        v12 = [NSString stringWithFormat:@"sub:timingFPS:%@", v9];
        [v11 setObject:v10 forKey:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  [v20 resetTestStatistics];
  [v20 resetTileStatistics];
  if (self->_requiresSubTest)
  {
    v13 = [MapsAppTestCirclePan alloc];
    v14 = [(MapsAppTest *)self app];
    v15 = [(MapsAppTest *)self testName];
    v16 = [(MapsAppTestCirclePan *)v13 initWithApplication:v14 testName:v15 options:0];
    subTest = self->_subTest;
    self->_subTest = v16;

    [(MapsAppTestCirclePan *)self->_subTest setEndPoint:self->_endPoint.latitude, self->_endPoint.longitude, self->_endPoint.altitude];
    [(MapsAppTestCirclePan *)self->_subTest setPitch:self->_pitch];
    [(MapsAppTestCirclePan *)self->_subTest setYaw:self->_yaw];
    [(MapsAppTestCirclePan *)self->_subTest setAltitudeIsRegionSize:self->_altitudeIsRegionSize];
    objc_initWeak(&location, self);
    v18 = self->_subTest;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100D13410;
    v21[3] = &unk_101661B98;
    objc_copyWeak(&v22, &location);
    [(MapsAppTestCirclePan *)v18 setTestFinshdCallback:v21];
    v19 = [(MapsAppTest *)self results];
    [(MapsAppTest *)self->_subTest setResults:v19];

    [(MapsAppTestCirclePan *)self->_subTest runTest];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MapsAppTest *)self finishedTest];
  }
}

- (void)startTimingFps
{
  [(MapsAppTest *)self startedSubTest:@"timingFPS"];
  v3 = +[VKDebugSettings sharedSettingsExt];
  self->_savedDebugDrawContinuously = [v3 layoutContinuously];

  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setLayoutContinuously:1];

  v5 = [(MapsAppTest *)self mainVKMapView];
  [v5 setNeedsDisplay];
  [v5 enableTestStatistics];
  [v5 enableTileStatistics];
  [(MapsAppTestJump *)self performSelector:"finishedFps" withObject:0 afterDelay:3.0];
}

- (void)didFinishJumping
{
  [(MapsAppTest *)self finishedSubTest:@"loadingScene"];
  v3 = [(MapsAppTest *)self mainVKMapView];
  [v3 disableTestStatistics];
  [v3 disableTileStatistics];
  v16 = v3;
  v4 = [v3 testStatistics];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = [(MapsAppTest *)self results];
        v12 = [NSString stringWithFormat:@"sub:loadingScene:%@", v9];
        [v11 setObject:v10 forKey:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [v16 resetTestStatistics];
  if ([v16 mapType] != 3 && objc_msgSend(v16, "mapType") != 4)
  {
    v13 = [v16 tileStatistics];
    if (v13)
    {
      v14 = [(MapsAppTest *)self results];
      [v14 addEntriesFromDictionary:v13];
    }
  }

  [v16 resetTileStatistics];
  v15 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D13784;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v15, &_dispatch_main_q, block);
}

- (void)jumpToCupertino
{
  p_endPoint = &self->_endPoint;
  v6 = [(MapsAppTest *)self mainVKMapView];
  [v6 _mapstest_jumpToCupertino];
  p_endPoint->latitude = v3;
  p_endPoint->longitude = v4;
  p_endPoint->altitude = v5;
}

- (void)jumpToBayArea
{
  p_endPoint = &self->_endPoint;
  v6 = [(MapsAppTest *)self mainVKMapView];
  [v6 _mapstest_jumpToBayArea];
  p_endPoint->latitude = v3;
  p_endPoint->longitude = v4;
  p_endPoint->altitude = v5;
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self testName];
  v4 = [(MapsAppTest *)self options];
  NSLog(@"test is %@", v3);
  v5 = [v3 rangeOfString:@"-"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 length];
  }

  v6 = [v3 substringToIndex:v5];
  v7 = NSSelectorFromString(v6);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [v4 objectForKeyedSubscript:@"latitude"];
    if (!v8 || (v9 = v8, [v4 objectForKeyedSubscript:@"longitude"], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      v14 = 0;
      goto LABEL_12;
    }

    v7 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100D13A04;
  v16[3] = &unk_101661650;
  v16[4] = self;
  v16[5] = v7;
  v11 = objc_retainBlock(v16);
  [(MapsAppTest *)self setupForVKTest];
  waitSecondsForMapViewSetup = self->_waitSecondsForMapViewSetup;
  if (waitSecondsForMapViewSetup)
  {
    v13 = dispatch_time(0, 1000000000 * waitSecondsForMapViewSetup);
    dispatch_after(v13, &_dispatch_main_q, v11);
  }

  else
  {
    (v11[2])(v11);
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (MapsAppTestJump)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a5;
  v24.receiver = self;
  v24.super_class = MapsAppTestJump;
  v9 = [(MapsAppTest *)&v24 initWithApplication:a3 testName:a4 options:v8];
  if (v9)
  {
    [v8 _mapstest_pitch];
    v9->_pitch = v10;
    [v8 _mapstest_yaw];
    v9->_yaw = v11;
    [v8 _mapstest_jumpPoint];
    v9->_endPoint.latitude = v12;
    v9->_endPoint.longitude = v13;
    v9->_endPoint.altitude = v14;
    v9->_altitudeIsRegionSize = 1;
    if (v8)
    {
      v15 = [v8 allKeys];
      v16 = [v15 containsObject:@"requiresSubTest"];

      if (v16)
      {
        v17 = [v8 valueForKey:@"requiresSubTest"];
        v9->_requiresSubTest = [v17 BOOLValue];
      }

      else
      {
        v9->_requiresSubTest = 1;
      }
    }

    v18 = [(MapsAppTest *)v9 options];
    v19 = [v18 _mapstest_hasAltitude];

    if (v19)
    {
      v20 = [(MapsAppTest *)v9 options];
      [v20 _mapstest_altitude];
      v9->_endPoint.altitude = v21;

      v9->_altitudeIsRegionSize = 0;
    }

    v22 = [(MapsAppTest *)v9 options];
    v9->_waitSecondsForMapViewSetup = [v22 _mapstest_waitSecondsForMapViewSetup];
  }

  return v9;
}

@end