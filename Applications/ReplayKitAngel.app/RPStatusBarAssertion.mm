@interface RPStatusBarAssertion
- (id)rpLocalizedStatusStringForPaused:(BOOL)paused;
- (id)stringWithTimeInterval:(double)interval;
- (void)invalidateStatusBar;
- (void)pauseSession;
- (void)resumeSession;
- (void)startRepeatingTimer;
- (void)statusBarCoordinator:(id)coordinator invalidatedRegistrationWithError:(id)error;
- (void)updateDelegateRecordingTimer:(id)timer;
@end

@implementation RPStatusBarAssertion

- (void)startRepeatingTimer
{
  self->_totalPausedTime = 0.0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A810;
  block[3] = &unk_10005D098;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)invalidateStatusBar
{
  if (self->_assertion)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: double height status bar assertion released", v6, 2u);
    }

    [(SBSStatusBarStyleOverridesAssertion *)self->_assertion invalidate];
    assertion = self->_assertion;
    self->_assertion = 0;

    [(SBSStatusBarStyleOverridesCoordinator *)self->_coordinator setRegisteredStyleOverrides:0 reply:&stru_10005D3E0];
    coordinator = self->_coordinator;
    self->_coordinator = 0;

    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }

  self->_totalPausedTime = 0.0;
}

- (id)stringWithTimeInterval:(double)interval
{
  v4 = objc_alloc_init(NSDateComponentsFormatter);
  [v4 setUnitsStyle:0];
  [v4 setIncludesApproximationPhrase:0];
  [v4 setIncludesTimeRemainingPhrase:0];
  [v4 setMaximumUnitCount:2];
  if (interval >= 60.0)
  {
    v5 = 240;
  }

  else
  {
    [v4 setZeroFormattingBehavior:0x10000];
    v5 = 192;
  }

  [v4 setAllowedUnits:v5];
  v6 = [v4 stringFromTimeInterval:interval];

  return v6;
}

- (id)rpLocalizedStatusStringForPaused:(BOOL)paused
{
  if (self->_broadcasting)
  {
    if (paused)
    {
      v4 = @"BROADCASTING_PAUSED_STATUS_BAR_FORMAT";
    }

    else
    {
      v4 = @"BROADCASTING_STATUS_BAR_FORMAT";
    }

    v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v4];
    v7 = [NSString stringWithFormat:v6, self->_broadcastServiceName];
  }

  else
  {
    if (paused)
    {
      v5 = @"RECORDING_PAUSED_STATUS_BAR";
    }

    else
    {
      v5 = @"RECORDING_STATUS_BAR";
    }

    v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v5];
  }

  return v7;
}

- (void)updateDelegateRecordingTimer:(id)timer
{
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:self->_timerStartDate];
  v6 = v5 - self->_totalPausedTime;

  assertionDelegate = self->_assertionDelegate;
  v8 = [(RPStatusBarAssertion *)self stringWithTimeInterval:v6];
  [(RPStatusBarAssertionDelegate *)assertionDelegate timerDidUpdate:v8];
}

- (void)statusBarCoordinator:(id)coordinator invalidatedRegistrationWithError:(id)error
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    code = [error code];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: coordinator registartion invalidated with error %li", &v5, 0xCu);
  }
}

- (void)pauseSession
{
  v3 = +[NSDate date];
  timerPauseDate = self->_timerPauseDate;
  self->_timerPauseDate = v3;

  _objc_release_x1();
}

- (void)resumeSession
{
  totalPausedTime = self->_totalPausedTime;
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:self->_timerPauseDate];
  self->_totalPausedTime = totalPausedTime + v4;
}

@end