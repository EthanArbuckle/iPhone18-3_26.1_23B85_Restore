@interface MapsAppTestStepZoom
- ($F24F406B2B787EFB06265DBA3D28CBD5)focusPoint;
- (BOOL)runTest;
- (MapsAppTestStepZoom)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (int64_t)_zoomAmount;
- (void)addFullyDrawnCallback:(id)a3;
- (void)onFullyDrawn:(id)a3;
- (void)runStepZoomTest:(double)a3;
- (void)stepLoadCompleted:(id)a3;
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
  block[2] = sub_100D40D08;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)stepLoadCompleted:(id)a3
{
  v4 = a3;
  v5 = [(MapsAppTest *)self mainVKMapView];
  [v5 disableTileStatistics];
  v15 = v5;
  v6 = [v5 tileStatistics];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        v13 = [(MapsAppTest *)self results];
        v14 = [NSString stringWithFormat:@"%@:%@", v4, v11];
        [v13 setObject:v12 forKey:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [v15 resetTileStatistics];
  [(MapsAppTest *)self finishedSubTest:v4];
}

- (void)runStepZoomTest:(double)a3
{
  if (self->_zoomEnd == a3)
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
    *&v7[5] = a3;
    v7[4] = self;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }
}

- (BOOL)runTest
{
  [(MapsAppTest *)self setupForVKTest];
  v3 = [(MapsAppTest *)self mainMKMapView];
  [v3 _setLocationPulseEnabled:0];

  v4 = [(MapsAppTest *)self mainVKMapView];
  v5 = [(MapsAppTest *)self options];
  -[MapsAppTest switchToMapType:](self, "switchToMapType:", [v5 _mapstest_mapType]);
  [(MapsAppTestStepZoom *)self _regionSizeForZoom:self->_zoomStart];
  VKLocationCoordinate3DMake();
  v6 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:?];
  [v4 setMapRegion:v6 pitch:0.0 yaw:0.0];
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

- (MapsAppTestStepZoom)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a5;
  v19.receiver = self;
  v19.super_class = MapsAppTestStepZoom;
  v9 = [(MapsAppTest *)&v19 initWithApplication:a3 testName:a4 options:v8];
  v10 = v9;
  if (v9)
  {
    p_focusPoint = &v9->_focusPoint;
    [v8 _mapstest_VKLocationCoordinate2D];
    *&p_focusPoint->latitude = v12;
    v10->_focusPoint.longitude = v13;
    v14 = [v8 objectForKeyedSubscript:@"zoomStart"];
    v10->_zoomStart = [v14 integerValue];

    v15 = [v8 objectForKeyedSubscript:@"zoomEnd"];
    v10->_zoomEnd = [v15 integerValue];

    [v8 _mapstest_animationDurationWithDefault:0.0];
    v10->_stepAnimationDuration = v16;
    v17 = [v8 objectForKeyedSubscript:@"clearCachesOnZoom"];
    v10->_clearCacheOnZoom = [v17 BOOLValue];
  }

  return v10;
}

@end