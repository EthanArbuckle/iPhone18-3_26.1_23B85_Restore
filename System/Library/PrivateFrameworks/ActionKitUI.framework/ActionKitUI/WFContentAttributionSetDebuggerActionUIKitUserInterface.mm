@interface WFContentAttributionSetDebuggerActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finish;
- (void)showWithInput:(id)input completionHandler:(id)handler;
@end

@implementation WFContentAttributionSetDebuggerActionUIKitUserInterface

- (void)finish
{
  completionHandler = [(WFContentAttributionSetDebuggerActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFContentAttributionSetDebuggerActionUIKitUserInterface *)self completionHandler];
    userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
    (completionHandler2)[2](completionHandler2, userCancelledError);
  }

  [(WFContentAttributionSetDebuggerActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__WFContentAttributionSetDebuggerActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFContentAttributionSetDebuggerActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __99__WFContentAttributionSetDebuggerActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finish];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)showWithInput:(id)input completionHandler:(id)handler
{
  inputCopy = input;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!inputCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentAttributionSetDebuggerActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"input"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFContentAttributionSetDebuggerActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFContentAttributionSetDebuggerActionUIKitUserInterface *)self setCompletionHandler:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__WFContentAttributionSetDebuggerActionUIKitUserInterface_showWithInput_completionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  v14 = inputCopy;
  selfCopy = self;
  v10 = inputCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __91__WFContentAttributionSetDebuggerActionUIKitUserInterface_showWithInput_completionHandler___block_invoke(uint64_t a1)
{
  v6 = [[WFContentAttributionSetDebuggerViewController alloc] initWithStyle:0];
  v2 = [*(a1 + 32) items];
  [(WFContentAttributionSetDebuggerViewController *)v6 setContentItems:v2];

  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:*(a1 + 40) action:sel_done];
  v4 = [(WFContentAttributionSetDebuggerViewController *)v6 navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  [*(a1 + 40) presentContent:v5];
}

@end