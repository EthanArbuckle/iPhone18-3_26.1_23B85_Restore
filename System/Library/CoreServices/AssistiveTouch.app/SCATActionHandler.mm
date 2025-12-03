@interface SCATActionHandler
- (BOOL)_shouldHandleSelectActionImmediately;
- (BOOL)isPending;
- (BOOL)shouldShowMenuOnFirstSelectAction;
- (SCATActionHandler)initWithAction:(int64_t)action timeoutDuration:(double)duration;
- (SCATActionHandlerDelegate)delegate;
- (SCATActionHandlerUIDelegate)uiDelegate;
- (void)_handleFireActionAndResumeAutoscanning:(BOOL)autoscanning;
- (void)_resetWithActionSource:(id)source;
- (void)cancelPendingAction;
- (void)notifyDidReceiveAction:(id)action;
@end

@implementation SCATActionHandler

- (SCATActionHandler)initWithAction:(int64_t)action timeoutDuration:(double)duration
{
  v11.receiver = self;
  v11.super_class = SCATActionHandler;
  v6 = [(SCATActionHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_action = action;
    v6->_timeoutDuration = duration;
    v8 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    actionTimeoutTimer = v7->_actionTimeoutTimer;
    v7->_actionTimeoutTimer = v8;

    [(AXDispatchTimer *)v7->_actionTimeoutTimer setLabel:@"ActionTimeout"];
    [(AXDispatchTimer *)v7->_actionTimeoutTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v7;
}

- (BOOL)shouldShowMenuOnFirstSelectAction
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlTapBehavior] != 1;

  return v3;
}

- (BOOL)_shouldHandleSelectActionImmediately
{
  v2 = +[AXSettings sharedInstance];
  if ([v2 switchControlTapBehavior] == 1)
  {
    v3 = +[AXSettings sharedInstance];
    switchControlHasEmptyTopLevelMenu = [v3 switchControlHasEmptyTopLevelMenu];
  }

  else
  {
    switchControlHasEmptyTopLevelMenu = 1;
  }

  return switchControlHasEmptyTopLevelMenu;
}

- (void)notifyDidReceiveAction:(id)action
{
  actionCopy = action;
  delegate = [(SCATActionHandler *)self delegate];
  v6 = [delegate isEqual:actionCopy];

  if ((v6 & 1) == 0)
  {
    [(SCATActionHandler *)self _resetWithActionSource:actionCopy];
  }

  [(SCATActionHandler *)self setActionCount:[(SCATActionHandler *)self actionCount]+ 1];
  action = [(SCATActionHandler *)self action];
  v8 = action;
  if (action == 109 || action == 103)
  {
    _shouldHandleSelectActionImmediately = [(SCATActionHandler *)self _shouldHandleSelectActionImmediately];
  }

  else
  {
    _shouldHandleSelectActionImmediately = 0;
  }

  v10 = v8 == 109;
  if (v8 == 100 || (_shouldHandleSelectActionImmediately & 1) != 0 || (-[SCATActionHandler delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 actionHandler:self shouldActImmediatelyOnActionCount:{-[SCATActionHandler actionCount](self, "actionCount")}], v11, v12))
  {
    actionTimeoutTimer = [(SCATActionHandler *)self actionTimeoutTimer];
    [actionTimeoutTimer cancel];

    [(SCATActionHandler *)self _handleFireActionAndResumeAutoscanning:v8 == 109];
  }

  else
  {
    uiDelegate = [(SCATActionHandler *)self uiDelegate];
    delegate2 = [(SCATActionHandler *)self delegate];
    v16 = [delegate2 focusContextForActionHandler:self];
    [uiDelegate actionHandlerForUI:self willPerformDelayedActionOnContext:v16 withCount:{-[SCATActionHandler actionCount](self, "actionCount")}];

    actionTimeoutTimer2 = [(SCATActionHandler *)self actionTimeoutTimer];
    [(SCATActionHandler *)self timeoutDuration];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A603C;
    v18[3] = &unk_1001D3B20;
    v18[4] = self;
    v19 = v10;
    [actionTimeoutTimer2 afterDelay:v18 processBlock:?];
  }
}

- (void)cancelPendingAction
{
  actionTimeoutTimer = [(SCATActionHandler *)self actionTimeoutTimer];
  isPending = [actionTimeoutTimer isPending];

  if (isPending)
  {
    [(SCATActionHandler *)self setActionCount:0];
    actionTimeoutTimer2 = [(SCATActionHandler *)self actionTimeoutTimer];
    [actionTimeoutTimer2 cancel];

    uiDelegate = [(SCATActionHandler *)self uiDelegate];
    [uiDelegate actionHandlerForUIDidCancelPendingAction:self];

    delegate = [(SCATActionHandler *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(SCATActionHandler *)self delegate];
      [delegate2 actionHandlerDidCancelPendingAction:self];
    }
  }
}

- (BOOL)isPending
{
  actionTimeoutTimer = [(SCATActionHandler *)self actionTimeoutTimer];
  isPending = [actionTimeoutTimer isPending];

  return isPending;
}

- (void)_handleFireActionAndResumeAutoscanning:(BOOL)autoscanning
{
  autoscanningCopy = autoscanning;
  uiDelegate = [(SCATActionHandler *)self uiDelegate];
  [uiDelegate actionHandlerForUIWillFireAction:self];

  delegate = [(SCATActionHandler *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SCATActionHandler *)self delegate];
    [delegate2 actionHandlerDidFireAction:self];
  }

  [(SCATActionHandler *)self setActionCount:0];
  if (autoscanningCopy)
  {
    v9 = +[SCATScannerManager sharedManager];
    [v9 resumeAutoscanning];
  }
}

- (void)_resetWithActionSource:(id)source
{
  sourceCopy = source;
  [(SCATActionHandler *)self setActionCount:0];
  [(SCATActionHandler *)self setDelegate:sourceCopy];
}

- (SCATActionHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SCATActionHandlerUIDelegate)uiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);

  return WeakRetained;
}

@end