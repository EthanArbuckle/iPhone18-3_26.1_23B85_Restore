@interface WFChooseFromListActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)chooseImageController:(id)a3 didSelectItems:(id)a4;
- (void)chooseImageControllerDidCancel:(id)a3;
- (void)finishWithContent:(id)a3 error:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)showImagesWithPrompt:(id)a3 canSelectAll:(BOOL)a4 canSelectMultiple:(BOOL)a5 inputItems:(id)a6 completionHandler:(id)a7;
@end

@implementation WFChooseFromListActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFChooseFromListActionUIKitUserInterface *)self finishWithContent:0 error:v4];
}

- (void)chooseImageControllerDidCancel:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__WFChooseFromListActionUIKitUserInterface_chooseImageControllerDidCancel___block_invoke;
  v3[3] = &unk_278C37538;
  v3[4] = self;
  [a3 dismissViewControllerAnimated:1 completion:v3];
}

void __75__WFChooseFromListActionUIKitUserInterface_chooseImageControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithContent:0 error:v2];
}

- (void)chooseImageController:(id)a3 didSelectItems:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__WFChooseFromListActionUIKitUserInterface_chooseImageController_didSelectItems___block_invoke;
  v8[3] = &unk_278C375A0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 dismissViewControllerAnimated:1 completion:v8];
}

- (void)finishWithContent:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFChooseFromListActionUIKitUserInterface *)self completionHandler];

  if (v7)
  {
    v8 = [(WFChooseFromListActionUIKitUserInterface *)self completionHandler];
    (v8)[2](v8, v9, v6);
  }

  [(WFChooseFromListActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFChooseFromListActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFChooseFromListActionUIKitUserInterface;
  v5 = v4;
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

- (void)showImagesWithPrompt:(id)a3 canSelectAll:(BOOL)a4 canSelectMultiple:(BOOL)a5 inputItems:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if (!v15)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFChooseFromListActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFChooseFromListActionUIKitUserInterface *)self setCompletionHandler:v15];
  v16 = MEMORY[0x277CCAA78];
  if (v10 && a5)
  {
    v17 = [v14 items];
    v18 = [v16 indexSetWithIndexesInRange:{0, objc_msgSend(v17, "count")}];
  }

  else
  {
    v18 = objc_opt_new();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__WFChooseFromListActionUIKitUserInterface_showImagesWithPrompt_canSelectAll_canSelectMultiple_inputItems_completionHandler___block_invoke;
  block[3] = &unk_278C36F68;
  v24 = v14;
  v25 = v18;
  v28 = a5;
  v26 = self;
  v27 = v13;
  v19 = v13;
  v20 = v18;
  v21 = v14;
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