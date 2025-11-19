@interface AMSTreatmentStore
+ (id)defaultTreatmentStore;
- (AMSTreatmentStore)initWithCachePolicy:(int64_t)a3;
- (id)_encodeExperimentData:(id)a3;
- (id)_treatmentOverridesForAreas:(id)a3;
- (id)_treatmentStoreService;
- (id)activeTreatmentsForAreas:(id)a3;
- (id)areasForNamespaces:(id)a3;
- (id)areasForTopics:(id)a3;
- (id)areasWithIDs:(id)a3;
- (id)encodeExperimentDataForTopic:(id)a3;
- (id)experimentDataForAreas:(id)a3;
- (id)synchronizeTreatments;
- (id)treatmentsForAreas:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)treatmentsPayloadForAreas:(id)a3;
- (id)treatmentsPayloadForTreatments:(id)a3;
@end

@implementation AMSTreatmentStore

uint64_t __42__AMSTreatmentStore_defaultTreatmentStore__block_invoke()
{
  qword_1ED6E3178 = objc_alloc_init(AMSTreatmentStore);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)defaultTreatmentStore
{
  if (_MergedGlobals_153 != -1)
  {
    dispatch_once(&_MergedGlobals_153, &__block_literal_global_141);
  }

  v3 = qword_1ED6E3178;

  return v3;
}

- (id)_treatmentStoreService
{
  v2 = [(AMSTreatmentStore *)self engagement];
  v3 = [v2 treatmentStoreService];

  return v3;
}

- (AMSTreatmentStore)initWithCachePolicy:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = AMSTreatmentStore;
  v4 = [(AMSTreatmentStore *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_cachePolicy = a3;
    v6 = objc_alloc_init(AMSEngagement);
    engagement = v5->_engagement;
    v5->_engagement = v6;
  }

  return v5;
}

- (id)_encodeExperimentData:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 count])
  {
    v17 = [AMSPromise promiseWithResult:&stru_1F071BA78];
    goto LABEL_22;
  }

  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543874;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    v29 = 2114;
    v30 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Serializing experiment data: %{public}@", buf, 0x20u);
  }

  v24 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v24];
  v9 = v24;
  v10 = +[AMSLogConfig sharedTreatmentsConfig];
  v11 = v10;
  if (v8)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Serialized experiment data successfully", buf, 0x16u);
    }

    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    if (![v15 length])
    {
      v22 = AMSError(0, @"Treatment Store Failure", @"Failed to encode experiment data", 0);
      v17 = [AMSPromise promiseWithError:v22];

      goto LABEL_21;
    }

    v16 = [AMSPromise promiseWithResult:v15];
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v11 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = AMSLogableError(v9);
      *buf = 138543874;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Experiment data serialization error: %{public}@", buf, 0x20u);
    }

    v15 = AMSError(3, @"Treatment Store Failure", @"Failed to encode experiment data due to a JSON serialization error", v9);
    v16 = [AMSPromise promiseWithError:v15];
  }

  v17 = v16;
LABEL_21:

LABEL_22:

  return v17;
}

- (id)_treatmentOverridesForAreas:(id)a3
{
  v3 = a3;
  v4 = +[AMSDefaults treatmentOverrides];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__AMSTreatmentStore__treatmentOverridesForAreas___block_invoke;
  v8[3] = &unk_1E73BCB98;
  v9 = v3;
  v5 = v3;
  v6 = [v4 ams_mapWithTransform:v8];

  return v6;
}

AMSPair *__49__AMSTreatmentStore__treatmentOverridesForAreas___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    v7 = [AMSTreatment alloc];
    v8 = [MEMORY[0x1E695DF00] distantFuture];
    v9 = [MEMORY[0x1E695DF00] distantPast];
    v10 = [(AMSTreatment *)v7 initWithEndDate:v8 identifier:v6 startDate:v9];

    [(AMSTreatment *)v10 setParticipationType:-1];
    v11 = [AMSPair alloc];
    v12 = [MEMORY[0x1E695DFD8] setWithObject:v10];
    v13 = [(AMSPair *)v11 initWithFirst:v5 second:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)activeTreatmentsForAreas:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 now];
  v7 = [(AMSTreatmentStore *)self treatmentsForAreas:v5 startDate:v6 endDate:v6];

  v8 = [v7 thenWithBlock:&__block_literal_global_48_2];

  return v8;
}

id __46__AMSTreatmentStore_activeTreatmentsForAreas___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ams_compactMapValues:&__block_literal_global_51_0];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

- (id)areasForNamespaces:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v29 = objc_opt_class();
    v30 = 2114;
    v31 = v5;
    v32 = 2114;
    v33 = v4;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching area identifiers (namespaces: %{public}@)", buf, 0x20u);
  }

  v8 = [[AMSMutablePromise alloc] initWithTimeout:3.0];
  v9 = [(AMSTreatmentStore *)self _treatmentStoreService];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __40__AMSTreatmentStore_areasForNamespaces___block_invoke;
  v26[3] = &unk_1E73B34B8;
  v10 = v8;
  v27 = v10;
  [v9 addErrorBlock:v26];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __40__AMSTreatmentStore_areasForNamespaces___block_invoke_2;
  v22[3] = &unk_1E73BCC00;
  v23 = v4;
  v24 = self;
  v11 = v10;
  v25 = v11;
  v12 = v4;
  [v9 addSuccessBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__AMSTreatmentStore_areasForNamespaces___block_invoke_4;
  v20[3] = &unk_1E73B32F0;
  v20[4] = self;
  v13 = v5;
  v21 = v13;
  [(AMSPromise *)v11 addErrorBlock:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__AMSTreatmentStore_areasForNamespaces___block_invoke_59;
  v18[3] = &unk_1E73BCC28;
  v18[4] = self;
  v19 = v13;
  v14 = v13;
  [(AMSPromise *)v11 addSuccessBlock:v18];
  v15 = v19;
  v16 = v11;

  return v11;
}

void __40__AMSTreatmentStore_areasForNamespaces___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 cachePolicy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AMSTreatmentStore_areasForNamespaces___block_invoke_3;
  v7[3] = &unk_1E73B5C00;
  v8 = *(a1 + 48);
  [v5 areasForNamespaces:v3 cachePolicy:v6 completion:v7];
}

void __40__AMSTreatmentStore_areasForNamespaces___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v9)
  {
    [*(a1 + 32) finishWithResult:v9];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = AMSError(7, @"Treatment Store Failure", @"Areas not found", 0);
      [v7 finishWithError:v8];
    }
  }
}

void __40__AMSTreatmentStore_areasForNamespaces___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = AMSLogableError(v3);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch area identifiers (error: %{public}@)", &v9, 0x20u);
  }
}

void __40__AMSTreatmentStore_areasForNamespaces___block_invoke_59(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetched area identifiers: %{public}@", &v8, 0x20u);
  }
}

- (id)areasForTopics:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v29 = objc_opt_class();
    v30 = 2114;
    v31 = v5;
    v32 = 2114;
    v33 = v4;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching area identifiers (topics: %{public}@)", buf, 0x20u);
  }

  v8 = [[AMSMutablePromise alloc] initWithTimeout:3.0];
  v9 = [(AMSTreatmentStore *)self _treatmentStoreService];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __36__AMSTreatmentStore_areasForTopics___block_invoke;
  v26[3] = &unk_1E73B34B8;
  v10 = v8;
  v27 = v10;
  [v9 addErrorBlock:v26];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __36__AMSTreatmentStore_areasForTopics___block_invoke_2;
  v22[3] = &unk_1E73BCC00;
  v23 = v4;
  v24 = self;
  v11 = v10;
  v25 = v11;
  v12 = v4;
  [v9 addSuccessBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__AMSTreatmentStore_areasForTopics___block_invoke_4;
  v20[3] = &unk_1E73B32F0;
  v20[4] = self;
  v13 = v5;
  v21 = v13;
  [(AMSPromise *)v11 addErrorBlock:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__AMSTreatmentStore_areasForTopics___block_invoke_61;
  v18[3] = &unk_1E73BCC28;
  v18[4] = self;
  v19 = v13;
  v14 = v13;
  [(AMSPromise *)v11 addSuccessBlock:v18];
  v15 = v19;
  v16 = v11;

  return v11;
}

void __36__AMSTreatmentStore_areasForTopics___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 cachePolicy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__AMSTreatmentStore_areasForTopics___block_invoke_3;
  v7[3] = &unk_1E73B5C00;
  v8 = *(a1 + 48);
  [v5 areasForTopics:v3 cachePolicy:v6 completion:v7];
}

void __36__AMSTreatmentStore_areasForTopics___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v9)
  {
    [*(a1 + 32) finishWithResult:v9];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = AMSError(7, @"Treatment Store Failure", @"Areas not found", 0);
      [v7 finishWithError:v8];
    }
  }
}

void __36__AMSTreatmentStore_areasForTopics___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = AMSLogableError(v3);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch area identifiers (error: %{public}@)", &v9, 0x20u);
  }
}

void __36__AMSTreatmentStore_areasForTopics___block_invoke_61(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetched area identifiers: %{public}@", &v8, 0x20u);
  }
}

- (id)areasWithIDs:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v29 = objc_opt_class();
    v30 = 2114;
    v31 = v5;
    v32 = 2114;
    v33 = v4;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching areas (identifiers: %{public}@)", buf, 0x20u);
  }

  v8 = [[AMSMutablePromise alloc] initWithTimeout:3.0];
  v9 = [(AMSTreatmentStore *)self _treatmentStoreService];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __34__AMSTreatmentStore_areasWithIDs___block_invoke;
  v26[3] = &unk_1E73B34B8;
  v10 = v8;
  v27 = v10;
  [v9 addErrorBlock:v26];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __34__AMSTreatmentStore_areasWithIDs___block_invoke_2;
  v22[3] = &unk_1E73BCC00;
  v23 = v4;
  v24 = self;
  v11 = v10;
  v25 = v11;
  v12 = v4;
  [v9 addSuccessBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34__AMSTreatmentStore_areasWithIDs___block_invoke_4;
  v20[3] = &unk_1E73B32F0;
  v20[4] = self;
  v13 = v5;
  v21 = v13;
  [(AMSPromise *)v11 addErrorBlock:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __34__AMSTreatmentStore_areasWithIDs___block_invoke_62;
  v18[3] = &unk_1E73BCC28;
  v18[4] = self;
  v19 = v13;
  v14 = v13;
  [(AMSPromise *)v11 addSuccessBlock:v18];
  v15 = v19;
  v16 = v11;

  return v11;
}

void __34__AMSTreatmentStore_areasWithIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 cachePolicy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__AMSTreatmentStore_areasWithIDs___block_invoke_3;
  v7[3] = &unk_1E73B5C00;
  v8 = *(a1 + 48);
  [v5 areasWithIDs:v3 cachePolicy:v6 completion:v7];
}

void __34__AMSTreatmentStore_areasWithIDs___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v9)
  {
    [*(a1 + 32) finishWithResult:v9];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = AMSError(7, @"Treatment Store Failure", @"Areas not found", 0);
      [v7 finishWithError:v8];
    }
  }
}

void __34__AMSTreatmentStore_areasWithIDs___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = AMSLogableError(v3);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch areas (error: %{public}@)", &v9, 0x20u);
  }
}

void __34__AMSTreatmentStore_areasWithIDs___block_invoke_62(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = [v3 allValues];
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetched areas: %{public}@", &v9, 0x20u);
  }
}

- (id)experimentDataForAreas:(id)a3
{
  v4 = a3;
  v5 = [(AMSTreatmentStore *)self activeTreatmentsForAreas:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__AMSTreatmentStore_experimentDataForAreas___block_invoke;
  v9[3] = &unk_1E73B5C28;
  v10 = v4;
  v6 = v4;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

id __44__AMSTreatmentStore_experimentDataForAreas___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v17}];
        v22[0] = v10;
        v21[0] = @"areaId";
        v21[1] = @"bucket";
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "participationType")}];
        v22[1] = v12;
        v21[2] = @"treatmentId";
        v13 = [v11 identifier];
        v22[2] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = [AMSPromise promiseWithResult:v4];

  return v15;
}

- (id)synchronizeTreatments
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Synchronizing treatments", buf, 0x16u);
  }

  v6 = [(AMSTreatmentStore *)self _treatmentStoreService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__AMSTreatmentStore_synchronizeTreatments__block_invoke;
  v17[3] = &unk_1E73BCC50;
  v17[4] = self;
  v7 = [v6 thenWithBlock:v17];
  v8 = [v7 promiseWithTimeout:3.0];
  v9 = [v8 binaryPromiseAdapter];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__AMSTreatmentStore_synchronizeTreatments__block_invoke_2;
  v15[3] = &unk_1E73B32F0;
  v15[4] = self;
  v10 = v3;
  v16 = v10;
  [v9 addErrorBlock:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__AMSTreatmentStore_synchronizeTreatments__block_invoke_68;
  v13[3] = &unk_1E73B3DE0;
  v13[4] = self;
  v14 = v10;
  v11 = v10;
  [v9 addSuccessBlock:v13];

  return v9;
}

id __42__AMSTreatmentStore_synchronizeTreatments__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSBinaryPromise);
  v5 = [*(a1 + 32) cachePolicy];
  v6 = [(AMSBinaryPromise *)v4 completionHandlerAdapter];
  [v3 synchronizeTreatmentsWithCachePolicy:v5 completion:v6];

  v7 = [(AMSBinaryPromise *)v4 promiseAdapter];

  return v7;
}

void __42__AMSTreatmentStore_synchronizeTreatments__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = AMSLogableError(v3);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to synchronize treatments (error: %{public}@)", &v9, 0x20u);
  }
}

void __42__AMSTreatmentStore_synchronizeTreatments__block_invoke_68(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Synchronized treatments successfully", &v6, 0x16u);
  }
}

- (id)treatmentsForAreas:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v38 = a4;
  v9 = a5;
  v10 = AMSSetLogKeyIfNeeded();
  v11 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v55 = objc_opt_class();
    v56 = 2114;
    v57 = v10;
    v58 = 2114;
    v59 = v8;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching treatments (areas: %{public}@)", buf, 0x20u);
  }

  v13 = [(AMSTreatmentStore *)self _treatmentOverridesForAreas:v8];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke;
  v52[3] = &unk_1E73B2E28;
  v14 = v13;
  v53 = v14;
  v15 = [v8 ams_filterUsingTest:v52];
  v16 = [v15 count];
  v17 = +[AMSLogConfig sharedTreatmentsConfig];
  v18 = v17;
  v36 = v8;
  if (v16)
  {
    if (!v17)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      *buf = 138543874;
      v55 = v20;
      v56 = 2114;
      v57 = v10;
      v58 = 2114;
      v59 = v14;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Overridden treatments: %{public}@", buf, 0x20u);
    }

    v21 = +[AMSLogConfig sharedTreatmentsConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      *buf = 138543874;
      v55 = v23;
      v56 = 2114;
      v57 = v10;
      v58 = 2114;
      v59 = v15;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching treatments (missing areas: %{public}@)", buf, 0x20u);
    }

    v24 = [[AMSMutablePromise alloc] initWithTimeout:3.0];
    v25 = [(AMSTreatmentStore *)self _treatmentStoreService];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_70;
    v50[3] = &unk_1E73B34B8;
    v26 = v24;
    v51 = v26;
    [v25 addErrorBlock:v50];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_2;
    v43[3] = &unk_1E73BCC78;
    v44 = v15;
    v45 = self;
    v27 = v38;
    v46 = v38;
    v28 = v9;
    v47 = v9;
    v29 = v26;
    v48 = v29;
    v49 = v14;
    [v25 addSuccessBlock:v43];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_4;
    v41[3] = &unk_1E73B32F0;
    v41[4] = self;
    v30 = v10;
    v42 = v30;
    [(AMSPromise *)v29 addErrorBlock:v41];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_71;
    v39[3] = &unk_1E73BCC28;
    v39[4] = self;
    v40 = v30;
    [(AMSPromise *)v29 addSuccessBlock:v39];
    v31 = v40;
    v32 = v29;
  }

  else
  {
    if (!v17)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v18 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      *buf = 138543874;
      v55 = v34;
      v56 = 2114;
      v57 = v10;
      v58 = 2114;
      v59 = v14;
      _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] All treatments were overridden: %{public}@", buf, 0x20u);
    }

    v32 = [AMSPromise promiseWithResult:v14];
    v27 = v38;
    v28 = v9;
  }

  return v32;
}

BOOL __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

void __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 cachePolicy];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_3;
  v9[3] = &unk_1E73B5988;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v5 treatmentsForAreas:v3 cachePolicy:v6 startDate:v7 endDate:v8 completion:v9];
}

void __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = *(a1 + 32);
    v7 = [v10 ams_dictionaryByAddingEntriesFromDictionary:*(a1 + 40)];
    [v6 finishWithResult:v7];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v5)
    {
      [v8 finishWithError:v5];
    }

    else
    {
      v9 = AMSError(7, @"Treatment Store Failure", @"Areas not found", 0);
      [v8 finishWithError:v9];
    }
  }
}

void __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = AMSLogableError(v3);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch treatments (error: %{public}@)", &v9, 0x20u);
  }
}

void __58__AMSTreatmentStore_treatmentsForAreas_startDate_endDate___block_invoke_71(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedTreatmentsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetched treatments: %{public}@", &v8, 0x20u);
  }
}

- (id)treatmentsPayloadForAreas:(id)a3
{
  v4 = [(AMSTreatmentStore *)self activeTreatmentsForAreas:a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AMSTreatmentStore_treatmentsPayloadForAreas___block_invoke;
  v7[3] = &unk_1E73B5C28;
  v7[4] = self;
  v5 = [v4 thenWithBlock:v7];

  return v5;
}

- (id)treatmentsPayloadForTreatments:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count") + 1}];
  [v20 addObject:@"1"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [v11 identifier];
        if (v12)
        {
          v26[0] = v10;
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "participationType")}];
          v14 = [v13 description];
          v26[1] = v14;
          v26[2] = v12;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
          v16 = [v15 componentsJoinedByString:@"+"];

          if (v16)
          {
            [v20 addObject:v16];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if ([v20 count] == 1)
  {
    v17 = &stru_1F071BA78;
  }

  else
  {
    v17 = [v20 componentsJoinedByString:@"#"];
  }

  v18 = [AMSPromise promiseWithResult:v17];

  return v18;
}

- (id)encodeExperimentDataForTopic:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:v5];
    v7 = [(AMSTreatmentStore *)self areasForTopics:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__AMSTreatmentStore_encodeExperimentDataForTopic___block_invoke;
    v10[3] = &unk_1E73B3F20;
    v11 = v5;
    v12 = self;
    v8 = [v7 thenWithBlock:v10];
  }

  else
  {
    v6 = AMSError(2, @"Failed to find treatment", @"No topic", 0);
    v8 = [AMSPromise promiseWithError:v6];
  }

  return v8;
}

id __50__AMSTreatmentStore_encodeExperimentDataForTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [*(a1 + 40) experimentDataForAreas:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AMSTreatmentStore_encodeExperimentDataForTopic___block_invoke_2;
  v7[3] = &unk_1E73B3028;
  v7[4] = *(a1 + 40);
  v5 = [v4 thenWithBlock:v7];

  return v5;
}

@end