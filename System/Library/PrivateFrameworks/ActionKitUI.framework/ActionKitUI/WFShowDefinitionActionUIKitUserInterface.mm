@interface WFShowDefinitionActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showWithString:(id)string completionHandler:(id)handler;
@end

@implementation WFShowDefinitionActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)dismiss
{
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFShowDefinitionActionUIKitUserInterface *)self finishWithError:userCancelledError];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFShowDefinitionActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFShowDefinitionActionUIKitUserInterface;
  v5 = handlerCopy;
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

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(WFShowDefinitionActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFShowDefinitionActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }

  [(WFShowDefinitionActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShowDefinitionActionUIKitUserInterface.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"string"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFShowDefinitionActionUIKitUserInterface.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFShowDefinitionActionUIKitUserInterface *)self setCompletionHandler:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__WFShowDefinitionActionUIKitUserInterface_showWithString_completionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  v14 = stringCopy;
  selfCopy = self;
  v10 = stringCopy;
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