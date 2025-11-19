@interface WFSelectFilesUIKitUserInterface
- (id)supportedPickerContentTypesWithOptions:(unint64_t)a3;
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)finishWithResults:(id)a3 error:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)retrieveFilesWithConsumingBundleID:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation WFSelectFilesUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFSelectFilesUIKitUserInterface *)self finishWithResults:0 error:v4];
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__WFSelectFilesUIKitUserInterface_documentPicker_didPickDocumentsAtURLs___block_invoke;
  v5[3] = &unk_278C374E8;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__WFSelectFilesUIKitUserInterface_documentPicker_didPickDocumentsAtURLs___block_invoke_2;
  v4[3] = &unk_278C376E0;
  v4[4] = self;
  [a4 if_mapAsynchronously:v5 completionHandler:v4];
}

void __73__WFSelectFilesUIKitUserInterface_documentPicker_didPickDocumentsAtURLs___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x277CE8828];
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [v6 consumingBundleID];
  [v5 getResultWithFileURL:v8 consumingBundleID:v9 resultBlock:v7];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__WFSelectFilesUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFSelectFilesUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __75__WFSelectFilesUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithResults:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithResults:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFSelectFilesUIKitUserInterface *)self completionHandler];

  if (v7)
  {
    v8 = [(WFSelectFilesUIKitUserInterface *)self completionHandler];
    (v8)[2](v8, v9, v6);
  }

  [(WFSelectFilesUIKitUserInterface *)self setCompletionHandler:0];
}

- (id)supportedPickerContentTypesWithOptions:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ((a3 & 8) != 0)
  {
    v8[0] = *MEMORY[0x277CE1D80];
    v3 = v8;
  }

  else
  {
    v7 = *MEMORY[0x277CE1DB8];
    v3 = &v7;
  }

  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)retrieveFilesWithConsumingBundleID:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFSelectFilesActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFSelectFilesUIKitUserInterface *)self setCompletionHandler:v10];
  [(WFSelectFilesUIKitUserInterface *)self setConsumingBundleID:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__WFSelectFilesUIKitUserInterface_retrieveFilesWithConsumingBundleID_options_completionHandler___block_invoke;
  block[3] = &unk_278C374C0;
  block[4] = self;
  block[5] = a4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __96__WFSelectFilesUIKitUserInterface_retrieveFilesWithConsumingBundleID_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75458]);
  v3 = [*(a1 + 32) supportedPickerContentTypesWithOptions:*(a1 + 40)];
  v4 = [v2 initForOpeningContentTypes:v3 asCopy:0];

  [v4 setModalPresentationStyle:2];
  [v4 setAllowsMultipleSelection:(*(a1 + 40) >> 1) & 1];
  [v4 setDelegate:*(a1 + 32)];
  [*(a1 + 32) presentContent:v4];
}

@end