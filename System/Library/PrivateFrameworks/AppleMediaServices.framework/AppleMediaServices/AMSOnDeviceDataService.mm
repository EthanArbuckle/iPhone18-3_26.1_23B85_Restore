@interface AMSOnDeviceDataService
+ (id)recordSyncRequest:(id)a3;
@end

@implementation AMSOnDeviceDataService

+ (id)recordSyncRequest:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = +[AMSLogConfig sharedTSDataSyncConfig];
  v7 = v6;
  if (v4)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      v23 = v4;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Recording on-device data sync request: %{public}@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__51;
    v24 = __Block_byref_object_dispose__51;
    v25 = objc_alloc_init(AMSDaemonConnection);
    v11 = [*(*&buf[8] + 40) onDeviceDataServiceProxy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__AMSOnDeviceDataService_recordSyncRequest___block_invoke;
    v17[3] = &unk_1E73BA5F8;
    v21 = a1;
    v18 = v5;
    v20 = buf;
    v19 = v4;
    [v11 addFinishBlock:v17];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v7 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] No on-device data sync request", buf, 0x16u);
    }

    v15 = AMSError(2, @"Missing on-device data sync request", &stru_1F071BA78, 0);
    [(AMSMutablePromise *)v5 finishWithError:v15];
  }

  return v5;
}

void __44__AMSOnDeviceDataService_recordSyncRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedTSDataSyncConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Failed to connect to daemon: %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) finishWithError:v5];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__AMSOnDeviceDataService_recordSyncRequest___block_invoke_3;
    v15[3] = &unk_1E73B5148;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v16 = v13;
    v17 = v14;
    [a2 askToSync:v12 reply:v15];
    v11 = v16;
  }
}

void __44__AMSOnDeviceDataService_recordSyncRequest___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 finishWithError:?];
  }

  else
  {
    [v4 finishWithResult:MEMORY[0x1E695E118]];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

@end