@interface WFSetAlwaysOnDisplayAction
- (void)finishRunningWithError:(id)error;
- (void)resolveSlot:(id)slot withProcessedValue:(id)value parameter:(id)parameter input:(id)input completion:(id)completion;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFSetAlwaysOnDisplayAction

- (void)finishRunningWithError:(id)error
{
  errorCopy = error;
  if (errorCopy || ([(WFSetAlwaysOnDisplayAction *)self runningDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = WFSetAlwaysOnDisplayAction;
    [(WFHandleIntentAction *)&v9 finishRunningWithError:errorCopy];
  }

  else
  {
    stateBeforeRun = [(WFSetAlwaysOnDisplayAction *)self stateBeforeRun];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__WFSetAlwaysOnDisplayAction_finishRunningWithError___block_invoke;
    v8[3] = &unk_278C1B928;
    v8[4] = self;
    [WFAlwaysOnDisplaySettingsClient getBookmarkForFirstEventAfterBookmark:stateBeforeRun completionHandler:v8];
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

- (void)resolveSlot:(id)slot withProcessedValue:(id)value parameter:(id)parameter input:(id)input completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  slotCopy = slot;
  valueCopy = value;
  parameterCopy = parameter;
  inputCopy = input;
  completionCopy = completion;
  wf_slotName = [slotCopy wf_slotName];
  if (![wf_slotName isEqualToString:@"state"])
  {
    goto LABEL_6;
  }

  runningDelegate = [(WFSetAlwaysOnDisplayAction *)self runningDelegate];
  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0)
  {
    goto LABEL_6;
  }

  runningDelegate2 = [(WFSetAlwaysOnDisplayAction *)self runningDelegate];
  v21 = [runningDelegate2 actionReversalStateForAction:self];

  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277D7C858]) initWithActionReversalState:v21];
    if (v22)
    {
      [WFAlwaysOnDisplaySettingsClient getReversalStateWithBookmark:v22 completionHandler:completionCopy];
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

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
LABEL_6:
    v25.receiver = self;
    v25.super_class = WFSetAlwaysOnDisplayAction;
    [(WFHandleIntentAction *)&v25 resolveSlot:slotCopy withProcessedValue:valueCopy parameter:parameterCopy input:inputCopy completion:completionCopy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WFSetAlwaysOnDisplayAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C1B900;
  objc_copyWeak(&v9, &location);
  v5 = inputCopy;
  v7 = v5;
  selfCopy = self;
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