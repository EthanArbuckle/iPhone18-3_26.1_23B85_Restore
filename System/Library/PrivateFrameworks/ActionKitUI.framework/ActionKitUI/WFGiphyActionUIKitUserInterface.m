@interface WFGiphyActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)finishWithContent:(id)a3 error:(id)a4;
- (void)giphyViewController:(id)a3 didSelectObjects:(id)a4;
- (void)giphyViewControllerDidCancel:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)showWithQuery:(id)a3 selectMultiple:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation WFGiphyActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFGiphyActionUIKitUserInterface *)self finishWithContent:0 error:v4];
}

- (void)giphyViewController:(id)a3 didSelectObjects:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__WFGiphyActionUIKitUserInterface_giphyViewController_didSelectObjects___block_invoke;
  v8[3] = &unk_278C375A0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 dismissViewControllerAnimated:1 completion:v8];
}

- (void)giphyViewControllerDidCancel:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__WFGiphyActionUIKitUserInterface_giphyViewControllerDidCancel___block_invoke;
  v3[3] = &unk_278C37538;
  v3[4] = self;
  [a3 dismissViewControllerAnimated:1 completion:v3];
}

void __64__WFGiphyActionUIKitUserInterface_giphyViewControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithContent:0 error:v2];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__WFGiphyActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFGiphyActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __75__WFGiphyActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithContent:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithContent:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFGiphyActionUIKitUserInterface *)self completionHandler];

  if (v7)
  {
    v8 = [(WFGiphyActionUIKitUserInterface *)self completionHandler];
    (v8)[2](v8, v9, v6);
  }

  [(WFGiphyActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithQuery:(id)a3 selectMultiple:(BOOL)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFGiphyActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFGiphyActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFGiphyActionUIKitUserInterface *)self setCompletionHandler:v11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__WFGiphyActionUIKitUserInterface_showWithQuery_selectMultiple_completionHandler___block_invoke;
  block[3] = &unk_278C37408;
  v18 = a4;
  v16 = v9;
  v17 = self;
  v12 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__WFGiphyActionUIKitUserInterface_showWithQuery_selectMultiple_completionHandler___block_invoke(uint64_t a1)
{
  v5 = [[WFGiphyViewController alloc] initWithQuery:*(a1 + 32) selectMultiple:*(a1 + 48)];
  [(WFGiphyViewController *)v5 setDelegate:*(a1 + 40)];
  v2 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v2 setModalPresentationStyle:2];
  v3 = *(a1 + 40);
  v4 = [v2 presentationController];
  [v4 setDelegate:v3];

  [*(a1 + 40) presentContent:v2];
}

@end