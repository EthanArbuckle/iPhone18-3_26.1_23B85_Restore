@interface MapsAppTestDrivingRoute
- (BOOL)runTest;
@end

@implementation MapsAppTestDrivingRoute

- (BOOL)runTest
{
  [(MapsAppTest *)self setupForVKTest];
  [(MapsAppTestRoute *)self registerGEOSubtestsForRouting];
  v3 = [(MapsAppTest *)self options];
  [v3 _mapstest_jumpPoint];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(MapsAppTest *)self options];
  [v10 _mapstest_pitch];
  v12 = v11;

  v13 = [(MapsAppTest *)self options];
  [v13 _mapstest_yaw];
  v15 = v14;

  v16 = [(MapsAppTest *)self options];
  v17 = [v16 _mapstest_mapType];

  [(MapsAppTest *)self switchToMapType:v17];
  v18 = [(MapsAppTest *)self mainVKMapView];
  [v18 _mapstest_jumpToCoords:1 pitch:v5 yaw:v7 altitudeIsRegionSize:{v9, v12, v15}];

  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100588BA0;
  v20[3] = &unk_101661B98;
  objc_copyWeak(&v21, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  return 1;
}

@end