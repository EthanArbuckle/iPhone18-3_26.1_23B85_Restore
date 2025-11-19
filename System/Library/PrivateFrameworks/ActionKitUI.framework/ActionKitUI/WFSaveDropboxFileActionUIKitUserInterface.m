@interface WFSaveDropboxFileActionUIKitUserInterface
- (id)selectedStorageServiceForName:(id)a3;
- (void)cancel;
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)showWithServiceName:(id)a3 input:(id)a4 managedLevel:(unint64_t)a5 options:(unint64_t)a6 completionHandler:(id)a7;
@end

@implementation WFSaveDropboxFileActionUIKitUserInterface

- (void)cancel
{
  v3 = [(WFSaveDropboxFileActionUIKitUserInterface *)self saveOperation];
  [v3 cancel];

  v4 = [(WFSaveDropboxFileActionUIKitUserInterface *)self completionHandler];

  if (v4)
  {
    v5 = [(WFSaveDropboxFileActionUIKitUserInterface *)self completionHandler];
    v6 = [MEMORY[0x277CCA9B8] userCancelledError];
    (v5)[2](v5, 0, v6);
  }

  [(WFSaveDropboxFileActionUIKitUserInterface *)self setCompletionHandler:0];

  [(WFSaveDropboxFileActionUIKitUserInterface *)self setSaveOperation:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__WFSaveDropboxFileActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFSaveDropboxFileActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __85__WFSaveDropboxFileActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)showWithServiceName:(id)a3 input:(id)a4 managedLevel:(unint64_t)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!v14)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFSaveDropboxFileActionUIKitUserInterface.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFSaveDropboxFileActionUIKitUserInterface *)self setCompletionHandler:v14];
  v15 = [(WFSaveDropboxFileActionUIKitUserInterface *)self selectedStorageServiceForName:v12];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__WFSaveDropboxFileActionUIKitUserInterface_showWithServiceName_input_managedLevel_options_completionHandler___block_invoke;
  block[3] = &unk_278C36960;
  v21 = v15;
  v22 = v13;
  v23 = self;
  v24 = v14;
  v25 = a5;
  v16 = v13;
  v17 = v14;
  v18 = v15;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __110__WFSaveDropboxFileActionUIKitUserInterface_showWithServiceName_input_managedLevel_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [WFFilePickerViewController alloc];
  v3 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __110__WFSaveDropboxFileActionUIKitUserInterface_showWithServiceName_input_managedLevel_options_completionHandler___block_invoke_2;
  v12[3] = &unk_278C36938;
  v4 = *(a1 + 56);
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *(a1 + 48);
  v11 = v5;
  *&v6 = *(a1 + 32);
  *(&v6 + 1) = v4;
  v13 = v11;
  v14 = v6;
  v15 = *(a1 + 64);
  v7 = [(WFFilePickerViewController *)v2 initForSavingFilesAtPath:@"/" service:v3 completionHandler:v12];
  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  [v8 setModalPresentationStyle:2];
  v9 = *(a1 + 48);
  v10 = [v8 presentationController];
  [v10 setDelegate:v9];

  [*(a1 + 48) presentContent:v8];
}

void __110__WFSaveDropboxFileActionUIKitUserInterface_showWithServiceName_input_managedLevel_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [*(a1 + 32) if_compactMap:&__block_literal_global_1981];
    v5 = *(a1 + 64);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __110__WFSaveDropboxFileActionUIKitUserInterface_showWithServiceName_input_managedLevel_options_completionHandler___block_invoke_4;
    v9[3] = &unk_278C376E0;
    v6 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v7 = [v6 saveFiles:v4 withManagedLevel:v5 toPath:v3 options:0 progress:0 completionHandler:v9];
    [*(a1 + 40) setSaveOperation:v7];
  }

  else
  {
    v8 = *(a1 + 56);
    v4 = [MEMORY[0x277CCA9B8] userCancelledError];
    (*(v8 + 16))(v8, 0, v4);
  }
}

void __110__WFSaveDropboxFileActionUIKitUserInterface_showWithServiceName_input_managedLevel_options_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) saveOperation];
  v7 = [v6 isCancelled];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 32) completionHandler];

    if (v8)
    {
      v9 = [*(a1 + 32) completionHandler];
      (v9)[2](v9, v10, v5);
    }

    [*(a1 + 32) setCompletionHandler:0];
    [*(a1 + 32) setSaveOperation:0];
  }
}

id __110__WFSaveDropboxFileActionUIKitUserInterface_showWithServiceName_input_managedLevel_options_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFC3C8];
  v3 = [a2 wrappedURL];
  v4 = [v3 url];
  v5 = [v2 fileWithURL:v4 options:8];

  return v5;
}

- (id)selectedStorageServiceForName:(id)a3
{
  v3 = MEMORY[0x277CE8890];
  v4 = a3;
  v5 = [v3 sharedRegistry];
  v6 = [v5 storageServiceWithName:v4];

  return v6;
}

@end