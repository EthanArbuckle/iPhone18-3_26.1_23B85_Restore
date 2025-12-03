@interface AMSURLResult
+ (id)URLResultPromiseWithTaskInfo:(id)info object:(id)object;
- (AMSURLResult)initWithResult:(id)result;
- (AMSURLResult)initWithTask:(id)task response:(id)response data:(id)data object:(id)object logUUID:(id)d taskMetrics:(id)metrics loadURLEventDictionary:(id)dictionary;
- (AMSURLResult)initWithTaskInfo:(id)info object:(id)object loadURLEventDictionary:(id)dictionary;
- (NSDictionary)responseHeaders;
- (NSString)responseCorrelationId;
- (id)valueForHTTPHeaderField:(id)field;
- (int64_t)responseStatusCode;
@end

@implementation AMSURLResult

- (int64_t)responseStatusCode
{
  response = [(AMSURLResult *)self response];
  ams_statusCode = [response ams_statusCode];

  return ams_statusCode;
}

- (NSDictionary)responseHeaders
{
  response = [(AMSURLResult *)self response];
  ams_allHeaderFields = [response ams_allHeaderFields];

  return ams_allHeaderFields;
}

- (NSString)responseCorrelationId
{
  response = [(AMSURLResult *)self response];
  v3 = [response ams_valueForHTTPHeaderField:@"X-Apple-Jingle-Correlation-Key"];

  return v3;
}

- (AMSURLResult)initWithResult:(id)result
{
  resultCopy = result;
  task = [resultCopy task];
  response = [resultCopy response];
  data = [resultCopy data];
  object = [resultCopy object];
  logUUID = [resultCopy logUUID];
  taskMetrics = [resultCopy taskMetrics];
  loadURLEventDictionary = [resultCopy loadURLEventDictionary];

  v12 = [(AMSURLResult *)self initWithTask:task response:response data:data object:object logUUID:logUUID taskMetrics:taskMetrics loadURLEventDictionary:loadURLEventDictionary];
  return v12;
}

+ (id)URLResultPromiseWithTaskInfo:(id)info object:(id)object
{
  infoCopy = info;
  objectCopy = object;
  v8 = objc_opt_new();
  properties = [infoCopy properties];
  purchaseInfo = [properties purchaseInfo];

  if (purchaseInfo)
  {
    v11 = [infoCopy createMetricsContextForDecodedObject:objectCopy];
    v12 = [AMSMetricsLoadURLEvent loadURLEventPromiseWithContext:v11];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__AMSURLResult_URLResultPromiseWithTaskInfo_object___block_invoke;
    v15[3] = &unk_1E73BD468;
    selfCopy = self;
    v16 = infoCopy;
    v17 = v8;
    v18 = objectCopy;
    [v12 addFinishBlock:v15];
  }

  else
  {
    v13 = [[self alloc] initWithTaskInfo:infoCopy object:objectCopy loadURLEventDictionary:0];
    [v8 finishWithResult:v13];
  }

  return v8;
}

void __52__AMSURLResult_URLResultPromiseWithTaskInfo_object___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = [*(a1 + 32) properties];
      v11 = [v10 logUUID];
      v12 = AMSLogableError(v6);
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create Load URL event. %{public}@", &v19, 0x20u);
    }
  }

  v13 = *(a1 + 40);
  v14 = objc_alloc(*(a1 + 56));
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = [v5 dictionaryForPosting];
  v18 = [v14 initWithTaskInfo:v15 object:v16 loadURLEventDictionary:v17];
  [v13 finishWithResult:v18];
}

- (AMSURLResult)initWithTaskInfo:(id)info object:(id)object loadURLEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objectCopy = object;
  infoCopy = info;
  task = [infoCopy task];
  response = [infoCopy response];
  data = [infoCopy data];
  properties = [infoCopy properties];
  logUUID = [properties logUUID];
  metrics = [infoCopy metrics];

  v17 = [(AMSURLResult *)self initWithTask:task response:response data:data object:objectCopy logUUID:logUUID taskMetrics:metrics loadURLEventDictionary:dictionaryCopy];
  return v17;
}

- (AMSURLResult)initWithTask:(id)task response:(id)response data:(id)data object:(id)object logUUID:(id)d taskMetrics:(id)metrics loadURLEventDictionary:(id)dictionary
{
  taskCopy = task;
  responseCopy = response;
  dataCopy = data;
  objectCopy = object;
  dCopy = d;
  metricsCopy = metrics;
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = AMSURLResult;
  v19 = [(AMSURLResult *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_task, task);
    objc_storeStrong(&v20->_response, response);
    objc_storeStrong(&v20->_data, data);
    objc_storeStrong(&v20->_object, object);
    v21 = [dCopy copy];
    logUUID = v20->_logUUID;
    v20->_logUUID = v21;

    objc_storeStrong(&v20->_taskMetrics, metrics);
    v23 = [dictionaryCopy copy];
    loadURLEventDictionary = v20->_loadURLEventDictionary;
    v20->_loadURLEventDictionary = v23;
  }

  return v20;
}

- (id)valueForHTTPHeaderField:(id)field
{
  fieldCopy = field;
  response = [(AMSURLResult *)self response];
  v6 = [response ams_valueForHTTPHeaderField:fieldCopy];

  return v6;
}

@end