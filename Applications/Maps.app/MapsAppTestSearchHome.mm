@interface MapsAppTestSearchHome
- (BOOL)runTest;
- (MapsAppTestSearchHome)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)continueAfterCollectingDataFromDataFetchers;
- (void)didUpdateDataFetcher:(id)fetcher;
- (void)runScrollTest;
@end

@implementation MapsAppTestSearchHome

- (void)runScrollTest
{
  [(MapsAppTest *)self startedSubTest:@"content scroll"];
  objc_initWeak(&location, self);
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestScrollView = [testCoordinator pptTestScrollView];

  RPTContentSizeInDirection();
  v6 = v5;
  RPTGetBoundsForView();
  v11 = [[RPTScrollViewTestParameters alloc] initWithTestName:@"content scroll" scrollBounds:1 scrollContentLength:&stru_101655C58 direction:v7 completionHandler:{v8, v9, v10, v6}];
  [v11 setPreventSheetDismissal:1];
  v18 = v11;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100E247B8;
  v14[3] = &unk_101661340;
  objc_copyWeak(&v16, &location);
  v15 = @"content scroll";
  v13 = [RPTGroupScrollTestParameters newWithTestName:@"content scroll" parameters:v12 completionHandler:v14];

  [RPTTestRunner runTestWithParameters:v13];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

- (void)continueAfterCollectingDataFromDataFetchers
{
  options = [(MapsAppTest *)self options];
  v4 = [options objectForKeyedSubscript:@"testName"];
  v5 = [v4 containsString:@"Scroll"];

  if (v5)
  {

    [(MapsAppTestSearchHome *)self runScrollTest];
  }

  else
  {

    [(MapsAppTest *)self finishedTest];
  }
}

- (void)didUpdateDataFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  updatedDataFetchers = [(MapsAppTestSearchHome *)self updatedDataFetchers];
  object = [fetcherCopy object];

  [updatedDataFetchers addObject:object];
  updatedDataFetchers2 = [(MapsAppTestSearchHome *)self updatedDataFetchers];
  v8 = [updatedDataFetchers2 count];
  numberOfDataFetchers = [(MapsAppTestSearchHome *)self numberOfDataFetchers];

  if (v8 == numberOfDataFetchers)
  {
    [(MapsAppTest *)self finishedSubTest:@"collectData"];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:@"PPTTest_SearchHome_DidUpdateDataFetcher" object:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E249E4;
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
  v10[2] = sub_100E24B38;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return 1;
}

- (MapsAppTestSearchHome)initWithApplication:(id)application testName:(id)name options:(id)options
{
  v9.receiver = self;
  v9.super_class = MapsAppTestSearchHome;
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