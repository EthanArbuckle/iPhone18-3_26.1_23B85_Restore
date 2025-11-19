@interface MapsAppTestCirclePan
- ($1AB5FA073B851C12C2339EC22442E995)endPoint;
- (BOOL)runTest;
- (MapsAppTestCirclePan)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (void)addFullyDrawnCallback:(id)a3;
- (void)animateCircle:(int64_t)a3 completion:(id)a4;
- (void)circlePanLoadFinished;
- (void)onFullyDrawn:(id)a3;
@end

@implementation MapsAppTestCirclePan

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
  block[2] = sub_1007AA324;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (void)animateCircle:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_requiresPreLoadAnimation)
  {
    if (a3 < 0)
    {
      if (!self->_isSubTest)
      {
        [(MapsAppTest *)self failedTest];
      }

      testFinshdCallback = self->_testFinshdCallback;
      if (testFinshdCallback)
      {
        testFinshdCallback[2]();
      }
    }

    if (a3 <= 0)
    {
      v9 = -(-a3 & 3);
    }

    else
    {
      v9 = a3 & 3;
    }

    if (self->_altitudeIsRegionSize)
    {
      v10 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:self->_circlePoints[v9].latitude, self->_circlePoints[v9].longitude, self->_circlePoints[v9].altitude];
      v11 = [(MapsAppTest *)self mainVKMapView];
      pitch = self->_pitch;
      yaw = self->_yaw;
      animationDuration = self->_animationDuration;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1007AA658;
      v27[3] = &unk_101629E70;
      v29 = a3;
      v27[4] = self;
      v28 = v7;
      [v11 setMapRegion:v10 pitch:v27 yaw:pitch duration:yaw completion:animationDuration];
    }

    else
    {
      v15 = [(MapsAppTest *)self mainVKMapView];
      VKLocationCoordinate2DMake();
      v17 = v16;
      v19 = v18;
      altitude = self->_circlePoints[v9].altitude;
      v21 = self->_yaw;
      v22 = self->_pitch;
      v23 = self->_animationDuration;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1007AA70C;
      v24[3] = &unk_101629E70;
      v26 = a3;
      v24[4] = self;
      v25 = v7;
      [v15 setCenterCoordinate:0 altitude:v24 yaw:v17 pitch:v19 duration:altitude timingCurve:v21 completion:{v22, v23}];
    }
  }

  else
  {
    (*(v6 + 2))(v6);
  }
}

- (void)circlePanLoadFinished
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1007AA858;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [(MapsAppTestCirclePan *)self animateCircle:4 completion:v2];
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
  if (self->_altitudeIsRegionSize)
  {
    v5 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:self->_endPoint.latitude, self->_endPoint.longitude, self->_endPoint.altitude];
    [v4 setMapRegion:v5 pitch:self->_pitch yaw:self->_yaw];
  }

  else
  {
    VKLocationCoordinate2DMake();
    [v4 setCenterCoordinate:0 altitude:0 yaw:? pitch:? duration:? timingCurve:? completion:?];
  }

  if (!self->_isSubTest)
  {
    v6 = [(MapsAppTest *)self options];
    v7 = [v6 objectForKeyedSubscript:@"circleDistance"];

    if (v7)
    {
      v8 = [(MapsAppTest *)self options];
      v9 = [v8 objectForKeyedSubscript:@"circleDistance"];
      [v9 doubleValue];
      self->_circleRadius = v10 * 0.5;
    }
  }

  [v4 convertPoint:v4 toCoordinateFromLayer:{1.0, 0.0}];
  [v4 convertPoint:v4 toCoordinateFromLayer:{0.0, 0.0}];
  VKLocationCoordinate3DMake();
  self->_circlePoints[0].latitude = v11;
  self->_circlePoints[0].longitude = v12;
  self->_circlePoints[0].altitude = v13;
  VKLocationCoordinate3DMake();
  self->_circlePoints[1].latitude = v14;
  self->_circlePoints[1].longitude = v15;
  self->_circlePoints[1].altitude = v16;
  VKLocationCoordinate3DMake();
  self->_circlePoints[2].latitude = v17;
  self->_circlePoints[2].longitude = v18;
  self->_circlePoints[2].altitude = v19;
  VKLocationCoordinate3DMake();
  self->_circlePoints[3].latitude = v20;
  self->_circlePoints[3].longitude = v21;
  self->_circlePoints[3].altitude = v22;
  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1007AB10C;
  v24[3] = &unk_101661B98;
  objc_copyWeak(&v25, &location);
  [(MapsAppTestCirclePan *)self addFullyDrawnCallback:v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestCirclePan)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v37.receiver = self;
  v37.super_class = MapsAppTestCirclePan;
  v10 = [(MapsAppTest *)&v37 initWithApplication:a3 testName:v8 options:v9];
  v11 = v10;
  if (v10)
  {
    v10->_requiresPreLoadAnimation = 1;
    v10->_isSubTest = [v8 rangeOfString:@"circle"] != 0;
    if (v9 && ([v9 allKeys], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", @"isSubTest"), v12, v13))
    {
      v14 = [v9 valueForKey:@"isSubTest"];
      v11->_isSubTest = [v14 BOOLValue];
      v11->_requiresPreLoadAnimation = 0;

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    v11->_circleRadius = 4.0;
    if (!v11->_isSubTest)
    {
      v16 = [(MapsAppTest *)v11 options];
      v17 = [v16 objectForKeyedSubscript:@"circleDistance"];

      if (v17)
      {
        v18 = [(MapsAppTest *)v11 options];
        v19 = [v18 objectForKeyedSubscript:@"circleDistance"];
        [v19 doubleValue];
        v11->_circleRadius = v20 * 0.5;
      }
    }

    v11->_iterations = 10;
    v11->_animationDuration = 0.0500000007;
    if (v11->_isSubTest)
    {
      if (v15)
      {
        [v9 _mapstest_pointWithKeys:&off_1016ECB00];
        v11->_endPoint.latitude = v21;
        v11->_endPoint.longitude = v22;
        v11->_endPoint.altitude = v23;
        v11->_iterations = [v9 _mapstest_integerValueForKey:@"iterations" defaultValue:10];
        [v9 _mapstest_animationDurationWithDefault:0.0500000007];
        v11->_animationDuration = v24 * 0.25;
        v11->_altitudeIsRegionSize = 1;
        [v9 _mapstest_pitch];
        v11->_pitch = v25;
        [v9 _mapstest_yaw];
        v11->_yaw = v26;
        v27 = [(MapsAppTest *)v11 options];
        v28 = [v27 objectForKeyedSubscript:@"circleDistance"];

        if (v28)
        {
          v29 = [(MapsAppTest *)v11 options];
          v30 = [v29 objectForKeyedSubscript:@"circleDistance"];
          [v30 doubleValue];
          v11->_circleRadius = v31 * 0.5;
        }
      }
    }

    else
    {
      [v9 _mapstest_pointWithKeys:&off_1016ECAE8];
      v11->_endPoint.latitude = v32;
      v11->_endPoint.longitude = v33;
      v11->_endPoint.altitude = v34;
      v11->_iterations = [v9 _mapstest_integerValueForKey:@"iterations" defaultValue:10];
      [v9 _mapstest_animationDurationWithDefault:0.0500000007];
      v11->_animationDuration = v35 * 0.25;
      v11->_pitch = 0.0;
      v11->_yaw = 0.0;
    }
  }

  return v11;
}

@end