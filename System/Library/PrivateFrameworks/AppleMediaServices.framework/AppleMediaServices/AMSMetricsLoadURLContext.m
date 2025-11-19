@interface AMSMetricsLoadURLContext
- (AMSMetricsLoadURLContext)initWithTask:(id)a3 metrics:(id)a4;
- (AMSMetricsLoadURLContext)initWithTaskInfo:(id)a3 serverPayload:(id)a4;
- (id)bagContract;
- (id)metricsDictionaryPromise;
- (void)setBagContract:(id)a3;
@end

@implementation AMSMetricsLoadURLContext

- (id)metricsDictionaryPromise
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(AMSMetricsLoadURLContext *)self task];
  v4 = [v3 originalRequest];
  if ([v4 ams_requestIsBagLoad])
  {
    v5 = [(AMSMetricsLoadURLContext *)self decodedResponseBody];

    if (v5)
    {
      v6 = [(AMSMetricsLoadURLContext *)self decodedResponseBody];
      v7 = [AMSBagNetworkTask _bagDataByApplyingOverridesToBagData:v6];

      v8 = [v7 objectForKeyedSubscript:@"metrics"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;

        if (v9)
        {
          v10 = [AMSPromise promiseWithResult:v9];
LABEL_16:

          goto LABEL_25;
        }
      }

      else
      {
      }

      v16 = AMSError(204, @"Metrics dictionary missing", @"The metrics dictionary is not present in the bag", 0);
      v10 = [AMSPromise promiseWithError:v16];

      v9 = 0;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v11 = [(AMSMetricsLoadURLContext *)self bag];

  if (v11)
  {
    v12 = [(AMSMetricsLoadURLContext *)self bag];
    v7 = [v12 dictionaryForKey:@"metrics"];
    goto LABEL_9;
  }

  v14 = [(AMSMetricsLoadURLContext *)self bagContract];

  if (!v14)
  {
    v12 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v12 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load metrics dictionary from bag", &v19, 0xCu);
    }

    goto LABEL_22;
  }

  v12 = [(AMSMetricsLoadURLContext *)self bagContract];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = [(AMSMetricsLoadURLContext *)self bagContract];
  v7 = [v15 metricsDictionary];

LABEL_9:
  if (!v7)
  {
LABEL_23:
    v7 = AMSError(204, @"Metrics dictionary missing", @"The metrics dictionary is not present in the bag", 0);
    v13 = [AMSPromise promiseWithError:v7];
    goto LABEL_24;
  }

  v13 = [v7 valuePromise];
LABEL_24:
  v10 = v13;
LABEL_25:

  return v10;
}

- (id)bagContract
{
  v3 = [AMSDeprecatedBagContract alloc];
  v4 = [(AMSMetricsLoadURLContext *)self bag];
  v5 = [(AMSDeprecatedBagContract *)v3 initWithBag:v4];

  return v5;
}

- (AMSMetricsLoadURLContext)initWithTask:(id)a3 metrics:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSMetricsLoadURLContext;
  v9 = [(AMSMetricsLoadURLContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, a3);
    objc_storeStrong(&v10->_taskMetrics, a4);
  }

  return v10;
}

- (AMSMetricsLoadURLContext)initWithTaskInfo:(id)a3 serverPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 task];
  v9 = [v6 metrics];
  v10 = [(AMSMetricsLoadURLContext *)self initWithTask:v8 metrics:v9];

  if (v10)
  {
    v11 = [v6 properties];
    v12 = [v11 bag];
    bag = v10->_bag;
    v10->_bag = v12;

    objc_storeStrong(&v10->_decodedResponseBody, a4);
    v14 = [v6 error];
    error = v10->_error;
    v10->_error = v14;

    v16 = [v6 properties];
    v17 = [v16 clientInfo];
    processInfo = v10->_processInfo;
    v10->_processInfo = v17;

    v19 = [v6 properties];
    properties = v10->_properties;
    v10->_properties = v19;

    v21 = [v6 data];
    responseBody = v10->_responseBody;
    v10->_responseBody = v21;

    v23 = [v6 session];
    v24 = [v23 session];
    session = v10->_session;
    v10->_session = v24;

    v26 = [v6 properties];
    v27 = [v26 purchaseInfo];

    v28 = [v27 purchase];
    v29 = [v28 metricsOverlay];
    v30 = [v29 copy];
    metricsOverlay = v10->_metricsOverlay;
    v10->_metricsOverlay = v30;
  }

  return v10;
}

- (void)setBagContract:(id)a3
{
  v4 = a3;
  v5 = [[AMSContractBagShim alloc] initWithBagContract:v4];

  [(AMSMetricsLoadURLContext *)self setBag:v5];
}

@end