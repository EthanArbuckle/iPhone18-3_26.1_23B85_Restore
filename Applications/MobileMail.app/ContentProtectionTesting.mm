@interface ContentProtectionTesting
+ (id)sharedInstance;
- (void)_invalidateLockTimer;
- (void)_lockTimerFired:(id)a3;
- (void)_simulateContentProtectionState:(int64_t)a3;
- (void)disableContentProtection;
- (void)toggleLockState;
@end

@implementation ContentProtectionTesting

+ (id)sharedInstance
{
  if (qword_1006DCDE8 != -1)
  {
    sub_100482C98();
  }

  v3 = qword_1006DCDE0;

  return v3;
}

- (void)toggleLockState
{
  ObservedState = EFContentProtectionGetObservedState();
  if (ObservedState == 3)
  {
    [(ContentProtectionTesting *)self _simulateContentProtectionState:0];
    ObservedState = EFContentProtectionGetObservedState();
  }

  if (ObservedState == 2)
  {
    [(ContentProtectionTesting *)self _invalidateLockTimer];
    goto LABEL_8;
  }

  if (ObservedState == 1)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (ObservedState)
  {
    return;
  }

  v4 = [NSTimer timerWithTimeInterval:self target:"_lockTimerFired:" selector:0 userInfo:0 repeats:10.0];
  lockTimer = self->_lockTimer;
  self->_lockTimer = v4;

  v6 = +[NSRunLoop currentRunLoop];
  [v6 addTimer:self->_lockTimer forMode:NSRunLoopCommonModes];

  v7 = 2;
LABEL_9:

  [(ContentProtectionTesting *)self _simulateContentProtectionState:v7];
}

- (void)disableContentProtection
{
  [(ContentProtectionTesting *)self _invalidateLockTimer];

  [(ContentProtectionTesting *)self _simulateContentProtectionState:3];
}

- (void)_lockTimerFired:(id)a3
{
  if (self->_lockTimer == a3)
  {
    if (EFContentProtectionGetObservedState() == 2)
    {
      [(ContentProtectionTesting *)self _simulateContentProtectionState:1];
    }

    [(ContentProtectionTesting *)self _invalidateLockTimer];
  }
}

- (void)_invalidateLockTimer
{
  [(NSTimer *)self->_lockTimer invalidate];
  lockTimer = self->_lockTimer;
  self->_lockTimer = 0;
}

- (void)_simulateContentProtectionState:(int64_t)a3
{
  if (a3 > 3)
  {
    v4 = @"invalid";
  }

  else
  {
    v4 = off_10064C730[a3];
  }

  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:a3];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Simulating Content Protection state: %@ (%@)", &v7, 0x16u);
  }

  EFContentProtectionSimulateState();
}

@end