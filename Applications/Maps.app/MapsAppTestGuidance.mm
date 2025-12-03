@interface MapsAppTestGuidance
- (BOOL)_testIsStepping;
- (BOOL)runTest;
- (MapsAppTestGuidance)initWithApplication:(id)application testName:(id)name options:(id)options;
- (id)_subTestNameForGoingToGuidanceStep:(int64_t)step forSwipeCount:(int64_t)count;
- (void)_doAfterSubTestForShowingSign;
- (void)_endGuidanceNavOrSteppingMode;
- (void)_enterGuidanceNavOrSteppingMode;
- (void)_gotoNextStepAfterDelay:(double)delay;
- (void)_guidanceOrSteppingDidShowFirstSign;
- (void)_runPlayWithTraySubtest;
- (void)_steppingSignDidChange;
- (void)cleanup:(BOOL)cleanup;
- (void)willUpdateNavigationSign;
@end

@implementation MapsAppTestGuidance

- (BOOL)_testIsStepping
{
  testName = [(MapsAppTest *)self testName];
  if ([testName hasPrefix:@"guidanceStepping"])
  {
    v4 = 1;
  }

  else
  {
    testName2 = [(MapsAppTest *)self testName];
    v4 = [testName2 hasSuffix:@"transit"];
  }

  return v4;
}

- (void)_runPlayWithTraySubtest
{
  v3 = sub_100798744();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsAppTestGuidance - _runPlayWithTraySubtest", buf, 2u);
  }

  if ([(MapsAppTest *)self canUpdateTrayLayout])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100B21030;
    v4[3] = &unk_101661B18;
    v4[4] = self;
    [(MapsAppTest *)self updateTrayLayout:[(MapsAppTestGuidance *)self expandedTrayLayout] withSubtestName:@"NavigationExpandTray" animated:1 completion:v4];
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)_endGuidanceNavOrSteppingMode
{
  v3 = sub_100798744();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsAppTestGuidance - _endGuidanceNavOrSteppingMode", v5, 2u);
  }

  [(MapsAppTest *)self finishedSubTest:@"guidanceAfterFirstStepShown"];
  [(MapsAppTest *)self startedSubTest:@"guidanceEnd"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEndNavigation];
}

- (void)_doAfterSubTestForShowingSign
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B21240;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)_steppingSignDidChange
{
  v3 = sub_100798744();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsAppTestGuidance - _steppingSignDidChange", buf, 2u);
  }

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestCurrentStepIndex = [testCoordinator pptTestCurrentStepIndex];

  swipeCount = [(MapsAppTestGuidance *)self swipeCount];
  v7 = [(MapsAppTestGuidance *)self _subTestNameForGoingToGuidanceStep:pptTestCurrentStepIndex forSwipeCount:swipeCount];
  objc_initWeak(buf, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B213B4;
  v9[3] = &unk_10164D638;
  objc_copyWeak(v11, buf);
  v8 = v7;
  v10 = v8;
  v11[1] = swipeCount;
  v11[2] = pptTestCurrentStepIndex;
  [(MapsAppTest *)self addFullyDrawnCallback:v9];

  objc_destroyWeak(v11);
  objc_destroyWeak(buf);
}

- (void)_gotoNextStepAfterDelay:(double)delay
{
  v5 = sub_100798744();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsAppTestGuidance - _gotoNextStep", buf, 2u);
  }

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestCurrentStepIndex = [testCoordinator pptTestCurrentStepIndex];
  if ([testCoordinator pptTestHasNextStep])
  {
    if (pptTestCurrentStepIndex >= [(MapsAppTestGuidance *)self swipeCount])
    {
      [(MapsAppTest *)self failedTest];
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100B2168C;
      v12[3] = &unk_101650D20;
      v12[4] = self;
      [PPTNotificationCenter addOnceObserverForName:@"MapsTestingSteppingSignDidChange" object:0 usingBlock:v12];
      v8 = dispatch_time(0, (delay * 1000000000.0));
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100B21694;
      v9[3] = &unk_10165E668;
      v11 = pptTestCurrentStepIndex;
      v9[4] = self;
      v10 = testCoordinator;
      dispatch_after(v8, &_dispatch_main_q, v9);
    }
  }

  else
  {
    [(MapsAppTestGuidance *)self _doAfterSubTestForShowingSign];
  }
}

- (void)willUpdateNavigationSign
{
  v3 = sub_100798744();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsAppTestGuidance - willUpdateNavigationSign", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B217F4;
  v4[3] = &unk_101650D20;
  v4[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"MapsPPTGuidanceDidUpdateNotifcation" object:0 usingBlock:v4];
  [(MapsAppTest *)self startedSubTest:@"guidanceMakeTurn"];
}

- (void)_guidanceOrSteppingDidShowFirstSign
{
  v3 = sub_100798744();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsAppTestGuidance - _guidanceOrSteppingDidShowFirstSign", buf, 2u);
  }

  if ([(MapsAppTestGuidance *)self _testIsStepping])
  {
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    if ([testCoordinator pptTestSupportStepping] && objc_msgSend(testCoordinator, "pptTestHasNextStep"))
    {
      [(MapsAppTestGuidance *)self _gotoNextStepAfterDelay:2.0];
    }

    else
    {
      [(MapsAppTestGuidance *)self _doAfterSubTestForShowingSign];
    }
  }

  else
  {
    [(MapsAppTest *)self startedSubTest:@"guidanceAfterFirstStepShown"];
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_doAfterSubTestForShowingSign" selector:0 userInfo:0 repeats:3.0];
    guidanceTimer = self->_guidanceTimer;
    self->_guidanceTimer = v5;

    objc_initWeak(buf, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100B219E8;
    v7[3] = &unk_10165FBE8;
    objc_copyWeak(&v8, buf);
    [PPTNotificationCenter addOnceObserverForName:@"MapsPPTGuidanceWillUpdateNotifcation" object:0 usingBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (id)_subTestNameForGoingToGuidanceStep:(int64_t)step forSwipeCount:(int64_t)count
{
  if (count == step)
  {
    v6 = @"gotoStep_Last";
  }

  else
  {
    v6 = [NSString stringWithFormat:@"%@%ld", @"gotoStep_", step, v4];
  }

  return v6;
}

- (void)_enterGuidanceNavOrSteppingMode
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B21B8C;
  v4[3] = &unk_101650D20;
  v4[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"MapsTestingMapsRegionUpdatedWithGuidanceStep" object:0 usingBlock:v4];
  [(MapsAppTest *)self startedSubTest:@"guidanceStartToFirstStepShown"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestStartNavigation];
}

- (BOOL)runTest
{
  if ([(MapsAppTest *)self isRunningOnCarPlay])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100B21D78;
    v8[3] = &unk_101650D20;
    v8[4] = self;
    [PPTNotificationCenter addOnceObserverForName:@"MapsTestingDidEndGuidanceOrStepping" object:0 usingBlock:v8];
    v7.receiver = self;
    v7.super_class = MapsAppTestGuidance;
    return [(MapsAppTestRoute *)&v7 runTest];
  }

  else
  {
    [(MapsAppTest *)self setupForVKTest];
    [(MapsAppTestRoute *)self registerGEOSubtestsForRouting];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100B21DBC;
    v6[3] = &unk_101650D20;
    v6[4] = self;
    [PPTNotificationCenter addOnceObserverForName:@"MapsTestingDidEndGuidanceOrStepping" object:0 usingBlock:v6];
    v4 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B21E00;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
    return 1;
  }
}

- (void)cleanup:(BOOL)cleanup
{
  if ([(NSTimer *)self->_guidanceTimer isValid])
  {
    [(NSTimer *)self->_guidanceTimer invalidate];
    guidanceTimer = self->_guidanceTimer;
    self->_guidanceTimer = 0;
  }
}

- (MapsAppTestGuidance)initWithApplication:(id)application testName:(id)name options:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = MapsAppTestGuidance;
  v9 = [(MapsAppTest *)&v11 initWithApplication:application testName:name options:optionsCopy];
  if (v9)
  {
    v9->_swipeCount = [optionsCopy _mapstest_guidanceStepSwipeCount];
  }

  return v9;
}

@end