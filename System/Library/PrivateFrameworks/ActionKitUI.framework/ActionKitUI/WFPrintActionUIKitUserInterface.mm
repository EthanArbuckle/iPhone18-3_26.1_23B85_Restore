@interface WFPrintActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)showWithFile:(id)file completionHandler:(id)handler;
@end

@implementation WFPrintActionUIKitUserInterface

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__WFPrintActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFPrintActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __75__WFPrintActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) printController];
  [v2 dismissAnimated:1];

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v3 finishWithError:v4];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(WFPrintActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFPrintActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }

  [(WFPrintActionUIKitUserInterface *)self setCompletionHandler:0];
  [(WFPrintActionUIKitUserInterface *)self setPrintController:0];
}

- (void)showWithFile:(id)file completionHandler:(id)handler
{
  fileCopy = file;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!fileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPrintActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"file"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFPrintActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFPrintActionUIKitUserInterface *)self setCompletionHandler:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WFPrintActionUIKitUserInterface_showWithFile_completionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  block[4] = self;
  v14 = fileCopy;
  v10 = fileCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__WFPrintActionUIKitUserInterface_showWithFile_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D41248] sharedPrintController];
  [v2 setDelegate:*(a1 + 32)];
  v3 = [*(a1 + 40) representationType];
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4 fileURL];
  }

  else
  {
    [v4 data];
  }
  v5 = ;
  [v2 setPrintingItem:v5];

  v6 = [*(a1 + 32) viewControllerForPresenting];
  v7 = [v6 view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v6 view];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__WFPrintActionUIKitUserInterface_showWithFile_completionHandler___block_invoke_2;
  v17[3] = &unk_278C36628;
  v17[4] = *(a1 + 32);
  [v2 presentFromRect:v16 inView:1 animated:v17 completionHandler:{v9, v11, v13, v15}];

  [*(a1 + 32) setPrintController:v2];
}

@end