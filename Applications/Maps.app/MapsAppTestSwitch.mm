@interface MapsAppTestSwitch
- (BOOL)runTest;
- (void)addFullyDrawnCallback:(id)callback delayInSeconds:(double)seconds;
- (void)didFinishJumping;
- (void)onFullyDrawn:(id)drawn;
@end

@implementation MapsAppTestSwitch

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

- (void)addFullyDrawnCallback:(id)callback delayInSeconds:(double)seconds
{
  callbackCopy = callback;
  if (seconds <= 0.0)
  {
    fullyDrawnCallbacks = [(MapsAppTest *)self fullyDrawnCallbacks];
    v9 = [callbackCopy copy];
    v10 = objc_retainBlock(v9);
    [fullyDrawnCallbacks addObject:v10];

    [(MapsAppTest *)self setupFullyDrawnNotification:"onFullyDrawn:"];
  }

  else
  {
    v7 = dispatch_time(0, (seconds * 1000000000.0));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100D1403C;
    v11[3] = &unk_101661090;
    v11[4] = self;
    v12 = callbackCopy;
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
  testName = [(MapsAppTest *)self testName];
  NSLog(@"test is %@", testName);

  options = [(MapsAppTest *)self options];
  v5 = [options _mapstest_mapTypeWithDefaultType:0];
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
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [(MapsAppTestJump *)self pitch];
  v16 = v15;
  [(MapsAppTestJump *)self yaw];
  [mainVKMapView _mapstest_jumpToCoords:-[MapsAppTestJump altitudeIsRegionSize](self pitch:"altitudeIsRegionSize") yaw:v9 altitudeIsRegionSize:{v11, v13, v16, v17}];

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