@interface MapsAppTestCuratedCollectionDetail
- (BOOL)runTest;
- (void)_dispatchAfterShortDelay:(id)a3;
- (void)_performScrollTestOfScrollView:(id)a3 completion:(id)a4;
- (void)_scrollCuratedCollection;
- (void)_setupAndPerformCuratedCollectionDetailsScrollTest;
- (void)_setupForTest;
- (void)_startTestAndSelectAndScrollCuratedCollection;
@end

@implementation MapsAppTestCuratedCollectionDetail

- (void)_performScrollTestOfScrollView:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIScrollTestParameters);
  [v7 setIterations:1];
  [v7 setDelta:40.0];
  [v7 setLength:UIScrollTestParametersLengthAutomatic];
  [v7 setAxis:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F001A8;
  v9[3] = &unk_10165CB08;
  v10 = v5;
  v8 = v5;
  [v6 _performScrollTestWithParameters:v7 completionBlock:v9];
}

- (void)_dispatchAfterShortDelay:(id)a3
{
  v3 = a3;
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F00270;
  block[3] = &unk_101661760;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_scrollCuratedCollection
{
  v3 = [(MapsAppTest *)self testCoordinator];
  v4 = [v3 pptTestScrollView];

  v5 = [(MapsAppTest *)self testName];
  v6 = [v5 stringByAppendingString:@" - scroll"];

  [(MapsAppTest *)self startedSubTest:v6];
  objc_initWeak(&location, self);
  RPTContentSizeInDirection();
  v8 = v7;
  RPTGetBoundsForView();
  v13 = [[RPTScrollViewTestParameters alloc] initWithTestName:v6 scrollBounds:1 scrollContentLength:&stru_10165CAE0 direction:v9 completionHandler:{v10, v11, v12, v8}];
  [v13 setPreventSheetDismissal:1];
  v21 = v13;
  v14 = [NSArray arrayWithObjects:&v21 count:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100F004E8;
  v17[3] = &unk_101661340;
  objc_copyWeak(&v19, &location);
  v15 = v6;
  v18 = v15;
  v16 = [RPTGroupScrollTestParameters newWithTestName:v15 parameters:v14 completionHandler:v17];

  [RPTTestRunner runTestWithParameters:v16];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)_startTestAndSelectAndScrollCuratedCollection
{
  [(MapsAppTest *)self startedTest];
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 _mapstest_mapItemIdentifier];

  v5 = [(MapsAppTest *)self testCoordinator];
  [v5 pptSelectCuratedGuideWithIdentifier:v4];

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F00664;
  v6[3] = &unk_10165FBE8;
  objc_copyWeak(&v7, &location);
  [PPTNotificationCenter addOnceObserverForName:@"PPTTest_CuratedCollectionView_DidDisplayCollection" object:0 usingBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_setupForTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestResetForLaunchURL];

  v4 = [(MapsAppTest *)self options];
  v5 = [v4 _mapstest_mapType];

  v6 = [(MapsAppTest *)self options];
  v8 = [v6 _mapstest_mapRegion];

  [(MapsAppTest *)self switchToMapType:v5];
  v7 = [(MapsAppTest *)self mainVKMapView];
  [v7 setMapRegion:v8 pitch:0.0 yaw:0.0];
}

- (void)_setupAndPerformCuratedCollectionDetailsScrollTest
{
  [(MapsAppTestCuratedCollectionDetail *)self _setupForTest];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100F0089C;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  [(MapsAppTestCuratedCollectionDetail *)self _dispatchAfterShortDelay:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (BOOL)runTest
{
  v3 = objc_alloc_init(NSMutableSet);
  updatedDataFetchers = self->_updatedDataFetchers;
  self->_updatedDataFetchers = v3;

  v5 = [(MapsAppTest *)self options];
  v6 = [v5 _mapstest_isUsingSampleProactiveData];

  if (v6)
  {
    v7 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F00A84;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v7, &_dispatch_main_q, block);
  }

  else
  {
    [(MapsAppTestCuratedCollectionDetail *)self _setupAndPerformCuratedCollectionDetailsScrollTest];
  }

  return 1;
}

@end