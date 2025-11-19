@interface SCATDwellDriver
- (BOOL)_actuallyHandleSelectAction;
- (BOOL)_handleStepAction:(int64_t)a3;
- (BOOL)_handleStepNextAction;
- (BOOL)_handleStepPreviousAction;
- (BOOL)_shouldUseDwellSelection;
- (BOOL)_shouldUseScanAbortTimer;
- (BOOL)handleInputAction:(id)a3;
- (double)dwellDelay;
- (void)_cancelDwellRelatedTimers;
- (void)_didTransitionToPhase:(int)a3;
- (void)_dwellTimerFired;
- (void)_idleTimerDidFire;
- (void)_resetDwellTimer;
- (void)_scanAbortTimerFired;
- (void)_startDwellTimer;
- (void)_startScanAbortTimer;
- (void)outputManager:(id)a3 didSpeakFocusContext:(id)a4;
@end

@implementation SCATDwellDriver

- (BOOL)handleInputAction:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCATDwellDriver;
  v4 = [(SCATDriver *)&v6 handleInputAction:a3];
  [(SCATDwellDriver *)self _resetDwellTimer];
  return v4;
}

- (BOOL)_actuallyHandleSelectAction
{
  v3.receiver = self;
  v3.super_class = SCATDwellDriver;
  return [(SCATDriver *)&v3 _handleSelectAction];
}

- (BOOL)_handleStepAction:(int64_t)a3
{
  if ([(SCATDwellDriver *)self isReadyForSelect])
  {
    [(SCATDwellDriver *)self _actuallyHandleSelectAction];
  }

  else
  {
    [(SCATDriver *)self _stepToNextFocusContextInDirection:a3];
  }

  return 1;
}

- (BOOL)_handleStepNextAction
{
  if ([(SCATDwellDriver *)self _shouldUseDwellSelection])
  {

    return [(SCATDwellDriver *)self _handleStepAction:0];
  }

  else
  {

    return [(SCATDwellDriver *)self _actuallyHandleSelectAction];
  }
}

- (BOOL)_handleStepPreviousAction
{
  if ([(SCATDwellDriver *)self _shouldUseDwellSelection])
  {

    return [(SCATDwellDriver *)self _handleStepAction:1];
  }

  else
  {

    return [(SCATDwellDriver *)self _actuallyHandleSelectAction];
  }
}

- (BOOL)_shouldUseDwellSelection
{
  v2 = [(SCATDriver *)self activeElementManager];
  v3 = [v2 allowsDwellSelection];

  return v3;
}

- (BOOL)_shouldUseScanAbortTimer
{
  v3 = [(SCATDriver *)self focusContext];
  v4 = [v3 element];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCATDriver *)self focusContext];
    v6 = [v5 element];
    v7 = [v6 allowsDwellScanningToAbortAfterTimeout];

    if (v7)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v5 = [(SCATDriver *)self activeElementManager];
  if ([v5 allowsDwellScanningToAbortAfterTimeout])
  {
    v8 = 1;
LABEL_6:
    v9 = [(SCATDriver *)self focusContext];
    v10 = [v9 selectBehavior] != 4;

    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

LABEL_10:
  return v10;
}

- (void)_idleTimerDidFire
{
  if (![(SCATDwellDriver *)self _shouldUseDwellSelection]&& [(SCATDriver *)self _canAutomaticallyPauseScanner])
  {

    [(SCATDriver *)self endScanning];
  }
}

- (void)_didTransitionToPhase:(int)a3
{
  v4.receiver = self;
  v4.super_class = SCATDwellDriver;
  [(SCATDriver *)&v4 _didTransitionToPhase:*&a3];
  [(SCATDwellDriver *)self _resetDwellTimer];
}

- (void)_resetDwellTimer
{
  if ([(SCATDriver *)self isActive]&& [(SCATDwellDriver *)self _shouldUseDwellSelection])
  {

    [(SCATDwellDriver *)self _startDwellTimer];
  }

  else
  {

    [(SCATDwellDriver *)self _cancelDwellRelatedTimers];
  }
}

- (void)_startDwellTimer
{
  [(SCATDwellDriver *)self _cancelDwellRelatedTimers];
  [(SCATDwellDriver *)self dwellDelay];

  [(SCATDwellDriver *)self performSelector:"_dwellTimerFired" withObject:0 afterDelay:?];
}

- (void)_startScanAbortTimer
{
  [(SCATDwellDriver *)self _cancelDwellRelatedTimers];
  [(SCATDwellDriver *)self setIsReadyForSelect:1];
  v3 = [(SCATDriver *)self delegate];
  [v3 driver:self indicateDwellScanningWillAbort:1];

  v4 = +[AXSettings sharedInstance];
  [v4 assistiveTouchScanTimeout];
  [(SCATDwellDriver *)self performSelector:"_scanAbortTimerFired" withObject:0 afterDelay:?];
}

- (void)_dwellTimerFired
{
  if ([(SCATDwellDriver *)self _shouldUseScanAbortTimer])
  {

    [(SCATDwellDriver *)self _startScanAbortTimer];
  }

  else
  {
    [(SCATDwellDriver *)self _actuallyHandleSelectAction];

    [(SCATDwellDriver *)self _resetDwellTimer];
  }
}

- (void)_scanAbortTimerFired
{
  if (![(SCATDriver *)self isSpeakingFocusContext])
  {
    [(SCATDwellDriver *)self _cancelDwellRelatedTimers];
    if ([(SCATDriver *)self _canAutomaticallyPauseScanner])
    {

      [(SCATDriver *)self endScanning];
    }
  }
}

- (void)_cancelDwellRelatedTimers
{
  [(SCATDwellDriver *)self setIsReadyForSelect:0];
  v3 = [(SCATDriver *)self delegate];
  [v3 driver:self indicateDwellScanningWillAbort:0];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_dwellTimerFired" object:0];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_scanAbortTimerFired" object:0];
}

- (double)dwellDelay
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 assistiveTouchDelayAfterInputEnabled] && (-[SCATDriver focusContext](self, "focusContext"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isFirstInSequence"), v4, v5))
  {
    [v3 switchControlDwellTime];
    v7 = v6;
    [v3 assistiveTouchDelayAfterInput];
    v9 = v7 + v8;
  }

  else
  {
    [v3 switchControlDwellTime];
    v9 = v10;
  }

  return v9;
}

- (void)outputManager:(id)a3 didSpeakFocusContext:(id)a4
{
  v6.receiver = self;
  v6.super_class = SCATDwellDriver;
  [(SCATDriver *)&v6 outputManager:a3 didSpeakFocusContext:a4];
  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchScanTimeout];
  [(SCATDwellDriver *)self performSelector:"_scanAbortTimerFired" withObject:0 afterDelay:?];
}

@end