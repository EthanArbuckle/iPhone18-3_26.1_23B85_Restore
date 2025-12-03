@interface MapsAppTestRPT
- ($1AB5FA073B851C12C2339EC22442E995)startPoint;
- (BOOL)runTest;
- (MapsAppTestRPT)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)addFullyDrawnCallback:(id)callback;
- (void)enterLookAroundForTest:(id)test;
- (void)expandLookAroundToFullscreen:(BOOL)fullscreen withLookAroundView:(id)view mapItem:(id)item completionBlock:(id)block;
- (void)initialLoadComplete;
- (void)onFullyDrawn:(id)drawn;
- (void)onLookAroundView:(id)view didBecomeAdequatelyDrawnCallback:(id)callback;
- (void)onLookAroundView:(id)view didCompletionPostTransitionAnimation:(id)animation;
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

- (void)enterLookAroundForTest:(id)test
{
  testCopy = test;
  v5 = +[VKDebugSettings sharedSettingsExt];
  self->_savedDebugDrawContinuously = [v5 layoutContinuously];

  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 setLayoutContinuously:1];

  [(MapsAppTest *)self startedSubTest:@"lookAroundEnter"];
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  v8 = [MKPlacemark alloc];
  [mainMKMapView centerCoordinate];
  v9 = [v8 initWithCoordinate:?];
  v10 = [[MKMapItem alloc] initWithPlacemark:v9];
  v11 = [MKLookAroundEntryPoint entryPointWithMapItem:v10];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterLookAroundWithEntryPoint:v11 lookAroundView:0 showsFullScreen:0];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10088B468;
  v15[3] = &unk_101638720;
  v15[4] = self;
  v16 = v10;
  v17 = testCopy;
  v13 = testCopy;
  v14 = v10;
  [PPTNotificationCenter addOnceObserverForName:@"LookAroundTrayContaineeViewControllerDidAppear" object:0 usingBlock:v15];
}

- (void)expandLookAroundToFullscreen:(BOOL)fullscreen withLookAroundView:(id)view mapItem:(id)item completionBlock:(id)block
{
  fullscreenCopy = fullscreen;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10088B94C;
  v15[3] = &unk_101638720;
  v15[4] = self;
  viewCopy = view;
  blockCopy = block;
  v10 = blockCopy;
  v11 = viewCopy;
  itemCopy = item;
  [PPTNotificationCenter addOnceObserverForName:@"PPTLookAroundContainerViewControllerDidTransitionToFullscreen" object:0 usingBlock:v15];
  v13 = [MKLookAroundEntryPoint entryPointWithMapItem:itemCopy];

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterLookAroundWithEntryPoint:v13 lookAroundView:v11 showsFullScreen:fullscreenCopy];
}

- (void)onLookAroundView:(id)view didCompletionPostTransitionAnimation:(id)animation
{
  animationCopy = animation;
  v5 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10088BAF4;
  block[3] = &unk_101661760;
  v8 = animationCopy;
  v6 = animationCopy;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)onLookAroundView:(id)view didBecomeAdequatelyDrawnCallback:(id)callback
{
  viewCopy = view;
  callbackCopy = callback;
  if ([viewCopy adequatelyDrawn])
  {
    v7 = sub_100798614();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412546;
      v14 = v9;
      v15 = 2048;
      v16 = viewCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "<%@:%p> is already adequately drawn", buf, 0x16u);
    }

    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy);
    }
  }

  else
  {
    v10 = MKLookAroundViewDidBecomeAdequatelyDrawnNotification;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10088BC94;
    v11[3] = &unk_10164FAC0;
    v12 = callbackCopy;
    [PPTNotificationCenter addOnceObserverForName:v10 object:viewCopy usingBlock:v11];
  }
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
  block[2] = sub_10088BFA8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)rptTestCompleted
{
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  if (self->_isLookAroundTest)
  {
    savedDebugDrawContinuously = self->_savedDebugDrawContinuously;
    v5 = +[VKDebugSettings sharedSettingsExt];
    [v5 setLayoutContinuously:savedDebugDrawContinuously];
  }

  [mainVKMapView disableTestStatistics];
  [mainVKMapView disableTileStatistics];
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
        v14 = [NSString stringWithFormat:@"sub:rpt:%@", v11];
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
  options = [(MapsAppTest *)self options];
  if (![(MapsAppTest *)self isRunningOnCarPlay])
  {
    -[MapsAppTest switchToMapType:](self, "switchToMapType:", [options _mapstest_mapType]);
  }

  [(MapsAppTest *)self setupForVKTest];
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  [mainMKMapView _setLocationPulseEnabled:0];

  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView setDisableTransitLines:0];
  [(MapsAppTestRPT *)self startPoint];
  v6 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:?];
  [(MapsAppTestRPT *)self pitch];
  v8 = v7;
  [(MapsAppTestRPT *)self yaw];
  [mainVKMapView setMapRegion:v6 pitch:v8 yaw:v9];
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

- (MapsAppTestRPT)initWithApplication:(id)application testName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v22.receiver = self;
  v22.super_class = MapsAppTestRPT;
  v10 = [(MapsAppTest *)&v22 initWithApplication:application testName:nameCopy options:optionsCopy];
  v11 = v10;
  if (v10)
  {
    p_startPoint = &v10->_startPoint;
    [optionsCopy _mapstest_startPoint];
    *&p_startPoint->latitude = v13;
    v11->_startPoint.longitude = v14;
    v11->_startPoint.altitude = v15;
    [optionsCopy _mapstest_pitch];
    v11->_pitch = v16;
    [optionsCopy _mapstest_yaw];
    v11->_yaw = v17;
    _mapstest_rptTestActions = [optionsCopy _mapstest_rptTestActions];
    testActions = v11->_testActions;
    v11->_testActions = _mapstest_rptTestActions;

    [optionsCopy _mapstest_animationDurationWithDefault:2.0];
    v11->_actionDuration = v20;
    v11->_isLookAroundTest = [nameCopy rangeOfString:@"LookAround"] == 3;
  }

  return v11;
}

@end