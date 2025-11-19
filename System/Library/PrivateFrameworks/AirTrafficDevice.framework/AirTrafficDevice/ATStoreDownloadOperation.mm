@interface ATStoreDownloadOperation
- (ATStoreDownloadOperation)initWithAsset:(id)a3;
- (id)description;
- (void)finishWithError:(id)a3 operationResult:(id)a4;
- (void)performOnOperationQueue:(id)a3 completion:(id)a4;
@end

@implementation ATStoreDownloadOperation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ATStoreDownloadOperation;
  v4 = [(ATStoreDownloadOperation *)&v11 description];
  v5 = [(ATStoreDownloadOperation *)self asset];
  v6 = [v5 identifier];
  v7 = [(ATStoreDownloadOperation *)self asset];
  v8 = [v7 prettyName];
  v9 = [v3 stringWithFormat:@"%@ (%@ : %@)", v4, v6, v8];

  return v9;
}

- (void)finishWithError:(id)a3 operationResult:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA9B8] at_ATErrorFromError:v6];
  v9 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ finished. err=%{public}@, result=%{public}@", buf, 0x20u);
  }

  [(ATStoreDownloadOperation *)self set_operationResult:v7];
  if (!v8)
  {
    v10 = [(ICRequestOperation *)self progress];
    v11 = [(ICRequestOperation *)self progress];
    [v10 setCompletedUnitCount:{objc_msgSend(v11, "totalUnitCount")}];
  }

  v12.receiver = self;
  v12.super_class = ATStoreDownloadOperation;
  [(ICRequestOperation *)&v12 finishWithError:v8];
}

- (void)performOnOperationQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ATStoreDownloadOperation_performOnOperationQueue_completion___block_invoke;
  v8[3] = &unk_2784E5A00;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(ICRequestOperation *)self performRequestOnOperationQueue:a3 withCompletionHandler:v8];
}

void __63__ATStoreDownloadOperation_performOnOperationQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 _operationResult];
  (*(v2 + 16))(v2, v4, v5);
}

- (ATStoreDownloadOperation)initWithAsset:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATStoreDownloadOperation;
  v6 = [(ICRequestOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
    if ([v5 isPrioritized])
    {
      [(ATStoreDownloadOperation *)v7 setQueuePriority:8];
    }
  }

  return v7;
}

@end