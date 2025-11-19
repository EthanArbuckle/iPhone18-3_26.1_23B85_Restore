@interface ATStoreMusicRestorePrepareOperation
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)a3 operationResult:(id)a4;
@end

@implementation ATStoreMusicRestorePrepareOperation

- (void)finishWithError:(id)a3 operationResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    if ([(ATStoreMusicRestorePrepareOperation *)self isCancelled])
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    }

    else
    {
      v9 = 0;
    }
  }

  v11.receiver = self;
  v11.super_class = ATStoreMusicRestorePrepareOperation;
  [(ATStoreDownloadOperation *)&v11 finishWithError:v9 operationResult:v7];
  restoreRequest = self->_restoreRequest;
  self->_restoreRequest = 0;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = ATStoreMusicRestorePrepareOperation;
  [(ATStoreMusicRestorePrepareOperation *)&v3 cancel];
  [(ICMusicRestoreRequest *)self->_restoreRequest cancel];
}

- (void)execute
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D7FC30]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __46__ATStoreMusicRestorePrepareOperation_execute__block_invoke;
  v47[3] = &unk_2784E5638;
  v47[4] = self;
  v4 = [v3 initWithBlock:v47];
  v5 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v6 = [MEMORY[0x277D7FCA0] activeAccount];
  v46 = 0;
  v7 = [v5 getPropertiesForUserIdentity:v6 error:&v46];
  v8 = v46;

  if (v8 | v7)
  {
    if ([(ATStoreMusicRestorePrepareOperation *)self isCancelled])
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
      [(ATStoreMusicRestorePrepareOperation *)self finishWithError:v9 operationResult:0];

      goto LABEL_15;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7400 userInfo:0];
  }

  if (v8)
  {
    v10 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v49 = self;
      v50 = 2114;
      v51 = v8;
      _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get properties for active account - error %{public}@.", buf, 0x16u);
    }

    [(ATStoreMusicRestorePrepareOperation *)self finishWithError:v8 operationResult:0];
  }

  else
  {
    v43 = v4;
    v8 = [v7 storefrontIdentifier];
    v11 = [(ATStoreDownloadOperation *)self asset];
    v12 = [v11 storeInfo];
    v13 = [v12 flavor];
    v14 = v13;
    v15 = @"HQ";
    if (v13)
    {
      v15 = v13;
    }

    v41 = v15;

    v16 = [(ATStoreDownloadOperation *)self asset];
    v17 = [v16 storePID];

    v42 = v7;
    if (!v17)
    {
      v18 = [(ATStoreDownloadOperation *)self asset];
      v19 = [v18 storeInfo];
      v20 = [v19 adamID];
      v17 = [v20 longLongValue];

      if (v17 <= 0)
      {
        v21 = [(ATStoreDownloadOperation *)self asset];
        v22 = [v21 storeInfo];
        v23 = [v22 sagaID];
        v24 = [v23 longLongValue];

        v17 = v24 & ~(v24 >> 63);
      }
    }

    v37 = objc_alloc(MEMORY[0x277D7FB50]);
    v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
    v40 = [(ATStoreDownloadOperation *)self asset];
    v26 = [v40 prettyName];
    v39 = [(ATStoreDownloadOperation *)self asset];
    v27 = [v39 storeInfo];
    v28 = [v27 DSID];
    v29 = [(ATStoreDownloadOperation *)self asset];
    v30 = [v29 storeInfo];
    v31 = [v30 matchStatus];
    v38 = [v37 initWithItemID:v25 title:v26 storeFrontID:v8 mediaKind:@"song" accountID:v28 matchStatus:v31 flavor:v41];

    v4 = v43;
    v32 = [objc_alloc(MEMORY[0x277D7FB48]) initWithRequestContext:v43 parameters:v38];
    restoreRequest = self->_restoreRequest;
    self->_restoreRequest = v32;

    v34 = [(ICRequestOperation *)self progress];
    v35 = [(ICMusicRestoreRequest *)self->_restoreRequest progress];
    [v34 addChild:v35 withPendingUnitCount:100];

    v36 = self->_restoreRequest;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __46__ATStoreMusicRestorePrepareOperation_execute__block_invoke_62;
    v44[3] = &unk_2784E56B0;
    v44[4] = self;
    v45 = v43;
    [(ICMusicRestoreRequest *)v36 performRestoreRequestWithCompletionHandler:v44];

    v7 = v42;
  }

LABEL_15:
}

void __46__ATStoreMusicRestorePrepareOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D7FCA0] activeAccount];
  [v3 setIdentity:v4];

  v5 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  [v3 setIdentityStore:v5];

  v6 = [MEMORY[0x277D7FA48] defaultInfo];
  v7 = [v6 mutableCopy];

  [v7 setRequestingBundleIdentifier:@"com.apple.atc"];
  [v7 setProcessName:@"atc"];
  [v7 setClientIdentifier:@"atc"];
  [v7 setClientVersion:@"1.0"];
  [v3 setClientInfo:v7];
  v8 = [MEMORY[0x277D7FA88] sharedMonitor];
  v9 = [v8 isDeviceSetupComplete];

  if (v9)
  {
    v10 = [*(a1 + 32) asset];
    if ([v10 isForeground])
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [objc_alloc(MEMORY[0x277D7FC40]) initWithUserInteractionLevel:v11];
    [v3 setAuthenticationProvider:v12];
    v13 = objc_alloc_init(MEMORY[0x277D7FC18]);
    v14 = [*(a1 + 32) asset];
    [v13 setAllowsHandlingNonAuthenticationDialogs:{objc_msgSend(v14, "isForeground")}];

    v15 = [objc_alloc(MEMORY[0x277D7FC10]) initWithConfiguration:v13];
    [v3 setStoreDialogResponseHandler:v15];
  }

  v16 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = [v17 asset];
    v21 = 138543874;
    v22 = v17;
    v23 = 2114;
    v24 = v18;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&dword_223819000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ starting restore for asset %{public}@, setupCompleted=%{BOOL}u", &v21, 0x1Cu);
  }

  v19 = [objc_alloc(MEMORY[0x277D7FBA0]) initWithBundleIdentifier:@"com.apple.atc"];
  v20 = [*(a1 + 32) asset];
  [v19 setShouldAllowDataForCellularNetworkTypes:{objc_msgSend(v20, "canUseCellularData")}];

  [v3 setNetworkConstraints:v19];
}

void __46__ATStoreMusicRestorePrepareOperation_execute__block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ finished restore request with error %{public}@.", &v16, 0x16u);
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0 && !objc_msgSend(*(*(a1 + 32) + 320), "isCancelled"))
  {
    v11 = [v5 items];
    v10 = [v11 firstObject];

    if (v6)
    {
      v12 = [v6 domain];
      if ([v12 isEqualToString:*MEMORY[0x277D7F900]])
      {
        v13 = [v6 code] == -7403;
      }

      else
      {
        v13 = 0;
      }

      v14 = objc_alloc_init(ATStoreDownloadOperationResult);
      if (v13)
      {
        v15 = 1;
LABEL_14:
        [(ATStoreDownloadOperationResult *)v14 setCancelAllRemaining:v15];
        [(ATStoreDownloadOperationResult *)v14 setStoreMediaResponseItem:v10];
        [(ATStoreDownloadOperationResult *)v14 setRequestContext:*(a1 + 40)];
        [*(a1 + 32) finishWithError:v6 operationResult:v14];

        goto LABEL_15;
      }
    }

    else
    {
      v14 = objc_alloc_init(ATStoreDownloadOperationResult);
    }

    v15 = [v5 shouldCancelPurchaseBatch];
    goto LABEL_14;
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
  [v9 finishWithError:v10 operationResult:0];
LABEL_15:
}

@end