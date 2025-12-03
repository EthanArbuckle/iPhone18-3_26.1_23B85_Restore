@interface WFSelectPhotoActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithOutput:(id)output error:(id)error;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showWithPhotoPickerTypes:(id)types selectMultiple:(BOOL)multiple completionHandler:(id)handler;
@end

@implementation WFSelectPhotoActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)dismiss
{
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFSelectPhotoActionUIKitUserInterface *)self finishWithOutput:0 error:userCancelledError];
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  pickingCopy = picking;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__WFSelectPhotoActionUIKitUserInterface_picker_didFinishPicking___block_invoke;
  v8[3] = &unk_278C375A0;
  v9 = pickingCopy;
  selfCopy = self;
  v7 = pickingCopy;
  [picker dismissViewControllerAnimated:1 completion:v8];
}

void __65__WFSelectPhotoActionUIKitUserInterface_picker_didFinishPicking___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) if_map:&__block_literal_global_482];
    v3 = *(a1 + 40);
    v6 = v2;
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] userCancelledError];
    v3 = v5;
    v2 = 0;
    v6 = v4;
  }

  [v3 finishWithOutput:v2 error:v4];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFSelectPhotoActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFSelectPhotoActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __81__WFSelectPhotoActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithOutput:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithOutput:(id)output error:(id)error
{
  outputCopy = output;
  errorCopy = error;
  completionHandler = [(WFSelectPhotoActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFSelectPhotoActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, outputCopy, errorCopy);
  }

  [(WFSelectPhotoActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithPhotoPickerTypes:(id)types selectMultiple:(BOOL)multiple completionHandler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSelectPhotoActionUIKitUserInterface.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFSelectPhotoActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__WFSelectPhotoActionUIKitUserInterface_showWithPhotoPickerTypes_selectMultiple_completionHandler___block_invoke;
  block[3] = &unk_278C369C0;
  selfCopy = self;
  v17 = handlerCopy;
  multipleCopy = multiple;
  v15 = typesCopy;
  v11 = typesCopy;
  v12 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __99__WFSelectPhotoActionUIKitUserInterface_showWithPhotoPickerTypes_selectMultiple_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFC520] sharedLibrary];
  v12 = 0;
  v3 = [v2 systemPhotoLibraryWithError:&v12];
  v4 = v12;

  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x277CD9D68]) initWithPhotoLibrary:v3];
    [v5 setSelectionLimit:*(a1 + 56) ^ 1];
    [v5 setDisabledCapabilities:16];
    v6 = [*(a1 + 32) allObjects];
    v7 = [v6 if_compactMap:&__block_literal_global_2180];

    if ([v7 count])
    {
      v8 = [MEMORY[0x277CD9D70] anyFilterMatchingSubfilters:v7];
      [v5 setFilter:v8];
    }

    v9 = [objc_alloc(MEMORY[0x277CD9D78]) initWithConfiguration:v5];
    [v9 setDelegate:*(a1 + 40)];
    v10 = *(a1 + 40);
    v11 = [v9 presentationController];
    [v11 setDelegate:v10];

    [*(a1 + 40) presentContent:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id __99__WFSelectPhotoActionUIKitUserInterface_showWithPhotoPickerTypes_selectMultiple_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:*MEMORY[0x277CE88D0]])
  {
    v3 = [MEMORY[0x277CD9D70] imagesFilter];
LABEL_7:
    v4 = v3;
    goto LABEL_8;
  }

  if ([v2 isEqualToString:*MEMORY[0x277CE88D8]])
  {
    v3 = [MEMORY[0x277CD9D70] livePhotosFilter];
    goto LABEL_7;
  }

  if ([v2 isEqualToString:*MEMORY[0x277CE88E0]])
  {
    v3 = [MEMORY[0x277CD9D70] videosFilter];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

@end