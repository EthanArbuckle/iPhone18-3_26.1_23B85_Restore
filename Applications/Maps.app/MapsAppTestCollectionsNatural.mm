@interface MapsAppTestCollectionsNatural
- (BOOL)runTest;
- (void)_dismissCollection;
- (void)_dispatchAfterShortDelay:(id)delay;
- (void)_expandCollection;
- (void)_expandCollectionsList;
- (void)_openFirstCollection;
- (void)_performScrollTestOfScrollView:(id)view completion:(id)completion;
- (void)_setupTrayLayoutAndPerformScrollTest;
@end

@implementation MapsAppTestCollectionsNatural

- (void)_performScrollTestOfScrollView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  v8 = [RPTScrollViewTestParameters alloc];
  testName = [(MapsAppTest *)self testName];
  v10 = [v8 initWithTestName:testName scrollView:viewCopy completionHandler:completionCopy];

  [v10 setPreventSheetDismissal:1];
  [RPTTestRunner runTestWithParameters:v10];
}

- (void)_dispatchAfterShortDelay:(id)delay
{
  delayCopy = delay;
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A5F6C0;
  block[3] = &unk_101661760;
  v7 = delayCopy;
  v5 = delayCopy;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_dismissCollection
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestDismissTrayAnimated:1 assertTrayType:0];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A5F770;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCollectionsNatural *)self _dispatchAfterShortDelay:v4];
}

- (void)_expandCollection
{
  if ([(MapsAppTest *)self canUpdateTrayLayout])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100A5F908;
    v4[3] = &unk_101661B18;
    v4[4] = self;
    [(MapsAppTest *)self updateTrayLayout:2 animated:1 completion:v4];
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100A5F978;
    v3[3] = &unk_101661B18;
    v3[4] = self;
    [(MapsAppTestCollectionsNatural *)self _dispatchAfterShortDelay:v3];
  }
}

- (void)_openFirstCollection
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestOpenFirstCollection];

  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A5FA2C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_expandCollectionsList
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestOpenCollections];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A5FAC4;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTestCollectionsNatural *)self _dispatchAfterShortDelay:v4];
}

- (void)_setupTrayLayoutAndPerformScrollTest
{
  if ([(MapsAppTest *)self canUpdateTrayLayout])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100A5FB7C;
    v3[3] = &unk_101661B18;
    v3[4] = self;
    [(MapsAppTest *)self updateTrayLayout:2 animated:1 completion:v3];
  }

  else
  {

    [(MapsAppTestCollectionsNatural *)self _expandCollectionsList];
  }
}

- (BOOL)runTest
{
  options = [(MapsAppTest *)self options];
  _mapstest_isUsingSampleProactiveData = [options _mapstest_isUsingSampleProactiveData];

  if (_mapstest_isUsingSampleProactiveData)
  {
    v5 = dispatch_time(0, 6000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A5FC4C;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {
    [(MapsAppTestCollectionsNatural *)self _setupTrayLayoutAndPerformScrollTest];
  }

  return 1;
}

@end