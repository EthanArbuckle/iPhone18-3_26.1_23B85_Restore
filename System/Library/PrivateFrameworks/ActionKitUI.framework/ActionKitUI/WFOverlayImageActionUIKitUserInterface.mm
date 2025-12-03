@interface WFOverlayImageActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithFileRepresentations:(id)representations error:(id)error;
- (void)showWithOverlayImage:(id)image images:(id)images completionHandler:(id)handler;
@end

@implementation WFOverlayImageActionUIKitUserInterface

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__WFOverlayImageActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFOverlayImageActionUIKitUserInterface;
  v5 = handlerCopy;
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

- (void)finishWithFileRepresentations:(id)representations error:(id)error
{
  representationsCopy = representations;
  errorCopy = error;
  completionHandler = [(WFOverlayImageActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFOverlayImageActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, representationsCopy, errorCopy);
  }

  [(WFOverlayImageActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithOverlayImage:(id)image images:(id)images completionHandler:(id)handler
{
  imageCopy = image;
  imagesCopy = images;
  handlerCopy = handler;
  if (imageCopy)
  {
    if (imagesCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFOverlayImageActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"images"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFOverlayImageActionUIKitUserInterface.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFOverlayImageActionUIKitUserInterface.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"image"}];

  if (!imagesCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(WFOverlayImageActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__WFOverlayImageActionUIKitUserInterface_showWithOverlayImage_images_completionHandler___block_invoke;
  block[3] = &unk_278C37058;
  v18 = imagesCopy;
  v19 = imageCopy;
  selfCopy = self;
  v12 = imageCopy;
  v13 = imagesCopy;
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