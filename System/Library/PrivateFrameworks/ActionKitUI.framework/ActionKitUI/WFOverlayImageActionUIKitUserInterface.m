@interface WFOverlayImageActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)finishWithFileRepresentations:(id)a3 error:(id)a4;
- (void)showWithOverlayImage:(id)a3 images:(id)a4 completionHandler:(id)a5;
@end

@implementation WFOverlayImageActionUIKitUserInterface

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__WFOverlayImageActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFOverlayImageActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __82__WFOverlayImageActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithFileRepresentations:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithFileRepresentations:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFOverlayImageActionUIKitUserInterface *)self completionHandler];

  if (v7)
  {
    v8 = [(WFOverlayImageActionUIKitUserInterface *)self completionHandler];
    (v8)[2](v8, v9, v6);
  }

  [(WFOverlayImageActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithOverlayImage:(id)a3 images:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFOverlayImageActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"images"}];

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFOverlayImageActionUIKitUserInterface.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"WFOverlayImageActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"image"}];

  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(WFOverlayImageActionUIKitUserInterface *)self setCompletionHandler:v11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__WFOverlayImageActionUIKitUserInterface_showWithOverlayImage_images_completionHandler___block_invoke;
  block[3] = &unk_278C37058;
  v18 = v10;
  v19 = v9;
  v20 = self;
  v12 = v9;
  v13 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __88__WFOverlayImageActionUIKitUserInterface_showWithOverlayImage_images_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [WFOverlayImageEditorViewController alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__WFOverlayImageActionUIKitUserInterface_showWithOverlayImage_images_completionHandler___block_invoke_2;
  v6[3] = &unk_278C376E0;
  v6[4] = *(a1 + 48);
  v5 = [(WFOverlayImageEditorViewController *)v2 initWithFileRepresentations:v3 overlayImage:v4 completionHandler:v6];
  [*(a1 + 48) presentContent:v5];
}

@end