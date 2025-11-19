@interface PBAApplication
+ (id)_newApplicationInitializationContext;
- (BOOL)__handleHIDEvent:(__IOHIDEvent *)a3;
- (BOOL)_handlePhysicalButtonEvent:(id)a3;
- (PBAApplication)init;
- (void)_handleHIDEvent:(__IOHIDEvent *)a3;
- (void)_lockButtonDown;
- (void)_lockButtonLongPress;
- (void)_lockButtonUp;
- (void)_smartCoverClosed;
- (void)_smartCoverOpen;
- (void)_startLockButtonTimer;
- (void)setLockButtonTimer:(id)a3;
@end

@implementation PBAApplication

- (PBAApplication)init
{
  v5.receiver = self;
  v5.super_class = PBAApplication;
  v2 = [(PBAApplication *)&v5 init];
  if (v2)
  {
    v3 = +[PBAIdleSleepController sharedController];
    [(PBAApplication *)v2 setIdleSleepController:v3];
  }

  return v2;
}

+ (id)_newApplicationInitializationContext
{
  v2 = +[UISMutableApplicationInitializationContext defaultContext];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [FBSceneWorkspace sceneIdentityTokenForIdentifier:v4 workspaceIdentifier:@"com.apple.preboard"];

  [v2 setDefaultSceneToken:v5];
  return v2;
}

- (BOOL)__handleHIDEvent:(__IOHIDEvent *)a3
{
  if (IOHIDEventGetType() != 3)
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  v6 = IOHIDEventGetIntegerValue();
  v7 = sub_10000A054();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109632;
    v10[1] = IntegerValue;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v6 != 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "usagePage: 0x%x usage: 0x%x downEvent: %d", v10, 0x14u);
  }

  if ((v5 | (IntegerValue << 16)) != 0xC0030)
  {
    if (IntegerValue == 65289)
    {
      SmartCoverStateFromEvent = BKSHIDEventGetSmartCoverStateFromEvent();
      if (SmartCoverStateFromEvent == 3)
      {
        [(PBAApplication *)self _smartCoverClosed];
      }

      else if (SmartCoverStateFromEvent == 1)
      {
        [(PBAApplication *)self _smartCoverOpen];
      }
    }

    return 0;
  }

  if (v6)
  {
    [(PBAApplication *)self _lockButtonDown];
  }

  else
  {
    [(PBAApplication *)self _lockButtonUp];
  }

  return 1;
}

- (void)_handleHIDEvent:(__IOHIDEvent *)a3
{
  if (![(PBAApplication *)self __handleHIDEvent:?])
  {
    v5.receiver = self;
    v5.super_class = PBAApplication;
    [(PBAApplication *)&v5 _handleHIDEvent:a3];
  }
}

- (BOOL)_handlePhysicalButtonEvent:(id)a3
{
  v4 = [a3 _hidEvent];
  if (v4)
  {
    return ![(PBAApplication *)self __handleHIDEvent:v4];
  }

  else
  {
    return 1;
  }
}

- (void)_lockButtonDown
{
  if ([(PBAIdleSleepController *)self->_idleSleepController isDisplayDim])
  {
    idleSleepController = self->_idleSleepController;

    [(PBAIdleSleepController *)idleSleepController resetIdleTimerAndUndim:1];
  }

  else
  {

    [(PBAApplication *)self _startLockButtonTimer];
  }
}

- (void)_lockButtonLongPress
{
  v3 = sub_10000A054();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Shutting down device", v8, 2u);
  }

  v4 = [FBSShutdownOptions alloc];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 initWithReason:v5];

  [v6 setSource:1];
  v7 = +[FBSystemService sharedInstance];
  [v7 shutdownUsingOptions:v6];
}

- (void)_smartCoverOpen
{
  if ([(PBAIdleSleepController *)self->_idleSleepController isDisplayDim])
  {
    idleSleepController = self->_idleSleepController;

    [(PBAIdleSleepController *)idleSleepController resetIdleTimerAndUndim:1];
  }
}

- (void)_smartCoverClosed
{
  if (![(PBAIdleSleepController *)self->_idleSleepController isDisplayDim])
  {
    idleSleepController = self->_idleSleepController;

    [(PBAIdleSleepController *)idleSleepController dimDisplay];
  }
}

- (void)_startLockButtonTimer
{
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_lockButtonLongPress" selector:0 userInfo:0 repeats:10.0];
  [(PBAApplication *)self setLockButtonTimer:v3];
}

- (void)setLockButtonTimer:(id)a3
{
  v5 = a3;
  lockButtonTimer = self->_lockButtonTimer;
  if (lockButtonTimer != v5)
  {
    v7 = v5;
    [(NSTimer *)lockButtonTimer invalidate];
    objc_storeStrong(&self->_lockButtonTimer, a3);
    v5 = v7;
  }

  _objc_release_x1(lockButtonTimer, v5);
}

- (void)_lockButtonUp
{
  v3 = [(PBAApplication *)self lockButtonTimer];

  [(PBAApplication *)self _cancelLockButtonTimer];
  if (v3)
  {
    idleSleepController = self->_idleSleepController;

    [(PBAIdleSleepController *)idleSleepController dimDisplay];
  }
}

@end