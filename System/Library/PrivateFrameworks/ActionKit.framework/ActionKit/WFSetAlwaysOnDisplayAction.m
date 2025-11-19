@interface WFSetAlwaysOnDisplayAction
- (void)finishRunningWithError:(id)a3;
- (void)resolveSlot:(id)a3 withProcessedValue:(id)a4 parameter:(id)a5 input:(id)a6 completion:(id)a7;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFSetAlwaysOnDisplayAction

- (void)finishRunningWithError:(id)a3
{
  v4 = a3;
  if (v4 || ([(WFSetAlwaysOnDisplayAction *)self runningDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = WFSetAlwaysOnDisplayAction;
    [(WFHandleIntentAction *)&v9 finishRunningWithError:v4];
  }

  else
  {
    v7 = [(WFSetAlwaysOnDisplayAction *)self stateBeforeRun];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__WFSetAlwaysOnDisplayAction_finishRunningWithError___block_invoke;
    v8[3] = &unk_278C1B928;
    v8[4] = self;
    [WFAlwaysOnDisplaySettingsClient getBookmarkForFirstEventAfterBookmark:v7 completionHandler:v8];
  }
}

void __53__WFSetAlwaysOnDisplayAction_finishRunningWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [*(a1 + 32) runningDelegate];
    v7 = *(a1 + 32);
    v8 = [v5 actionReversalState];
    [v6 action:v7 didGenerateReversalState:v8];

    objc_msgSendSuper2(&v9, sel_finishRunningWithError_, 0, *(a1 + 32), WFSetAlwaysOnDisplayAction, v10.receiver, v10.super_class);
  }

  else
  {
    objc_msgSendSuper2(&v10, sel_finishRunningWithError_, a3, v9.receiver, v9.super_class, *(a1 + 32), WFSetAlwaysOnDisplayAction);
  }
}

- (void)resolveSlot:(id)a3 withProcessedValue:(id)a4 parameter:(id)a5 input:(id)a6 completion:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 wf_slotName];
  if (![v17 isEqualToString:@"state"])
  {
    goto LABEL_6;
  }

  v18 = [(WFSetAlwaysOnDisplayAction *)self runningDelegate];
  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0)
  {
    goto LABEL_6;
  }

  v20 = [(WFSetAlwaysOnDisplayAction *)self runningDelegate];
  v21 = [v20 actionReversalStateForAction:self];

  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277D7C858]) initWithActionReversalState:v21];
    if (v22)
    {
      [WFAlwaysOnDisplaySettingsClient getReversalStateWithBookmark:v22 completionHandler:v16];
    }

    else
    {
      v24 = getWFActionsLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v27 = "[WFSetAlwaysOnDisplayAction resolveSlot:withProcessedValue:parameter:input:completion:]";
        v28 = 2112;
        v29 = v21;
        _os_log_impl(&dword_23DE30000, v24, OS_LOG_TYPE_FAULT, "%s Couldn't turn action reversal state %@ into a settings client bookmark", buf, 0x16u);
      }

      (*(v16 + 2))(v16, 0, 0);
    }
  }

  else
  {
LABEL_6:
    v25.receiver = self;
    v25.super_class = WFSetAlwaysOnDisplayAction;
    [(WFHandleIntentAction *)&v25 resolveSlot:v12 withProcessedValue:v13 parameter:v14 input:v15 completion:v16];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WFSetAlwaysOnDisplayAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C1B900;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v7 = v5;
  v8 = self;
  [WFAlwaysOnDisplaySettingsClient getBookmarkForCurrentStateWithCompletionHandler:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__WFSetAlwaysOnDisplayAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setStateBeforeRun:v3];

  v5 = *(a1 + 32);
  v6.receiver = *(a1 + 40);
  v6.super_class = WFSetAlwaysOnDisplayAction;
  objc_msgSendSuper2(&v6, sel_runAsynchronouslyWithInput_, v5);
}

@end