@interface AMSDelegatePaymentSheetTask
- (AMSDelegatePaymentSheetTask)initWithRequest:(id)a3 bag:(id)a4;
- (id)perform;
@end

@implementation AMSDelegatePaymentSheetTask

- (AMSDelegatePaymentSheetTask)initWithRequest:(id)a3 bag:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMSDelegatePaymentSheetTask;
  v8 = [(AMSPaymentSheetTask *)&v11 initWithRequest:v7 bag:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_request, a3);
  }

  return v9;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__AMSDelegatePaymentSheetTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __38__AMSDelegatePaymentSheetTask_perform__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) request];

  if (v2)
  {
    if ([*(a1 + 32) isCancelled])
    {
      v3 = +[AMSLogConfig sharedConfig];
      if (!v3)
      {
        v3 = +[AMSLogConfig sharedConfig];
      }

      v4 = [v3 OSLogObject];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = AMSLogKey();
        *buf = 138543618;
        v30 = v5;
        v31 = 2114;
        v32 = v6;
        _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ending early due to cancelled task", buf, 0x16u);
      }

      v7 = AMSError(6, @"Early Cancellation", @"The task was cancelled before it began.", 0);
      v8 = [AMSPromise promiseWithError:v7];
    }

    else
    {
      v10 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = [*(a1 + 32) request];
        v14 = [v13 logKey];
        *buf = 138543618;
        v30 = v12;
        v31 = 2114;
        v32 = v14;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting delegate payment sheet task", buf, 0x16u);
      }

      v15 = objc_alloc_init(AMSMutablePromise);
      [*(a1 + 32) setPaymentSheetPromise:v15];

      objc_initWeak(buf, *(a1 + 32));
      v16 = [*(a1 + 32) paymentSheetPromise];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __38__AMSDelegatePaymentSheetTask_perform__block_invoke_12;
      v27[3] = &unk_1E73B68F0;
      objc_copyWeak(&v28, buf);
      [v16 addSuccessBlock:v27];

      v17 = [*(a1 + 32) paymentSheetPromise];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __38__AMSDelegatePaymentSheetTask_perform__block_invoke_14;
      v25[3] = &unk_1E73B4F00;
      objc_copyWeak(&v26, buf);
      [v17 addErrorBlock:v25];

      v18 = *(a1 + 32);
      v19 = [v18 request];
      v20 = [v19 paymentRequest];
      v21 = [v18 _presentPaymentSheetWithPaymentRequest:v20];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __38__AMSDelegatePaymentSheetTask_perform__block_invoke_16;
      v23[3] = &unk_1E73B4F00;
      objc_copyWeak(&v24, buf);
      [v21 addErrorBlock:v23];

      v8 = [*(a1 + 32) paymentSheetPromise];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v9 = AMSError(2, @"Delegate Payment Sheet Failed", @"Delegate payment request is nil", 0);
    v8 = [AMSPromise promiseWithError:v9];
  }

  return v8;
}

void __38__AMSDelegatePaymentSheetTask_perform__block_invoke_12(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [WeakRetained request];
    v6 = [v5 logKey];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task completed successfully", &v7, 0x16u);
  }
}

void __38__AMSDelegatePaymentSheetTask_perform__block_invoke_14(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[AMSLogConfig sharedPurchaseOversizeConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = [WeakRetained request];
    v9 = [v8 logKey];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] PaymentSheet completed with error: %{public}@", &v10, 0x20u);
  }
}

void __38__AMSDelegatePaymentSheetTask_perform__block_invoke_16(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[AMSLogConfig sharedPurchaseOversizeConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = [WeakRetained request];
    v9 = [v8 logKey];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Task completed with error: %{public}@", &v13, 0x20u);
  }

  v10 = [WeakRetained paymentSheetPromise];
  v11 = [v10 isFinished];

  if ((v11 & 1) == 0)
  {
    v12 = [WeakRetained paymentSheetPromise];
    [v12 finishWithError:v3];
  }
}

@end