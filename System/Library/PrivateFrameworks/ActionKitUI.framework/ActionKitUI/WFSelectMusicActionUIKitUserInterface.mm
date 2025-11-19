@interface WFSelectMusicActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)finishWithOutput:(id)a3 error:(id)a4;
- (void)mediaPicker:(id)a3 didPickMediaItems:(id)a4;
- (void)mediaPickerDidCancel:(id)a3;
- (void)showWithSelectMultiple:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation WFSelectMusicActionUIKitUserInterface

- (void)mediaPickerDidCancel:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__WFSelectMusicActionUIKitUserInterface_mediaPickerDidCancel___block_invoke;
  v3[3] = &unk_278C37538;
  v3[4] = self;
  [a3 dismissViewControllerAnimated:1 completion:v3];
}

void __62__WFSelectMusicActionUIKitUserInterface_mediaPickerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithOutput:0 error:v2];
}

- (void)mediaPicker:(id)a3 didPickMediaItems:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__WFSelectMusicActionUIKitUserInterface_mediaPicker_didPickMediaItems___block_invoke;
  v8[3] = &unk_278C375A0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 dismissViewControllerAnimated:1 completion:v8];
}

- (void)finishWithOutput:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFSelectMusicActionUIKitUserInterface *)self completionHandler];

  if (v7)
  {
    v8 = [(WFSelectMusicActionUIKitUserInterface *)self completionHandler];
    (v8)[2](v8, v9, v6);
  }

  [(WFSelectMusicActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFSelectMusicActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFSelectMusicActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __81__WFSelectMusicActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithOutput:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showWithSelectMultiple:(BOOL)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSelectMusicActionUIKitUserInterface.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFSelectMusicActionUIKitUserInterface *)self setCompletionHandler:v7];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__WFSelectMusicActionUIKitUserInterface_showWithSelectMultiple_completionHandler___block_invoke;
  block[3] = &unk_278C373E0;
  v10 = a3;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__WFSelectMusicActionUIKitUserInterface_showWithSelectMultiple_completionHandler___block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getMPMediaPickerControllerClass_softClass;
  v9 = getMPMediaPickerControllerClass_softClass;
  if (!getMPMediaPickerControllerClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getMPMediaPickerControllerClass_block_invoke;
    v5[3] = &unk_278C37610;
    v5[4] = &v6;
    __getMPMediaPickerControllerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  v4 = [[v2 alloc] initWithMediaTypes:255];
  [v4 setModalPresentationStyle:2];
  [v4 setPreferredContentSize:{540.0, 620.0}];
  [v4 setAllowsPickingMultipleItems:*(a1 + 40)];
  [v4 setDelegate:*(a1 + 32)];
  [v4 setShowsCloudItems:1];
  [*(a1 + 32) presentContent:v4];
}

@end