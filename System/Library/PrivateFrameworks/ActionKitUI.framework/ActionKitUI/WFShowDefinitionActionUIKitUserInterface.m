@interface WFShowDefinitionActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)finishWithError:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)showWithString:(id)a3 completionHandler:(id)a4;
@end

@implementation WFShowDefinitionActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFShowDefinitionActionUIKitUserInterface *)self finishWithError:v4];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFShowDefinitionActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFShowDefinitionActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __84__WFShowDefinitionActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithError:(id)a3
{
  v6 = a3;
  v4 = [(WFShowDefinitionActionUIKitUserInterface *)self completionHandler];

  if (v4)
  {
    v5 = [(WFShowDefinitionActionUIKitUserInterface *)self completionHandler];
    (v5)[2](v5, v6);
  }

  [(WFShowDefinitionActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithString:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFShowDefinitionActionUIKitUserInterface.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"string"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFShowDefinitionActionUIKitUserInterface.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFShowDefinitionActionUIKitUserInterface *)self setCompletionHandler:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__WFShowDefinitionActionUIKitUserInterface_showWithString_completionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  v14 = v7;
  v15 = self;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __77__WFShowDefinitionActionUIKitUserInterface_showWithString_completionHandler___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D75910] dictionaryHasDefinitionForTerm:*(a1 + 32)])
  {
    v12 = [(UIReferenceLibraryViewController *)[WFReferenceLibraryViewController alloc] initWithTerm:*(a1 + 32)];
    [(WFReferenceLibraryViewController *)v12 setDelegate:*(a1 + 40)];
    [(WFReferenceLibraryViewController *)v12 setModalPresentationStyle:1];
    v2 = *(a1 + 40);
    v3 = [(WFReferenceLibraryViewController *)v12 presentationController];
    [v3 setDelegate:v2];

    [*(a1 + 40) presentContent:v12];
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D7CB30];
    v13[0] = *MEMORY[0x277CCA470];
    v7 = WFLocalizedString(@"A definition could not be found for that term.");
    v14[0] = v7;
    v13[1] = *MEMORY[0x277CCA450];
    v8 = WFLocalizedString(@"This may happen if no dictionaries are installed. To manage your dictionaries, select a word in any app and choose “Look Up”. Then, tap “Manage”.");
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v10 = [v5 errorWithDomain:v6 code:6 userInfo:v9];

    [*(a1 + 40) finishWithError:v10];
    v11 = *MEMORY[0x277D85DE8];
  }
}

@end