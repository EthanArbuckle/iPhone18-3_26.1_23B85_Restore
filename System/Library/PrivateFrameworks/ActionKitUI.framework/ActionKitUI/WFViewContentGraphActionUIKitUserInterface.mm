@interface WFViewContentGraphActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)done;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showWithContentItems:(id)items completionHandler:(id)handler;
@end

@implementation WFViewContentGraphActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)dismiss
{
  completionHandler = [(WFViewContentGraphActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFViewContentGraphActionUIKitUserInterface *)self completionHandler];
    completionHandler2[2](completionHandler2, 0);
  }

  [(WFViewContentGraphActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)done
{
  completionHandler = [(WFViewContentGraphActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFViewContentGraphActionUIKitUserInterface *)self completionHandler];
    completionHandler2[2](completionHandler2, 0);
  }

  [(WFViewContentGraphActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__WFViewContentGraphActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFViewContentGraphActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __86__WFViewContentGraphActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    v4 = [MEMORY[0x277CCA9B8] userCancelledError];
    (v3)[2](v3, v4);
  }

  [*(a1 + 32) setCompletionHandler:0];
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)showWithContentItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFViewContentGraphActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"items"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFViewContentGraphActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFViewContentGraphActionUIKitUserInterface *)self setCompletionHandler:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WFViewContentGraphActionUIKitUserInterface_showWithContentItems_completionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  v14 = itemsCopy;
  selfCopy = self;
  v10 = itemsCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__WFViewContentGraphActionUIKitUserInterface_showWithContentItems_completionHandler___block_invoke(uint64_t a1)
{
  v8 = [[WFContentItemsViewController alloc] initWithStyle:0];
  v2 = [*(a1 + 32) items];
  [(WFContentItemsViewController *)v8 setContentItems:v2];

  [(WFContentItemsViewController *)v8 setAllowsCoercion:1];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:*(a1 + 40) action:sel_done];
  v4 = [(WFContentItemsViewController *)v8 navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  v6 = *(a1 + 40);
  v7 = [v5 presentationController];
  [v7 setDelegate:v6];

  [*(a1 + 40) presentContent:v5];
}

@end