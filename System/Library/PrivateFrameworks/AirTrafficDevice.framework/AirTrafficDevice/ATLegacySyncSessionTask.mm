@interface ATLegacySyncSessionTask
- (ATLegacySyncSessionTask)initWithDataClass:(id)class;
- (void)_finishWithError:(id)error shouldAddAssetTask:(BOOL)task;
- (void)cancel;
- (void)prepareWithHostAnchor:(id)anchor version:(id)version;
- (void)reconcileWithAnchor:(id)anchor syncType:(unsigned int)type;
@end

@implementation ATLegacySyncSessionTask

- (void)_finishWithError:(id)error shouldAddAssetTask:(BOOL)task
{
  taskCopy = task;
  v16[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (taskCopy)
  {
    v7 = [ATAssetSessionTask alloc];
    dataClass = [(ATSessionTask *)self dataClass];
    v9 = [(ATAssetSessionTask *)v7 initWithDataClass:dataClass];

    v10 = MEMORY[0x277CCACA8];
    dataClass2 = [(ATSessionTask *)self dataClass];
    v12 = [v10 stringWithFormat:@"%@ sync", dataClass2];
    [(ATSessionTask *)v9 setLocalizedDescription:v12];

    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
    [(ATAssetSessionTask *)v9 setFilterPredicate:v13];

    session = [(ATSessionTask *)self session];
    v16[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [session addSessionTasks:v15];
  }

  [(ATSessionTask *)self setError:errorCopy];
  [(ATSessionTask *)self setFinished:1];
}

uint64_t __63__ATLegacySyncSessionTask__finishWithError_shouldAddAssetTask___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 dataclass];
  if (![v3 isEqualToString:@"Application"])
  {

    goto LABEL_5;
  }

  v4 = [v2 isRestore];

  if ((v4 & 1) == 0)
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)reconcileWithAnchor:(id)anchor syncType:(unsigned int)type
{
  v17 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  if (type == 3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ATClient *)self->_client syncEndedWithSuccess:1];
    }

    [(ATSessionTask *)self setFinished:1];
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      dataClass = [(ATSessionTask *)self dataClass];
      *buf = 138543362;
      v16 = dataClass;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "Running reconcile phase for %{public}@", buf, 0xCu);
    }

    Current = CFAbsoluteTimeGetCurrent();
    client = self->_client;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__ATLegacySyncSessionTask_reconcileWithAnchor_syncType___block_invoke;
    v11[3] = &unk_2784E4B30;
    v11[4] = self;
    typeCopy = type;
    v12 = anchorCopy;
    v13 = Current;
    dispatch_client_async(client, v11);
  }

  else
  {
    [(ATLegacySyncSessionTask *)self _finishWithError:0 shouldAddAssetTask:1];
  }
}

void __56__ATLegacySyncSessionTask_reconcileWithAnchor_syncType___block_invoke(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__1637;
  v13[4] = __Block_byref_object_dispose__1638;
  v14 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 152);
  v5 = *(a1 + 56);
  obj = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ATLegacySyncSessionTask_reconcileWithAnchor_syncType___block_invoke_16;
  v12[3] = &unk_2784E4AE0;
  v12[4] = v3;
  v6 = [v4 reconcileSync:v5 withNewAnchor:v2 progressCallback:v12 error:&obj];
  objc_storeStrong(&v14, obj);
  v7 = *(a1 + 32);
  v8 = *(v7 + 160);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ATLegacySyncSessionTask_reconcileWithAnchor_syncType___block_invoke_2;
  v9[3] = &unk_2784E4B08;
  v9[6] = *(a1 + 48);
  v10 = v6;
  v9[4] = v7;
  v9[5] = v13;
  dispatch_async(v8, v9);
  _Block_object_dispose(v13, 8);
}

uint64_t __56__ATLegacySyncSessionTask_reconcileWithAnchor_syncType___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = *(a1 + 48);
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 152) syncEndedWithSuccess:*(a1 + 56)];
    }

    if (*(a1 + 56))
    {
      v5 = _ATLogCategoryiTunesSync();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) dataClass];
        v7 = *(*(*(a1 + 40) + 8) + 40);
        v17 = 138543874;
        v18 = v6;
        v19 = 2114;
        v20 = v7;
        v21 = 2048;
        v22 = Current - v4;
        _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "Reconcile completed for %{public}@ with error: %{public}@ in %.1fs", &v17, 0x20u);
      }

      v8 = *(a1 + 32);
      v9 = 0;
      v10 = 1;
    }

    else
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }

      v14 = _ATLogCategoryiTunesSync();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [*(a1 + 32) dataClass];
        v16 = *(*(*(a1 + 40) + 8) + 40);
        v17 = 138543618;
        v18 = v15;
        v19 = 2114;
        v20 = v16;
        _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_ERROR, "Sync Failed! Reconciliation failed for %{public}@, error: %{public}@", &v17, 0x16u);
      }

      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = 0;
    }

    return [v8 _finishWithError:v9 shouldAddAssetTask:v10];
  }

  return result;
}

- (void)prepareWithHostAnchor:(id)anchor version:(id)version
{
  v26 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  versionCopy = version;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = objc_opt_respondsToSelector();
  client = self->_client;
  if (v9)
  {
    v21 = 0;
    v11 = [(ATClient *)client prepareForSyncWithHostAnchor:anchorCopy progressCallback:&__block_literal_global_1648 error:&v21];
    v12 = v21;
    if (v11)
    {
      goto LABEL_12;
    }

    v13 = _ATLogCategoryiTunesSync();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    dataClass = [(ATSessionTask *)self dataClass];
    *buf = 138543618;
    v23 = dataClass;
    v24 = 2114;
    v25 = *&v12;
LABEL_9:
    _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_ERROR, "Sync Failed! Prep failed for %{public}@, error: %{public}@", buf, 0x16u);

LABEL_10:
    [(ATSessionTask *)self setError:v12];
    [(ATSessionTask *)self setFinished:1];
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = self->_client;
    v20 = 0;
    v16 = [(ATClient *)v15 prepareForSyncWithHostAnchor:anchorCopy progressCallback:&__block_literal_global_13 grappaID:[(ATLegacySyncSessionTask *)self grappaSessionID] hostVersion:versionCopy error:&v20];
    v12 = v20;
    if (v16)
    {
      goto LABEL_12;
    }

    v13 = _ATLogCategoryiTunesSync();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    dataClass = [(ATSessionTask *)self dataClass];
    *buf = 138543618;
    v23 = dataClass;
    v24 = 2114;
    v25 = *&v12;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_12:
  v17 = CFAbsoluteTimeGetCurrent();
  v18 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    dataClass2 = [(ATSessionTask *)self dataClass];
    *buf = 138543618;
    v23 = dataClass2;
    v24 = 2048;
    v25 = v17 - Current;
    _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "---%{public}@ Prep Time: %.1fs---", buf, 0x16u);
  }
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ATLegacySyncSessionTask_cancel__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__ATLegacySyncSessionTask_cancel__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    [*(a1 + 32) setCancelled:1];
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 152) cancelSyncOperations];
    }

    v2 = objc_opt_respondsToSelector();
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = v3[19];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __33__ATLegacySyncSessionTask_cancel__block_invoke_2;
      v5[3] = &unk_2784E5938;
      v5[4] = v3;
      dispatch_client_async(v4, v5);
    }

    else
    {

      [v3 setFinished:1];
    }
  }
}

uint64_t __33__ATLegacySyncSessionTask_cancel__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 152) syncEndedWithSuccess:0];
  v2 = *(a1 + 32);

  return [v2 setFinished:1];
}

- (ATLegacySyncSessionTask)initWithDataClass:(id)class
{
  classCopy = class;
  v14.receiver = self;
  v14.super_class = ATLegacySyncSessionTask;
  v5 = [(ATSessionTask *)&v14 initWithDataClass:classCopy];
  if (v5)
  {
    v6 = +[ATClientController sharedInstance];
    v7 = [v6 clientForDataclass:classCopy];
    client = v5->_client;
    v5->_client = v7;

    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_create(Name, 0);
    queue = v5->_queue;
    v5->_queue = v11;

    [(ATSessionTask *)v5 setLocalizedDescription:classCopy];
  }

  return v5;
}

@end