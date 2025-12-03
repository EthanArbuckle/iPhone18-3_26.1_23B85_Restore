@interface AMSFDSService
+ (id)cacheFDS:(id)s forPurchaseInfo:(id)info;
+ (id)cachedFDSForPurchaseInfo:(id)info;
+ (id)didConsumeFDSForPurchaseInfo:(id)info;
+ (id)generateFDSWithRequest:(id)request;
+ (id)partialFDSAssessmentForRequest:(id)request;
@end

@implementation AMSFDSService

+ (id)cacheFDS:(id)s forPurchaseInfo:(id)info
{
  sCopy = s;
  infoCopy = info;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__28;
  v21 = __Block_byref_object_dispose__28;
  v22 = objc_alloc_init(AMSDaemonConnection);
  purchaseServiceProxy = [v18[5] purchaseServiceProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__AMSFDSService_cacheFDS_forPurchaseInfo___block_invoke;
  v13[3] = &unk_1E73B7928;
  v8 = infoCopy;
  v14 = v8;
  v9 = sCopy;
  v15 = v9;
  v16 = &v17;
  v10 = [purchaseServiceProxy thenWithBlock:v13];
  binaryPromiseAdapter = [v10 binaryPromiseAdapter];

  _Block_object_dispose(&v17, 8);

  return binaryPromiseAdapter;
}

AMSMutablePromise *__42__AMSFDSService_cacheFDS_forPurchaseInfo___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) purchase];
  v6 = [v5 uniqueIdentifier];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) purchase];
    v9 = [v8 logUUID];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __42__AMSFDSService_cacheFDS_forPurchaseInfo___block_invoke_6;
    v17[3] = &unk_1E73B52F0;
    v10 = v4;
    v11 = *(a1 + 48);
    v18 = v10;
    v19 = v11;
    [v3 cacheFDS:v7 forPurchaseIdentifier:v6 logKey:v9 completion:v17];

    v12 = v18;
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = AMSSetLogKeyIfNeeded();
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "AMSFDSService: [%{public}@] No purchase identifier", buf, 0xCu);
    }

    v12 = AMSError(2, @"AFDS Error", @"No Purchase Identifier", 0);
    [(AMSMutablePromise *)v4 finishWithError:v12];
  }

  return v4;
}

void __42__AMSFDSService_cacheFDS_forPurchaseInfo___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 finishWithError:a2];
  }

  else
  {
    [v3 finishWithResult:MEMORY[0x1E695E118]];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

+ (id)cachedFDSForPurchaseInfo:(id)info
{
  infoCopy = info;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__28;
  v17 = __Block_byref_object_dispose__28;
  v18 = objc_alloc_init(AMSDaemonConnection);
  purchaseServiceProxy = [v14[5] purchaseServiceProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__AMSFDSService_cachedFDSForPurchaseInfo___block_invoke;
  v9[3] = &unk_1E73B7978;
  v6 = infoCopy;
  v11 = &v13;
  selfCopy = self;
  v10 = v6;
  v7 = [purchaseServiceProxy thenWithBlock:v9];

  _Block_object_dispose(&v13, 8);

  return v7;
}

AMSMutablePromise *__42__AMSFDSService_cachedFDSForPurchaseInfo___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) purchase];
  v6 = [v5 uniqueIdentifier];

  if (v6)
  {
    v7 = [*(a1 + 32) purchase];
    v8 = [v7 logUUID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__AMSFDSService_cachedFDSForPurchaseInfo___block_invoke_9;
    v14[3] = &unk_1E73B7950;
    v15 = v4;
    v16 = *(a1 + 40);
    [v3 cachedFDSForPurchaseIdentifier:v6 logKey:v8 completion:v14];

    v9 = v15;
  }

  else
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSSetLogKeyIfNeeded();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "AMSFDSService: [%{public}@] No purchase identifier", buf, 0xCu);
    }

    v9 = AMSError(2, @"AFDS Error", @"No Purchase Identifier", 0);
    [(AMSMutablePromise *)v4 finishWithError:v9];
  }

  return v4;
}

void __42__AMSFDSService_cachedFDSForPurchaseInfo___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      [*(a1 + 32) finishWithResult:v5];
      goto LABEL_5;
    }

    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSSetLogKeyIfNeeded();
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to find AFDS value", &v14, 0x16u);
    }

    v6 = AMSError(12, @"AFDS Error", @"No AFDS", 0);
  }

  v7 = v6;
  [*(a1 + 32) finishWithError:v6];

LABEL_5:
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

+ (id)didConsumeFDSForPurchaseInfo:(id)info
{
  infoCopy = info;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = objc_alloc_init(AMSDaemonConnection);
  purchaseServiceProxy = [v16[5] purchaseServiceProxy];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __46__AMSFDSService_didConsumeFDSForPurchaseInfo___block_invoke;
  v12 = &unk_1E73B79A0;
  v5 = infoCopy;
  v13 = v5;
  v14 = &v15;
  v6 = [purchaseServiceProxy thenWithBlock:&v9];
  binaryPromiseAdapter = [v6 binaryPromiseAdapter];

  _Block_object_dispose(&v15, 8);

  return binaryPromiseAdapter;
}

AMSMutablePromise *__46__AMSFDSService_didConsumeFDSForPurchaseInfo___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) purchase];
  v6 = [v5 uniqueIdentifier];

  if (v6)
  {
    v7 = [*(a1 + 32) purchase];
    v8 = [v7 logUUID];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__AMSFDSService_didConsumeFDSForPurchaseInfo___block_invoke_14;
    v16[3] = &unk_1E73B52F0;
    v9 = v4;
    v10 = *(a1 + 40);
    v17 = v9;
    v18 = v10;
    [v3 didConsumeFDSForPurchaseIdentifier:v6 logKey:v8 completion:v16];

    v11 = v17;
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = AMSSetLogKeyIfNeeded();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "AMSFDSService: [%{public}@] No purchase identifier", buf, 0xCu);
    }

    v11 = AMSError(2, @"AFDS Error", @"No Purchase Identifier", 0);
    [(AMSMutablePromise *)v4 finishWithError:v11];
  }

  return v4;
}

void __46__AMSFDSService_didConsumeFDSForPurchaseInfo___block_invoke_14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 finishWithError:a2];
  }

  else
  {
    [v3 finishWithResult:MEMORY[0x1E695E118]];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

+ (id)generateFDSWithRequest:(id)request
{
  requestCopy = request;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__28;
  v15 = __Block_byref_object_dispose__28;
  v16 = objc_alloc_init(AMSDaemonConnection);
  purchaseServiceProxy = [v12[5] purchaseServiceProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__AMSFDSService_generateFDSWithRequest___block_invoke;
  v8[3] = &unk_1E73B79A0;
  v5 = requestCopy;
  v9 = v5;
  v10 = &v11;
  v6 = [purchaseServiceProxy thenWithBlock:v8];

  _Block_object_dispose(&v11, 8);

  return v6;
}

AMSMutablePromise *__40__AMSFDSService_generateFDSWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AMSFDSService_generateFDSWithRequest___block_invoke_2;
  v9[3] = &unk_1E73B79C8;
  v6 = v4;
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  [v3 generateFDSWithRequest:v5 completion:v9];

  return v6;
}

void __40__AMSFDSService_generateFDSWithRequest___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 finishWithError:?];
  }

  else
  {
    [v4 finishWithResult:a2];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

+ (id)partialFDSAssessmentForRequest:(id)request
{
  requestCopy = request;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__28;
  v15 = __Block_byref_object_dispose__28;
  v16 = objc_alloc_init(AMSDaemonConnection);
  purchaseServiceProxy = [v12[5] purchaseServiceProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AMSFDSService_partialFDSAssessmentForRequest___block_invoke;
  v8[3] = &unk_1E73B79A0;
  v5 = requestCopy;
  v9 = v5;
  v10 = &v11;
  v6 = [purchaseServiceProxy thenWithBlock:v8];

  _Block_object_dispose(&v11, 8);

  return v6;
}

AMSMutablePromise *__48__AMSFDSService_partialFDSAssessmentForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AMSFDSService_partialFDSAssessmentForRequest___block_invoke_2;
  v9[3] = &unk_1E73B79C8;
  v6 = v4;
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  [v3 partialFDSAssessmentForRequest:v5 completion:v9];

  return v6;
}

void __48__AMSFDSService_partialFDSAssessmentForRequest___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 finishWithError:?];
  }

  else
  {
    [v4 finishWithResult:a2];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

@end