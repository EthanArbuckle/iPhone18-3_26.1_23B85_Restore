@interface MapsAppTestCitySelector
- (BOOL)runTest;
- (MapsAppTestCitySelector)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)_dispatchAfterShortDelay:(id)delay;
- (void)continueAfterCollectingDataFromDataFetchers;
- (void)didUpdateDataFetcher:(id)fetcher;
- (void)runScrollTest;
@end

@implementation MapsAppTestCitySelector

- (void)_dispatchAfterShortDelay:(id)delay
{
  delayCopy = delay;
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C8997C;
  block[3] = &unk_101661760;
  v7 = delayCopy;
  v5 = delayCopy;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)runScrollTest
{
  [(MapsAppTest *)self startedSubTest:@"scrollingCitySelector"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestScrollView = [testCoordinator pptTestScrollView];

  RPTContentSizeInDirection();
  v6 = v5;
  RPTGetBoundsForView();
  v11 = [[RPTScrollViewTestParameters alloc] initWithTestName:@"scrollingCitySelector" scrollBounds:1 scrollContentLength:&stru_10164F9E8 direction:v7 completionHandler:{v8, v9, v10, v6}];
  objc_initWeak(&location, self);
  v18 = v11;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100C89BB8;
  v14[3] = &unk_101661340;
  objc_copyWeak(&v16, &location);
  v15 = @"scrollingCitySelector";
  v13 = [RPTGroupScrollTestParameters newWithTestName:@"scrollingCitySelector" parameters:v12 completionHandler:v14];

  [RPTTestRunner runTestWithParameters:v13];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)continueAfterCollectingDataFromDataFetchers
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C89D48;
  v4[3] = &unk_10165FBE8;
  objc_copyWeak(&v5, &location);
  [PPTNotificationCenter addOnceObserverForName:@"PPTTest_CitySelector_DidDisplaySections" object:0 usingBlock:v4];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100C89DE4;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(MapsAppTestCitySelector *)self _dispatchAfterShortDelay:v3];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)didUpdateDataFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  updatedDataFetchers = [(MapsAppTestCitySelector *)self updatedDataFetchers];
  object = [fetcherCopy object];

  [updatedDataFetchers addObject:object];
  updatedDataFetchers2 = [(MapsAppTestCitySelector *)self updatedDataFetchers];
  v8 = [updatedDataFetchers2 count];
  numberOfDataFetchers = [(MapsAppTestCitySelector *)self numberOfDataFetchers];

  if (v8 == numberOfDataFetchers)
  {
    [(MapsAppTest *)self finishedSubTest:@"searchHomeCollectData"];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:@"PPTTest_SearchHome_DidUpdateDataFetcher" object:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C89F74;
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
  v10[2] = sub_100C8A0C8;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestCitySelector)initWithApplication:(id)application testName:(id)name options:(id)options
{
  v9.receiver = self;
  v9.super_class = MapsAppTestCitySelector;
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