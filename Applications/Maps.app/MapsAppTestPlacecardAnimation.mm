@interface MapsAppTestPlacecardAnimation
- (BOOL)runTest;
- (void)_startTestPresentWithSearchResult:(id)a3;
@end

@implementation MapsAppTestPlacecardAnimation

- (void)_startTestPresentWithSearchResult:(id)a3
{
  v4 = a3;
  [(MapsAppTest *)self startedTest];
  v5 = [(MapsAppTest *)self testName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009F0380;
  v8[3] = &unk_101661A90;
  v8[4] = self;
  v9 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1009F03D8;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  v6 = v4;
  [(MapsAppTest *)self presentDismissTrayTestAndSubTestsWithPrefix:v5 presenter:v8 completion:v7];
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 _mapstest_location];

  if (v4)
  {
    [(MapsAppTest *)self setupForVKTest];
    v5 = [(MapsAppTest *)self options];
    [v5 _mapstest_jumpPoint];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(MapsAppTest *)self options];
    [v12 _mapstest_pitch];
    v14 = v13;

    v15 = [(MapsAppTest *)self options];
    [v15 _mapstest_yaw];
    v17 = v16;

    v18 = [(MapsAppTest *)self options];
    v19 = [v18 _mapstest_mapType];

    [(MapsAppTest *)self switchToMapType:v19];
    v20 = [(MapsAppTest *)self mainVKMapView];
    [v20 _mapstest_jumpToCoords:1 pitch:v7 yaw:v9 altitudeIsRegionSize:{v11, v14, v17}];

    v21 = [[MKMapItem alloc] initWithCLLocation:v4];
    v22 = [[SearchResult alloc] initWithMapItem:v21];
    objc_initWeak(&location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1009F05FC;
    v25[3] = &unk_101661340;
    objc_copyWeak(&v27, &location);
    v23 = v22;
    v26 = v23;
    [(MapsAppTest *)self addFullyDrawnCallback:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v4 != 0;
}

@end