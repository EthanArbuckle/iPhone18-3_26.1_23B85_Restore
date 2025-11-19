@interface AMSPaymentSetupFeatureVerification
- (AMSPaymentSetupFeatureVerification)initWithIdentifier:(id)a3;
- (BOOL)isPaymentSetupFeatureSupportedWithError:(id *)a3;
- (id)performPaymentSetupFeatureLookup;
@end

@implementation AMSPaymentSetupFeatureVerification

- (AMSPaymentSetupFeatureVerification)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSPaymentSetupFeatureVerification;
  v5 = [(AMSPaymentSetupFeatureVerification *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isPaymentSetupFeatureSupportedWithError:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = AMSSetLogKeyIfNeeded();
  v5 = [(AMSPaymentSetupFeatureVerification *)self performPaymentSetupFeatureLookup];
  v21 = 0;
  v6 = [v5 resultWithError:&v21];
  v7 = v21;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543874;
      v23 = v10;
      v24 = 2114;
      v25 = v4;
      v26 = 2114;
      v27 = v7;
      v11 = v10;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to find feature with error: %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  if (!v6)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_14;
  }

  v13 = +[AMSLogConfig sharedConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = MEMORY[0x1E696AD98];
    v17 = v15;
    v18 = [v16 numberWithInteger:{objc_msgSend(v6, "state")}];
    v19 = AMSHashIfNeeded(v18);
    *buf = 138543874;
    v23 = v15;
    v24 = 2114;
    v25 = v4;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Candidate payment setup feature state: %{public}@", buf, 0x20u);
  }

  v12 = [v6 state] == 1;
LABEL_14:

  return v12;
}

- (id)performPaymentSetupFeatureLookup
{
  v3 = AMSSetLogKeyIfNeeded();
  objc_initWeak(&location, self);
  v4 = [AMSMutableLazyPromise alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__AMSPaymentSetupFeatureVerification_performPaymentSetupFeatureLookup__block_invoke;
  v8[3] = &unk_1E73B5678;
  objc_copyWeak(&v10, &location);
  v5 = v3;
  v9 = v5;
  v6 = [(AMSMutableLazyPromise *)v4 initWithBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __70__AMSPaymentSetupFeatureVerification_performPaymentSetupFeatureLookup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_alloc_init(_MergedGlobals_76[0]());
  v6 = [WeakRetained identifier];
  [v5 setReferrerIdentifier:v6];

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__52;
  v13[4] = __Block_byref_object_dispose__52;
  v14 = 0;
  v7 = off_1ED6DF218[0]();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AMSPaymentSetupFeatureVerification_performPaymentSetupFeatureLookup__block_invoke_3;
  v9[3] = &unk_1E73BA6E0;
  v9[4] = WeakRetained;
  v10 = *(a1 + 32);
  v12 = v13;
  v8 = v3;
  v11 = v8;
  [(objc_class *)v7 paymentSetupFeaturesForConfiguration:v5 completion:v9];

  _Block_object_dispose(v13, 8);
}

void __70__AMSPaymentSetupFeatureVerification_performPaymentSetupFeatureLookup__block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = MEMORY[0x1E696AD98];
    v9 = v6;
    v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    v11 = AMSHashIfNeeded(v10);
    *buf = 138543874;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found %{public}@ payment setup features", buf, 0x20u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__AMSPaymentSetupFeatureVerification_performPaymentSetupFeatureLookup__block_invoke_4;
  v21[3] = &unk_1E73BA6B8;
  v12 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v13 = v12;
  v14 = *(a1 + 56);
  v22 = v13;
  v23 = v14;
  [v3 enumerateObjectsUsingBlock:v21];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 48) finishWithResult:?];
  }

  else
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 40);
      *buf = 138543618;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      v19 = v17;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to find payment setup feature", buf, 0x16u);
    }

    v20 = AMSError(7, @"Payment Setup Feature Error", @"Did not find payment setup feature", 0);
    [*(a1 + 48) finishWithError:v20];
  }
}

void __70__AMSPaymentSetupFeatureVerification_performPaymentSetupFeatureLookup__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v5;
    v12 = a4;
    v13 = *(a1 + 40);
    v14 = a1;
    v15 = MEMORY[0x1E696AD98];
    v23 = v10;
    v16 = [v15 numberWithInteger:{objc_msgSend(v7, "type")}];
    v17 = AMSHashIfNeeded(v16);
    *buf = 138543874;
    v25 = v10;
    v26 = 2114;
    v27 = v13;
    a4 = v12;
    v5 = v11;
    v28 = 2114;
    v29 = v17;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking payment setup feature with type: %{public}@", buf, 0x20u);

    a1 = v14;
  }

  if ([v7 type] == 1)
  {
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = *(a1 + 40);
      *buf = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v21;
      v22 = v20;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found candidate payment setup feature", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    *a4 = 1;
  }
}

@end