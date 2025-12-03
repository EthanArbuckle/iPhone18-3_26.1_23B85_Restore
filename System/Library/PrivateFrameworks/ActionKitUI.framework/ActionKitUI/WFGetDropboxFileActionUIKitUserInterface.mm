@interface WFGetDropboxFileActionUIKitUserInterface
- (id)selectedStorageServiceForName:(id)name;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithResults:(id)results error:(id)error;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showWithServiceName:(id)name directoryPath:(id)path options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation WFGetDropboxFileActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)dismiss
{
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFGetDropboxFileActionUIKitUserInterface *)self finishWithResults:0 error:userCancelledError];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFGetDropboxFileActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFGetDropboxFileActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __84__WFGetDropboxFileActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithResults:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  completionHandler = [(WFGetDropboxFileActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFGetDropboxFileActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, resultsCopy, errorCopy);
  }

  else
  {
    [(WFGetDropboxFileActionUIKitUserInterface *)self setCompletionHandler:0];
  }
}

- (void)showWithServiceName:(id)name directoryPath:(id)path options:(unint64_t)options completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pathCopy = path;
  handlerCopy = handler;
  [(WFGetDropboxFileActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  accessSpecifierForCurrentConnection = [MEMORY[0x277D79D80] accessSpecifierForCurrentConnection];
  bundleIdentifier = [accessSpecifierForCurrentConnection bundleIdentifier];

  if (!bundleIdentifier)
  {
    v15 = getWFActionsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      currentConnection = [MEMORY[0x277CCAE80] currentConnection];
      *buf = 136315394;
      v30 = "[WFGetDropboxFileActionUIKitUserInterface showWithServiceName:directoryPath:options:completionHandler:]";
      v31 = 2112;
      v32 = currentConnection;
      _os_log_impl(&dword_23E342000, v15, OS_LOG_TYPE_FAULT, "%s Could not get bundle identifier for the calling process. +[NSXPCConnection currentConnection] is %@", buf, 0x16u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:57 userInfo:0];
    [(WFGetDropboxFileActionUIKitUserInterface *)self finishWithResults:0 error:v17];
  }

  v18 = [(WFGetDropboxFileActionUIKitUserInterface *)self selectedStorageServiceForName:nameCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__WFGetDropboxFileActionUIKitUserInterface_showWithServiceName_directoryPath_options_completionHandler___block_invoke;
  block[3] = &unk_278C36960;
  v27 = handlerCopy;
  optionsCopy = options;
  v24 = v18;
  selfCopy = self;
  v26 = pathCopy;
  v19 = pathCopy;
  v20 = handlerCopy;
  v21 = v18;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v22 = *MEMORY[0x277D85DE8];
}

void __104__WFGetDropboxFileActionUIKitUserInterface_showWithServiceName_directoryPath_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (*(a1 + 64) >> 1) & 1;
  v3 = [WFFilePickerViewController alloc];
  v4 = *(a1 + 32);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __104__WFGetDropboxFileActionUIKitUserInterface_showWithServiceName_directoryPath_options_completionHandler___block_invoke_2;
  v14 = &unk_278C36568;
  v5 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = v5;
  v6 = [(WFFilePickerViewController *)v3 initForPickingFilesAtPath:@"/" service:v4 allowsMultipleSelection:v2 completionHandler:&v11];
  v7 = objc_alloc(MEMORY[0x277D757A0]);
  v8 = [v7 initWithRootViewController:{v6, v11, v12, v13, v14}];
  [v8 setModalPresentationStyle:2];
  v9 = *(a1 + 40);
  v10 = [v8 presentationController];
  [v10 setDelegate:v9];

  [v6 navigateToSubdirectoryAtPath:*(a1 + 48)];
  [*(a1 + 40) presentContent:v8];
}

void __104__WFGetDropboxFileActionUIKitUserInterface_showWithServiceName_directoryPath_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = [v5 if_map:&__block_literal_global_566];
    [*(a1 + 32) finishWithResults:v3 error:0];
  }

  else
  {
    v4 = *(a1 + 40);
    v3 = [MEMORY[0x277CCA9B8] userCancelledError];
    (*(v4 + 16))(v4, 0, v3);
  }
}

id __104__WFGetDropboxFileActionUIKitUserInterface_showWithServiceName_directoryPath_options_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277CE8828];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v3 resultWithMetadata:v5];

  return v6;
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