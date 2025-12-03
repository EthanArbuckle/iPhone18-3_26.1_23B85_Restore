@interface ATStoreMusicDownloadPrepareOperation
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)error operationResult:(id)result;
@end

@implementation ATStoreMusicDownloadPrepareOperation

- (void)finishWithError:(id)error operationResult:(id)result
{
  v6.receiver = self;
  v6.super_class = ATStoreMusicDownloadPrepareOperation;
  [(ATStoreDownloadOperation *)&v6 finishWithError:error operationResult:result];
  redownloadRequest = self->_redownloadRequest;
  self->_redownloadRequest = 0;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = ATStoreMusicDownloadPrepareOperation;
  [(ATStoreMusicDownloadPrepareOperation *)&v3 cancel];
  [(ICMediaRedownloadRequest *)self->_redownloadRequest cancel];
}

- (void)execute
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    asset = [(ATStoreDownloadOperation *)self asset];
    *buf = 138543618;
    selfCopy6 = self;
    v54 = 2114;
    *v55 = asset;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting prepare phase for asset %{public}@", buf, 0x16u);
  }

  v5 = objc_alloc(MEMORY[0x277D7FC30]);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __47__ATStoreMusicDownloadPrepareOperation_execute__block_invoke;
  v51[3] = &unk_2784E5638;
  v51[4] = self;
  v6 = [v5 initWithBlock:v51];
  asset2 = [(ATStoreDownloadOperation *)self asset];
  storeInfo = [asset2 storeInfo];

  endpointType = [storeInfo endpointType];
  integerValue = [endpointType integerValue];

  if (integerValue > 1)
  {
    if (integerValue != 2)
    {
      if (integerValue != 3)
      {
        goto LABEL_21;
      }

      v16 = _ATLogCategoryStoreDownloads();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        adamID = [storeInfo adamID];
        unsignedLongLongValue = [adamID unsignedLongLongValue];
        *buf = 138543618;
        selfCopy6 = self;
        v54 = 2048;
        *v55 = unsignedLongLongValue;
        _os_log_impl(&dword_223819000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ performing subscription redownload. subscriptionItemID=%lld", buf, 0x16u);
      }

      v19 = objc_alloc(MEMORY[0x277D7FC48]);
      adamID2 = [storeInfo adamID];
      v15 = [v19 initWithRequestContext:v6 subscriptionItemID:{objc_msgSend(adamID2, "unsignedLongLongValue")}];
      integerValue = 3;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (integerValue)
  {
    if (integerValue != 1)
    {
      goto LABEL_21;
    }

LABEL_6:
    v11 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      redownloadParams = [storeInfo redownloadParams];
      *buf = 138543618;
      selfCopy6 = self;
      v54 = 2114;
      *v55 = redownloadParams;
      _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ performing purchase redownload. redownloadParams=%{public}@", buf, 0x16u);
    }

    v13 = objc_alloc(MEMORY[0x277D7FBC8]);
    adamID2 = [storeInfo redownloadParams];
    v15 = [v13 initWithRequestContext:v6 redownloadParametersString:adamID2];
    integerValue = 1;
LABEL_19:
    redownloadRequest = self->_redownloadRequest;
    self->_redownloadRequest = v15;

LABEL_20:
    goto LABEL_21;
  }

  sagaID = [storeInfo sagaID];
  if ([sagaID unsignedLongLongValue])
  {
    redownloadParams2 = [storeInfo redownloadParams];
    v22 = [redownloadParams2 length];

    if (v22)
    {
LABEL_16:
      v23 = _ATLogCategoryStoreDownloads();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        redownloadParams3 = [storeInfo redownloadParams];
        *buf = 138543618;
        selfCopy6 = self;
        v54 = 2114;
        *v55 = redownloadParams3;
        _os_log_impl(&dword_223819000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ performing match redownload. redownloadParams=%{public}@", buf, 0x16u);
      }

      v25 = objc_alloc(MEMORY[0x277D7FB00]);
      adamID2 = [storeInfo redownloadParams];
      v15 = [v25 initWithRequestContext:v6 redownloadParametersString:adamID2];
      integerValue = 2;
      goto LABEL_19;
    }
  }

  else
  {
  }

  adamID2 = [storeInfo adamID];
  if (![adamID2 unsignedLongLongValue])
  {
    integerValue = 0;
    goto LABEL_20;
  }

  redownloadParams4 = [storeInfo redownloadParams];
  v46 = [redownloadParams4 length];

  if (v46)
  {
    goto LABEL_6;
  }

  integerValue = 0;
LABEL_21:
  if (!self->_redownloadRequest)
  {
    v29 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy6 = self;
      v54 = 2048;
      *v55 = integerValue;
      _os_log_impl(&dword_223819000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ unsupported endpoint type %ld", buf, 0x16u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = 21;
    goto LABEL_27;
  }

  if ([(ATStoreMusicDownloadPrepareOperation *)self isCancelled])
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = 2;
LABEL_27:
    v30 = [v27 errorWithDomain:@"ATError" code:v28 userInfo:0];
    [(ATStoreMusicDownloadPrepareOperation *)self finishWithError:v30 operationResult:0];
    goto LABEL_35;
  }

  v30 = [MEMORY[0x277CCAB68] stringWithString:@"com.apple.AirTraffic.ATStoreMusicDownloadPrepareOperation"];
  asset3 = [(ATStoreDownloadOperation *)self asset];
  canUseCellularData = [asset3 canUseCellularData];

  if ((canUseCellularData & 1) == 0)
  {
    [v30 appendString:@".wifi"];
  }

  asset4 = [(ATStoreDownloadOperation *)self asset];
  canProxyUseCellularData = [asset4 canProxyUseCellularData];

  if ((canProxyUseCellularData & 1) == 0)
  {
    [v30 appendString:@".proxywifi"];
  }

  v35 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    asset5 = [(ATStoreDownloadOperation *)self asset];
    canUseCellularData2 = [asset5 canUseCellularData];
    asset6 = [(ATStoreDownloadOperation *)self asset];
    canProxyUseCellularData2 = [asset6 canProxyUseCellularData];
    *buf = 138543874;
    selfCopy6 = self;
    v54 = 1024;
    *v55 = canUseCellularData2;
    *&v55[4] = 1024;
    *&v55[6] = canProxyUseCellularData2;
    _os_log_impl(&dword_223819000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ creating url session with constraints: canUseCellularData:%{BOOL}u, canProxyUseCellularData:%{BOOL}u, ", buf, 0x18u);
  }

  mEMORY[0x277D7FC90] = [MEMORY[0x277D7FC90] sharedSessionManager];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __47__ATStoreMusicDownloadPrepareOperation_execute__block_invoke_27;
  v50[3] = &unk_2784E5660;
  v50[4] = self;
  v41 = [mEMORY[0x277D7FC90] sessionWithIdentifier:v30 creationBlock:v50];

  [(ICMediaRedownloadRequest *)self->_redownloadRequest setUrlSession:v41];
  progress = [(ICRequestOperation *)self progress];
  progress2 = [(ICMediaRedownloadRequest *)self->_redownloadRequest progress];
  [progress addChild:progress2 withPendingUnitCount:100];

  v44 = self->_redownloadRequest;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __47__ATStoreMusicDownloadPrepareOperation_execute__block_invoke_2;
  v47[3] = &unk_2784E5688;
  v47[4] = self;
  v49 = integerValue;
  v48 = v6;
  [(ICMediaRedownloadRequest *)v44 performRequestWithResponseHandler:v47];

LABEL_35:
}

void __47__ATStoreMusicDownloadPrepareOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [MEMORY[0x277D7FCA0] activeAccount];
  [v15 setIdentity:v3];

  v4 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  [v15 setIdentityStore:v4];

  v5 = ICBundleIdentifierForSystemApplicationType();
  v6 = [MEMORY[0x277D7FA48] defaultInfo];
  v7 = [v6 mutableCopy];

  [v7 setRequestingBundleIdentifier:v5];
  [v15 setClientInfo:v7];
  v8 = [*(a1 + 32) asset];
  if ([v8 isForeground])
  {
    v9 = 2;
  }

  else
  {
    v10 = [MEMORY[0x277D7FA80] currentDeviceInfo];
    if ([v10 isWatch])
    {
      v9 = 5;
    }

    else
    {
      v9 = 1;
    }
  }

  v11 = [objc_alloc(MEMORY[0x277D7FC40]) initWithUserInteractionLevel:v9];
  [v15 setAuthenticationProvider:v11];
  v12 = objc_alloc_init(MEMORY[0x277D7FC18]);
  v13 = [*(a1 + 32) asset];
  [v12 setAllowsHandlingNonAuthenticationDialogs:{objc_msgSend(v13, "isForeground")}];

  v14 = [objc_alloc(MEMORY[0x277D7FC10]) initWithConfiguration:v12];
  [v15 setStoreDialogResponseHandler:v14];
}

id __47__ATStoreMusicDownloadPrepareOperation_execute__block_invoke_27(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAD38] ic_defaultSessionConfiguration];
  v3 = [MEMORY[0x277D7FA80] currentDeviceInfo];
  if (![v3 isWatch])
  {
    goto LABEL_4;
  }

  v4 = [*(a1 + 32) asset];
  if ([v4 canUseCellularData])
  {

LABEL_4:
LABEL_5:
    v5 = [*(a1 + 32) asset];
    [v2 setAllowsCellularAccess:{objc_msgSend(v5, "canUseCellularData")}];

    goto LABEL_6;
  }

  v8 = [*(a1 + 32) asset];
  v9 = [v8 canProxyUseCellularData];

  if (!v9)
  {
    goto LABEL_5;
  }

  [v2 set_allowsWCA:0];
LABEL_6:
  v6 = [objc_alloc(MEMORY[0x277D7FC88]) initWithConfiguration:v2];

  return v6;
}

void __47__ATStoreMusicDownloadPrepareOperation_execute__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 || [*(a1 + 32) isCancelled] && (objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"ATError", 2, 0), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {
    if (*(a1 + 48) == 3)
    {
      v12 = [MEMORY[0x277D7FA78] standardDefaults];
      v13 = [v12 shouldForceStreamingOnlyKeysForPlayback];

      if (v13)
      {
        v14 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v23 = 138543362;
          v24 = v15;
          _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Resetting default to force streaming-only playback keys now that we have completed a redownload request successfully", &v23, 0xCu);
        }

        v16 = [MEMORY[0x277D7FA78] standardDefaults];
        [v16 setShouldForceStreamingOnlyKeysForPlayback:0];
      }
    }

    v10 = 0;
    v11 = 1;
  }

  v17 = [v7 items];
  v18 = [v17 firstObject];

  if (v11)
  {
    v19 = objc_alloc_init(ATStoreDownloadOperationResult);
LABEL_18:
    v22 = [v7 shouldCancelPurchaseBatch];
    goto LABEL_19;
  }

  v20 = [v10 domain];
  if ([v20 isEqualToString:*MEMORY[0x277D7F900]])
  {
    v21 = [v10 code] == -7403;
  }

  else
  {
    v21 = 0;
  }

  v19 = objc_alloc_init(ATStoreDownloadOperationResult);
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = 1;
LABEL_19:
  [(ATStoreDownloadOperationResult *)v19 setCancelAllRemaining:v22];
  [(ATStoreDownloadOperationResult *)v19 setStoreMediaResponseItem:v18];
  [(ATStoreDownloadOperationResult *)v19 setRequestContext:*(a1 + 40)];
  [*(a1 + 32) finishWithError:v10 operationResult:v19];
}

@end