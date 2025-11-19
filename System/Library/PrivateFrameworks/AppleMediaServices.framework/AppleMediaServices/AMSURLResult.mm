@interface AMSURLResult
+ (id)URLResultPromiseWithTaskInfo:(id)a3 object:(id)a4;
- (AMSURLResult)initWithResult:(id)a3;
- (AMSURLResult)initWithTask:(id)a3 response:(id)a4 data:(id)a5 object:(id)a6 logUUID:(id)a7 taskMetrics:(id)a8 loadURLEventDictionary:(id)a9;
- (AMSURLResult)initWithTaskInfo:(id)a3 object:(id)a4 loadURLEventDictionary:(id)a5;
- (NSDictionary)responseHeaders;
- (NSString)responseCorrelationId;
- (id)valueForHTTPHeaderField:(id)a3;
- (int64_t)responseStatusCode;
@end

@implementation AMSURLResult

- (int64_t)responseStatusCode
{
  v2 = [(AMSURLResult *)self response];
  v3 = [v2 ams_statusCode];

  return v3;
}

- (NSDictionary)responseHeaders
{
  v2 = [(AMSURLResult *)self response];
  v3 = [v2 ams_allHeaderFields];

  return v3;
}

- (NSString)responseCorrelationId
{
  v2 = [(AMSURLResult *)self response];
  v3 = [v2 ams_valueForHTTPHeaderField:@"X-Apple-Jingle-Correlation-Key"];

  return v3;
}

- (AMSURLResult)initWithResult:(id)a3
{
  v4 = a3;
  v5 = [v4 task];
  v6 = [v4 response];
  v7 = [v4 data];
  v8 = [v4 object];
  v9 = [v4 logUUID];
  v10 = [v4 taskMetrics];
  v11 = [v4 loadURLEventDictionary];

  v12 = [(AMSURLResult *)self initWithTask:v5 response:v6 data:v7 object:v8 logUUID:v9 taskMetrics:v10 loadURLEventDictionary:v11];
  return v12;
}

+ (id)URLResultPromiseWithTaskInfo:(id)a3 object:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 properties];
  v10 = [v9 purchaseInfo];

  if (v10)
  {
    v11 = [v6 createMetricsContextForDecodedObject:v7];
    v12 = [AMSMetricsLoadURLEvent loadURLEventPromiseWithContext:v11];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__AMSURLResult_URLResultPromiseWithTaskInfo_object___block_invoke;
    v15[3] = &unk_1E73BD468;
    v19 = a1;
    v16 = v6;
    v17 = v8;
    v18 = v7;
    [v12 addFinishBlock:v15];
  }

  else
  {
    v13 = [[a1 alloc] initWithTaskInfo:v6 object:v7 loadURLEventDictionary:0];
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

- (AMSURLResult)initWithTaskInfo:(id)a3 object:(id)a4 loadURLEventDictionary:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 task];
  v12 = [v10 response];
  v13 = [v10 data];
  v14 = [v10 properties];
  v15 = [v14 logUUID];
  v16 = [v10 metrics];

  v17 = [(AMSURLResult *)self initWithTask:v11 response:v12 data:v13 object:v9 logUUID:v15 taskMetrics:v16 loadURLEventDictionary:v8];
  return v17;
}

- (AMSURLResult)initWithTask:(id)a3 response:(id)a4 data:(id)a5 object:(id)a6 logUUID:(id)a7 taskMetrics:(id)a8 loadURLEventDictionary:(id)a9
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v30.receiver = self;
  v30.super_class = AMSURLResult;
  v19 = [(AMSURLResult *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_task, a3);
    objc_storeStrong(&v20->_response, a4);
    objc_storeStrong(&v20->_data, a5);
    objc_storeStrong(&v20->_object, a6);
    v21 = [v16 copy];
    logUUID = v20->_logUUID;
    v20->_logUUID = v21;

    objc_storeStrong(&v20->_taskMetrics, a8);
    v23 = [v18 copy];
    loadURLEventDictionary = v20->_loadURLEventDictionary;
    v20->_loadURLEventDictionary = v23;
  }

  return v20;
}

- (id)valueForHTTPHeaderField:(id)a3
{
  v4 = a3;
  v5 = [(AMSURLResult *)self response];
  v6 = [v5 ams_valueForHTTPHeaderField:v4];

  return v6;
}

@end