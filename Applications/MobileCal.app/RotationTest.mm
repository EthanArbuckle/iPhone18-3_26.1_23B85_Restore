@interface RotationTest
- (RotationTest)initWithApplication:(id)application model:(id)model options:(id)options;
- (id)_subTestNameForTargetInterfaceOrientation:(int64_t)orientation;
- (void)_finishTest;
- (void)_rotationAnimationCompleted:(id)completed;
- (void)_rotationAnimationStarted:(id)started;
- (void)_rotationTest;
- (void)_setupViewToDate:(id)date;
- (void)_startTest;
- (void)runTest;
@end

@implementation RotationTest

- (id)_subTestNameForTargetInterfaceOrientation:(int64_t)orientation
{
  if (orientation == 1)
  {
    return @"RotateToPortrait";
  }

  else
  {
    return @"RotateToLandscape";
  }
}

- (RotationTest)initWithApplication:(id)application model:(id)model options:(id)options
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = RotationTest;
  v9 = [(ApplicationTest *)&v15 initWithApplication:application model:model options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:@"iterations"];
    v11 = v10;
    if (v10)
    {
      v9->_iterations = [v10 integerValue];
    }

    else
    {
      v9->_inputInvalid = 1;
    }

    rotationAnimationStartedNotificationName = [(RotationTest *)v9 rotationAnimationStartedNotificationName];
    if (rotationAnimationStartedNotificationName)
    {
      rotationAnimationCompleteNotificationName = [(RotationTest *)v9 rotationAnimationCompleteNotificationName];
      v9->_useNotifications = rotationAnimationCompleteNotificationName != 0;
    }

    else
    {
      v9->_useNotifications = 0;
    }
  }

  return v9;
}

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  checkTestPreconditions = [(RotationTest *)self checkTestPreconditions];
  testName = [objc_opt_class() testName];
  if (self->_inputInvalid)
  {
    [application startedTest:testName];
    [application failedTest:testName withFailure:@"input invalid was marked as true when trying to run test"];
  }

  else if (checkTestPreconditions)
  {
    v6 = [NSString stringWithFormat:@"Test precondition not met: %@", checkTestPreconditions];
    [application startedTest:testName];
    [application failedTest:testName withFailure:v6];
  }

  else
  {
    extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
    model = [(ApplicationTest *)self model];
    v15 = extractInitialDateOption;
    [model setSelectedDate:extractInitialDateOption];

    application2 = [(ApplicationTest *)self application];
    rootNavigationController = [application2 rootNavigationController];
    view = [rootNavigationController view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    if ((interfaceOrientation - 1) > 1)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100057070;
      v16[3] = &unk_10020EB98;
      v16[4] = self;
      [UIApp rotateIfNeeded:1 completion:v16];
    }

    else
    {
      [(RotationTest *)self _startTest];
    }
  }
}

- (void)_startTest
{
  testName = [objc_opt_class() testName];
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  [(RotationTest *)self _setupViewToDate:extractInitialDateOption];
  v5 = dispatch_time(0, 4000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005715C;
  v7[3] = &unk_10020EC68;
  v7[4] = self;
  v8 = testName;
  v6 = testName;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)_finishTest
{
  testName = [objc_opt_class() testName];
  application = [(ApplicationTest *)self application];
  [application finishedTest:testName waitForCommit:1 extraResults:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)_rotationTest
{
  if (self->_iterations)
  {
    application = [(ApplicationTest *)self application];
    rootNavigationController = [application rootNavigationController];
    view = [rootNavigationController view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    if ((interfaceOrientation - 3) < 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 4;
    }

    --self->_iterations;
    self->_currentTargetOrientation = v9;
    testName = [objc_opt_class() testName];
    if (self->_useNotifications)
    {
      application2 = [(ApplicationTest *)self application];
      delaySubTestName = [(RotationTest *)self delaySubTestName];
      [application2 startedSubTest:delaySubTestName forTest:testName];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000574C8;
    v13[3] = &unk_10020EB98;
    v13[4] = self;
    [UIApp rotateIfNeeded:v9 completion:v13];
  }

  else
  {

    [(RotationTest *)self _finishTest];
  }
}

- (void)_rotationAnimationStarted:(id)started
{
  testName = [objc_opt_class() testName];
  v4 = [(RotationTest *)self _subTestNameForTargetInterfaceOrientation:self->_currentTargetOrientation];
  application = [(ApplicationTest *)self application];
  delaySubTestName = [(RotationTest *)self delaySubTestName];
  [application finishedSubTest:delaySubTestName forTest:testName waitForCommit:0];

  application2 = [(ApplicationTest *)self application];
  [application2 startedSubTest:v4 forTest:testName];
}

- (void)_rotationAnimationCompleted:(id)completed
{
  testName = [objc_opt_class() testName];
  v5 = [(RotationTest *)self _subTestNameForTargetInterfaceOrientation:self->_currentTargetOrientation];
  application = [(ApplicationTest *)self application];
  [application finishedSubTest:v5 forTest:testName waitForCommit:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057710;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToYearView = [rootNavigationController resetToYearView];

  date = [dateCopy date];

  [resetToYearView showDate:date animated:0];
}

@end