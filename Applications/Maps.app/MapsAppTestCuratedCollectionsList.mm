@interface MapsAppTestCuratedCollectionsList
- (BOOL)runTest;
- (void)_dispatchAfterShortDelay:(id)a3;
- (void)_enterSearchModeAndPerformAllCuratedCollectionsScrollTest;
- (void)_performScrollTestOfScrollView:(id)a3 completion:(id)a4;
- (void)_selectAndScrollAllCuratedCollections;
- (void)_startTestAndPerformScrollTest;
@end

@implementation MapsAppTestCuratedCollectionsList

- (void)_performScrollTestOfScrollView:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIScrollTestParameters);
  [v7 setIterations:1];
  [v7 setDelta:20.0];
  [v7 setLength:UIScrollTestParametersLengthAutomatic];
  [v7 setAxis:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C72198;
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
  block[2] = sub_100C72260;
  block[3] = &unk_101661760;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_selectAndScrollAllCuratedCollections
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptSelectSeeAllCuratedCollections];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C72308;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCuratedCollectionsList *)self _dispatchAfterShortDelay:v4];
}

- (void)_enterSearchModeAndPerformAllCuratedCollectionsScrollTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestEnterSearchMode];

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
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 _mapstest_isUsingSampleProactiveData];

  if (v4)
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