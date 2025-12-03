@interface MapsAppTestStepZoom
- ($F24F406B2B787EFB06265DBA3D28CBD5)focusPoint;
- (BOOL)runTest;
- (MapsAppTestStepZoom)initWithApplication:(id)application testName:(id)name options:(id)options;
- (int64_t)_zoomAmount;
- (void)addFullyDrawnCallback:(id)callback;
- (void)onFullyDrawn:(id)drawn;
- (void)runStepZoomTest:(double)test;
- (void)stepLoadCompleted:(id)completed;
@end

@implementation MapsAppTestStepZoom

- ($F24F406B2B787EFB06265DBA3D28CBD5)focusPoint
{
  latitude = self->_focusPoint.latitude;
  longitude = self->_focusPoint.longitude;
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
  block[2] = sub_100D40D08;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)stepLoadCompleted:(id)completed
{
  completedCopy = completed;
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView disableTileStatistics];
  v15 = mainVKMapView;
  tileStatistics = [mainVKMapView tileStatistics];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [tileStatistics countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(tileStatistics);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [tileStatistics objectForKey:v11];
        results = [(MapsAppTest *)self results];
        v14 = [NSString stringWithFormat:@"%@:%@", completedCopy, v11];
        [results setObject:v12 forKey:v14];
      }

      v8 = [tileStatistics countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [v15 resetTileStatistics];
  [(MapsAppTest *)self finishedSubTest:completedCopy];
}

- (void)runStepZoomTest:(double)test
{
  if (self->_zoomEnd == test)
  {

    [(MapsAppTest *)self finishedTest];
  }

  else
  {
    if ([(MapsAppTestStepZoom *)self clearCacheOnZoom])
    {
      v5 = +[GEOTileLoader modernLoader];
      [v5 shrinkDiskCacheToSize:0 callbackQ:&_dispatch_main_q finished:&stru_101651D10];
    }

    v6 = dispatch_time(0, 500000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100D41054;
    v7[3] = &unk_101661650;
    *&v7[5] = test;
    v7[4] = self;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }
}

- (BOOL)runTest
{
  [(MapsAppTest *)self setupForVKTest];
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  [mainMKMapView _setLocationPulseEnabled:0];

  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  options = [(MapsAppTest *)self options];
  -[MapsAppTest switchToMapType:](self, "switchToMapType:", [options _mapstest_mapType]);
  [(MapsAppTestStepZoom *)self _regionSizeForZoom:self->_zoomStart];
  VKLocationCoordinate3DMake();
  v6 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:?];
  [mainVKMapView setMapRegion:v6 pitch:0.0 yaw:0.0];
  objc_initWeak(&location, self);
  zoomStart = self->_zoomStart;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D41540;
  v9[3] = &unk_10165FBC0;
  objc_copyWeak(v10, &location);
  v10[1] = *&zoomStart;
  [(MapsAppTestStepZoom *)self addFullyDrawnCallback:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return 1;
}

- (int64_t)_zoomAmount
{
  if (self->_zoomStart < self->_zoomEnd)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (MapsAppTestStepZoom)initWithApplication:(id)application testName:(id)name options:(id)options
{
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = MapsAppTestStepZoom;
  v9 = [(MapsAppTest *)&v19 initWithApplication:application testName:name options:optionsCopy];
  v10 = v9;
  if (v9)
  {
    p_focusPoint = &v9->_focusPoint;
    [optionsCopy _mapstest_VKLocationCoordinate2D];
    *&p_focusPoint->latitude = v12;
    v10->_focusPoint.longitude = v13;
    v14 = [optionsCopy objectForKeyedSubscript:@"zoomStart"];
    v10->_zoomStart = [v14 integerValue];

    v15 = [optionsCopy objectForKeyedSubscript:@"zoomEnd"];
    v10->_zoomEnd = [v15 integerValue];

    [optionsCopy _mapstest_animationDurationWithDefault:0.0];
    v10->_stepAnimationDuration = v16;
    v17 = [optionsCopy objectForKeyedSubscript:@"clearCachesOnZoom"];
    v10->_clearCacheOnZoom = [v17 BOOLValue];
  }

  return v10;
}

@end