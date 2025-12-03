@interface WFOpenInActionUIKitUserInterface
- (id)excludedActivityTypesForDocumentInteractionController:(id)controller;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)documentInteractionControllerDidDismissOpenInMenu:(id)menu;
- (void)finishWithError:(id)error;
- (void)showWithFile:(id)file contentManaged:(BOOL)managed completionHandler:(id)handler;
@end

@implementation WFOpenInActionUIKitUserInterface

- (id)excludedActivityTypesForDocumentInteractionController:(id)controller
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D54710];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)documentInteractionControllerDidDismissOpenInMenu:(id)menu
{
  [(WFOpenInActionUIKitUserInterface *)self setDocumentController:0];

  [(WFOpenInActionUIKitUserInterface *)self finishWithError:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__WFOpenInActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFOpenInActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __76__WFOpenInActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
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
  completionHandler = [(WFOpenInActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFOpenInActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }

  [(WFOpenInActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithFile:(id)file contentManaged:(BOOL)managed completionHandler:(id)handler
{
  fileCopy = file;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!fileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFOpenInActionUIKitUserInterface.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"file"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFOpenInActionUIKitUserInterface.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFOpenInActionUIKitUserInterface *)self setCompletionHandler:v11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__WFOpenInActionUIKitUserInterface_showWithFile_contentManaged_completionHandler___block_invoke;
  block[3] = &unk_278C37408;
  v16 = fileCopy;
  selfCopy = self;
  managedCopy = managed;
  v12 = fileCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__WFOpenInActionUIKitUserInterface_showWithFile_contentManaged_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D546E8];
  v3 = [*(a1 + 32) wrappedURL];
  v4 = [v3 url];
  v18 = [v2 interactionControllerWithURL:v4];

  [v18 setDelegate:*(a1 + 40)];
  [v18 setIsContentManaged:*(a1 + 48)];
  v5 = [*(a1 + 40) viewControllerForPresenting];
  v6 = [v5 view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v5 view];
  v16 = [v18 presentOpenInMenuFromRect:v15 inView:1 animated:{v8, v10, v12, v14}];

  v17 = *(a1 + 40);
  if (v16)
  {
    [v17 setDocumentController:v18];
  }

  else
  {
    [v17 finishWithError:0];
  }
}

@end