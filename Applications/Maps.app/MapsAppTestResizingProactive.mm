@interface MapsAppTestResizingProactive
- (BOOL)runTest;
- (void)_performResizingTest;
@end

@implementation MapsAppTestResizingProactive

- (void)_performResizingTest
{
  canUpdateTrayLayout = [(MapsAppTest *)self canUpdateTrayLayout];
  [(MapsAppTest *)self startedTest];
  if (canUpdateTrayLayout)
  {
    testName = [(MapsAppTest *)self testName];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1009852C0;
    v5[3] = &unk_101661B18;
    v5[4] = self;
    [(MapsAppTest *)self resizingTestAndSubTestsWithPrefix:testName completion:v5];
  }

  else
  {

    [(MapsAppTest *)self failedTest];
  }
}

- (BOOL)runTest
{
  options = [(MapsAppTest *)self options];
  _mapstest_isUsingSampleProactiveData = [options _mapstest_isUsingSampleProactiveData];

  if (_mapstest_isUsingSampleProactiveData)
  {
    v5 = 6000000000;
  }

  else
  {
    v5 = 1000000000;
  }

  v6 = dispatch_time(0, v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100985390;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v6, &_dispatch_main_q, block);
  return 1;
}

@end