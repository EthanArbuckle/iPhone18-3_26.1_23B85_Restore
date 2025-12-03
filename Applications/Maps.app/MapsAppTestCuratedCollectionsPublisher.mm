@interface MapsAppTestCuratedCollectionsPublisher
- (BOOL)runTest;
- (void)_dispatchAfterShortDelay:(id)delay;
- (void)_enterSearchModeAndPerformPublisherScrollTest;
- (void)_performScrollTestOfScrollView:(id)view completion:(id)completion;
- (void)_selectAndScrollPublisherCollections;
- (void)_startTestAndPerformScrollTest;
@end

@implementation MapsAppTestCuratedCollectionsPublisher

- (void)_performScrollTestOfScrollView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  testName = [(MapsAppTest *)self testName];
  v9 = [testName stringByAppendingString:@" - scroll"];

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
  v19 = completionCopy;
  v26 = v19;
  v20 = [RPTGroupScrollTestParameters newWithTestName:v18 parameters:v17 completionHandler:&v21];

  [RPTTestRunner runTestWithParameters:v20, v21, v22, v23, v24];
  objc_destroyWeak(&v27);

  objc_destroyWeak(&location);
}

- (void)_dispatchAfterShortDelay:(id)delay
{
  delayCopy = delay;
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100949A74;
  block[3] = &unk_101661760;
  v7 = delayCopy;
  v5 = delayCopy;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_selectAndScrollPublisherCollections
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptSelectFirstGuidePublisher];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100949B1C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCuratedCollectionsPublisher *)self _dispatchAfterShortDelay:v4];
}

- (void)_enterSearchModeAndPerformPublisherScrollTest
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterSearchMode];

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
  options = [(MapsAppTest *)self options];
  _mapstest_isUsingSampleProactiveData = [options _mapstest_isUsingSampleProactiveData];

  if (_mapstest_isUsingSampleProactiveData)
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