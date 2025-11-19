@interface MapsAppTestRPT
- ($1AB5FA073B851C12C2339EC22442E995)startPoint;
- (BOOL)runTest;
- (MapsAppTestRPT)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (void)addFullyDrawnCallback:(id)a3;
- (void)enterLookAroundForTest:(id)a3;
- (void)expandLookAroundToFullscreen:(BOOL)a3 withLookAroundView:(id)a4 mapItem:(id)a5 completionBlock:(id)a6;
- (void)initialLoadComplete;
- (void)onFullyDrawn:(id)a3;
- (void)onLookAroundView:(id)a3 didBecomeAdequatelyDrawnCallback:(id)a4;
- (void)onLookAroundView:(id)a3 didCompletionPostTransitionAnimation:(id)a4;
- (void)rptTestCompleted;
@end

@implementation MapsAppTestRPT

- ($1AB5FA073B851C12C2339EC22442E995)startPoint
{
  latitude = self->_startPoint.latitude;
  longitude = self->_startPoint.longitude;
  altitude = self->_startPoint.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)enterLookAroundForTest:(id)a3
{
  v4 = a3;
  v5 = +[VKDebugSettings sharedSettingsExt];
  self->_savedDebugDrawContinuously = [v5 layoutContinuously];

  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 setLayoutContinuously:1];

  [(MapsAppTest *)self startedSubTest:@"lookAroundEnter"];
  v7 = [(MapsAppTest *)self mainMKMapView];
  v8 = [MKPlacemark alloc];
  [v7 centerCoordinate];
  v9 = [v8 initWithCoordinate:?];
  v10 = [[MKMapItem alloc] initWithPlacemark:v9];
  v11 = [MKLookAroundEntryPoint entryPointWithMapItem:v10];
  v12 = [(MapsAppTest *)self testCoordinator];
  [v12 pptTestEnterLookAroundWithEntryPoint:v11 lookAroundView:0 showsFullScreen:0];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10088B468;
  v15[3] = &unk_101638720;
  v15[4] = self;
  v16 = v10;
  v17 = v4;
  v13 = v4;
  v14 = v10;
  [PPTNotificationCenter addOnceObserverForName:@"LookAroundTrayContaineeViewControllerDidAppear" object:0 usingBlock:v15];
}

- (void)expandLookAroundToFullscreen:(BOOL)a3 withLookAroundView:(id)a4 mapItem:(id)a5 completionBlock:(id)a6
{
  v8 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10088B94C;
  v15[3] = &unk_101638720;
  v15[4] = self;
  v16 = a4;
  v17 = a6;
  v10 = v17;
  v11 = v16;
  v12 = a5;
  [PPTNotificationCenter addOnceObserverForName:@"PPTLookAroundContainerViewControllerDidTransitionToFullscreen" object:0 usingBlock:v15];
  v13 = [MKLookAroundEntryPoint entryPointWithMapItem:v12];

  v14 = [(MapsAppTest *)self testCoordinator];
  [v14 pptTestEnterLookAroundWithEntryPoint:v13 lookAroundView:v11 showsFullScreen:v8];
}

- (void)onLookAroundView:(id)a3 didCompletionPostTransitionAnimation:(id)a4
{
  v4 = a4;
  v5 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10088BAF4;
  block[3] = &unk_101661760;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)onLookAroundView:(id)a3 didBecomeAdequatelyDrawnCallback:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 adequatelyDrawn])
  {
    v7 = sub_100798614();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412546;
      v14 = v9;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "<%@:%p> is already adequately drawn", buf, 0x16u);
    }

    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v10 = MKLookAroundViewDidBecomeAdequatelyDrawnNotification;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10088BC94;
    v11[3] = &unk_10164FAC0;
    v12 = v6;
    [PPTNotificationCenter addOnceObserverForName:v10 object:v5 usingBlock:v11];
  }
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
  block[2] = sub_10088BFA8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)rptTestCompleted
{
  v3 = [(MapsAppTest *)self mainVKMapView];
  if (self->_isLookAroundTest)
  {
    savedDebugDrawContinuously = self->_savedDebugDrawContinuously;
    v5 = +[VKDebugSettings sharedSettingsExt];
    [v5 setLayoutContinuously:savedDebugDrawContinuously];
  }

  [v3 disableTestStatistics];
  [v3 disableTileStatistics];
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
        v14 = [NSString stringWithFormat:@"sub:rpt:%@", v11];
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

- (void)initialLoadComplete
{
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10088C2D8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self options];
  if (![(MapsAppTest *)self isRunningOnCarPlay])
  {
    -[MapsAppTest switchToMapType:](self, "switchToMapType:", [v3 _mapstest_mapType]);
  }

  [(MapsAppTest *)self setupForVKTest];
  v4 = [(MapsAppTest *)self mainMKMapView];
  [v4 _setLocationPulseEnabled:0];

  v5 = [(MapsAppTest *)self mainVKMapView];
  [v5 setDisableTransitLines:0];
  [(MapsAppTestRPT *)self startPoint];
  v6 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:?];
  [(MapsAppTestRPT *)self pitch];
  v8 = v7;
  [(MapsAppTestRPT *)self yaw];
  [v5 setMapRegion:v6 pitch:v8 yaw:v9];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10088C6DC;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, &location);
  [(MapsAppTestRPT *)self addFullyDrawnCallback:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestRPT)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = MapsAppTestRPT;
  v10 = [(MapsAppTest *)&v22 initWithApplication:a3 testName:v8 options:v9];
  v11 = v10;
  if (v10)
  {
    p_startPoint = &v10->_startPoint;
    [v9 _mapstest_startPoint];
    *&p_startPoint->latitude = v13;
    v11->_startPoint.longitude = v14;
    v11->_startPoint.altitude = v15;
    [v9 _mapstest_pitch];
    v11->_pitch = v16;
    [v9 _mapstest_yaw];
    v11->_yaw = v17;
    v18 = [v9 _mapstest_rptTestActions];
    testActions = v11->_testActions;
    v11->_testActions = v18;

    [v9 _mapstest_animationDurationWithDefault:2.0];
    v11->_actionDuration = v20;
    v11->_isLookAroundTest = [v8 rangeOfString:@"LookAround"] == 3;
  }

  return v11;
}

@end