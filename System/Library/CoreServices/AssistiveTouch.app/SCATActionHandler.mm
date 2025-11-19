@interface SCATActionHandler
- (BOOL)_shouldHandleSelectActionImmediately;
- (BOOL)isPending;
- (BOOL)shouldShowMenuOnFirstSelectAction;
- (SCATActionHandler)initWithAction:(int64_t)a3 timeoutDuration:(double)a4;
- (SCATActionHandlerDelegate)delegate;
- (SCATActionHandlerUIDelegate)uiDelegate;
- (void)_handleFireActionAndResumeAutoscanning:(BOOL)a3;
- (void)_resetWithActionSource:(id)a3;
- (void)cancelPendingAction;
- (void)notifyDidReceiveAction:(id)a3;
@end

@implementation SCATActionHandler

- (SCATActionHandler)initWithAction:(int64_t)a3 timeoutDuration:(double)a4
{
  v11.receiver = self;
  v11.super_class = SCATActionHandler;
  v6 = [(SCATActionHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_action = a3;
    v6->_timeoutDuration = a4;
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
    v4 = [v3 switchControlHasEmptyTopLevelMenu];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)notifyDidReceiveAction:(id)a3
{
  v4 = a3;
  v5 = [(SCATActionHandler *)self delegate];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [(SCATActionHandler *)self _resetWithActionSource:v4];
  }

  [(SCATActionHandler *)self setActionCount:[(SCATActionHandler *)self actionCount]+ 1];
  v7 = [(SCATActionHandler *)self action];
  v8 = v7;
  if (v7 == 109 || v7 == 103)
  {
    v9 = [(SCATActionHandler *)self _shouldHandleSelectActionImmediately];
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 == 109;
  if (v8 == 100 || (v9 & 1) != 0 || (-[SCATActionHandler delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 actionHandler:self shouldActImmediatelyOnActionCount:{-[SCATActionHandler actionCount](self, "actionCount")}], v11, v12))
  {
    v13 = [(SCATActionHandler *)self actionTimeoutTimer];
    [v13 cancel];

    [(SCATActionHandler *)self _handleFireActionAndResumeAutoscanning:v8 == 109];
  }

  else
  {
    v14 = [(SCATActionHandler *)self uiDelegate];
    v15 = [(SCATActionHandler *)self delegate];
    v16 = [v15 focusContextForActionHandler:self];
    [v14 actionHandlerForUI:self willPerformDelayedActionOnContext:v16 withCount:{-[SCATActionHandler actionCount](self, "actionCount")}];

    v17 = [(SCATActionHandler *)self actionTimeoutTimer];
    [(SCATActionHandler *)self timeoutDuration];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A603C;
    v18[3] = &unk_1001D3B20;
    v18[4] = self;
    v19 = v10;
    [v17 afterDelay:v18 processBlock:?];
  }
}

- (void)cancelPendingAction
{
  v3 = [(SCATActionHandler *)self actionTimeoutTimer];
  v4 = [v3 isPending];

  if (v4)
  {
    [(SCATActionHandler *)self setActionCount:0];
    v5 = [(SCATActionHandler *)self actionTimeoutTimer];
    [v5 cancel];

    v6 = [(SCATActionHandler *)self uiDelegate];
    [v6 actionHandlerForUIDidCancelPendingAction:self];

    v7 = [(SCATActionHandler *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SCATActionHandler *)self delegate];
      [v9 actionHandlerDidCancelPendingAction:self];
    }
  }
}

- (BOOL)isPending
{
  v2 = [(SCATActionHandler *)self actionTimeoutTimer];
  v3 = [v2 isPending];

  return v3;
}

- (void)_handleFireActionAndResumeAutoscanning:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATActionHandler *)self uiDelegate];
  [v5 actionHandlerForUIWillFireAction:self];

  v6 = [(SCATActionHandler *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SCATActionHandler *)self delegate];
    [v8 actionHandlerDidFireAction:self];
  }

  [(SCATActionHandler *)self setActionCount:0];
  if (v3)
  {
    v9 = +[SCATScannerManager sharedManager];
    [v9 resumeAutoscanning];
  }
}

- (void)_resetWithActionSource:(id)a3
{
  v4 = a3;
  [(SCATActionHandler *)self setActionCount:0];
  [(SCATActionHandler *)self setDelegate:v4];
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