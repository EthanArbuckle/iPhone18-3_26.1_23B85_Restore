@interface SCATAutomaticDriver
- (BOOL)_handleSelectAction;
- (BOOL)pauseScanningForPointPickerNumberOfCycles:(unint64_t)cycles;
- (SCATAutomaticDriver)initWithDelegate:(id)delegate;
- (double)focusInterval;
- (id)description;
- (unint64_t)maxAutoscanCycles;
- (void)_autoscanToNextFocusContext;
- (void)_didTransitionToPhase:(int)phase;
- (void)_didWrapInDirection:(int64_t)direction;
- (void)_endAutoscanning;
- (void)_idleTimerDidFire;
- (void)_pauseForMaximumNumberOfCycles;
- (void)_willStepToNextFocusContext:(id)context inDirection:(int64_t)direction;
- (void)actionHandlerDidCancelPendingAction:(id)action;
- (void)actionHandlerDidFireAction:(id)action;
- (void)dealloc;
- (void)outputManager:(id)manager didSpeakFocusContext:(id)context;
- (void)pauseAutoscanning;
- (void)resumeAutoscanning:(BOOL)autoscanning;
- (void)willDrillIntoGroup;
- (void)willDrillOutOfGroup;
- (void)willFinishAsScannerDriver;
@end

@implementation SCATAutomaticDriver

- (SCATAutomaticDriver)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SCATAutomaticDriver;
  v3 = [(SCATDriver *)&v6 initWithDelegate:delegate];
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
  focusTimer = [(SCATAutomaticDriver *)self focusTimer];
  [focusTimer cancel];

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
  focusTimer = [(SCATAutomaticDriver *)self focusTimer];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [focusTimer isPending]);
  focusTimer2 = [(SCATAutomaticDriver *)self focusTimer];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [focusTimer2 isActive]);
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

- (BOOL)pauseScanningForPointPickerNumberOfCycles:(unint64_t)cycles
{
  _canAutomaticallyPauseScanner = [(SCATDriver *)self _canAutomaticallyPauseScanner];
  if (_canAutomaticallyPauseScanner)
  {
    if ([(SCATAutomaticDriver *)self maxAutoscanCycles]<= cycles)
    {
      [(SCATAutomaticDriver *)self _pauseForMaximumNumberOfCycles];
      LOBYTE(_canAutomaticallyPauseScanner) = 1;
    }

    else
    {
      LOBYTE(_canAutomaticallyPauseScanner) = 0;
    }
  }

  return _canAutomaticallyPauseScanner;
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
    activeElementManager = [(SCATDriver *)self activeElementManager];
    numberOfItemsInCurrentScanCycle = [activeElementManager numberOfItemsInCurrentScanCycle];
    unsignedIntegerValue = [numberOfItemsInCurrentScanCycle unsignedIntegerValue];

    if ((unsignedIntegerValue - 1) < 2)
    {
      v9 = v9 + v9;
    }
  }

  return v9;
}

- (unint64_t)maxAutoscanCycles
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchScanCycles = [v2 assistiveTouchScanCycles];

  return assistiveTouchScanCycles;
}

- (void)_didTransitionToPhase:(int)phase
{
  v3 = *&phase;
  if (phase == 1)
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
  focusTimer = [(SCATAutomaticDriver *)self focusTimer];
  [(SCATAutomaticDriver *)self focusInterval];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004722C;
  v4[3] = &unk_1001D3488;
  v4[4] = self;
  [focusTimer afterDelay:v4 processBlock:?];
}

- (void)_endAutoscanning
{
  focusTimer = [(SCATAutomaticDriver *)self focusTimer];
  [focusTimer cancel];

  [(SCATAutomaticDriver *)self setShouldScanToNextFocusContextAfterSpeaking:0];
}

- (void)outputManager:(id)manager didSpeakFocusContext:(id)context
{
  v7.receiver = self;
  v7.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v7 outputManager:manager didSpeakFocusContext:context];
  if ([(SCATAutomaticDriver *)self shouldScanToNextFocusContextAfterSpeaking])
  {
    focusTimer = [(SCATAutomaticDriver *)self focusTimer];
    isPending = [focusTimer isPending];

    if ((isPending & 1) == 0)
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

- (void)_didWrapInDirection:(int64_t)direction
{
  if ([(SCATDriver *)self lastWrapDirection]== direction)
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
  [(SCATDriver *)&v6 _didWrapInDirection:direction];
}

- (void)_idleTimerDidFire
{
  v2.receiver = self;
  v2.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v2 _idleTimerDidFire];
}

- (void)_willStepToNextFocusContext:(id)context inDirection:(int64_t)direction
{
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v26 _willStepToNextFocusContext:contextCopy inDirection:direction];
  selectBehavior = [contextCopy selectBehavior];
  if ([(SCATDriver *)self _canAutomaticallyPauseScanner]&& selectBehavior != 4)
  {
    element = [contextCopy element];
    v25 = 0;
    activeElementManager = [(SCATDriver *)self activeElementManager];
    v10 = activeElementManager;
    if (direction == 1)
    {
      v11 = [activeElementManager lastElementWithOptions:&v25];
      v12 = [element isEqual:v11];

      if ((v12 & 1) == 0)
      {
        parentGroup = [element parentGroup];
        if (!parentGroup || (v14 = parentGroup, [parentGroup lastChild], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(element, "isEqual:", v15), v15, v14, (v16 & 1) == 0))
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
      v17 = [activeElementManager firstElementWithOptions:&v25];
      v18 = [element isEqual:v17];

      if ((v18 & 1) == 0)
      {
        parentGroup2 = [element parentGroup];
        if (!parentGroup2)
        {
          goto LABEL_13;
        }

        v20 = parentGroup2;
        firstChild = [parentGroup2 firstChild];
        v22 = [element isEqual:firstChild];

        if (!v22)
        {
          goto LABEL_13;
        }
      }
    }

    currentCycleCount = [(SCATAutomaticDriver *)self currentCycleCount];
    maxAutoscanCycles = [(SCATAutomaticDriver *)self maxAutoscanCycles];

    if (currentCycleCount >= maxAutoscanCycles)
    {
      [(SCATAutomaticDriver *)self _pauseForMaximumNumberOfCycles];
    }
  }

LABEL_14:
}

- (void)_pauseForMaximumNumberOfCycles
{
  activeElementManager = [(SCATDriver *)self activeElementManager];
  isMenuElementManager = [activeElementManager isMenuElementManager];

  if (isMenuElementManager)
  {
    activeElementManager2 = [(SCATDriver *)self activeElementManager];
    [activeElementManager2 closeCurrentScanningContext];

    [(SCATDriver *)self endScanning];
  }

  else
  {

    [(SCATDriver *)self pauseScanning];
  }
}

- (void)actionHandlerDidFireAction:(id)action
{
  v4.receiver = self;
  v4.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v4 actionHandlerDidFireAction:action];
  [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
}

- (void)actionHandlerDidCancelPendingAction:(id)action
{
  v4.receiver = self;
  v4.super_class = SCATAutomaticDriver;
  [(SCATDriver *)&v4 actionHandlerDidCancelPendingAction:action];
  [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
}

- (void)pauseAutoscanning
{
  [(SCATAutomaticDriver *)self setForcePause:1];

  [(SCATAutomaticDriver *)self _endAutoscanning];
}

- (void)resumeAutoscanning:(BOOL)autoscanning
{
  autoscanningCopy = autoscanning;
  [(SCATAutomaticDriver *)self setForcePause:0];
  if (autoscanningCopy)
  {

    [(SCATAutomaticDriver *)self _autoscanToNextFocusContext];
  }
}

@end