@interface WFSaveDropboxFileActionUIKitUserInterface
- (id)selectedStorageServiceForName:(id)name;
- (void)cancel;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)showWithServiceName:(id)name input:(id)input managedLevel:(unint64_t)level options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation WFSaveDropboxFileActionUIKitUserInterface

- (void)cancel
{
  saveOperation = [(WFSaveDropboxFileActionUIKitUserInterface *)self saveOperation];
  [saveOperation cancel];

  completionHandler = [(WFSaveDropboxFileActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFSaveDropboxFileActionUIKitUserInterface *)self completionHandler];
    userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
    (completionHandler2)[2](completionHandler2, 0, userCancelledError);
  }

  [(WFSaveDropboxFileActionUIKitUserInterface *)self setCompletionHandler:0];

  [(WFSaveDropboxFileActionUIKitUserInterface *)self setSaveOperation:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__WFSaveDropboxFileActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFSaveDropboxFileActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __85__WFSaveDropboxFileActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)showWithServiceName:(id)name input:(id)input managedLevel:(unint64_t)level options:(unint64_t)options completionHandler:(id)handler
{
  nameCopy = name;
  inputCopy = input;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSaveDropboxFileActionUIKitUserInterface.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFSaveDropboxFileActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  v15 = [(WFSaveDropboxFileActionUIKitUserInterface *)self selectedStorageServiceForName:nameCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__WFSaveDropboxFileActionUIKitUserInterface_showWithServiceName_input_managedLevel_options_completionHandler___block_invoke;
  block[3] = &unk_278C36960;
  v21 = v15;
  v22 = inputCopy;
  selfCopy = self;
  v24 = handlerCopy;
  levelCopy = level;
  v16 = inputCopy;
  v17 = handlerCopy;
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

- (id)selectedStorageServiceForName:(id)name
{
  v3 = MEMORY[0x277CE8890];
  nameCopy = name;
  sharedRegistry = [v3 sharedRegistry];
  v6 = [sharedRegistry storageServiceWithName:nameCopy];

  return v6;
}

@end