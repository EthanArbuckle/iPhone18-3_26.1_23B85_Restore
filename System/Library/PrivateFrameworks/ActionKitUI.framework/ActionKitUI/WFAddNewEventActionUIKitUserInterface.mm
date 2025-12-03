@interface WFAddNewEventActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)finishWithEventIdentifier:(id)identifier error:(id)error;
- (void)showWithEventParameters:(id)parameters completionHandler:(id)handler;
@end

@implementation WFAddNewEventActionUIKitUserInterface

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  [controllerCopy setEditViewDelegate:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__WFAddNewEventActionUIKitUserInterface_eventEditViewController_didCompleteWithAction___block_invoke;
  v8[3] = &unk_278C37498;
  selfCopy = self;
  actionCopy = action;
  v9 = controllerCopy;
  v7 = controllerCopy;
  [v7 dismissViewControllerAnimated:1 completion:v8];
}

void __87__WFAddNewEventActionUIKitUserInterface_eventEditViewController_didCompleteWithAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) event];
  v6 = v2;
  if (*(a1 + 48))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] userCancelledError];
    v2 = v6;
  }

  v4 = *(a1 + 40);
  v5 = [v2 eventIdentifier];
  [v4 finishWithEventIdentifier:v5 error:v3];
}

- (void)finishWithEventIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  completionHandler = [(WFAddNewEventActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFAddNewEventActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, identifierCopy, errorCopy);
  }

  [(WFAddNewEventActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFAddNewEventActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFAddNewEventActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __81__WFAddNewEventActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithEventIdentifier:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showWithEventParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (parametersCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAddNewEventActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"eventParameters"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFAddNewEventActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  [(WFAddNewEventActionUIKitUserInterface *)self setCompletionHandler:v9];
  v17 = 0;
  v10 = [MEMORY[0x277CE8808] eventFromParameters:parametersCopy requiringFullySpecifiedEvent:0 error:&v17];
  v11 = v17;
  if (v11)
  {
    [(WFAddNewEventActionUIKitUserInterface *)self finishWithEventIdentifier:0 error:v11];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__WFAddNewEventActionUIKitUserInterface_showWithEventParameters_completionHandler___block_invoke;
    block[3] = &unk_278C375A0;
    v15 = v10;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __83__WFAddNewEventActionUIKitUserInterface_showWithEventParameters_completionHandler___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x277CC5B70]);
  v2 = WFGetWorkflowEventStore();
  [v3 setEventStore:v2];

  [v3 setEvent:*(a1 + 32)];
  [v3 setEditViewDelegate:*(a1 + 40)];
  [*(a1 + 40) presentContent:v3];
}

@end