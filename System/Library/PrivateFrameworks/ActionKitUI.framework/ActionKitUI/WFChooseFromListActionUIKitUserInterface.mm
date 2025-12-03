@interface WFChooseFromListActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)chooseImageController:(id)controller didSelectItems:(id)items;
- (void)chooseImageControllerDidCancel:(id)cancel;
- (void)finishWithContent:(id)content error:(id)error;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showImagesWithPrompt:(id)prompt canSelectAll:(BOOL)all canSelectMultiple:(BOOL)multiple inputItems:(id)items completionHandler:(id)handler;
@end

@implementation WFChooseFromListActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)dismiss
{
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFChooseFromListActionUIKitUserInterface *)self finishWithContent:0 error:userCancelledError];
}

- (void)chooseImageControllerDidCancel:(id)cancel
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__WFChooseFromListActionUIKitUserInterface_chooseImageControllerDidCancel___block_invoke;
  v3[3] = &unk_278C37538;
  v3[4] = self;
  [cancel dismissViewControllerAnimated:1 completion:v3];
}

void __75__WFChooseFromListActionUIKitUserInterface_chooseImageControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithContent:0 error:v2];
}

- (void)chooseImageController:(id)controller didSelectItems:(id)items
{
  itemsCopy = items;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__WFChooseFromListActionUIKitUserInterface_chooseImageController_didSelectItems___block_invoke;
  v8[3] = &unk_278C375A0;
  v8[4] = self;
  v9 = itemsCopy;
  v7 = itemsCopy;
  [controller dismissViewControllerAnimated:1 completion:v8];
}

- (void)finishWithContent:(id)content error:(id)error
{
  contentCopy = content;
  errorCopy = error;
  completionHandler = [(WFChooseFromListActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFChooseFromListActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, contentCopy, errorCopy);
  }

  [(WFChooseFromListActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFChooseFromListActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFChooseFromListActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __84__WFChooseFromListActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithContent:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showImagesWithPrompt:(id)prompt canSelectAll:(BOOL)all canSelectMultiple:(BOOL)multiple inputItems:(id)items completionHandler:(id)handler
{
  allCopy = all;
  promptCopy = prompt;
  itemsCopy = items;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFChooseFromListActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFChooseFromListActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  v16 = MEMORY[0x277CCAA78];
  if (allCopy && multiple)
  {
    items = [itemsCopy items];
    v18 = [v16 indexSetWithIndexesInRange:{0, objc_msgSend(items, "count")}];
  }

  else
  {
    v18 = objc_opt_new();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__WFChooseFromListActionUIKitUserInterface_showImagesWithPrompt_canSelectAll_canSelectMultiple_inputItems_completionHandler___block_invoke;
  block[3] = &unk_278C36F68;
  v24 = itemsCopy;
  v25 = v18;
  multipleCopy = multiple;
  selfCopy = self;
  v27 = promptCopy;
  v19 = promptCopy;
  v20 = v18;
  v21 = itemsCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __125__WFChooseFromListActionUIKitUserInterface_showImagesWithPrompt_canSelectAll_canSelectMultiple_inputItems_completionHandler___block_invoke(uint64_t a1)
{
  v7 = [[WFChooseImageViewController alloc] initWithCollection:*(a1 + 32) selectedIndexes:*(a1 + 40)];
  [(WFChooseImageViewController *)v7 setDelegate:*(a1 + 48)];
  [(WFChooseImageViewController *)v7 setMaximumNumberOfItems:*(a1 + 64) ^ 1];
  v2 = *(a1 + 56);
  v3 = [(WFChooseImageViewController *)v7 navigationItem];
  [v3 setPrompt:v2];

  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  [v4 setModalPresentationStyle:1];
  v5 = *(a1 + 48);
  v6 = [v4 presentationController];
  [v6 setDelegate:v5];

  [*(a1 + 48) presentContent:v4];
}

@end