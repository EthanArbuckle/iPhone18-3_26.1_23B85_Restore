@interface MapsAppTestProactive
- (BOOL)runTest;
- (void)_performScrollTest;
- (void)_setupTrayLayoutAndPerformScrollTest;
@end

@implementation MapsAppTestProactive

- (void)_performScrollTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  v4 = [v3 pptTestScrollViewForProactive];

  RPTContentSizeInDirection();
  v6 = v5;
  RPTGetBoundsForView();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [RPTScrollViewTestParameters alloc];
  v16 = [(MapsAppTest *)self testName];
  v17 = [v15 initWithTestName:v16 scrollBounds:1 scrollContentLength:&stru_1016304D0 direction:v8 completionHandler:{v10, v12, v14, v6}];

  objc_initWeak(&location, self);
  v18 = [(MapsAppTest *)self testName];
  v27 = v17;
  v19 = [NSArray arrayWithObjects:&v27 count:1];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100984FFC;
  v24 = &unk_101661B98;
  objc_copyWeak(&v25, &location);
  v20 = [RPTGroupScrollTestParameters newWithTestName:v18 parameters:v19 completionHandler:&v21];

  [RPTTestRunner runTestWithParameters:v20, v21, v22, v23, v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_setupTrayLayoutAndPerformScrollTest
{
  if ([(MapsAppTest *)self canUpdateTrayLayout])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10098511C;
    v3[3] = &unk_101661B18;
    v3[4] = self;
    [(MapsAppTest *)self updateTrayLayout:2 animated:1 completion:v3];
  }

  else
  {

    [(MapsAppTestProactive *)self _performScrollTest];
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
    block[2] = sub_1009851EC;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {
    [(MapsAppTestProactive *)self _setupTrayLayoutAndPerformScrollTest];
  }

  return 1;
}

@end