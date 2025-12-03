@interface AMSURLMetricsLoadURLHandler
- (AMSURLMetricsLoadURLHandler)init;
- (AMSURLMetricsLoadURLHandler)initWithMetrics:(Class)metrics;
- (id)_reportMetricsForContext:(id)context;
- (void)_enqueueLoadURLEvent:(id)event forContext:(id)context;
@end

@implementation AMSURLMetricsLoadURLHandler

- (AMSURLMetricsLoadURLHandler)init
{
  v3 = objc_opt_class();

  return [(AMSURLMetricsLoadURLHandler *)self initWithMetrics:v3];
}

- (AMSURLMetricsLoadURLHandler)initWithMetrics:(Class)metrics
{
  v7.receiver = self;
  v7.super_class = AMSURLMetricsLoadURLHandler;
  v4 = [(AMSURLMetricsLoadURLHandler *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_metricsClass, metrics);
  }

  return v5;
}

- (id)_reportMetricsForContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  properties = [contextCopy properties];
  disableLoadURLMetrics = [properties disableLoadURLMetrics];

  if (disableLoadURLMetrics)
  {
    v7 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      properties2 = [contextCopy properties];
      logUUID = [properties2 logUUID];
      task = [contextCopy task];
      originalRequest = [task originalRequest];
      v15 = AMSLogableURLRequest(originalRequest);
      *buf = 138543874;
      v27 = v9;
      v28 = 2114;
      v29 = logUUID;
      v30 = 2114;
      v31 = v15;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skip LoadURL Metrics due to client disabling for URL request: %{public}@.", buf, 0x20u);
    }

    binaryPromiseAdapter = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v17 = [AMSMetricsLoadURLEvent shouldCollectMetricsPromiseForContext:contextCopy];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __56__AMSURLMetricsLoadURLHandler__reportMetricsForContext___block_invoke;
    v23 = &unk_1E73B3078;
    selfCopy = self;
    v25 = contextCopy;
    v18 = [v17 thenWithBlock:&v20];
    binaryPromiseAdapter = [v18 binaryPromiseAdapter];
  }

  return binaryPromiseAdapter;
}

id __56__AMSURLMetricsLoadURLHandler__reportMetricsForContext___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 BOOLValue];
  v5 = +[AMSLogConfig sharedURLLoadingConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 40);
      v29 = v8;
      v10 = [v9 properties];
      v11 = [v10 logUUID];
      v12 = [*(a1 + 40) task];
      v13 = [v12 originalRequest];
      v14 = AMSLogableURLRequest(v13);
      *buf = 138543874;
      v35 = v8;
      v36 = 2114;
      v37 = v11;
      v38 = 2114;
      v39 = v14;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Recording LoadURL Metrics for URL request: %{public}@", buf, 0x20u);
    }

    v15 = [AMSMetricsLoadURLEvent loadURLEventPromiseWithContext:*(a1 + 40)];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __56__AMSURLMetricsLoadURLHandler__reportMetricsForContext___block_invoke_5;
    v30[3] = &unk_1E73BCEC8;
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    v31 = v16;
    v32 = v17;
    v33 = v3;
    v18 = [v15 thenWithBlock:v30];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v6 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = *(a1 + 40);
      v22 = v20;
      v23 = [v21 properties];
      v24 = [v23 logUUID];
      v25 = [*(a1 + 40) task];
      v26 = [v25 originalRequest];
      v27 = AMSLogableURLRequest(v26);
      *buf = 138543874;
      v35 = v20;
      v36 = 2114;
      v37 = v24;
      v38 = 2114;
      v39 = v27;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Skip LoadURL Metrics due to sampling for URL request: %{public}@.", buf, 0x20u);
    }

    v18 = [AMSPromise promiseWithResult:v3];
  }

  return v18;
}

id __56__AMSURLMetricsLoadURLHandler__reportMetricsForContext___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPreventSampling:1];
  v4 = [*(a1 + 32) properties];
  v5 = [v4 additionalMetrics];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__AMSURLMetricsLoadURLHandler__reportMetricsForContext___block_invoke_2;
  v9[3] = &unk_1E73B4560;
  v10 = v3;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  [*(a1 + 40) _enqueueLoadURLEvent:v6 forContext:*(a1 + 32)];
  v7 = [AMSPromise promiseWithResult:*(a1 + 48)];

  return v7;
}

- (void)_enqueueLoadURLEvent:(id)event forContext:(id)context
{
  v15[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  eventCopy = event;
  metricsClass = [(AMSURLMetricsLoadURLHandler *)self metricsClass];
  v9 = [contextCopy bag];
  v10 = [(objc_class *)metricsClass internalInstanceUsingBag:v9];

  error = [contextCopy error];

  LODWORD(contextCopy) = [error ams_hasDomain:*MEMORY[0x1E696A978]];
  if (contextCopy)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v15[0] = eventCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v14 = [v10 promiseForEnqueueingEvents:v13 options:v12];
}

@end