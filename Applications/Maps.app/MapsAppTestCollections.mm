@interface MapsAppTestCollections
- (BOOL)runTest;
- (void)_dismissCollection;
- (void)_dispatchAfterShortDelay:(id)a3;
- (void)_expandCollection;
- (void)_expandCollectionsList;
- (void)_openFirstCollection;
- (void)_performScrollTestOfScrollView:(id)a3 completion:(id)a4;
- (void)_setupTrayLayoutAndPerformScrollTest;
@end

@implementation MapsAppTestCollections

- (void)_performScrollTestOfScrollView:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIScrollTestParameters);
  [v7 setIterations:10];
  [v7 setDelta:20.0];
  [v7 setLength:UIScrollTestParametersLengthAutomatic];
  [v7 setAxis:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100BE2DF0;
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
  block[2] = sub_100BE2EB8;
  block[3] = &unk_101661760;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_dismissCollection
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestDismissTrayAnimated:1 assertTrayType:0];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BE2F68;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCollections *)self _dispatchAfterShortDelay:v4];
}

- (void)_expandCollection
{
  if ([(MapsAppTest *)self canUpdateTrayLayout])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100BE3160;
    v4[3] = &unk_101661B18;
    v4[4] = self;
    [(MapsAppTest *)self updateTrayLayout:2 animated:1 completion:v4];
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100BE31D0;
    v3[3] = &unk_101661B18;
    v3[4] = self;
    [(MapsAppTestCollections *)self _dispatchAfterShortDelay:v3];
  }
}

- (void)_openFirstCollection
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestOpenFirstCollection];

  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BE3284;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_expandCollectionsList
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestOpenCollections];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BE331C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCollections *)self _dispatchAfterShortDelay:v4];
}

- (void)_setupTrayLayoutAndPerformScrollTest
{
  [(MapsAppTest *)self startedTest];
  if ([(MapsAppTest *)self canUpdateTrayLayout])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100BE33DC;
    v3[3] = &unk_101661B18;
    v3[4] = self;
    [(MapsAppTest *)self updateTrayLayout:2 animated:1 completion:v3];
  }

  else
  {

    [(MapsAppTestCollections *)self _expandCollectionsList];
  }
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 _mapstest_isUsingSampleProactiveData];

  if (v4)
  {
    v5 = dispatch_time(0, 6000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BE34AC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {
    [(MapsAppTestCollections *)self _setupTrayLayoutAndPerformScrollTest];
  }

  return 1;
}

@end