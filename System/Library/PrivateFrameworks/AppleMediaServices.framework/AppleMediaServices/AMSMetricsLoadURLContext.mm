@interface AMSMetricsLoadURLContext
- (AMSMetricsLoadURLContext)initWithTask:(id)task metrics:(id)metrics;
- (AMSMetricsLoadURLContext)initWithTaskInfo:(id)info serverPayload:(id)payload;
- (id)bagContract;
- (id)metricsDictionaryPromise;
- (void)setBagContract:(id)contract;
@end

@implementation AMSMetricsLoadURLContext

- (id)metricsDictionaryPromise
{
  v21 = *MEMORY[0x1E69E9840];
  task = [(AMSMetricsLoadURLContext *)self task];
  originalRequest = [task originalRequest];
  if ([originalRequest ams_requestIsBagLoad])
  {
    decodedResponseBody = [(AMSMetricsLoadURLContext *)self decodedResponseBody];

    if (decodedResponseBody)
    {
      decodedResponseBody2 = [(AMSMetricsLoadURLContext *)self decodedResponseBody];
      metricsDictionary = [AMSBagNetworkTask _bagDataByApplyingOverridesToBagData:decodedResponseBody2];

      v8 = [metricsDictionary objectForKeyedSubscript:@"metrics"];
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
    bagContract2 = [(AMSMetricsLoadURLContext *)self bag];
    metricsDictionary = [bagContract2 dictionaryForKey:@"metrics"];
    goto LABEL_9;
  }

  bagContract = [(AMSMetricsLoadURLContext *)self bagContract];

  if (!bagContract)
  {
    bagContract2 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!bagContract2)
    {
      bagContract2 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [bagContract2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load metrics dictionary from bag", &v19, 0xCu);
    }

    goto LABEL_22;
  }

  bagContract2 = [(AMSMetricsLoadURLContext *)self bagContract];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  bagContract3 = [(AMSMetricsLoadURLContext *)self bagContract];
  metricsDictionary = [bagContract3 metricsDictionary];

LABEL_9:
  if (!metricsDictionary)
  {
LABEL_23:
    metricsDictionary = AMSError(204, @"Metrics dictionary missing", @"The metrics dictionary is not present in the bag", 0);
    valuePromise = [AMSPromise promiseWithError:metricsDictionary];
    goto LABEL_24;
  }

  valuePromise = [metricsDictionary valuePromise];
LABEL_24:
  v10 = valuePromise;
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

- (AMSMetricsLoadURLContext)initWithTask:(id)task metrics:(id)metrics
{
  taskCopy = task;
  metricsCopy = metrics;
  v12.receiver = self;
  v12.super_class = AMSMetricsLoadURLContext;
  v9 = [(AMSMetricsLoadURLContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, task);
    objc_storeStrong(&v10->_taskMetrics, metrics);
  }

  return v10;
}

- (AMSMetricsLoadURLContext)initWithTaskInfo:(id)info serverPayload:(id)payload
{
  infoCopy = info;
  payloadCopy = payload;
  task = [infoCopy task];
  metrics = [infoCopy metrics];
  v10 = [(AMSMetricsLoadURLContext *)self initWithTask:task metrics:metrics];

  if (v10)
  {
    properties = [infoCopy properties];
    v12 = [properties bag];
    bag = v10->_bag;
    v10->_bag = v12;

    objc_storeStrong(&v10->_decodedResponseBody, payload);
    error = [infoCopy error];
    error = v10->_error;
    v10->_error = error;

    properties2 = [infoCopy properties];
    clientInfo = [properties2 clientInfo];
    processInfo = v10->_processInfo;
    v10->_processInfo = clientInfo;

    properties3 = [infoCopy properties];
    properties = v10->_properties;
    v10->_properties = properties3;

    data = [infoCopy data];
    responseBody = v10->_responseBody;
    v10->_responseBody = data;

    session = [infoCopy session];
    v23Session = [session session];
    session = v10->_session;
    v10->_session = v23Session;

    properties4 = [infoCopy properties];
    purchaseInfo = [properties4 purchaseInfo];

    purchase = [purchaseInfo purchase];
    metricsOverlay = [purchase metricsOverlay];
    v30 = [metricsOverlay copy];
    metricsOverlay = v10->_metricsOverlay;
    v10->_metricsOverlay = v30;
  }

  return v10;
}

- (void)setBagContract:(id)contract
{
  contractCopy = contract;
  v5 = [[AMSContractBagShim alloc] initWithBagContract:contractCopy];

  [(AMSMetricsLoadURLContext *)self setBag:v5];
}

@end