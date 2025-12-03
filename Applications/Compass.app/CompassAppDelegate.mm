@interface CompassAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (void)_finishedRotationTest;
@end

@implementation CompassAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [(CompassAppDelegate *)self window:application];
  rootViewController = [v5 rootViewController];
  compassController = self->_compassController;
  self->_compassController = rootViewController;

  return 1;
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  applicationCopy = application;
  testCopy = test;
  optionsCopy = options;
  objc_storeStrong(&self->_testName, test);
  if ([testCopy containsString:@"Rotate"])
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_finishedRotationTest" name:@"CompassFinishedRotationTestNotification" object:0];

    v12 = objc_alloc_init(CompassTestOptions);
    if ([testCopy isEqualToString:@"RotateWithBearing"])
    {
      [(CompassTestOptions *)v12 setShouldSetBearing:1];
    }

    [(CompassController *)self->_compassController configureForTestingWithOptions:v12];
    v13 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000068E8;
    block[3] = &unk_100014460;
    v17 = testCopy;
    dispatch_after(v13, &_dispatch_main_q, block);

    v14 = 1;
  }

  else
  {
    v14 = [applicationCopy runTest:testCopy options:optionsCopy];
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