@interface MapsAppTestRotatingProactive
- (BOOL)runTest;
- (void)_performRotationTest;
@end

@implementation MapsAppTestRotatingProactive

- (void)_performRotationTest
{
  [(MapsAppTest *)self startedTest];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100985418;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(MapsAppTest *)self rotateDeviceWithCompletion:v3];
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 _mapstest_isUsingSampleProactiveData];

  if (v4)
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
  block[2] = sub_1009854E8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v6, &_dispatch_main_q, block);
  return 1;
}

@end