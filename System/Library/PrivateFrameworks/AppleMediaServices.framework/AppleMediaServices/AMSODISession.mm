@interface AMSODISession
+ (id)_dispatchQueue;
+ (id)provideFeedbackWithOutcome:(unint64_t)outcome cacheIdentifier:(id)identifier bag:(id)bag;
- (AMSODISession)initWithSessionIdentifier:(id)identifier accountType:(unint64_t)type bundleIdentifier:(id)bundleIdentifier bag:(id)bag;
- (id)createODISession;
- (id)getAssessment;
- (id)provideUpdateWithAttributes:(id)attributes;
@end

@implementation AMSODISession

+ (id)_dispatchQueue
{
  if (_MergedGlobals_140 != -1)
  {
    dispatch_once(&_MergedGlobals_140, &__block_literal_global_109);
  }

  v3 = qword_1ED6E3018;

  return v3;
}

uint64_t __31__AMSODISession__dispatchQueue__block_invoke()
{
  qword_1ED6E3018 = dispatch_queue_create("com.apple.AppleMediaServices.AMSODISession", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (AMSODISession)initWithSessionIdentifier:(id)identifier accountType:(unint64_t)type bundleIdentifier:(id)bundleIdentifier bag:(id)bag
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  bagCopy = bag;
  v23.receiver = self;
  v23.super_class = AMSODISession;
  v13 = [(AMSODISession *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_accountType = type;
    objc_storeStrong(&v13->_bag, bag);
    v15 = [bundleIdentifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    cacheIdentifier = v14->_cacheIdentifier;
    v14->_cacheIdentifier = uUIDString;

    v20 = [identifierCopy copy];
    sessionIdentifier = v14->_sessionIdentifier;
    v14->_sessionIdentifier = v20;
  }

  return v14;
}

- (id)createODISession
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = +[AMSODISession _dispatchQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__AMSODISession_createODISession__block_invoke;
  v9[3] = &unk_1E73B3DE0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(v4, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __33__AMSODISession_createODISession__block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__50;
  v12 = __Block_byref_object_dispose__50;
  v13 = objc_alloc_init(AMSDaemonConnection);
  v2 = [v9[5] purchaseServiceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AMSODISession_createODISession__block_invoke_5;
  v5[3] = &unk_1E73B7928;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = &v8;
  v4 = [v2 thenWithBlock:v5];

  _Block_object_dispose(&v8, 8);
}

void *__33__AMSODISession_createODISession__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sessionIdentifier];
  v6 = [*(a1 + 32) cacheIdentifier];
  v7 = [*(a1 + 32) accountType];
  v8 = [*(a1 + 32) bundleIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__AMSODISession_createODISession__block_invoke_2;
  v14[3] = &unk_1E73BA4B0;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v17 = *(a1 + 48);
  [v4 createODISessionWithSessionIdentifier:v5 cacheIdentifier:v6 accountType:v7 bundleIdentifier:v8 completion:v14];

  v11 = *(a1 + 40);
  v12 = v11;

  return v11;
}

void __33__AMSODISession_createODISession__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else if (v5)
  {
    [*(a1 + 32) finishWithResult:v5];
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ODI session failed for unknown reasons", &v14, 0x16u);
    }

    v11 = AMSError(0, @"ODI Error", @"Unknown error", 0);
    [*(a1 + 32) finishWithError:v11];
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

- (id)getAssessment
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = +[AMSODISession _dispatchQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__AMSODISession_getAssessment__block_invoke;
  v9[3] = &unk_1E73B3DE0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(v4, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __30__AMSODISession_getAssessment__block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__50;
  v12 = __Block_byref_object_dispose__50;
  v13 = objc_alloc_init(AMSDaemonConnection);
  v2 = [v9[5] purchaseServiceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__AMSODISession_getAssessment__block_invoke_2;
  v5[3] = &unk_1E73B7928;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = &v8;
  v4 = [v2 thenWithBlock:v5];

  _Block_object_dispose(&v8, 8);
}

void *__30__AMSODISession_getAssessment__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 cacheIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__AMSODISession_getAssessment__block_invoke_3;
  v11[3] = &unk_1E73BA4D8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v14 = *(a1 + 48);
  [v4 getODIAssessmentForCacheIdentifier:v5 clearCache:0 completion:v11];

  v8 = *(a1 + 40);
  v9 = v8;

  return v8;
}

void __30__AMSODISession_getAssessment__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else if (v5)
  {
    [*(a1 + 32) finishWithResult:v5];
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ODI assessment failed for unknown reasons", &v14, 0x16u);
    }

    v11 = AMSError(0, @"ODI Error", @"Unknown error", 0);
    [*(a1 + 32) finishWithError:v11];
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

+ (id)provideFeedbackWithOutcome:(unint64_t)outcome cacheIdentifier:(id)identifier bag:(id)bag
{
  identifierCopy = identifier;
  bagCopy = bag;
  v10 = AMSSetLogKeyIfNeeded();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__50;
  v26 = __Block_byref_object_dispose__50;
  v27 = objc_alloc_init(AMSDaemonConnection);
  purchaseServiceProxy = [v23[5] purchaseServiceProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__AMSODISession_provideFeedbackWithOutcome_cacheIdentifier_bag___block_invoke;
  v16[3] = &unk_1E73BA550;
  outcomeCopy = outcome;
  v12 = identifierCopy;
  v17 = v12;
  selfCopy = self;
  v13 = v10;
  v18 = v13;
  v19 = &v22;
  v14 = [purchaseServiceProxy thenWithBlock:v16];

  _Block_object_dispose(&v22, 8);

  return v14;
}

AMSMutablePromise *__64__AMSODISession_provideFeedbackWithOutcome_cacheIdentifier_bag___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = +[AMSODISession _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AMSODISession_provideFeedbackWithOutcome_cacheIdentifier_bag___block_invoke_2;
  block[3] = &unk_1E73BA528;
  v6 = *(a1 + 56);
  v16 = v3;
  v21 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v17 = v7;
  v22 = v8;
  v18 = *(a1 + 40);
  v9 = v4;
  v10 = *(a1 + 48);
  v19 = v9;
  v20 = v10;
  v11 = v3;
  dispatch_async(v5, block);

  v12 = v19;
  v13 = v9;

  return v9;
}

void __64__AMSODISession_provideFeedbackWithOutcome_cacheIdentifier_bag___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AMSODISession_provideFeedbackWithOutcome_cacheIdentifier_bag___block_invoke_3;
  v7[3] = &unk_1E73BA500;
  v4 = *(a1 + 72);
  v11 = *(a1 + 80);
  v8 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v9 = v5;
  v10 = v6;
  [v2 provideFeedbackOnPayloadOutcome:v4 cacheIdentifier:v3 clearCache:1 completion:v7];
}

void __64__AMSODISession_provideFeedbackWithOutcome_cacheIdentifier_bag___block_invoke_3(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = a1[4];
      v13 = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v3;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to provide ODI feedback for error: %{public}@", &v13, 0x20u);
    }

    v8 = a1[5];
    v9 = 0;
  }

  else
  {
    v8 = a1[5];
    v9 = 1;
  }

  v10 = [AMSBoolean BOOLeanWithBool:v9];
  [v8 finishWithResult:v10];

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

- (id)provideUpdateWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = +[AMSODISession _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AMSODISession_provideUpdateWithAttributes___block_invoke;
  block[3] = &unk_1E73B71B0;
  v13 = attributesCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = attributesCopy;
  dispatch_async(v6, block);

  v9 = v15;
  v10 = v7;

  return v7;
}

void __45__AMSODISession_provideUpdateWithAttributes___block_invoke(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  v17 = objc_alloc_init(AMSDaemonConnection);
  v2 = [v13[5] purchaseServiceProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__AMSODISession_provideUpdateWithAttributes___block_invoke_2;
  v7[3] = &unk_1E73BA5A0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = &v12;
  v6 = [v2 thenWithBlock:v7];

  _Block_object_dispose(&v12, 8);
}

void *__45__AMSODISession_provideUpdateWithAttributes___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 cacheIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__AMSODISession_provideUpdateWithAttributes___block_invoke_3;
  v13[3] = &unk_1E73BA578;
  v7 = a1[6];
  v13[4] = a1[5];
  v8 = v7;
  v9 = a1[7];
  v14 = v8;
  v15 = v9;
  [v5 updateODIWithAttributes:v3 forCacheIdentifier:v6 completion:v13];

  v10 = a1[6];
  v11 = v10;

  return v10;
}

void __45__AMSODISession_provideUpdateWithAttributes___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v13 = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v3;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update ODI attributes for error: %{public}@", &v13, 0x20u);
    }

    v8 = *(a1 + 40);
    v9 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = 1;
  }

  v10 = [AMSBoolean BOOLeanWithBool:v9];
  [v8 finishWithResult:v10];

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

@end