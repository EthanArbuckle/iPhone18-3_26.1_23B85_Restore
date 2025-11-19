@interface MapsAppTestSearchHome
- (BOOL)runTest;
- (MapsAppTestSearchHome)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (void)continueAfterCollectingDataFromDataFetchers;
- (void)didUpdateDataFetcher:(id)a3;
- (void)runScrollTest;
@end

@implementation MapsAppTestSearchHome

- (void)runScrollTest
{
  [(MapsAppTest *)self startedSubTest:@"content scroll"];
  objc_initWeak(&location, self);
  v3 = [(MapsAppTest *)self testCoordinator];
  v4 = [v3 pptTestScrollView];

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
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
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

- (void)didUpdateDataFetcher:(id)a3
{
  v4 = a3;
  v5 = [(MapsAppTestSearchHome *)self updatedDataFetchers];
  v6 = [v4 object];

  [v5 addObject:v6];
  v7 = [(MapsAppTestSearchHome *)self updatedDataFetchers];
  v8 = [v7 count];
  v9 = [(MapsAppTestSearchHome *)self numberOfDataFetchers];

  if (v8 == v9)
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
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestResetForLaunchURL];

  v4 = [(MapsAppTest *)self options];
  v5 = [v4 _mapstest_mapType];

  v6 = [(MapsAppTest *)self options];
  v7 = [v6 _mapstest_mapRegion];

  [(MapsAppTest *)self switchToMapType:v5];
  v8 = [(MapsAppTest *)self mainVKMapView];
  [v8 setMapRegion:v7 pitch:0.0 yaw:0.0];

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

- (MapsAppTestSearchHome)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v9.receiver = self;
  v9.super_class = MapsAppTestSearchHome;
  v5 = [(MapsAppTest *)&v9 initWithApplication:a3 testName:a4 options:a5];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    updatedDataFetchers = v5->_updatedDataFetchers;
    v5->_updatedDataFetchers = v6;
  }

  return v5;
}

@end