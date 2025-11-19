@interface MapsAppTestSwitch
- (BOOL)runTest;
- (void)addFullyDrawnCallback:(id)a3 delayInSeconds:(double)a4;
- (void)didFinishJumping;
- (void)onFullyDrawn:(id)a3;
@end

@implementation MapsAppTestSwitch

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

- (void)addFullyDrawnCallback:(id)a3 delayInSeconds:(double)a4
{
  v6 = a3;
  if (a4 <= 0.0)
  {
    v8 = [(MapsAppTest *)self fullyDrawnCallbacks];
    v9 = [v6 copy];
    v10 = objc_retainBlock(v9);
    [v8 addObject:v10];

    [(MapsAppTest *)self setupFullyDrawnNotification:"onFullyDrawn:"];
  }

  else
  {
    v7 = dispatch_time(0, (a4 * 1000000000.0));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100D1403C;
    v11[3] = &unk_101661090;
    v11[4] = self;
    v12 = v6;
    dispatch_after(v7, &_dispatch_main_q, v11);
  }
}

- (void)didFinishJumping
{
  [(MapsAppTest *)self startedTest];
  [(MapsAppTest *)self startedSubTest:@"switch"];
  [(MapsAppTest *)self startedSubTest:@"extendedSwitch"];
  [(MapsAppTest *)self switchToMapType:self->_switchToType];
  [(MapsAppTest *)self finishedSubTest:@"switch"];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D141D0;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  [(MapsAppTestSwitch *)self addFullyDrawnCallback:v3 delayInSeconds:0.1];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self testName];
  NSLog(@"test is %@", v3);

  v4 = [(MapsAppTest *)self options];
  v5 = [v4 _mapstest_mapTypeWithDefaultType:0];
  self->_switchToType = v5;
  v6 = 1;
  if (!v5)
  {
    v6 = 1;
  }

  if (v5 == 1)
  {
    v6 = 0;
  }

  if (v5 == 104)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  self->_switchFromType = v7;
  [(MapsAppTest *)self switchToMapType:?];
  [(MapsAppTestJump *)self endPoint];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(MapsAppTest *)self mainVKMapView];
  [(MapsAppTestJump *)self pitch];
  v16 = v15;
  [(MapsAppTestJump *)self yaw];
  [v14 _mapstest_jumpToCoords:-[MapsAppTestJump altitudeIsRegionSize](self pitch:"altitudeIsRegionSize") yaw:v9 altitudeIsRegionSize:{v11, v13, v16, v17}];

  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100D143EC;
  v19[3] = &unk_101661B98;
  objc_copyWeak(&v20, &location);
  [(MapsAppTestSwitch *)self addFullyDrawnCallback:v19 delayInSeconds:0.1];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return 1;
}

@end