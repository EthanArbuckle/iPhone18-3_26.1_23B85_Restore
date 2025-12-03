@interface FPFetchPublishingURLOperation
- (FPFetchPublishingURLOperation)initWithItem:(id)item;
- (void)_setupFilePresenterAndWaitForUpload;
- (void)_tryFetchingSharingURL;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler;
- (void)cancel;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presentedItemDidChangeUbiquityAttributes:(id)attributes;
@end

@implementation FPFetchPublishingURLOperation

- (FPFetchPublishingURLOperation)initWithItem:(id)item
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v15[0] = itemCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14.receiver = self;
  v14.super_class = FPFetchPublishingURLOperation;
  v7 = [(FPActionOperation *)&v14 initWithItemsOfDifferentProviders:v6 action:0];

  if (v7)
  {
    objc_storeStrong(&v7->_item, item);
    v8 = objc_opt_new();
    [(FPActionOperation *)v7 setProgress:v8];

    v9 = objc_opt_new();
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v9;

    callbackQueue = [(FPOperation *)v7 callbackQueue];
    [(NSOperationQueue *)v7->_operationQueue setUnderlyingQueue:callbackQueue];

    [(FPActionOperation *)v7 setSetupRemoteOperationService:1];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)presentedItemDidChangeUbiquityAttributes:(id)attributes
{
  if (([(FPFetchPublishingURLOperation *)self isCancelled]& 1) == 0)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(FPFetchPublishingURLOperation *)self presentedItemDidChangeUbiquityAttributes:v4, v5, v6, v7, v8, v9, v10];
    }

    itemManager = [(FPActionOperation *)self itemManager];
    itemURL = self->_itemURL;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke;
    v13[3] = &unk_1E793B0E0;
    v13[4] = self;
    [itemManager fetchItemForURL:itemURL completionHandler:v13];
  }
}

void __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2;
  block[3] = &unk_1E7939090;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = (a1 + 40);
  if (([*(a1 + 40) isCancelled] & 1) == 0)
  {
    v10 = (a1 + 48);
    if (*(a1 + 48))
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_2(v9, v10, v11);
      }

      [*v9 completedWithResult:0 error:*v10];
    }

    else
    {
      v13 = *(a1 + 32);
      v12 = (a1 + 32);
      if ([v13 isUploaded])
      {
        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_5(v12, v14, v15, v16, v17, v18, v19, v20);
        }

        [*v9 _tryFetchingSharingURL];
      }

      else
      {
        if (([*v12 isUploading] & 1) == 0)
        {
          v21 = fp_current_or_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_3(v12, v21);
          }
        }

        v22 = [*v12 uploadingError];

        if (v22)
        {
          v23 = fp_current_or_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_4(v12, v23);
          }

          v24 = *v9;
          v25 = [*v12 uploadingError];
          [v24 completedWithResult:0 error:v25];
        }

        else if (!*(*v9 + 61))
        {
          v26 = *v9;
          objc_sync_enter(v26);
          v27 = *(*v9 + 60);
          objc_sync_exit(v26);

          v28 = [*v12 uploadingProgress];
          if (v27 && (v29 = v27, ![v27 isIndeterminate]) || (v29 = v28) != 0)
          {
            objc_storeStrong(*v9 + 61, v29);
            v30 = [*v9 progress];
            [v30 addChild:v29];
          }

          if (*(*v9 + 61))
          {
            v31 = [*v9 progress];
            [v31 startReportingProgress];
          }
        }
      }
    }
  }
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  handlerCopy = handler;
  v6 = [v4 errorWithDomain:v5 code:260 userInfo:0];
  [(FPOperation *)self completedWithResult:0 error:v6];

  handlerCopy[2](handlerCopy, 0);
}

- (void)_setupFilePresenterAndWaitForUpload
{
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  if (([(FPFetchPublishingURLOperation *)self isCancelled]& 1) == 0)
  {
    if (self->_isFilePresenter)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"FPFetchPublishingURLOperation.m" lineNumber:168 description:@"already a file presenter"];
    }

    itemManager = [(FPActionOperation *)self itemManager];
    item = self->_item;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__FPFetchPublishingURLOperation__setupFilePresenterAndWaitForUpload__block_invoke;
    v8[3] = &unk_1E793BBD8;
    v8[4] = self;
    [itemManager fetchURLForItem:item completionHandler:v8];

    self->_isFilePresenter = 1;
  }
}

void __68__FPFetchPublishingURLOperation__setupFilePresenterAndWaitForUpload__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__FPFetchPublishingURLOperation__setupFilePresenterAndWaitForUpload__block_invoke_2;
  block[3] = &unk_1E7939090;
  block[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __68__FPFetchPublishingURLOperation__setupFilePresenterAndWaitForUpload__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (*(a1 + 40) || (v3 = *(a1 + 48)) == 0)
    {
      v2 = *(a1 + 32);

      [v2 completedWithResult:0 error:?];
    }

    else
    {
      objc_storeStrong((*(a1 + 32) + 472), v3);
      [MEMORY[0x1E696ABF8] addFilePresenter:*(a1 + 32)];
      v4 = *(a1 + 32);
      v5 = [MEMORY[0x1E695DFD8] set];
      [v4 presentedItemDidChangeUbiquityAttributes:v5];

      v6 = [*(a1 + 32) _t_filePresenterStarted];
      if (v6)
      {
        v7 = v6;
        v6[2]();
        [*(a1 + 32) set_t_filePresenterStarted:0];
        v6 = v7;
      }
    }
  }
}

- (void)_tryFetchingSharingURL
{
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  remoteServiceProxy = [(FPActionOperation *)self remoteServiceProxy];
  itemID = [(FPItem *)self->_item itemID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__FPFetchPublishingURLOperation__tryFetchingSharingURL__block_invoke;
  v8[3] = &unk_1E793BBD8;
  v8[4] = self;
  v6 = [remoteServiceProxy fetchPublishingURLForItemID:itemID completionHandler:v8];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_remoteCancellableProgress, v6);
  if ([(FPFetchPublishingURLOperation *)selfCopy isCancelled])
  {
    [(NSProgress *)selfCopy->_remoteCancellableProgress cancel];
  }

  objc_sync_exit(selfCopy);
}

void __55__FPFetchPublishingURLOperation__tryFetchingSharingURL__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__FPFetchPublishingURLOperation__tryFetchingSharingURL__block_invoke_2;
  block[3] = &unk_1E7939090;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __55__FPFetchPublishingURLOperation__tryFetchingSharingURL__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:@"NSFileProviderErrorDomain"] && objc_msgSend(*(a1 + 32), "code") == -5006)
  {
    v3 = *(*(a1 + 40) + 456);

    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 40);

      return [v4 _setupFilePresenterAndWaitForUpload];
    }
  }

  else
  {
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);

  return [v6 completedWithResult:v7 error:v8];
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = FPFetchPublishingURLOperation;
  [(FPOperation *)&v5 cancel];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSProgress *)selfCopy->_remoteCancellableProgress cancel];
  remoteCancellableProgress = selfCopy->_remoteCancellableProgress;
  selfCopy->_remoteCancellableProgress = 0;

  objc_sync_exit(selfCopy);
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  [MEMORY[0x1E696ABF8] removeFilePresenter:self];
  fetchCompletionBlock = [(FPFetchPublishingURLOperation *)self fetchCompletionBlock];
  v9 = fetchCompletionBlock;
  if (fetchCompletionBlock)
  {
    (*(fetchCompletionBlock + 16))(fetchCompletionBlock, resultCopy, errorCopy);
    [(FPFetchPublishingURLOperation *)self setFetchCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = FPFetchPublishingURLOperation;
  [(FPActionOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

- (void)presentedItemDidChangeUbiquityAttributes:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] %@ item did change", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] received updated item %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_2(uint64_t a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 472);
  v5 = [*a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] couldn't get updated item for url %@; %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] we're waiting on upload but the item is not uploading: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_4(id *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [*a1 uploadingError];
  v4 = [v3 fp_prettyDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] item failed to upload: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __74__FPFetchPublishingURLOperation_presentedItemDidChangeUbiquityAttributes___block_invoke_2_cold_5(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] item was successfully uploaded: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end