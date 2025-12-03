@interface WFTrimVideoActionUIKitUserInterface
- (id)copyFileToDealWithBadUIVideoEditorControllerSandboxHandling:(id)handling;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showWithVideo:(id)video completionHandler:(id)handler;
- (void)videoEditorController:(id)controller didFailWithError:(id)error;
- (void)videoEditorController:(id)controller didSaveEditedVideoToPath:(id)path;
- (void)videoEditorControllerDidCancel:(id)cancel;
@end

@implementation WFTrimVideoActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)dismiss
{
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFTrimVideoActionUIKitUserInterface *)self finishWithResult:0 error:userCancelledError];
}

- (void)videoEditorController:(id)controller didFailWithError:(id)error
{
  errorCopy = error;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__WFTrimVideoActionUIKitUserInterface_videoEditorController_didFailWithError___block_invoke;
  v8[3] = &unk_278C375A0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  [(WFTrimVideoActionUIKitUserInterface *)self dismissEditor:controller completionHandler:v8];
}

- (void)videoEditorControllerDidCancel:(id)cancel
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WFTrimVideoActionUIKitUserInterface_videoEditorControllerDidCancel___block_invoke;
  v3[3] = &unk_278C37538;
  v3[4] = self;
  [(WFTrimVideoActionUIKitUserInterface *)self dismissEditor:cancel completionHandler:v3];
}

void __70__WFTrimVideoActionUIKitUserInterface_videoEditorControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithResult:0 error:v2];
}

- (void)videoEditorController:(id)controller didSaveEditedVideoToPath:(id)path
{
  controllerCopy = controller;
  pathCopy = path;
  if (![(WFTrimVideoActionUIKitUserInterface *)self hasSaved])
  {
    [(WFTrimVideoActionUIKitUserInterface *)self setHasSaved:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__WFTrimVideoActionUIKitUserInterface_videoEditorController_didSaveEditedVideoToPath___block_invoke;
    v8[3] = &unk_278C375A0;
    v9 = pathCopy;
    selfCopy = self;
    [(WFTrimVideoActionUIKitUserInterface *)self dismissEditor:controllerCopy completionHandler:v8];
  }
}

void __86__WFTrimVideoActionUIKitUserInterface_videoEditorController_didSaveEditedVideoToPath___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCAC90]);
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32)];
  v4 = [v2 initWithURL:v3 readonly:1];

  [*(a1 + 40) finishWithResult:v4 error:0];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  completionHandler = [(WFTrimVideoActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFTrimVideoActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, resultCopy, errorCopy);
  }

  [(WFTrimVideoActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__WFTrimVideoActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFTrimVideoActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __79__WFTrimVideoActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithResult:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showWithVideo:(id)video completionHandler:(id)handler
{
  videoCopy = video;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!videoCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTrimVideoActionUIKitUserInterface.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"fileRepresentation"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTrimVideoActionUIKitUserInterface.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFTrimVideoActionUIKitUserInterface *)self setCompletionHandler:v9];
  v10 = [(WFTrimVideoActionUIKitUserInterface *)self copyFileToDealWithBadUIVideoEditorControllerSandboxHandling:videoCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WFTrimVideoActionUIKitUserInterface_showWithVideo_completionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  v15 = v10;
  selfCopy = self;
  v11 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__WFTrimVideoActionUIKitUserInterface_showWithVideo_completionHandler___block_invoke(uint64_t a1)
{
  v10 = objc_alloc_init(MEMORY[0x277D75D10]);
  [v10 setVideoPath:*(a1 + 32)];
  [v10 setDelegate:*(a1 + 40)];
  [*(a1 + 40) setHasSaved:0];
  v2 = [*(a1 + 40) viewControllerForPresenting];
  [v10 setModalPresentationStyle:7];
  v3 = [v10 popoverPresentationController];
  v4 = [v2 view];
  [v3 setSourceView:v4];

  v5 = [v2 view];
  [v5 frame];
  v7 = v6 * 0.5;
  v8 = [v2 view];
  [v8 layoutMargins];
  [v3 setSourceRect:{v7, v9, 0.0, 0.0}];

  [v3 setDelegate:*(a1 + 40)];
  [v2 presentViewController:v10 animated:1 completion:0];
}

- (id)copyFileToDealWithBadUIVideoEditorControllerSandboxHandling:(id)handling
{
  v4 = MEMORY[0x277CFC3C8];
  v5 = [handling url];
  v6 = [v4 fileWithURL:v5 options:13];
  [(WFTrimVideoActionUIKitUserInterface *)self setCopiedFile:v6];

  copiedFile = [(WFTrimVideoActionUIKitUserInterface *)self copiedFile];
  fileURL = [copiedFile fileURL];
  path = [fileURL path];

  return path;
}

@end