@interface MapsAppTestCapture
- (BOOL)runTest;
- (void)_didFinishJumpingForCapture;
@end

@implementation MapsAppTestCapture

- (void)_didFinishJumpingForCapture
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10072FCC8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self testName];
  NSLog(@"capture is %@", v3);

  v4 = [(MapsAppTest *)self options];
  v5 = [v4 _mapstest_hasLatitudeAndLongitude];

  if (v5)
  {
    [(MapsAppTest *)self setupForVKTest];
    v6 = [(MapsAppTest *)self options];
    [v6 _mapstest_jumpPoint];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [(MapsAppTest *)self options];
    [v13 _mapstest_pitch];
    v15 = v14;

    v16 = [(MapsAppTest *)self options];
    [v16 _mapstest_yaw];
    v18 = v17;

    v19 = [(MapsAppTest *)self mainVKMapView];
    [v19 _mapstest_jumpToCoords:1 pitch:v8 yaw:v10 altitudeIsRegionSize:{v12, v15, v18}];

    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100730044;
    v21[3] = &unk_101661B98;
    objc_copyWeak(&v22, &location);
    [(MapsAppTest *)self addFullyDrawnCallback:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

@end