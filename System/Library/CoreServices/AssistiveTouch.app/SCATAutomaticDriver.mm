@interface SCATAutomaticDriver
- (BOOL)_handleSelectAction;
- (BOOL)pauseScanningForPointPickerNumberOfCycles:(unint64_t)a3;
- (SCATAutomaticDriver)initWithDelegate:(id)a3;
- (double)focusInterval;
- (id)description;
- (unint64_t)maxAutoscanCycles;
- (void)_autoscanToNextFocusContext;
- (void)_didTransitionToPhase:(int)a3;
- (void)_didWrapInDirection:(int64_t)a3;
- (void)_endAutoscanning;
- (void)_idleTimerDidFire;
- (void)_pauseForMaximumNumberOfCycles;
- (void)_willStepToNextFocusContext:(id)a3 inDirection:(int64_t)a4;
- (void)actionHandlerDidCancelPendingAction:(id)a3;
- (void)actionHandlerDidFireAction:(id)a3;
- (void)dealloc;
- (void)outputManager:(id)a3 didSpeakFocusContext:(id)a4;
- (void)pauseAutoscanning;
- (void)resumeAutoscanning:(BOOL)a3;
- (void)willDrillIntoGroup;
- (void)willDrillOutOfGroup;
- (void)willFinishAsScannerDriver;
@end

@implementation SCATAutomaticDriver

- (SCATAutomaticDriver)initWithDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCATAutomaticDriver;
  v3 = [(SCATDriver *)&v6 initWithDelegate:a3];
  if (v3)
  {
    v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [v4 setLabel:@"FocusTimer"];
    [v4 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(SCATAutomaticDriver *)v3 setFocusTimer:v4];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(SCATAutomaticDriver *)self focusTimer];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v4 dealloc];
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = SCATAutomaticDriver;
  v3 = [(SCATDriver *)&v11 description];
  v4 = [NSNumber numberWithInteger:[(SCATAutomaticDriver *)self currentCycleCount]];
  v5 = [(SCATAutomaticDriver *)self focusTimer];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isPending]);
  v7 = [(SCATAutomaticDriver *)self focusTimer];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isActive]);
  v9 = [NSString stringWithFormat:@"%@ cycle:%@ focusTimer:p%@:a%@", v3, v4, v6, v8];

  return v9;
}

- (void)willFinishAsScannerDriver
{
  [(SCATAutomaticDriver *)self _endAutoscanning];
  v3.receiver = self;
  v3.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v3 willFinishAsScannerDriver];
}

- (void)willDrillIntoGroup
{
  [(SCATAutomaticDriver *)self setCurrentCycleCount:0];

  [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
}

- (void)willDrillOutOfGroup
{
  [(SCATAutomaticDriver *)self setCurrentCycleCount:0];

  [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
}

- (BOOL)pauseScanningForPointPickerNumberOfCycles:(unint64_t)a3
{
  v5 = [(SCATDriver *)self _canAutomaticallyPauseScanner];
  if (v5)
  {
    if ([(SCATAutomaticDriver *)self maxAutoscanCycles]<= a3)
    {
      [(SCATAutomaticDriver *)self _pauseForMaximumNumberOfCycles];
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (double)focusInterval
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 assistiveTouchDelayAfterInputEnabled] && (-[SCATDriver focusContext](self, "focusContext"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isFirstInSequence"), v4, v5))
  {
    [v3 assistiveTouchStepInterval];
    v7 = v6;
    [v3 assistiveTouchDelayAfterInput];
    v9 = v7 + v8;
  }

  else
  {
    [v3 assistiveTouchStepInterval];
    v9 = v10;
  }

  if (v9 < 0.4)
  {
    v11 = [(SCATDriver *)self activeElementManager];
    v12 = [v11 numberOfItemsInCurrentScanCycle];
    v13 = [v12 unsignedIntegerValue];

    if ((v13 - 1) < 2)
    {
      v9 = v9 + v9;
    }
  }

  return v9;
}

- (unint64_t)maxAutoscanCycles
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScanCycles];

  return v3;
}

- (void)_didTransitionToPhase:(int)a3
{
  v3 = *&a3;
  if (a3 == 1)
  {
    [(SCATAutomaticDriver *)self setCurrentCycleCount:0];
    [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
  }

  else
  {
    [(SCATAutomaticDriver *)self _endAutoscanning];
  }

  v5.receiver = self;
  v5.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v5 _didTransitionToPhase:v3];
}

- (void)_autoscanToNextFocusContext
{
  v3 = [(SCATAutomaticDriver *)self focusTimer];
  [(SCATAutomaticDriver *)self focusInterval];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004722C;
  v4[3] = &unk_1001D3488;
  v4[4] = self;
  [v3 afterDelay:v4 processBlock:?];
}

- (void)_endAutoscanning
{
  v3 = [(SCATAutomaticDriver *)self focusTimer];
  [v3 cancel];

  [(SCATAutomaticDriver *)self setShouldScanToNextFocusContextAfterSpeaking:0];
}

- (void)outputManager:(id)a3 didSpeakFocusContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v7 outputManager:a3 didSpeakFocusContext:a4];
  if ([(SCATAutomaticDriver *)self shouldScanToNextFocusContextAfterSpeaking])
  {
    v5 = [(SCATAutomaticDriver *)self focusTimer];
    v6 = [v5 isPending];

    if ((v6 & 1) == 0)
    {
      [(SCATDriver *)self _stepToNextFocusContextInDirection:0];
      [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
    }

    [(SCATAutomaticDriver *)self setShouldScanToNextFocusContextAfterSpeaking:0];
  }
}

- (BOOL)_handleSelectAction
{
  [(SCATAutomaticDriver *)self _endAutoscanning];
  v4.receiver = self;
  v4.super_class = SCATAutomaticDriver;
  return [(SCATDriver *)&v4 _handleSelectAction];
}

- (void)_didWrapInDirection:(int64_t)a3
{
  if ([(SCATDriver *)self lastWrapDirection]== a3)
  {
    v5 = [(SCATAutomaticDriver *)self currentCycleCount]+ 1;
  }

  else
  {
    v5 = 0;
  }

  [(SCATAutomaticDriver *)self setCurrentCycleCount:v5];
  v6.receiver = self;
  v6.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v6 _didWrapInDirection:a3];
}

- (void)_idleTimerDidFire
{
  v2.receiver = self;
  v2.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v2 _idleTimerDidFire];
}

- (void)_willStepToNextFocusContext:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v26 _willStepToNextFocusContext:v6 inDirection:a4];
  v7 = [v6 selectBehavior];
  if ([(SCATDriver *)self _canAutomaticallyPauseScanner]&& v7 != 4)
  {
    v8 = [v6 element];
    v25 = 0;
    v9 = [(SCATDriver *)self activeElementManager];
    v10 = v9;
    if (a4 == 1)
    {
      v11 = [v9 lastElementWithOptions:&v25];
      v12 = [v8 isEqual:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [v8 parentGroup];
        if (!v13 || (v14 = v13, [v13 lastChild], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v8, "isEqual:", v15), v15, v14, (v16 & 1) == 0))
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
      v17 = [v9 firstElementWithOptions:&v25];
      v18 = [v8 isEqual:v17];

      if ((v18 & 1) == 0)
      {
        v19 = [v8 parentGroup];
        if (!v19)
        {
          goto LABEL_13;
        }

        v20 = v19;
        v21 = [v19 firstChild];
        v22 = [v8 isEqual:v21];

        if (!v22)
        {
          goto LABEL_13;
        }
      }
    }

    v23 = [(SCATAutomaticDriver *)self currentCycleCount];
    v24 = [(SCATAutomaticDriver *)self maxAutoscanCycles];

    if (v23 >= v24)
    {
      [(SCATAutomaticDriver *)self _pauseForMaximumNumberOfCycles];
    }
  }

LABEL_14:
}

- (void)_pauseForMaximumNumberOfCycles
{
  v3 = [(SCATDriver *)self activeElementManager];
  v4 = [v3 isMenuElementManager];

  if (v4)
  {
    v5 = [(SCATDriver *)self activeElementManager];
    [v5 closeCurrentScanningContext];

    [(SCATDriver *)self endScanning];
  }

  else
  {

    [(SCATDriver *)self pauseScanning];
  }
}

- (void)actionHandlerDidFireAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v4 actionHandlerDidFireAction:a3];
  [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
}

- (void)actionHandlerDidCancelPendingAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v4 actionHandlerDidCancelPendingAction:a3];
  [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
}

- (void)pauseAutoscanning
{
  [(SCATAutomaticDriver *)self setForcePause:1];

  [(SCATAutomaticDriver *)self _endAutoscanning];
}

- (void)resumeAutoscanning:(BOOL)a3
{
  v3 = a3;
  [(SCATAutomaticDriver *)self setForcePause:0];
  if (v3)
  {

    [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
  }
}

@end