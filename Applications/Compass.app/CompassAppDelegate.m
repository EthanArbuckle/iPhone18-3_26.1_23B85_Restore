@interface CompassAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (void)_finishedRotationTest;
@end

@implementation CompassAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [(CompassAppDelegate *)self window:a3];
  v6 = [v5 rootViewController];
  compassController = self->_compassController;
  self->_compassController = v6;

  return 1;
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeStrong(&self->_testName, a4);
  if ([v9 containsString:@"Rotate"])
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_finishedRotationTest" name:@"CompassFinishedRotationTestNotification" object:0];

    v12 = objc_alloc_init(CompassTestOptions);
    if ([v9 isEqualToString:@"RotateWithBearing"])
    {
      [(CompassTestOptions *)v12 setShouldSetBearing:1];
    }

    [(CompassController *)self->_compassController configureForTestingWithOptions:v12];
    v13 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000068E8;
    block[3] = &unk_100014460;
    v17 = v9;
    dispatch_after(v13, &_dispatch_main_q, block);

    v14 = 1;
  }

  else
  {
    v14 = [v8 runTest:v9 options:v10];
  }

  return v14;
}

- (void)_finishedRotationTest
{
  [UIApp finishedTest:self->_testName];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  compassController = self->_compassController;

  [(CompassController *)compassController testCleanup];
}

@end