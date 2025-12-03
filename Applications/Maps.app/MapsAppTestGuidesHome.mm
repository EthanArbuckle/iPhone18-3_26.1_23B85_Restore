@interface MapsAppTestGuidesHome
- (BOOL)runTest;
- (MapsAppTestGuidesHome)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)_dispatchAfterShortDelay:(id)delay;
- (void)continueAfterCollectingDataFromDataFetchers;
- (void)didUpdateDataFetcher:(id)fetcher;
- (void)runScrollTest;
@end

@implementation MapsAppTestGuidesHome

- (void)_dispatchAfterShortDelay:(id)delay
{
  delayCopy = delay;
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008FBA88;
  block[3] = &unk_101661760;
  v7 = delayCopy;
  v5 = delayCopy;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)runScrollTest
{
  [(MapsAppTest *)self startedSubTest:@"scrollingGuidesHome"];
  objc_initWeak(&location, self);
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestScrollView = [testCoordinator pptTestScrollView];

  RPTContentSizeInDirection();
  v6 = v5;
  RPTGetBoundsForView();
  v11 = [[RPTScrollViewTestParameters alloc] initWithTestName:@"scrollingGuidesHome" scrollBounds:1 scrollContentLength:&stru_10162E3D8 direction:v7 completionHandler:{v8, v9, v10, v6}];
  v18 = v11;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008FBCD4;
  v14[3] = &unk_101661340;
  objc_copyWeak(&v16, &location);
  v15 = @"scrollingGuidesHome";
  v13 = [RPTGroupScrollTestParameters newWithTestName:@"scrollingGuidesHome" parameters:v12 completionHandler:v14];

  [RPTTestRunner runTestWithParameters:v13];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

- (void)continueAfterCollectingDataFromDataFetchers
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1008FBE64;
  v4[3] = &unk_10165FBE8;
  objc_copyWeak(&v5, &location);
  [PPTNotificationCenter addOnceObserverForName:@"PPTTest_GuidesHome_DidDisplaySections" object:0 usingBlock:v4];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1008FBF00;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(MapsAppTestGuidesHome *)self _dispatchAfterShortDelay:v3];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)didUpdateDataFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  updatedDataFetchers = [(MapsAppTestGuidesHome *)self updatedDataFetchers];
  object = [fetcherCopy object];

  [updatedDataFetchers addObject:object];
  updatedDataFetchers2 = [(MapsAppTestGuidesHome *)self updatedDataFetchers];
  v8 = [updatedDataFetchers2 count];
  numberOfDataFetchers = [(MapsAppTestGuidesHome *)self numberOfDataFetchers];

  if (v8 == numberOfDataFetchers)
  {
    [(MapsAppTest *)self finishedSubTest:@"searchHomeCollectData"];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:@"PPTTest_SearchHome_DidUpdateDataFetcher" object:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008FC090;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (BOOL)runTest
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

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1008FC1E4;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestGuidesHome)initWithApplication:(id)application testName:(id)name options:(id)options
{
  v9.receiver = self;
  v9.super_class = MapsAppTestGuidesHome;
  v5 = [(MapsAppTest *)&v9 initWithApplication:application testName:name options:options];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    updatedDataFetchers = v5->_updatedDataFetchers;
    v5->_updatedDataFetchers = v6;
  }

  return v5;
}

@end