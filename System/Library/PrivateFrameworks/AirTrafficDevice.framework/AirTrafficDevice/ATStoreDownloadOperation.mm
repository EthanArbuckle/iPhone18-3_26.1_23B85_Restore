@interface ATStoreDownloadOperation
- (ATStoreDownloadOperation)initWithAsset:(id)asset;
- (id)description;
- (void)finishWithError:(id)error operationResult:(id)result;
- (void)performOnOperationQueue:(id)queue completion:(id)completion;
@end

@implementation ATStoreDownloadOperation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ATStoreDownloadOperation;
  v4 = [(ATStoreDownloadOperation *)&v11 description];
  asset = [(ATStoreDownloadOperation *)self asset];
  identifier = [asset identifier];
  asset2 = [(ATStoreDownloadOperation *)self asset];
  prettyName = [asset2 prettyName];
  v9 = [v3 stringWithFormat:@"%@ (%@ : %@)", v4, identifier, prettyName];

  return v9;
}

- (void)finishWithError:(id)error operationResult:(id)result
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  resultCopy = result;
  v8 = [MEMORY[0x277CCA9B8] at_ATErrorFromError:errorCopy];
  v9 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v15 = 2114;
    v16 = errorCopy;
    v17 = 2114;
    v18 = resultCopy;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ finished. err=%{public}@, result=%{public}@", buf, 0x20u);
  }

  [(ATStoreDownloadOperation *)self set_operationResult:resultCopy];
  if (!v8)
  {
    progress = [(ICRequestOperation *)self progress];
    progress2 = [(ICRequestOperation *)self progress];
    [progress setCompletedUnitCount:{objc_msgSend(progress2, "totalUnitCount")}];
  }

  v12.receiver = self;
  v12.super_class = ATStoreDownloadOperation;
  [(ICRequestOperation *)&v12 finishWithError:v8];
}

- (void)performOnOperationQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ATStoreDownloadOperation_performOnOperationQueue_completion___block_invoke;
  v8[3] = &unk_2784E5A00;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ICRequestOperation *)self performRequestOnOperationQueue:queue withCompletionHandler:v8];
}

void __63__ATStoreDownloadOperation_performOnOperationQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 _operationResult];
  (*(v2 + 16))(v2, v4, v5);
}

- (ATStoreDownloadOperation)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = ATStoreDownloadOperation;
  v6 = [(ICRequestOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    if ([assetCopy isPrioritized])
    {
      [(ATStoreDownloadOperation *)v7 setQueuePriority:8];
    }
  }

  return v7;
}

@end