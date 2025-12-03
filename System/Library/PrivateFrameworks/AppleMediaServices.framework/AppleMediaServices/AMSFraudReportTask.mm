@interface AMSFraudReportTask
+ (id)performFraudReportRefreshWithAccount:(id)account transactionID:(id)d nameSpace:(id)space fsrData:(id)data keyID:(id)iD;
+ (id)performFraudReportRefreshWithOptions:(id)options;
@end

@implementation AMSFraudReportTask

+ (id)performFraudReportRefreshWithAccount:(id)account transactionID:(id)d nameSpace:(id)space fsrData:(id)data keyID:(id)iD
{
  accountCopy = account;
  dCopy = d;
  spaceCopy = space;
  dataCopy = data;
  iDCopy = iD;
  if (dCopy && spaceCopy && dataCopy)
  {
    v16 = [[AMSFraudReportOptions alloc] initWithTransactionIdentifier:dCopy nameSpace:spaceCopy fsrData:dataCopy];
    [(AMSFraudReportOptions *)v16 setAccount:accountCopy];
    [(AMSFraudReportOptions *)v16 setKeyIdentifier:iDCopy];
    v17 = [AMSFraudReportTask performFraudReportRefreshWithOptions:v16];
  }

  else
  {
    v16 = AMSError(2, @"transactionID, nameSpace and fsrData must all be non-nil", 0, 0);
    v17 = [AMSPromise promiseWithError:v16];
  }

  v18 = v17;

  return v18;
}

+ (id)performFraudReportRefreshWithOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__33;
    v20 = __Block_byref_object_dispose__33;
    v21 = objc_alloc_init(AMSDaemonConnection);
    fraudReportServiceProxy = [v17[5] fraudReportServiceProxy];
    v6 = AMSSetLogKeyIfNeeded();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__AMSFraudReportTask_performFraudReportRefreshWithOptions___block_invoke;
    v11[3] = &unk_1E73B85A0;
    v12 = optionsCopy;
    selfCopy = self;
    v7 = v6;
    v13 = v7;
    v14 = &v16;
    v8 = [fraudReportServiceProxy thenWithBlock:v11];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = AMSError(2, @"options must not be nil", 0, 0);
    v8 = [AMSPromise promiseWithError:v9];
  }

  return v8;
}

AMSMutablePromise *__59__AMSFraudReportTask_performFraudReportRefreshWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__AMSFraudReportTask_performFraudReportRefreshWithOptions___block_invoke_2;
  v11[3] = &unk_1E73B8578;
  v15 = *(a1 + 56);
  v5 = *(a1 + 32);
  v12 = *(a1 + 40);
  v6 = v4;
  v7 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  [v3 performFraudReportRefreshWithOptions:v5 completion:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

void __59__AMSFraudReportTask_performFraudReportRefreshWithOptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 40) finishWithResult:a2];
  }

  else
  {
    v6 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = AMSLogableError(v5);
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error fetching new fraud report score: %{public}@.", &v15, 0x20u);
    }

    v11 = *(a1 + 40);
    if (v5)
    {
      [*(a1 + 40) finishWithError:v5];
    }

    else
    {
      v12 = AMSError(0, @"Refresh Fraud Report Score failed", @"Finished without response or error", 0);
      [v11 finishWithError:v12];
    }
  }

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

@end