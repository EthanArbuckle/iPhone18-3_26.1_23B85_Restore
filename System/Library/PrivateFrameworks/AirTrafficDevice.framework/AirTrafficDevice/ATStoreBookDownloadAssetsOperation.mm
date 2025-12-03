@interface ATStoreBookDownloadAssetsOperation
- (void)cancel;
- (void)dealloc;
- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error;
- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change;
- (void)execute;
- (void)finishWithError:(id)error operationResult:(id)result;
@end

@implementation ATStoreBookDownloadAssetsOperation

- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  errorCopy = error;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = statesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (self->_bookDownloadID)
        {
          downloadID = [*(*(&v17 + 1) + 8 * i) downloadID];
          v15 = [downloadID isEqualToString:self->_bookDownloadID];

          if (v15)
          {
            v16 = [MEMORY[0x277CCA9B8] at_ATErrorFromError:errorCopy];
            [(ATStoreBookDownloadAssetsOperation *)self finishWithError:v16 operationResult:0];

            goto LABEL_12;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  changeCopy = change;
  v6 = [changeCopy countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(changeCopy);
        }

        if (self->_bookDownloadID)
        {
          v10 = *(*(&v25 + 1) + 8 * i);
          downloadID = [v10 downloadID];
          v12 = [downloadID isEqualToString:self->_bookDownloadID];

          if (v12)
          {
            if ([v10 downloadPhase] == 2)
            {
              transferBytesWritten = [v10 transferBytesWritten];
              [transferBytesWritten floatValue];
              v15 = v14;

              transferBytesExpected = [v10 transferBytesExpected];
              [transferBytesExpected floatValue];
              v18 = v17;

              v19 = _ATLogCategoryStoreDownloads();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                asset = [(ATStoreDownloadOperation *)self asset];
                *buf = 138543874;
                selfCopy = self;
                v31 = 2114;
                v32 = asset;
                v33 = 2048;
                v34 = (v15 / v18);
                _os_log_impl(&dword_223819000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ : %.2f", buf, 0x20u);
              }

              progress = [(ICRequestOperation *)self progress];
              transferBytesExpected2 = [v10 transferBytesExpected];
              [progress setTotalUnitCount:{objc_msgSend(transferBytesExpected2, "longLongValue")}];

              progress2 = [(ICRequestOperation *)self progress];
              transferBytesWritten2 = [v10 transferBytesWritten];
              [progress2 setCompletedUnitCount:{objc_msgSend(transferBytesWritten2, "longLongValue")}];
            }

            goto LABEL_15;
          }
        }
      }

      v7 = [changeCopy countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)finishWithError:(id)error operationResult:(id)result
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  resultCopy = result;
  v8 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ finished download with error %{public}@.", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = ATStoreBookDownloadAssetsOperation;
  [(ATStoreDownloadOperation *)&v9 finishWithError:errorCopy operationResult:resultCopy];
}

- (void)cancel
{
  if (self->_bookDownloadID)
  {
    sharedInstance = [getBLDownloadQueueNonUIClass() sharedInstance];
    bookDownloadID = self->_bookDownloadID;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__ATStoreBookDownloadAssetsOperation_cancel__block_invoke;
    v6[3] = &unk_2784E58E8;
    v6[4] = self;
    [sharedInstance cancelDownloadWithID:bookDownloadID withCompletion:v6];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ATStoreBookDownloadAssetsOperation;
    [(ATStoreBookDownloadAssetsOperation *)&v5 cancel];
  }
}

id __44__ATStoreBookDownloadAssetsOperation_cancel__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = ATStoreBookDownloadAssetsOperation;
  return objc_msgSendSuper2(&v2, sel_cancel);
}

- (void)execute
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(ATStoreBookDownloadAssetsOperation *)self isCancelled])
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    [(ATStoreBookDownloadAssetsOperation *)self finishWithError:v26 operationResult:0];
  }

  else
  {
    asset = [(ATStoreDownloadOperation *)self asset];
    storeInfo = [asset storeInfo];
    v5 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = asset;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting download for asset %{public}@.", buf, 0x16u);
    }

    sharedInstance = [getBLDownloadQueueNonUIClass() sharedInstance];
    [sharedInstance addObserver:self];
    if ([asset isRestore])
    {
      storeInfo2 = [asset storeInfo];
      downloadDictionary = [storeInfo2 downloadDictionary];
      v9 = [downloadDictionary mutableCopy];

      [v9 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D6A000]];
      assetType = [asset assetType];
      v11 = [assetType isEqualToString:@"Audiobook"];
      v12 = MEMORY[0x277D69EA0];
      if (!v11)
      {
        v12 = MEMORY[0x277D69EB0];
      }

      [v9 setObject:*v12 forKey:*MEMORY[0x277D6A010]];

      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v13 = getBLRestoreRequestItemClass_softClass;
      v32 = getBLRestoreRequestItemClass_softClass;
      if (!getBLRestoreRequestItemClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getBLRestoreRequestItemClass_block_invoke;
        v35 = &unk_2784E5B40;
        v36 = &v29;
        __getBLRestoreRequestItemClass_block_invoke(buf);
        v13 = v30[3];
      }

      v14 = v13;
      _Block_object_dispose(&v29, 8);
      v15 = [v13 alloc];
      storeInfo3 = [asset storeInfo];
      assetDictionary = [storeInfo3 assetDictionary];
      v18 = [v15 initWithDownloadDictionary:v9 assetDictionary:assetDictionary];

      v33 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __45__ATStoreBookDownloadAssetsOperation_execute__block_invoke;
      v28[3] = &unk_2784E4EA8;
      v28[4] = self;
      [sharedInstance addDownloadsWithRestoreContentRequestItems:v19 completion:v28];
    }

    else
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v20 = getBLPurchaseRequestClass_softClass;
      v32 = getBLPurchaseRequestClass_softClass;
      if (!getBLPurchaseRequestClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getBLPurchaseRequestClass_block_invoke;
        v35 = &unk_2784E5B40;
        v36 = &v29;
        __getBLPurchaseRequestClass_block_invoke(buf);
        v20 = v30[3];
      }

      v21 = v20;
      _Block_object_dispose(&v29, 8);
      redownloadParams = [storeInfo redownloadParams];
      adamID = [storeInfo adamID];
      v9 = [v20 requestWithBuyParameters:redownloadParams storeIdentifier:adamID];

      [v9 setRestore:{objc_msgSend(asset, "isRestore")}];
      assetType2 = [asset assetType];
      [v9 setAudiobook:{objc_msgSend(assetType2, "isEqualToString:", @"Audiobook"}];

      dSID = [storeInfo DSID];
      [v9 setAccountIdentifier:dSID];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __45__ATStoreBookDownloadAssetsOperation_execute__block_invoke_8;
      v27[3] = &unk_2784E4ED0;
      v27[4] = self;
      [sharedInstance purchaseWithRequest:v9 completion:v27];
    }
  }
}

void __45__ATStoreBookDownloadAssetsOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 downloadID];

  v8 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished adding restore download with err %{public}@. downloadID=%{public}@", &v15, 0x20u);
  }

  if (!(v5 | v7))
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
  }

  if (v5)
  {
    v10 = objc_alloc_init(ATStoreDownloadOperationResult);
    [(ATStoreDownloadOperationResult *)v10 setCancelAllRemaining:AMSErrorIsEqual()];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA9B8] at_ATErrorFromError:v5];
    [v11 finishWithError:v12 operationResult:v10];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v10 = *(v13 + 328);
    *(v13 + 328) = v14;
  }
}

void __45__ATStoreBookDownloadAssetsOperation_execute__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed purchase with err %{public}@. downloadID=%{public}@", &v13, 0x20u);
  }

  v10 = *(a1 + 32);
  if (v7)
  {
    v11 = [MEMORY[0x277CCA9B8] at_ATErrorFromError:v7];
    [v10 finishWithError:v11 operationResult:0];
  }

  else
  {
    v12 = v6;
    v11 = v10[41];
    v10[41] = v12;
  }
}

- (void)dealloc
{
  sharedInstance = [getBLDownloadQueueNonUIClass() sharedInstance];
  [sharedInstance removeObserver:self];

  v4.receiver = self;
  v4.super_class = ATStoreBookDownloadAssetsOperation;
  [(ATStoreBookDownloadAssetsOperation *)&v4 dealloc];
}

@end