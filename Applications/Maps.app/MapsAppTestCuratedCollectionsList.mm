@interface MapsAppTestCuratedCollectionsList
- (BOOL)runTest;
- (void)_dispatchAfterShortDelay:(id)delay;
- (void)_enterSearchModeAndPerformAllCuratedCollectionsScrollTest;
- (void)_performScrollTestOfScrollView:(id)view completion:(id)completion;
- (void)_selectAndScrollAllCuratedCollections;
- (void)_startTestAndPerformScrollTest;
@end

@implementation MapsAppTestCuratedCollectionsList

- (void)_performScrollTestOfScrollView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  v7 = objc_alloc_init(UIScrollTestParameters);
  [v7 setIterations:1];
  [v7 setDelta:20.0];
  [v7 setLength:UIScrollTestParametersLengthAutomatic];
  [v7 setAxis:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C72198;
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
  block[2] = sub_100C72260;
  block[3] = &unk_101661760;
  v7 = delayCopy;
  v5 = delayCopy;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_selectAndScrollAllCuratedCollections
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptSelectSeeAllCuratedCollections];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C72308;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCuratedCollectionsList *)self _dispatchAfterShortDelay:v4];
}

- (void)_enterSearchModeAndPerformAllCuratedCollectionsScrollTest
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterSearchMode];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C724AC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCuratedCollectionsList *)self _dispatchAfterShortDelay:v4];
}

- (void)_startTestAndPerformScrollTest
{
  [(MapsAppTest *)self startedTest];

  [(MapsAppTestCuratedCollectionsList *)self _enterSearchModeAndPerformAllCuratedCollectionsScrollTest];
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
    block[2] = sub_100C725B0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {
    [(MapsAppTestCuratedCollectionsList *)self _startTestAndPerformScrollTest];
  }

  return 1;
}

@end