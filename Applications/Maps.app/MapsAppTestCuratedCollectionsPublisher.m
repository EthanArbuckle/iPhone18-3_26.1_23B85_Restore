@interface MapsAppTestCuratedCollectionsPublisher
- (BOOL)runTest;
- (void)_dispatchAfterShortDelay:(id)a3;
- (void)_enterSearchModeAndPerformPublisherScrollTest;
- (void)_performScrollTestOfScrollView:(id)a3 completion:(id)a4;
- (void)_selectAndScrollPublisherCollections;
- (void)_startTestAndPerformScrollTest;
@end

@implementation MapsAppTestCuratedCollectionsPublisher

- (void)_performScrollTestOfScrollView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MapsAppTest *)self testName];
  v9 = [v8 stringByAppendingString:@" - scroll"];

  [(MapsAppTest *)self startedSubTest:v9];
  objc_initWeak(&location, self);
  RPTContentSizeInDirection();
  v11 = v10;
  RPTGetBoundsForView();
  v16 = [[RPTScrollViewTestParameters alloc] initWithTestName:v9 scrollBounds:1 scrollContentLength:&stru_10162F5A0 direction:v12 completionHandler:{v13, v14, v15, v11}];
  [v16 setPreventSheetDismissal:1];
  v29 = v16;
  v17 = [NSArray arrayWithObjects:&v29 count:1];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10094994C;
  v24 = &unk_10165DEA0;
  objc_copyWeak(&v27, &location);
  v18 = v9;
  v25 = v18;
  v19 = v7;
  v26 = v19;
  v20 = [RPTGroupScrollTestParameters newWithTestName:v18 parameters:v17 completionHandler:&v21];

  [RPTTestRunner runTestWithParameters:v20, v21, v22, v23, v24];
  objc_destroyWeak(&v27);

  objc_destroyWeak(&location);
}

- (void)_dispatchAfterShortDelay:(id)a3
{
  v3 = a3;
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100949A74;
  block[3] = &unk_101661760;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_selectAndScrollPublisherCollections
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptSelectFirstGuidePublisher];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100949B1C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCuratedCollectionsPublisher *)self _dispatchAfterShortDelay:v4];
}

- (void)_enterSearchModeAndPerformPublisherScrollTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestEnterSearchMode];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100949C60;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCuratedCollectionsPublisher *)self _dispatchAfterShortDelay:v4];
}

- (void)_startTestAndPerformScrollTest
{
  [(MapsAppTest *)self startedTest];

  [(MapsAppTestCuratedCollectionsPublisher *)self _enterSearchModeAndPerformPublisherScrollTest];
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 _mapstest_isUsingSampleProactiveData];

  if (v4)
  {
    v5 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100949D64;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {
    [(MapsAppTestCuratedCollectionsPublisher *)self _startTestAndPerformScrollTest];
  }

  return 1;
}

@end