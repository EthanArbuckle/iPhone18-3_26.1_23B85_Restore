@interface MapsAppTestCuratedCollectionDetail
- (BOOL)runTest;
- (void)_dispatchAfterShortDelay:(id)delay;
- (void)_performScrollTestOfScrollView:(id)view completion:(id)completion;
- (void)_scrollCuratedCollection;
- (void)_setupAndPerformCuratedCollectionDetailsScrollTest;
- (void)_setupForTest;
- (void)_startTestAndSelectAndScrollCuratedCollection;
@end

@implementation MapsAppTestCuratedCollectionDetail

- (void)_performScrollTestOfScrollView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  v7 = objc_alloc_init(UIScrollTestParameters);
  [v7 setIterations:1];
  [v7 setDelta:40.0];
  [v7 setLength:UIScrollTestParametersLengthAutomatic];
  [v7 setAxis:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F001A8;
  v9[3] = &unk_10165CB08;
  v10 = completionCopy;
  v8 = completionCopy;
  [viewCopy _performScrollTestWithParameters:v7 completionBlock:v9];
}

- (void)_dispatchAfterShortDelay:(id)delay
{
  delayCopy = delay;
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F00270;
  block[3] = &unk_101661760;
  v7 = delayCopy;
  v5 = delayCopy;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_scrollCuratedCollection
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestScrollView = [testCoordinator pptTestScrollView];

  testName = [(MapsAppTest *)self testName];
  v6 = [testName stringByAppendingString:@" - scroll"];

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
  options = [(MapsAppTest *)self options];
  _mapstest_mapItemIdentifier = [options _mapstest_mapItemIdentifier];

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptSelectCuratedGuideWithIdentifier:_mapstest_mapItemIdentifier];

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
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestResetForLaunchURL];

  options = [(MapsAppTest *)self options];
  _mapstest_mapType = [options _mapstest_mapType];

  options2 = [(MapsAppTest *)self options];
  _mapstest_mapRegion = [options2 _mapstest_mapRegion];

  [(MapsAppTest *)self switchToMapType:_mapstest_mapType];
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView setMapRegion:_mapstest_mapRegion pitch:0.0 yaw:0.0];
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

  options = [(MapsAppTest *)self options];
  _mapstest_isUsingSampleProactiveData = [options _mapstest_isUsingSampleProactiveData];

  if (_mapstest_isUsingSampleProactiveData)
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