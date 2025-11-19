@interface WFViewContentGraphActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)done;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)showWithContentItems:(id)a3 completionHandler:(id)a4;
@end

@implementation WFViewContentGraphActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(WFViewContentGraphActionUIKitUserInterface *)self completionHandler];

  if (v4)
  {
    v5 = [(WFViewContentGraphActionUIKitUserInterface *)self completionHandler];
    v5[2](v5, 0);
  }

  [(WFViewContentGraphActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)done
{
  v3 = [(WFViewContentGraphActionUIKitUserInterface *)self completionHandler];

  if (v3)
  {
    v4 = [(WFViewContentGraphActionUIKitUserInterface *)self completionHandler];
    v4[2](v4, 0);
  }

  [(WFViewContentGraphActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__WFViewContentGraphActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFViewContentGraphActionUIKitUserInterface;
  v5 = v4;
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

- (void)showWithContentItems:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFViewContentGraphActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"items"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFViewContentGraphActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFViewContentGraphActionUIKitUserInterface *)self setCompletionHandler:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WFViewContentGraphActionUIKitUserInterface_showWithContentItems_completionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  v14 = v7;
  v15 = self;
  v10 = v7;
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