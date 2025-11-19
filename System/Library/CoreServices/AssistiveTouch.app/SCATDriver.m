@interface SCATDriver
- (BOOL)_canAutomaticallyPauseScanner;
- (BOOL)_fireSelectActionWithCount:(unint64_t)a3 preferrsMenuOnFirstPress:(BOOL)a4;
- (BOOL)_handleActivateAction;
- (BOOL)_handleSelectAction;
- (BOOL)_handleSelectAndResumeAutoscanningAction;
- (BOOL)_shouldFocusToEscapeParentGroup:(id)a3 elementManager:(id)a4;
- (BOOL)actionHandler:(id)a3 shouldActImmediatelyOnActionCount:(unint64_t)a4;
- (BOOL)handleInputAction:(id)a3;
- (BOOL)isActiveScannerDriver;
- (BOOL)isGroupingEnabled;
- (BOOL)isSpeakingFocusContext;
- (BOOL)pauseScanningForPointPickerNumberOfCycles:(unint64_t)a3;
- (NSString)description;
- (SCATDriver)init;
- (SCATDriver)initWithDelegate:(id)a3;
- (SCATDriverDelegate)delegate;
- (SCATElementManager)activeElementManager;
- (id)_drillOutFocusContextForParentGroupOfFocusContext:(id)a3;
- (id)_focusContextAdjacentToSource:(int)a3 direction:(int64_t)a4 fromContext:(id)a5 checkedSources:(unint64_t)a6;
- (id)_focusContextForSource:(int)a3 inDirection:(int64_t)a4 currentContext:(id)a5;
- (id)_focusContextFromPrimaryContext:(id)a3 inDirection:(int64_t)a4 didWrap:(BOOL *)a5;
- (id)firstFocusContext;
- (id)nextFocusContextFromContext:(id)a3 inDirection:(int64_t)a4 didWrap:(BOOL *)a5;
- (id)selectActionHandler;
- (id)selectAndResumeAutoscanningActionHandler;
- (int)_preferredBehaviorForSelectCount:(unint64_t)a3 focusContext:(id)a4;
- (void)_cancelIdleTimer;
- (void)_didTransitionToPhase:(int)a3;
- (void)_resetIdleTimer;
- (void)_sendItemScanInformation:(BOOL)a3;
- (void)_setupDeviceMonitor;
- (void)_stepToNextFocusContextInDirection:(int64_t)a3;
- (void)actionHandlerDidFireAction:(id)a3;
- (void)beginScanningWithFocusContext:(id)a3;
- (void)continueScanningWithFocusContext:(id)a3;
- (void)dealloc;
- (void)endScanning;
- (void)handleDrillInOnGroup:(id)a3 elementManager:(id)a4;
- (void)handleDrillOutOnGroup:(id)a3 elementManager:(id)a4;
- (void)outputManager:(id)a3 didSpeakFocusContext:(id)a4;
- (void)outputManager:(id)a3 willSpeakFocusContext:(id)a4;
- (void)pauseScanning;
- (void)resumeScanning;
- (void)selectItemWithIndex:(int64_t)a3;
- (void)setFocusContext:(id)a3;
@end

@implementation SCATDriver

- (SCATDriver)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SCATDriver;
  v5 = [(SCATDriver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_phase = 0;
    v7 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    idleTimer = v6->_idleTimer;
    v6->_idleTimer = v7;

    [(AXDispatchTimer *)v6->_idleTimer setLabel:@"Idle"];
    [(AXDispatchTimer *)v6->_idleTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    if (AXDeviceSupportsTadmor())
    {
      [(SCATDriver *)v6 _setupDeviceMonitor];
    }
  }

  return v6;
}

- (void)dealloc
{
  [(AXDeviceMonitor *)self->_deviceMonitor invalidate];
  v3.receiver = self;
  v3.super_class = SCATDriver;
  [(SCATDriver *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSNumber numberWithBool:[(SCATDriver *)self hasIdleTimeExpired]];
  v6 = [(SCATDriver *)self activeElementManager];
  v7 = [NSNumber numberWithBool:[(SCATDriver *)self isActiveScannerDriver]];
  v8 = [(SCATDriver *)self focusContext];
  v9 = [NSString stringWithFormat:@"%@<%p>. idleTimeExpired:%@ ActiveManager:(%@) isActiveDriver:%@ FocusContext:(%@)", v4, self, v5, v6, v7, v8];

  return v9;
}

- (void)setFocusContext:(id)a3
{
  v5 = a3;
  p_focusContext = &self->_focusContext;
  if (self->_focusContext != v5)
  {
    v27 = v5;
    v7 = [(SCATDriver *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SCATDriver *)self delegate];
      [v9 driver:self willFocusOnContext:v27];
    }

    v10 = [(SCATFocusContext *)v27 elementManager];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(SCATFocusContext *)v27 elementManager];
      [v12 driver:self willFocusOnContext:v27];
    }

    v13 = [(SCATDriver *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(SCATDriver *)self delegate];
      [v15 driver:self willUnfocusFromContext:self->_focusContext];
    }

    v16 = [(SCATFocusContext *)*p_focusContext elementManager];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(SCATFocusContext *)self->_focusContext elementManager];
      [v18 driver:self willUnfocusFromContext:self->_focusContext];
    }

    v19 = [(SCATFocusContext *)*p_focusContext element];
    if ([v19 scatIndicatesOwnFocus] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v19 scatDidBecomeFocused:0];
    }

    v20 = [(SCATDriver *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(SCATDriver *)self delegate];
      [v22 driver:self didFocusOnContext:v27 oldContext:self->_focusContext];
    }

    v23 = [(SCATFocusContext *)v27 elementManager];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(SCATFocusContext *)v27 elementManager];
      [v25 driver:self didFocusOnContext:v27 oldContext:self->_focusContext];
    }

    objc_storeStrong(&self->_focusContext, a3);
    v26 = [(SCATFocusContext *)v27 element];
    if ([v26 scatIndicatesOwnFocus] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v26 scatDidBecomeFocused:1];
    }

    v5 = v27;
  }
}

- (SCATElementManager)activeElementManager
{
  v3 = [(SCATDriver *)self delegate];
  v4 = [v3 activeElementManagerForDriver:self];

  return v4;
}

- (BOOL)isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchGroupElementsEnabled];

  return v3;
}

- (id)selectActionHandler
{
  v2 = +[SCATScannerManager sharedManager];
  v3 = [v2 selectActionHandler];

  return v3;
}

- (id)selectAndResumeAutoscanningActionHandler
{
  v2 = +[SCATScannerManager sharedManager];
  v3 = [v2 selectAndResumeAutoscanningActionHandler];

  return v3;
}

- (BOOL)isActiveScannerDriver
{
  v2 = self;
  v3 = [(SCATDriver *)self delegate];
  v4 = [v3 activeScannerDriver];
  LOBYTE(v2) = [(SCATDriver *)v2 isEqual:v4];

  return v2;
}

- (void)beginScanningWithFocusContext:(id)a3
{
  v6 = a3;
  v4 = +[NSDate now];
  [(SCATDriver *)self setActionStartTime:v4];

  if ([(SCATDriver *)self _canTransitionToPhase:1])
  {
    [(SCATDriver *)self _willTransitionToPhase:1];
    v5 = v6;
    if (!v6)
    {
      v5 = [(SCATDriver *)self firstFocusContext];
    }

    v6 = v5;
    [v5 setFirstInSequence:1];
    [(SCATDriver *)self setFocusContext:v6];
    [(SCATDriver *)self _didTransitionToPhase:1];
    [(SCATDriver *)self _sendItemScanInformation:1];
  }
}

- (void)continueScanningWithFocusContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_phase != 1)
  {
    _AXAssert();
    v4 = v5;
  }

  if (!v4)
  {
    _AXAssert();
    v4 = v5;
  }

  if (self->_phase == 1)
  {
    [v4 suppressAudioOutput];
    [(SCATDriver *)self setFocusContext:v5];
  }

  else
  {
    [(SCATDriver *)self beginScanningWithFocusContext:v4];
  }
}

- (void)endScanning
{
  if ([(SCATDriver *)self _canTransitionToPhase:0])
  {
    [(SCATDriver *)self _willTransitionToPhase:0];
    [(SCATDriver *)self setFocusContext:0];

    [(SCATDriver *)self _didTransitionToPhase:0];
  }
}

- (void)pauseScanning
{
  if ([(SCATDriver *)self _canTransitionToPhase:2])
  {
    [(SCATDriver *)self _willTransitionToPhase:2];

    [(SCATDriver *)self _didTransitionToPhase:2];
  }
}

- (void)resumeScanning
{
  if ([(SCATDriver *)self _canTransitionToPhase:1])
  {
    [(SCATDriver *)self _willTransitionToPhase:1];

    [(SCATDriver *)self _didTransitionToPhase:1];
  }
}

- (BOOL)pauseScanningForPointPickerNumberOfCycles:(unint64_t)a3
{
  v5 = [(SCATDriver *)self _canAutomaticallyPauseScanner];
  if (v5)
  {
    v5 = [(SCATDriver *)self hasIdleTimeExpired];
    if (v5)
    {
      v6 = [(SCATDriver *)self delegate];
      v7 = [v6 minimumPointPickerNumberOfCyclesForDriver:self];

      if (v7 <= a3)
      {
        [(SCATDriver *)self pauseScanning];
        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (int)_preferredBehaviorForSelectCount:(unint64_t)a3 focusContext:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v7 = [v5 element];
    v8 = [v7 scatSupportsAction:2010];

    if (v8)
    {
      v9 = 1;
      goto LABEL_12;
    }

    if ([v6 isGroup])
    {
      v9 = 3;
      goto LABEL_12;
    }
  }

  v10 = 2;
LABEL_9:
  v11 = +[AXSettings sharedInstance];
  v12 = [v11 switchControlHasEmptyTopLevelMenu];

  if (v12)
  {
    v9 = 1;
  }

  else
  {
    v9 = v10;
  }

LABEL_12:

  return v9;
}

- (id)_focusContextForSource:(int)a3 inDirection:(int64_t)a4 currentContext:(id)a5
{
  v8 = a5;
  v15 = 0;
  if (a3)
  {
    v9 = [(SCATDriver *)self _drillOutFocusContextForParentGroupOfFocusContext:v8];
    goto LABEL_15;
  }

  v10 = [(SCATDriver *)self activeElementManager];
  if ([v8 selectBehavior] != 4)
  {
    if (a4 == 1)
    {
      [v10 lastElementWithOptions:&v15];
    }

    else
    {
      [v10 firstElementWithOptions:&v15];
    }
    v13 = ;
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v11 = [v8 element];
  v12 = v11;
  if (a4 == 1)
  {
    [v11 lastChild];
  }

  else
  {
    [v11 firstChild];
  }
  v13 = ;

  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = [SCATFocusContext focusContextWithElement:v13 elementManager:v10 selectBehavior:0 options:v15];
LABEL_14:

LABEL_15:

  return v9;
}

- (id)_focusContextAdjacentToSource:(int)a3 direction:(int64_t)a4 fromContext:(id)a5 checkedSources:(unint64_t)a6
{
  v8 = *&a3;
  v10 = a5;
  v11 = [(SCATDriver *)self _nextFocusSourceFromSource:v8 inDirection:a4];
  v12 = [(SCATDriver *)self _focusContextForSource:v11 inDirection:a4 currentContext:v10];
  v13 = v12;
  if (a6 <= 1 && !v12)
  {
    v13 = [(SCATDriver *)self _focusContextAdjacentToSource:v11 direction:a4 fromContext:v10 checkedSources:a6 + 1];
  }

  return v13;
}

- (id)_drillOutFocusContextForParentGroupOfFocusContext:(id)a3
{
  v4 = a3;
  v5 = [v4 element];
  v6 = [v5 parentGroup];

  v7 = [v4 elementManager];
  LODWORD(self) = [(SCATDriver *)self _shouldFocusToEscapeParentGroup:v6 elementManager:v7];

  if (self)
  {
    v8 = [v4 elementManager];
    v9 = [SCATFocusContext focusContextWithElement:v6 elementManager:v8 selectBehavior:4 options:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_focusContextFromPrimaryContext:(id)a3 inDirection:(int64_t)a4 didWrap:(BOOL *)a5
{
  v18 = 0;
  v17 = 0;
  v7 = a3;
  v8 = [v7 elementManager];
  v9 = [v7 element];
  v10 = [v8 siblingOfElement:v9 inDirection:a4 didWrap:&v17 options:&v18];

  v11 = [v7 elementManager];

  if (v10)
  {
    v12 = [SCATFocusContext focusContextWithElement:v10 elementManager:v11 selectBehavior:0 options:v18];
    v13 = +[SCATScannerManager sharedManager];
    v14 = [v13 menu];

    if ([v14 isVisible])
    {
      v15 = [v14 element];
      [v12 setMenuElement:v15];
    }

    if (a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 0;
    if (a5)
    {
LABEL_5:
      *a5 = v17;
    }
  }

  return v12;
}

- (id)nextFocusContextFromContext:(id)a3 inDirection:(int64_t)a4 didWrap:(BOOL *)a5
{
  v8 = a3;
  v9 = SWCHLogElementNav();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001285F8(v8);
  }

  v10 = [(SCATDriver *)self _focusedElementManagerForContext:v8];
  if (v10)
  {
    v11 = [(SCATDriver *)self _sourceForFocusContext:v8];
    v26[0] = 0;
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(SCATDriver *)self _focusContextFromPrimaryContext:v8 inDirection:a4 didWrap:v26];
      v16 = SWCHLogElementNav();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100128684(v12);
      }
    }

    v17 = [v8 element];
    v18 = [v12 menuElement];

    if (v17 == v18)
    {
      v19 = SWCHLogElementNav();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100128710();
      }
    }

    v20 = v17 != v18;
    if (v12)
    {
      v15 = v26[0];
      if ((v26[0] & v20) == 0)
      {
        v14 = v12;
        goto LABEL_26;
      }
    }

    v14 = [(SCATDriver *)self _focusContextAdjacentToSource:v11 direction:a4 fromContext:v8 checkedSources:0];

    v21 = SWCHLogElementNav();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100128744(v14);
    }

    v15 = v26[0];
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = SWCHLogElementNav();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1001287D0(v8);
    }

    v14 = [(SCATDriver *)self firstFocusContext];
    v15 = 0;
    if (!v14)
    {
LABEL_23:
      v22 = SWCHLogElementNav();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v26 = 138543362;
        *&v26[4] = v8;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "siblingElement was nil for context:%{public}@. will scan first context instead", v26, 0xCu);
      }

      v14 = [(SCATDriver *)self firstFocusContext];
    }
  }

LABEL_26:
  if ((v15 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v24 = SWCHLogElementNav();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "next focus context will cause us to wrap around. will refresh elements and wrap.", v26, 2u);
  }

  v25 = +[HNDAccessibilityManager sharedManager];
  [v25 refreshElements];

  if (a5)
  {
LABEL_28:
    *a5 = v15 & 1;
  }

LABEL_29:

  return v14;
}

- (id)firstFocusContext
{
  v2 = [(SCATDriver *)self activeElementManager];
  v6 = 0;
  v3 = [v2 firstElementWithOptions:&v6];
  if (v3)
  {
    v4 = [SCATFocusContext focusContextWithElement:v3 elementManager:v2 selectBehavior:0 options:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_stepToNextFocusContextInDirection:(int64_t)a3
{
  v5 = +[NSDate now];
  [(SCATDriver *)self setActionStartTime:v5];

  v6 = [(SCATDriver *)self focusContext];
  v7 = [(SCATDriver *)self _focusedElementManagerForContext:v6];

  v8 = [(SCATDriver *)self focusContext];
  v9 = [v8 elementManager];

  if ([v7 isEqual:v9])
  {
    v21 = 0;
    v10 = [(SCATDriver *)self focusContext];
    v11 = [(SCATDriver *)self nextFocusContextFromContext:v10 inDirection:a3 didWrap:&v21];

    if (v21 == 1)
    {
      [(SCATDriver *)self _didWrapInDirection:a3];
    }
  }

  else
  {
    v11 = [(SCATDriver *)self firstFocusContext];
  }

  v12 = +[SCATScannerManager sharedManager];
  v13 = [v12 menu];
  v14 = [v13 isVisible];

  if (v14)
  {
    v15 = +[SCATScannerManager sharedManager];
    v16 = [v15 menu];
    v17 = [v16 element];
    [v11 setMenuElement:v17];
  }

  [(SCATDriver *)self _willStepToNextFocusContext:v11 inDirection:a3];
  if (v11)
  {
    [(SCATDriver *)self setFocusContext:v11];
    v18 = [v11 elementManager];
    v19 = [v11 element];
    v20 = [v18 indexOfElementInCurrentScanCycle:v19];

    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_currentItemIndex = v20;
      [(SCATDriver *)self _sendItemScanInformation:0];
    }
  }
}

- (void)handleDrillInOnGroup:(id)a3 elementManager:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = +[NSDate now];
  [(SCATDriver *)self setActionStartTime:v7];

  if (!v6)
  {
    v8 = [(SCATDriver *)self focusContext];
    v6 = [v8 elementManager];
  }

  v9 = [v11 firstChild];
  v10 = [SCATFocusContext focusContextWithElement:v9 elementManager:v6 selectBehavior:0 options:0];
  [v10 setFirstInSequence:1];
  [(SCATDriver *)self willDrillIntoGroup];
  [(SCATDriver *)self setFocusContext:v10];
  [(SCATDriver *)self _sendItemScanInformation:1];
}

- (void)handleDrillOutOnGroup:(id)a3 elementManager:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = +[NSDate now];
  [(SCATDriver *)self setActionStartTime:v7];

  if (!v6)
  {
    v8 = [(SCATDriver *)self focusContext];
    v6 = [v8 elementManager];
  }

  v9 = [v6 focusContextAfterDrillOutOnGroup:v10];
  [v9 setFirstInSequence:1];
  [(SCATDriver *)self willDrillOutOfGroup];
  [(SCATDriver *)self setFocusContext:v9];
  [(SCATDriver *)self _sendItemScanInformation:1];
}

- (BOOL)handleInputAction:(id)a3
{
  v4 = a3;
  if ([v4 action] != 103 && objc_msgSend(v4, "action") != 109)
  {
    v5 = [(SCATDriver *)self selectActionHandler];
    [v5 cancelPendingAction];
  }

  v6 = [(SCATDriver *)self focusContext];
  v7 = [v6 element];

  v8 = [(SCATDriver *)self activeElementManager];
  v9 = [v8 handleInputAction:v4 withElement:v7];

  if (!v9)
  {
    v11 = [v4 action];
    v10 = 0;
    if (v11 <= 103)
    {
      switch(v11)
      {
        case 'd':
          if ([(SCATDriver *)self _handleActivateAction])
          {
            goto LABEL_6;
          }

          break;
        case 'f':
          v12 = [(SCATDriver *)self _handleRunAction];
          goto LABEL_23;
        case 'g':
          break;
        default:
          goto LABEL_24;
      }

      v12 = [(SCATDriver *)self _handleSelectAction];
    }

    else if (v11 > 105)
    {
      if (v11 == 106)
      {
        v12 = [(SCATDriver *)self _handleStopAction];
      }

      else
      {
        if (v11 != 109)
        {
          goto LABEL_24;
        }

        v12 = [(SCATDriver *)self _handleSelectAndResumeAutoscanningAction];
      }
    }

    else if (v11 == 104)
    {
      v12 = [(SCATDriver *)self _handleStepNextAction];
    }

    else
    {
      v12 = [(SCATDriver *)self _handleStepPreviousAction];
    }

LABEL_23:
    v10 = v12;
    goto LABEL_24;
  }

  [(SCATDriver *)self _resetIdleTimer];
LABEL_6:
  v10 = 1;
LABEL_24:

  return v10;
}

- (BOOL)_handleActivateAction
{
  v3 = [(SCATDriver *)self focusContext];
  v4 = [v3 element];

  if (!v4)
  {
    goto LABEL_10;
  }

  if ([v4 isGroup])
  {
    v5 = [(SCATDriver *)self focusContext];
    v6 = [v5 selectBehavior];

    if (v6 == 4)
    {
      [(SCATDriver *)self handleDrillOutOnGroup:v4 elementManager:0];
      goto LABEL_8;
    }

    if (v6 == 3)
    {
      [(SCATDriver *)self handleDrillInOnGroup:v4 elementManager:0];
LABEL_8:
      v8 = 1;
      goto LABEL_11;
    }

    v10 = [(SCATDriver *)self focusContext];
    _AXLogWithFacility();

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = +[SCATScannerManager sharedManager];
  v8 = [v7 activateElement:v4];

LABEL_11:
  return v8;
}

- (BOOL)_fireSelectActionWithCount:(unint64_t)a3 preferrsMenuOnFirstPress:(BOOL)a4
{
  v7 = [(SCATDriver *)self focusContext];
  p_superclass = &OBJC_METACLASS___SCATFocusContext.superclass;
  v9 = +[SCATScannerManager sharedManager];
  v10 = [v7 element];
  v11 = [v9 menu];
  v12 = [v11 element];
  v13 = v12;
  if (v10 == v12)
  {
    v14 = [v9 menu];
    v15 = [v14 isVisible];

    p_superclass = (&OBJC_METACLASS___SCATFocusContext + 8);
    if (v15)
    {
      v16 = [v9 menu];
      [v16 hideWithCompletion:0];

      v17 = +[HNDAccessibilityManager sharedManager];
      [v17 refreshElements];
LABEL_5:

      goto LABEL_41;
    }
  }

  else
  {
  }

  v18 = [(SCATDriver *)self _preferredBehaviorForSelectCount:a3 focusContext:v7];
  v19 = [v7 selectBehavior];
  if (!v7)
  {
LABEL_34:
    v24 = 0;
    goto LABEL_42;
  }

  if (v19 == 3 && v18 == 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = v19;
  }

  if (((v18 == 1) & ~a4 & (v19 == 2)) != 0)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      if (v22 == 3)
      {
        v23 = [v7 element];
        if (([v23 isGroup] & 1) == 0)
        {
          _AXAssert();
        }

        if ([v23 isGroup])
        {
          [(SCATDriver *)self handleDrillInOnGroup:v23 elementManager:0];
          goto LABEL_40;
        }

        v27 = SWCHLogElementNav();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v22 == 4)
      {
        v23 = [v7 element];
        if (([v23 isGroup] & 1) == 0)
        {
          _AXAssert();
        }

        if ([v23 isGroup])
        {
          [(SCATDriver *)self handleDrillOutOnGroup:v23 elementManager:0];
LABEL_40:

          goto LABEL_41;
        }

        v27 = SWCHLogElementNav();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
LABEL_38:
          sub_100128868();
        }

LABEL_39:

        goto LABEL_40;
      }

      goto LABEL_33;
    }

    v17 = [v7 element];
    v25 = [p_superclass + 74 sharedManager];
    v26 = [v25 menu];
    [v26 presentWithElement:v17];

    if ([v17 scatIsAXElement])
    {
      [v17 setNativeFocus];
      UIAccessibilityPostNotification(0x41Du, 0);
    }

    goto LABEL_5;
  }

  if (v22 != 1)
  {
LABEL_33:
    _AXAssert();
    goto LABEL_34;
  }

  if ([(SCATDriver *)self _handleActivateAction])
  {
LABEL_41:
    v24 = 1;
    goto LABEL_42;
  }

  v24 = [(SCATDriver *)self _handleSelectAction];
LABEL_42:

  return v24;
}

- (BOOL)_handleSelectAction
{
  v3 = [(SCATDriver *)self selectActionHandler];
  [v3 notifyDidReceiveAction:self];

  return 1;
}

- (BOOL)_handleSelectAndResumeAutoscanningAction
{
  v3 = [(SCATDriver *)self selectAndResumeAutoscanningActionHandler];
  [v3 notifyDidReceiveAction:self];

  return 1;
}

- (BOOL)isSpeakingFocusContext
{
  v2 = [(SCATDriver *)self currentSpeechFocusContext];
  v3 = v2 != 0;

  return v3;
}

- (void)outputManager:(id)a3 willSpeakFocusContext:(id)a4
{
  [(SCATDriver *)self setCurrentSpeechFocusContext:a4];

  [(SCATDriver *)self _cancelIdleTimer];
}

- (void)outputManager:(id)a3 didSpeakFocusContext:(id)a4
{
  v5 = a4;
  v6 = [(SCATDriver *)self currentSpeechFocusContext];

  if (v6 == v5)
  {
    [(SCATDriver *)self setCurrentSpeechFocusContext:0];

    [(SCATDriver *)self _resetIdleTimer];
  }
}

- (void)_cancelIdleTimer
{
  v2 = [(SCATDriver *)self idleTimer];
  [v2 cancel];
}

- (void)_resetIdleTimer
{
  self->_hasIdleTimeExpired = 0;
  v3 = [(SCATDriver *)self idleTimer];
  [v3 cancel];

  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchScanTimeoutEnabled];

  if (v5)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 assistiveTouchScanTimeout];
    v8 = v7;

    v9 = [(SCATDriver *)self idleTimer];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100022458;
    v10[3] = &unk_1001D3488;
    v10[4] = self;
    [v9 afterDelay:v10 processBlock:v8];
  }
}

- (BOOL)_canAutomaticallyPauseScanner
{
  v2 = [(SCATDriver *)self activeElementManager];
  v3 = [v2 shouldKeepScannerAwake];

  return v3 ^ 1;
}

- (BOOL)_shouldFocusToEscapeParentGroup:(id)a3 elementManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [(SCATDriver *)self isGroupingEnabled])
  {
    v8 = [v6 isRootGroup] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_didTransitionToPhase:(int)a3
{
  phase = self->_phase;
  self->_phase = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      [(SCATDriver *)self _resetIdleTimer];
      v7 = [(SCATDriver *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      v11 = [(SCATDriver *)self delegate];
      [v11 driverDidBecomeActive:self didChange:phase != 1];
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      [(SCATDriver *)self _cancelIdleTimer];
      v5 = [(SCATDriver *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v11 = [(SCATDriver *)self delegate];
      [v11 driverDidPause:self];
    }
  }

  else
  {
    [(SCATDriver *)self _cancelIdleTimer];
    v9 = [(SCATDriver *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    v11 = [(SCATDriver *)self delegate];
    [v11 driverDidBecomeInactive:self];
  }
}

- (BOOL)actionHandler:(id)a3 shouldActImmediatelyOnActionCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SCATDriver *)self selectActionHandler];
  v8 = [v6 isEqual:v7];

  if (!v8)
  {
    return 1;
  }

  v9 = [(SCATDriver *)self focusContext];
  v10 = [v9 selectBehavior];

  v11 = [(SCATDriver *)self focusContext];
  v12 = [v11 waitsForSelectAction];

  if (a4 != 1 || (v12 & 1) == 0)
  {
    if (v10 == 2)
    {
      v14 = +[SCATScannerManager sharedManager];
      v13 = [v14 immediateSelectActionCount] == a4;

      return v13;
    }

    return 1;
  }

  return 0;
}

- (void)actionHandlerDidFireAction:(id)a3
{
  v7 = a3;
  v4 = [(SCATDriver *)self selectActionHandler];
  if ([v7 isEqual:v4])
  {
  }

  else
  {
    v5 = [(SCATDriver *)self selectAndResumeAutoscanningActionHandler];
    v6 = [v7 isEqual:v5];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  -[SCATDriver _fireSelectActionWithCount:preferrsMenuOnFirstPress:](self, "_fireSelectActionWithCount:preferrsMenuOnFirstPress:", [v7 actionCount], objc_msgSend(v7, "shouldShowMenuOnFirstSelectAction"));
LABEL_5:
}

- (void)selectItemWithIndex:(int64_t)a3
{
  v5 = [(SCATDriver *)self activeElementManager];
  v6 = [v5 elementForIndexInCurrentScanCycle:a3];
  v7 = v6;
  if (!v6)
  {
    if (!-[SCATDriver isGroupingEnabled](self, "isGroupingEnabled") || ([v5 numberOfItemsInCurrentScanCycle], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue") - 1, v10, v11 != a3) || (objc_msgSend(v5, "elementForIndexInCurrentScanCycle:", a3 - 1), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = SWCHLogElementNav();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100128910();
      }

      goto LABEL_14;
    }
  }

  v8 = [SCATFocusContext focusContextWithElement:v7 elementManager:v5 selectBehavior:0 options:0];
  v9 = v8;
  if (v6)
  {
    if (v8)
    {
LABEL_4:
      [(SCATDriver *)self pauseScanning];
      [(SCATDriver *)self setFocusContext:v9];
      AXPerformBlockOnMainThreadAfterDelay();

      v7 = v9;
      goto LABEL_14;
    }
  }

  else
  {
    v12 = [(SCATDriver *)self _drillOutFocusContextForParentGroupOfFocusContext:v8];

    v9 = v12;
    if (v12)
    {
      goto LABEL_4;
    }
  }

  v13 = SWCHLogElementNav();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1001288DC();
  }

LABEL_14:
}

- (void)_setupDeviceMonitor
{
  v3 = [AXDeviceMonitor alloc];
  v4 = +[NSRunLoop mainRunLoop];
  v5 = [v3 initWithMatchingDictionary:&off_1001E5728 callbackRunLoop:v4];
  deviceMonitor = self->_deviceMonitor;
  self->_deviceMonitor = v5;

  [(AXDeviceMonitor *)self->_deviceMonitor setDelegate:self];
  v7 = self->_deviceMonitor;

  [(AXDeviceMonitor *)v7 begin];
}

- (void)_sendItemScanInformation:(BOOL)a3
{
  if (AXDeviceSupportsTadmor())
  {
    v5 = [(AXDeviceMonitor *)self->_deviceMonitor copyDevices];
    v6 = [v5 anyObject];

    if (!v6)
    {
      v12 = SWCHLogElementNav();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100128944();
      }

      goto LABEL_24;
    }

    v7 = IOHIDDeviceCopyMatchingElements(v6, &off_1001E5750, 0);
    v8 = [(SCATDriver *)self focusContext];
    v9 = [v8 element];
    v34 = [v9 scatCanScrollInAtLeastOneDirection];

    v10 = [(SCATDriver *)self focusContext];
    v11 = [v10 element];
    device = v6;
    if ([v11 scatIsKeyboardKey])
    {
    }

    else
    {
      v13 = [(SCATDriver *)self focusContext];
      v14 = [v13 menuElement];
      v15 = [v14 scatIsKeyboardKey];

      if (!v15)
      {
        if (a3 || !self->_currentItemSeed)
        {
          do
          {
            v17 = arc4random_uniform(0xFFu);
          }

          while (self->_currentItemSeed == v17);
          self->_currentItemSeed = v17;
          self->_currentItemIndex = 0;
        }

        v18 = [(SCATDriver *)self focusContext];
        v19 = [v18 elementManager];
        v20 = [v19 numberOfItemsInCurrentScanCycle];
        v16 = [v20 integerValue];

        goto LABEL_14;
      }
    }

    v16 = 0;
    self->_currentItemSeed = 0;
    self->_currentItemIndex = 0;
LABEL_14:
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v7;
    v21 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v12);
          }

          v25 = *(*(&v35 + 1) + 8 * i);
          v26 = [(SCATDriver *)self actionStartTime];
          [v26 timeIntervalSinceNow];
          v28 = fabs(v27);

          v29 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
          *v29 = self->_currentItemIndex;
          v29[1] = v16;
          v29[2] = self->_currentItemSeed;
          v29[3] = v34;
          v29[4] = v28;
          v29[5] = ((v28 - v28) * 255.0);
          v30 = mach_absolute_time();
          v31 = IOHIDValueCreateWithBytes(0, v25, v30, v29, 8);
          if (v31)
          {
            v32 = v31;
            IOHIDDeviceSetValue(device, v25, v31);
            CFRelease(v32);
          }

          free(v29);
        }

        v22 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v22);
    }

LABEL_24:
  }
}

- (SCATDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SCATDriver)init
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return 0;
}

@end