@interface MapsAppTestStaticFrame
- ($1AB5FA073B851C12C2339EC22442E995)location;
- (BOOL)runTest;
- (MapsAppTestStaticFrame)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)didFinishJumping;
- (void)finishedRendering;
- (void)startRendering;
@end

@implementation MapsAppTestStaticFrame

- ($1AB5FA073B851C12C2339EC22442E995)location
{
  latitude = self->_location.latitude;
  longitude = self->_location.longitude;
  altitude = self->_location.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)finishedRendering
{
  [(MapsAppTest *)self finishedSubTest:@"staticFrame"];
  savedDebugDrawContinuously = self->_savedDebugDrawContinuously;
  v4 = +[VKDebugSettings sharedSettingsExt];
  [v4 setLayoutContinuously:savedDebugDrawContinuously];

  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView disableTestStatistics];
  [mainVKMapView disableTileStatistics];
  v15 = mainVKMapView;
  testStatistics = [mainVKMapView testStatistics];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [testStatistics countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(testStatistics);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [testStatistics objectForKey:v11];
        results = [(MapsAppTest *)self results];
        v14 = [NSString stringWithFormat:@"sub:staticFrame:%@", v11];
        [results setObject:v12 forKey:v14];
      }

      v8 = [testStatistics countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [v15 resetTestStatistics];
  [v15 resetTileStatistics];
  [(MapsAppTest *)self finishedTest];
}

- (void)startRendering
{
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView setNeedsDisplay];
  [mainVKMapView enableTestStatistics];
  [mainVKMapView enableTileStatistics];
  [(MapsAppTest *)self startedTest];
  [(MapsAppTest *)self startedSubTest:@"staticFrame"];
  [(MapsAppTestStaticFrame *)self performSelector:"finishedRendering" withObject:0 afterDelay:self->_renderingDuration];
}

- (void)didFinishJumping
{
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView disableTestStatistics];
  [mainVKMapView disableTileStatistics];
  [mainVKMapView resetTestStatistics];
  [mainVKMapView resetTileStatistics];
  v4 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005CE000;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  testName = [(MapsAppTest *)self testName];
  options = [(MapsAppTest *)self options];
  NSLog(@"test is %@", testName);
  v5 = [testName rangeOfString:@"-"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [testName length];
  }

  v6 = [testName substringToIndex:v5];
  v7 = NSSelectorFromString(v6);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [options objectForKeyedSubscript:@"latitude"];
    if (!v8 || (v9 = v8, [options objectForKeyedSubscript:@"longitude"], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      v14 = 0;
      goto LABEL_14;
    }

    v7 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1005CE1DC;
  v16[3] = &unk_101661650;
  v16[4] = self;
  v16[5] = v7;
  v11 = objc_retainBlock(v16);
  if (self->_requiresViewSetup)
  {
    [(MapsAppTest *)self setupForVKTest];
  }

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
LABEL_14:

  return v14;
}

- (MapsAppTestStaticFrame)initWithApplication:(id)application testName:(id)name options:(id)options
{
  optionsCopy = options;
  v25.receiver = self;
  v25.super_class = MapsAppTestStaticFrame;
  v9 = [(MapsAppTest *)&v25 initWithApplication:application testName:name options:optionsCopy];
  if (v9)
  {
    [optionsCopy _mapstest_pitch];
    v9->_pitch = v10;
    [optionsCopy _mapstest_yaw];
    v9->_yaw = v11;
    [optionsCopy _mapstest_jumpPoint];
    v9->_location.latitude = v12;
    v9->_location.longitude = v13;
    v9->_location.altitude = v14;
    v9->_altitudeIsRegionSize = 1;
    v9->_requiresViewSetup = 1;
    options = [(MapsAppTest *)v9 options];
    v16 = [options objectForKeyedSubscript:@"renderingDuration"];

    if (v16)
    {
      options2 = [(MapsAppTest *)v9 options];
      v18 = [options2 objectForKeyedSubscript:@"renderingDuration"];
      v9->_renderingDuration = [v18 intValue];
    }

    else
    {
      v9->_renderingDuration = 10;
    }

    options3 = [(MapsAppTest *)v9 options];
    _mapstest_hasAltitude = [options3 _mapstest_hasAltitude];

    if (_mapstest_hasAltitude)
    {
      options4 = [(MapsAppTest *)v9 options];
      [options4 _mapstest_altitude];
      v9->_location.altitude = v22;

      v9->_altitudeIsRegionSize = 0;
    }

    options5 = [(MapsAppTest *)v9 options];
    v9->_waitSecondsForMapViewSetup = [options5 _mapstest_waitSecondsForMapViewSetup];
  }

  return v9;
}

@end