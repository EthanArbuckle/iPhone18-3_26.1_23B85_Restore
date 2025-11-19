@interface SCATManualDriver
- (BOOL)_handleStepNextAction;
- (void)_idleTimerDidFire;
@end

@implementation SCATManualDriver

- (BOOL)_handleStepNextAction
{
  [(SCATDriver *)self _resetIdleTimer];
  [(SCATDriver *)self _stepToNextFocusContextInDirection:0];
  return 1;
}

- (void)_idleTimerDidFire
{
  v3.receiver = self;
  v3.super_class = SCATManualDriver;
  [(SCATDriver *)&v3 _idleTimerDidFire];
  if ([(SCATDriver *)self _canAutomaticallyPauseScanner])
  {
    [(SCATDriver *)self pauseScanning];
  }
}

@end