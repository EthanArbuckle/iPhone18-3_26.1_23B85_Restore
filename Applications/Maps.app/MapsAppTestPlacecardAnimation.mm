@interface MapsAppTestPlacecardAnimation
- (BOOL)runTest;
- (void)_startTestPresentWithSearchResult:(id)result;
@end

@implementation MapsAppTestPlacecardAnimation

- (void)_startTestPresentWithSearchResult:(id)result
{
  resultCopy = result;
  [(MapsAppTest *)self startedTest];
  testName = [(MapsAppTest *)self testName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009F0380;
  v8[3] = &unk_101661A90;
  v8[4] = self;
  v9 = resultCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1009F03D8;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  v6 = resultCopy;
  [(MapsAppTest *)self presentDismissTrayTestAndSubTestsWithPrefix:testName presenter:v8 completion:v7];
}

- (BOOL)runTest
{
  options = [(MapsAppTest *)self options];
  _mapstest_location = [options _mapstest_location];

  if (_mapstest_location)
  {
    [(MapsAppTest *)self setupForVKTest];
    options2 = [(MapsAppTest *)self options];
    [options2 _mapstest_jumpPoint];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    options3 = [(MapsAppTest *)self options];
    [options3 _mapstest_pitch];
    v14 = v13;

    options4 = [(MapsAppTest *)self options];
    [options4 _mapstest_yaw];
    v17 = v16;

    options5 = [(MapsAppTest *)self options];
    _mapstest_mapType = [options5 _mapstest_mapType];

    [(MapsAppTest *)self switchToMapType:_mapstest_mapType];
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    [mainVKMapView _mapstest_jumpToCoords:1 pitch:v7 yaw:v9 altitudeIsRegionSize:{v11, v14, v17}];

    v21 = [[MKMapItem alloc] initWithCLLocation:_mapstest_location];
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

  return _mapstest_location != 0;
}

@end