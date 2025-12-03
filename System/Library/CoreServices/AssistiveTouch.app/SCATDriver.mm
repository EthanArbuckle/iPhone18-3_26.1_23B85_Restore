@interface SCATDriver
- (BOOL)_canAutomaticallyPauseScanner;
- (BOOL)_fireSelectActionWithCount:(unint64_t)count preferrsMenuOnFirstPress:(BOOL)press;
- (BOOL)_handleActivateAction;
- (BOOL)_handleSelectAction;
- (BOOL)_handleSelectAndResumeAutoscanningAction;
- (BOOL)_shouldFocusToEscapeParentGroup:(id)group elementManager:(id)manager;
- (BOOL)actionHandler:(id)handler shouldActImmediatelyOnActionCount:(unint64_t)count;
- (BOOL)handleInputAction:(id)action;
- (BOOL)isActiveScannerDriver;
- (BOOL)isGroupingEnabled;
- (BOOL)isSpeakingFocusContext;
- (BOOL)pauseScanningForPointPickerNumberOfCycles:(unint64_t)cycles;
- (NSString)description;
- (SCATDriver)init;
- (SCATDriver)initWithDelegate:(id)delegate;
- (SCATDriverDelegate)delegate;
- (SCATElementManager)activeElementManager;
- (id)_drillOutFocusContextForParentGroupOfFocusContext:(id)context;
- (id)_focusContextAdjacentToSource:(int)source direction:(int64_t)direction fromContext:(id)context checkedSources:(unint64_t)sources;
- (id)_focusContextForSource:(int)source inDirection:(int64_t)direction currentContext:(id)context;
- (id)_focusContextFromPrimaryContext:(id)context inDirection:(int64_t)direction didWrap:(BOOL *)wrap;
- (id)firstFocusContext;
- (id)nextFocusContextFromContext:(id)context inDirection:(int64_t)direction didWrap:(BOOL *)wrap;
- (id)selectActionHandler;
- (id)selectAndResumeAutoscanningActionHandler;
- (int)_preferredBehaviorForSelectCount:(unint64_t)count focusContext:(id)context;
- (void)_cancelIdleTimer;
- (void)_didTransitionToPhase:(int)phase;
- (void)_resetIdleTimer;
- (void)_sendItemScanInformation:(BOOL)information;
- (void)_setupDeviceMonitor;
- (void)_stepToNextFocusContextInDirection:(int64_t)direction;
- (void)actionHandlerDidFireAction:(id)action;
- (void)beginScanningWithFocusContext:(id)context;
- (void)continueScanningWithFocusContext:(id)context;
- (void)dealloc;
- (void)endScanning;
- (void)handleDrillInOnGroup:(id)group elementManager:(id)manager;
- (void)handleDrillOutOnGroup:(id)group elementManager:(id)manager;
- (void)outputManager:(id)manager didSpeakFocusContext:(id)context;
- (void)outputManager:(id)manager willSpeakFocusContext:(id)context;
- (void)pauseScanning;
- (void)resumeScanning;
- (void)selectItemWithIndex:(int64_t)index;
- (void)setFocusContext:(id)context;
@end

@implementation SCATDriver

- (SCATDriver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = SCATDriver;
  v5 = [(SCATDriver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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
  activeElementManager = [(SCATDriver *)self activeElementManager];
  v7 = [NSNumber numberWithBool:[(SCATDriver *)self isActiveScannerDriver]];
  focusContext = [(SCATDriver *)self focusContext];
  v9 = [NSString stringWithFormat:@"%@<%p>. idleTimeExpired:%@ ActiveManager:(%@) isActiveDriver:%@ FocusContext:(%@)", v4, self, v5, activeElementManager, v7, focusContext];

  return v9;
}

- (void)setFocusContext:(id)context
{
  contextCopy = context;
  p_focusContext = &self->_focusContext;
  if (self->_focusContext != contextCopy)
  {
    v27 = contextCopy;
    delegate = [(SCATDriver *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(SCATDriver *)self delegate];
      [delegate2 driver:self willFocusOnContext:v27];
    }

    elementManager = [(SCATFocusContext *)v27 elementManager];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      elementManager2 = [(SCATFocusContext *)v27 elementManager];
      [elementManager2 driver:self willFocusOnContext:v27];
    }

    delegate3 = [(SCATDriver *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate4 = [(SCATDriver *)self delegate];
      [delegate4 driver:self willUnfocusFromContext:self->_focusContext];
    }

    elementManager3 = [(SCATFocusContext *)*p_focusContext elementManager];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      elementManager4 = [(SCATFocusContext *)self->_focusContext elementManager];
      [elementManager4 driver:self willUnfocusFromContext:self->_focusContext];
    }

    element = [(SCATFocusContext *)*p_focusContext element];
    if ([element scatIndicatesOwnFocus] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [element scatDidBecomeFocused:0];
    }

    delegate5 = [(SCATDriver *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate6 = [(SCATDriver *)self delegate];
      [delegate6 driver:self didFocusOnContext:v27 oldContext:self->_focusContext];
    }

    elementManager5 = [(SCATFocusContext *)v27 elementManager];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      elementManager6 = [(SCATFocusContext *)v27 elementManager];
      [elementManager6 driver:self didFocusOnContext:v27 oldContext:self->_focusContext];
    }

    objc_storeStrong(&self->_focusContext, context);
    element2 = [(SCATFocusContext *)v27 element];
    if ([element2 scatIndicatesOwnFocus] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [element2 scatDidBecomeFocused:1];
    }

    contextCopy = v27;
  }
}

- (SCATElementManager)activeElementManager
{
  delegate = [(SCATDriver *)self delegate];
  v4 = [delegate activeElementManagerForDriver:self];

  return v4;
}

- (BOOL)isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchGroupElementsEnabled = [v2 assistiveTouchGroupElementsEnabled];

  return assistiveTouchGroupElementsEnabled;
}

- (id)selectActionHandler
{
  v2 = +[SCATScannerManager sharedManager];
  selectActionHandler = [v2 selectActionHandler];

  return selectActionHandler;
}

- (id)selectAndResumeAutoscanningActionHandler
{
  v2 = +[SCATScannerManager sharedManager];
  selectAndResumeAutoscanningActionHandler = [v2 selectAndResumeAutoscanningActionHandler];

  return selectAndResumeAutoscanningActionHandler;
}

- (BOOL)isActiveScannerDriver
{
  selfCopy = self;
  delegate = [(SCATDriver *)self delegate];
  activeScannerDriver = [delegate activeScannerDriver];
  LOBYTE(selfCopy) = [(SCATDriver *)selfCopy isEqual:activeScannerDriver];

  return selfCopy;
}

- (void)beginScanningWithFocusContext:(id)context
{
  contextCopy = context;
  v4 = +[NSDate now];
  [(SCATDriver *)self setActionStartTime:v4];

  if ([(SCATDriver *)self _canTransitionToPhase:1])
  {
    [(SCATDriver *)self _willTransitionToPhase:1];
    firstFocusContext = contextCopy;
    if (!contextCopy)
    {
      firstFocusContext = [(SCATDriver *)self firstFocusContext];
    }

    contextCopy = firstFocusContext;
    [firstFocusContext setFirstInSequence:1];
    [(SCATDriver *)self setFocusContext:contextCopy];
    [(SCATDriver *)self _didTransitionToPhase:1];
    [(SCATDriver *)self _sendItemScanInformation:1];
  }
}

- (void)continueScanningWithFocusContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self->_phase != 1)
  {
    _AXAssert();
    contextCopy = v5;
  }

  if (!contextCopy)
  {
    _AXAssert();
    contextCopy = v5;
  }

  if (self->_phase == 1)
  {
    [contextCopy suppressAudioOutput];
    [(SCATDriver *)self setFocusContext:v5];
  }

  else
  {
    [(SCATDriver *)self beginScanningWithFocusContext:contextCopy];
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

- (BOOL)pauseScanningForPointPickerNumberOfCycles:(unint64_t)cycles
{
  _canAutomaticallyPauseScanner = [(SCATDriver *)self _canAutomaticallyPauseScanner];
  if (_canAutomaticallyPauseScanner)
  {
    _canAutomaticallyPauseScanner = [(SCATDriver *)self hasIdleTimeExpired];
    if (_canAutomaticallyPauseScanner)
    {
      delegate = [(SCATDriver *)self delegate];
      v7 = [delegate minimumPointPickerNumberOfCyclesForDriver:self];

      if (v7 <= cycles)
      {
        [(SCATDriver *)self pauseScanning];
        LOBYTE(_canAutomaticallyPauseScanner) = 1;
      }

      else
      {
        LOBYTE(_canAutomaticallyPauseScanner) = 0;
      }
    }
  }

  return _canAutomaticallyPauseScanner;
}

- (int)_preferredBehaviorForSelectCount:(unint64_t)count focusContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  if (count != 2)
  {
    if (count != 1)
    {
      v10 = 0;
      goto LABEL_9;
    }

    element = [contextCopy element];
    v8 = [element scatSupportsAction:2010];

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
  switchControlHasEmptyTopLevelMenu = [v11 switchControlHasEmptyTopLevelMenu];

  if (switchControlHasEmptyTopLevelMenu)
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

- (id)_focusContextForSource:(int)source inDirection:(int64_t)direction currentContext:(id)context
{
  contextCopy = context;
  v15 = 0;
  if (source)
  {
    v9 = [(SCATDriver *)self _drillOutFocusContextForParentGroupOfFocusContext:contextCopy];
    goto LABEL_15;
  }

  activeElementManager = [(SCATDriver *)self activeElementManager];
  if ([contextCopy selectBehavior] != 4)
  {
    if (direction == 1)
    {
      [activeElementManager lastElementWithOptions:&v15];
    }

    else
    {
      [activeElementManager firstElementWithOptions:&v15];
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

  element = [contextCopy element];
  v12 = element;
  if (direction == 1)
  {
    [element lastChild];
  }

  else
  {
    [element firstChild];
  }
  v13 = ;

  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = [SCATFocusContext focusContextWithElement:v13 elementManager:activeElementManager selectBehavior:0 options:v15];
LABEL_14:

LABEL_15:

  return v9;
}

- (id)_focusContextAdjacentToSource:(int)source direction:(int64_t)direction fromContext:(id)context checkedSources:(unint64_t)sources
{
  v8 = *&source;
  contextCopy = context;
  v11 = [(SCATDriver *)self _nextFocusSourceFromSource:v8 inDirection:direction];
  v12 = [(SCATDriver *)self _focusContextForSource:v11 inDirection:direction currentContext:contextCopy];
  v13 = v12;
  if (sources <= 1 && !v12)
  {
    v13 = [(SCATDriver *)self _focusContextAdjacentToSource:v11 direction:direction fromContext:contextCopy checkedSources:sources + 1];
  }

  return v13;
}

- (id)_drillOutFocusContextForParentGroupOfFocusContext:(id)context
{
  contextCopy = context;
  element = [contextCopy element];
  parentGroup = [element parentGroup];

  elementManager = [contextCopy elementManager];
  LODWORD(self) = [(SCATDriver *)self _shouldFocusToEscapeParentGroup:parentGroup elementManager:elementManager];

  if (self)
  {
    elementManager2 = [contextCopy elementManager];
    v9 = [SCATFocusContext focusContextWithElement:parentGroup elementManager:elementManager2 selectBehavior:4 options:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_focusContextFromPrimaryContext:(id)context inDirection:(int64_t)direction didWrap:(BOOL *)wrap
{
  v18 = 0;
  v17 = 0;
  contextCopy = context;
  elementManager = [contextCopy elementManager];
  element = [contextCopy element];
  v10 = [elementManager siblingOfElement:element inDirection:direction didWrap:&v17 options:&v18];

  elementManager2 = [contextCopy elementManager];

  if (v10)
  {
    v12 = [SCATFocusContext focusContextWithElement:v10 elementManager:elementManager2 selectBehavior:0 options:v18];
    v13 = +[SCATScannerManager sharedManager];
    menu = [v13 menu];

    if ([menu isVisible])
    {
      element2 = [menu element];
      [v12 setMenuElement:element2];
    }

    if (wrap)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 0;
    if (wrap)
    {
LABEL_5:
      *wrap = v17;
    }
  }

  return v12;
}

- (id)nextFocusContextFromContext:(id)context inDirection:(int64_t)direction didWrap:(BOOL *)wrap
{
  contextCopy = context;
  v9 = SWCHLogElementNav();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001285F8(contextCopy);
  }

  v10 = [(SCATDriver *)self _focusedElementManagerForContext:contextCopy];
  if (v10)
  {
    v11 = [(SCATDriver *)self _sourceForFocusContext:contextCopy];
    v26[0] = 0;
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(SCATDriver *)self _focusContextFromPrimaryContext:contextCopy inDirection:direction didWrap:v26];
      v16 = SWCHLogElementNav();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100128684(v12);
      }
    }

    element = [contextCopy element];
    menuElement = [v12 menuElement];

    if (element == menuElement)
    {
      v19 = SWCHLogElementNav();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100128710();
      }
    }

    v20 = element != menuElement;
    if (v12)
    {
      v15 = v26[0];
      if ((v26[0] & v20) == 0)
      {
        firstFocusContext = v12;
        goto LABEL_26;
      }
    }

    firstFocusContext = [(SCATDriver *)self _focusContextAdjacentToSource:v11 direction:direction fromContext:contextCopy checkedSources:0];

    v21 = SWCHLogElementNav();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100128744(firstFocusContext);
    }

    v15 = v26[0];
    if (!firstFocusContext)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = SWCHLogElementNav();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1001287D0(contextCopy);
    }

    firstFocusContext = [(SCATDriver *)self firstFocusContext];
    v15 = 0;
    if (!firstFocusContext)
    {
LABEL_23:
      v22 = SWCHLogElementNav();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v26 = 138543362;
        *&v26[4] = contextCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "siblingElement was nil for context:%{public}@. will scan first context instead", v26, 0xCu);
      }

      firstFocusContext = [(SCATDriver *)self firstFocusContext];
    }
  }

LABEL_26:
  if ((v15 & 1) == 0)
  {
    if (!wrap)
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

  if (wrap)
  {
LABEL_28:
    *wrap = v15 & 1;
  }

LABEL_29:

  return firstFocusContext;
}

- (id)firstFocusContext
{
  activeElementManager = [(SCATDriver *)self activeElementManager];
  v6 = 0;
  v3 = [activeElementManager firstElementWithOptions:&v6];
  if (v3)
  {
    v4 = [SCATFocusContext focusContextWithElement:v3 elementManager:activeElementManager selectBehavior:0 options:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_stepToNextFocusContextInDirection:(int64_t)direction
{
  v5 = +[NSDate now];
  [(SCATDriver *)self setActionStartTime:v5];

  focusContext = [(SCATDriver *)self focusContext];
  v7 = [(SCATDriver *)self _focusedElementManagerForContext:focusContext];

  focusContext2 = [(SCATDriver *)self focusContext];
  elementManager = [focusContext2 elementManager];

  if ([v7 isEqual:elementManager])
  {
    v21 = 0;
    focusContext3 = [(SCATDriver *)self focusContext];
    firstFocusContext = [(SCATDriver *)self nextFocusContextFromContext:focusContext3 inDirection:direction didWrap:&v21];

    if (v21 == 1)
    {
      [(SCATDriver *)self _didWrapInDirection:direction];
    }
  }

  else
  {
    firstFocusContext = [(SCATDriver *)self firstFocusContext];
  }

  v12 = +[SCATScannerManager sharedManager];
  menu = [v12 menu];
  isVisible = [menu isVisible];

  if (isVisible)
  {
    v15 = +[SCATScannerManager sharedManager];
    menu2 = [v15 menu];
    element = [menu2 element];
    [firstFocusContext setMenuElement:element];
  }

  [(SCATDriver *)self _willStepToNextFocusContext:firstFocusContext inDirection:direction];
  if (firstFocusContext)
  {
    [(SCATDriver *)self setFocusContext:firstFocusContext];
    elementManager2 = [firstFocusContext elementManager];
    element2 = [firstFocusContext element];
    v20 = [elementManager2 indexOfElementInCurrentScanCycle:element2];

    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_currentItemIndex = v20;
      [(SCATDriver *)self _sendItemScanInformation:0];
    }
  }
}

- (void)handleDrillInOnGroup:(id)group elementManager:(id)manager
{
  groupCopy = group;
  managerCopy = manager;
  v7 = +[NSDate now];
  [(SCATDriver *)self setActionStartTime:v7];

  if (!managerCopy)
  {
    focusContext = [(SCATDriver *)self focusContext];
    managerCopy = [focusContext elementManager];
  }

  firstChild = [groupCopy firstChild];
  v10 = [SCATFocusContext focusContextWithElement:firstChild elementManager:managerCopy selectBehavior:0 options:0];
  [v10 setFirstInSequence:1];
  [(SCATDriver *)self willDrillIntoGroup];
  [(SCATDriver *)self setFocusContext:v10];
  [(SCATDriver *)self _sendItemScanInformation:1];
}

- (void)handleDrillOutOnGroup:(id)group elementManager:(id)manager
{
  groupCopy = group;
  managerCopy = manager;
  v7 = +[NSDate now];
  [(SCATDriver *)self setActionStartTime:v7];

  if (!managerCopy)
  {
    focusContext = [(SCATDriver *)self focusContext];
    managerCopy = [focusContext elementManager];
  }

  v9 = [managerCopy focusContextAfterDrillOutOnGroup:groupCopy];
  [v9 setFirstInSequence:1];
  [(SCATDriver *)self willDrillOutOfGroup];
  [(SCATDriver *)self setFocusContext:v9];
  [(SCATDriver *)self _sendItemScanInformation:1];
}

- (BOOL)handleInputAction:(id)action
{
  actionCopy = action;
  if ([actionCopy action] != 103 && objc_msgSend(actionCopy, "action") != 109)
  {
    selectActionHandler = [(SCATDriver *)self selectActionHandler];
    [selectActionHandler cancelPendingAction];
  }

  focusContext = [(SCATDriver *)self focusContext];
  element = [focusContext element];

  activeElementManager = [(SCATDriver *)self activeElementManager];
  v9 = [activeElementManager handleInputAction:actionCopy withElement:element];

  if (!v9)
  {
    action = [actionCopy action];
    v10 = 0;
    if (action <= 103)
    {
      switch(action)
      {
        case 'd':
          if ([(SCATDriver *)self _handleActivateAction])
          {
            goto LABEL_6;
          }

          break;
        case 'f':
          _handleRunAction = [(SCATDriver *)self _handleRunAction];
          goto LABEL_23;
        case 'g':
          break;
        default:
          goto LABEL_24;
      }

      _handleRunAction = [(SCATDriver *)self _handleSelectAction];
    }

    else if (action > 105)
    {
      if (action == 106)
      {
        _handleRunAction = [(SCATDriver *)self _handleStopAction];
      }

      else
      {
        if (action != 109)
        {
          goto LABEL_24;
        }

        _handleRunAction = [(SCATDriver *)self _handleSelectAndResumeAutoscanningAction];
      }
    }

    else if (action == 104)
    {
      _handleRunAction = [(SCATDriver *)self _handleStepNextAction];
    }

    else
    {
      _handleRunAction = [(SCATDriver *)self _handleStepPreviousAction];
    }

LABEL_23:
    v10 = _handleRunAction;
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
  focusContext = [(SCATDriver *)self focusContext];
  element = [focusContext element];

  if (!element)
  {
    goto LABEL_10;
  }

  if ([element isGroup])
  {
    focusContext2 = [(SCATDriver *)self focusContext];
    selectBehavior = [focusContext2 selectBehavior];

    if (selectBehavior == 4)
    {
      [(SCATDriver *)self handleDrillOutOnGroup:element elementManager:0];
      goto LABEL_8;
    }

    if (selectBehavior == 3)
    {
      [(SCATDriver *)self handleDrillInOnGroup:element elementManager:0];
LABEL_8:
      v8 = 1;
      goto LABEL_11;
    }

    focusContext3 = [(SCATDriver *)self focusContext];
    _AXLogWithFacility();

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = +[SCATScannerManager sharedManager];
  v8 = [v7 activateElement:element];

LABEL_11:
  return v8;
}

- (BOOL)_fireSelectActionWithCount:(unint64_t)count preferrsMenuOnFirstPress:(BOOL)press
{
  focusContext = [(SCATDriver *)self focusContext];
  p_superclass = &OBJC_METACLASS___SCATFocusContext.superclass;
  v9 = +[SCATScannerManager sharedManager];
  element = [focusContext element];
  menu = [v9 menu];
  element2 = [menu element];
  v13 = element2;
  if (element == element2)
  {
    menu2 = [v9 menu];
    isVisible = [menu2 isVisible];

    p_superclass = (&OBJC_METACLASS___SCATFocusContext + 8);
    if (isVisible)
    {
      menu3 = [v9 menu];
      [menu3 hideWithCompletion:0];

      element4 = +[HNDAccessibilityManager sharedManager];
      [element4 refreshElements];
LABEL_5:

      goto LABEL_41;
    }
  }

  else
  {
  }

  v18 = [(SCATDriver *)self _preferredBehaviorForSelectCount:count focusContext:focusContext];
  selectBehavior = [focusContext selectBehavior];
  if (!focusContext)
  {
LABEL_34:
    _handleSelectAction = 0;
    goto LABEL_42;
  }

  if (selectBehavior == 3 && v18 == 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = selectBehavior;
  }

  if (((v18 == 1) & ~press & (selectBehavior == 2)) != 0)
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
        element3 = [focusContext element];
        if (([element3 isGroup] & 1) == 0)
        {
          _AXAssert();
        }

        if ([element3 isGroup])
        {
          [(SCATDriver *)self handleDrillInOnGroup:element3 elementManager:0];
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
        element3 = [focusContext element];
        if (([element3 isGroup] & 1) == 0)
        {
          _AXAssert();
        }

        if ([element3 isGroup])
        {
          [(SCATDriver *)self handleDrillOutOnGroup:element3 elementManager:0];
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

    element4 = [focusContext element];
    sharedManager = [p_superclass + 74 sharedManager];
    menu4 = [sharedManager menu];
    [menu4 presentWithElement:element4];

    if ([element4 scatIsAXElement])
    {
      [element4 setNativeFocus];
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
    _handleSelectAction = 1;
    goto LABEL_42;
  }

  _handleSelectAction = [(SCATDriver *)self _handleSelectAction];
LABEL_42:

  return _handleSelectAction;
}

- (BOOL)_handleSelectAction
{
  selectActionHandler = [(SCATDriver *)self selectActionHandler];
  [selectActionHandler notifyDidReceiveAction:self];

  return 1;
}

- (BOOL)_handleSelectAndResumeAutoscanningAction
{
  selectAndResumeAutoscanningActionHandler = [(SCATDriver *)self selectAndResumeAutoscanningActionHandler];
  [selectAndResumeAutoscanningActionHandler notifyDidReceiveAction:self];

  return 1;
}

- (BOOL)isSpeakingFocusContext
{
  currentSpeechFocusContext = [(SCATDriver *)self currentSpeechFocusContext];
  v3 = currentSpeechFocusContext != 0;

  return v3;
}

- (void)outputManager:(id)manager willSpeakFocusContext:(id)context
{
  [(SCATDriver *)self setCurrentSpeechFocusContext:context];

  [(SCATDriver *)self _cancelIdleTimer];
}

- (void)outputManager:(id)manager didSpeakFocusContext:(id)context
{
  contextCopy = context;
  currentSpeechFocusContext = [(SCATDriver *)self currentSpeechFocusContext];

  if (currentSpeechFocusContext == contextCopy)
  {
    [(SCATDriver *)self setCurrentSpeechFocusContext:0];

    [(SCATDriver *)self _resetIdleTimer];
  }
}

- (void)_cancelIdleTimer
{
  idleTimer = [(SCATDriver *)self idleTimer];
  [idleTimer cancel];
}

- (void)_resetIdleTimer
{
  self->_hasIdleTimeExpired = 0;
  idleTimer = [(SCATDriver *)self idleTimer];
  [idleTimer cancel];

  v4 = +[AXSettings sharedInstance];
  assistiveTouchScanTimeoutEnabled = [v4 assistiveTouchScanTimeoutEnabled];

  if (assistiveTouchScanTimeoutEnabled)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 assistiveTouchScanTimeout];
    v8 = v7;

    idleTimer2 = [(SCATDriver *)self idleTimer];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100022458;
    v10[3] = &unk_1001D3488;
    v10[4] = self;
    [idleTimer2 afterDelay:v10 processBlock:v8];
  }
}

- (BOOL)_canAutomaticallyPauseScanner
{
  activeElementManager = [(SCATDriver *)self activeElementManager];
  shouldKeepScannerAwake = [activeElementManager shouldKeepScannerAwake];

  return shouldKeepScannerAwake ^ 1;
}

- (BOOL)_shouldFocusToEscapeParentGroup:(id)group elementManager:(id)manager
{
  groupCopy = group;
  managerCopy = manager;
  if (groupCopy && [(SCATDriver *)self isGroupingEnabled])
  {
    v8 = [groupCopy isRootGroup] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_didTransitionToPhase:(int)phase
{
  phase = self->_phase;
  self->_phase = phase;
  if (phase)
  {
    if (phase == 1)
    {
      [(SCATDriver *)self _resetIdleTimer];
      delegate = [(SCATDriver *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      delegate2 = [(SCATDriver *)self delegate];
      [delegate2 driverDidBecomeActive:self didChange:phase != 1];
    }

    else
    {
      if (phase != 2)
      {
        return;
      }

      [(SCATDriver *)self _cancelIdleTimer];
      delegate3 = [(SCATDriver *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      delegate2 = [(SCATDriver *)self delegate];
      [delegate2 driverDidPause:self];
    }
  }

  else
  {
    [(SCATDriver *)self _cancelIdleTimer];
    delegate4 = [(SCATDriver *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    delegate2 = [(SCATDriver *)self delegate];
    [delegate2 driverDidBecomeInactive:self];
  }
}

- (BOOL)actionHandler:(id)handler shouldActImmediatelyOnActionCount:(unint64_t)count
{
  handlerCopy = handler;
  selectActionHandler = [(SCATDriver *)self selectActionHandler];
  v8 = [handlerCopy isEqual:selectActionHandler];

  if (!v8)
  {
    return 1;
  }

  focusContext = [(SCATDriver *)self focusContext];
  selectBehavior = [focusContext selectBehavior];

  focusContext2 = [(SCATDriver *)self focusContext];
  waitsForSelectAction = [focusContext2 waitsForSelectAction];

  if (count != 1 || (waitsForSelectAction & 1) == 0)
  {
    if (selectBehavior == 2)
    {
      v14 = +[SCATScannerManager sharedManager];
      v13 = [v14 immediateSelectActionCount] == count;

      return v13;
    }

    return 1;
  }

  return 0;
}

- (void)actionHandlerDidFireAction:(id)action
{
  actionCopy = action;
  selectActionHandler = [(SCATDriver *)self selectActionHandler];
  if ([actionCopy isEqual:selectActionHandler])
  {
  }

  else
  {
    selectAndResumeAutoscanningActionHandler = [(SCATDriver *)self selectAndResumeAutoscanningActionHandler];
    v6 = [actionCopy isEqual:selectAndResumeAutoscanningActionHandler];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  -[SCATDriver _fireSelectActionWithCount:preferrsMenuOnFirstPress:](self, "_fireSelectActionWithCount:preferrsMenuOnFirstPress:", [actionCopy actionCount], objc_msgSend(actionCopy, "shouldShowMenuOnFirstSelectAction"));
LABEL_5:
}

- (void)selectItemWithIndex:(int64_t)index
{
  activeElementManager = [(SCATDriver *)self activeElementManager];
  v6 = [activeElementManager elementForIndexInCurrentScanCycle:index];
  v7 = v6;
  if (!v6)
  {
    if (!-[SCATDriver isGroupingEnabled](self, "isGroupingEnabled") || ([activeElementManager numberOfItemsInCurrentScanCycle], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue") - 1, v10, v11 != index) || (objc_msgSend(activeElementManager, "elementForIndexInCurrentScanCycle:", index - 1), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = SWCHLogElementNav();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100128910();
      }

      goto LABEL_14;
    }
  }

  v8 = [SCATFocusContext focusContextWithElement:v7 elementManager:activeElementManager selectBehavior:0 options:0];
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

- (void)_sendItemScanInformation:(BOOL)information
{
  if (AXDeviceSupportsTadmor())
  {
    copyDevices = [(AXDeviceMonitor *)self->_deviceMonitor copyDevices];
    anyObject = [copyDevices anyObject];

    if (!anyObject)
    {
      v12 = SWCHLogElementNav();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100128944();
      }

      goto LABEL_24;
    }

    v7 = IOHIDDeviceCopyMatchingElements(anyObject, &off_1001E5750, 0);
    focusContext = [(SCATDriver *)self focusContext];
    element = [focusContext element];
    scatCanScrollInAtLeastOneDirection = [element scatCanScrollInAtLeastOneDirection];

    focusContext2 = [(SCATDriver *)self focusContext];
    element2 = [focusContext2 element];
    device = anyObject;
    if ([element2 scatIsKeyboardKey])
    {
    }

    else
    {
      focusContext3 = [(SCATDriver *)self focusContext];
      menuElement = [focusContext3 menuElement];
      scatIsKeyboardKey = [menuElement scatIsKeyboardKey];

      if (!scatIsKeyboardKey)
      {
        if (information || !self->_currentItemSeed)
        {
          do
          {
            v17 = arc4random_uniform(0xFFu);
          }

          while (self->_currentItemSeed == v17);
          self->_currentItemSeed = v17;
          self->_currentItemIndex = 0;
        }

        focusContext4 = [(SCATDriver *)self focusContext];
        elementManager = [focusContext4 elementManager];
        numberOfItemsInCurrentScanCycle = [elementManager numberOfItemsInCurrentScanCycle];
        integerValue = [numberOfItemsInCurrentScanCycle integerValue];

        goto LABEL_14;
      }
    }

    integerValue = 0;
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
          actionStartTime = [(SCATDriver *)self actionStartTime];
          [actionStartTime timeIntervalSinceNow];
          v28 = fabs(v27);

          v29 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
          *v29 = self->_currentItemIndex;
          v29[1] = integerValue;
          v29[2] = self->_currentItemSeed;
          v29[3] = scatCanScrollInAtLeastOneDirection;
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