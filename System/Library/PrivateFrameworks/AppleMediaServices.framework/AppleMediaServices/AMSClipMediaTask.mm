@interface AMSClipMediaTask
+ (AMSBagKeySet)bagKeySet;
- (AMSClipMediaTask)initWithClientID:(id)d bundleID:(id)iD URL:(id)l bag:(id)bag;
- (AMSClipMediaTask)initWithClientID:(id)d bundleID:(id)iD bag:(id)bag;
- (id)_componentsPromise;
- (id)_performJourneysLookup;
- (id)_performNetworkLookup;
- (id)perform;
@end

@implementation AMSClipMediaTask

- (AMSClipMediaTask)initWithClientID:(id)d bundleID:(id)iD bag:(id)bag
{
  dCopy = d;
  iDCopy = iD;
  bagCopy = bag;
  v19.receiver = self;
  v19.super_class = AMSClipMediaTask;
  v12 = [(AMSTask *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bag, bag);
    objc_storeStrong(&v13->_bundleID, iD);
    objc_storeStrong(&v13->_clientID, d);
    v14 = +[AMSProcessInfo currentProcess];
    clientInfo = v13->_clientInfo;
    v13->_clientInfo = v14;

    v16 = [MEMORY[0x1E695DFF8] URLWithString:@"https://"];
    URL = v13->_URL;
    v13->_URL = v16;
  }

  return v13;
}

- (AMSClipMediaTask)initWithClientID:(id)d bundleID:(id)iD URL:(id)l bag:(id)bag
{
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  bagCopy = bag;
  v21.receiver = self;
  v21.super_class = AMSClipMediaTask;
  v15 = [(AMSTask *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bag, bag);
    objc_storeStrong(&v16->_bundleID, iD);
    objc_storeStrong(&v16->_clientID, d);
    v17 = +[AMSProcessInfo currentProcess];
    clientInfo = v16->_clientInfo;
    v16->_clientInfo = v17;

    v19 = lCopy;
    if (!lCopy)
    {
      v19 = [MEMORY[0x1E695DFF8] URLWithString:@"https://"];
    }

    objc_storeStrong(&v16->_URL, v19);
    if (!lCopy)
    {
    }
  }

  return v16;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__AMSClipMediaTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __27__AMSClipMediaTask_perform__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = [*(a1 + 32) clientID];
    v7 = [*(a1 + 32) bundleID];
    v8 = [*(a1 + 32) URL];
    *buf = 138544386;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting clip media task. (client: %{public}@, bundle: %@, url: %@)", buf, 0x34u);
  }

  v9 = [*(a1 + 32) bundleID];
  v10 = [v9 isEqualToString:@"com.apple.ams.ac"];

  v11 = *(a1 + 32);
  if (v10)
  {
    [v11 _performJourneysLookup];
  }

  else
  {
    [v11 _performNetworkLookup];
  }
  v12 = ;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__AMSClipMediaTask_perform__block_invoke_6;
  v14[3] = &unk_1E73B5EA0;
  v14[4] = *(a1 + 32);
  [v12 addFinishBlock:v14];

  return v12;
}

void __27__AMSClipMediaTask_perform__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@: [%{public}@] Clip media task finished successfully.";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_10:
      _os_log_impl(&dword_192869000, v11, v12, v10, &v15, v13);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v9 = AMSLogKey();
      v15 = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v4;
      v10 = "%{public}@: [%{public}@] Clip media task finished with error. %{public}@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
      goto LABEL_10;
    }
  }
}

- (id)_performJourneysLookup
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v33 = v5;
    v34 = 2114;
    v35 = v6;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing journeys lookup", buf, 0x16u);
  }

  v31[0] = @"AMSClipMediaTask";
  v30[0] = @"source";
  v30[1] = @"url";
  v7 = [(AMSClipMediaTask *)self URL];
  absoluteString = [v7 absoluteString];
  v9 = absoluteString;
  if (absoluteString)
  {
    v10 = absoluteString;
  }

  else
  {
    v10 = &stru_1F071BA78;
  }

  v31[1] = v10;
  v30[2] = @"clientId";
  clientID = [(AMSClipMediaTask *)self clientID];
  v12 = clientID;
  if (clientID)
  {
    v13 = clientID;
  }

  else
  {
    v13 = &stru_1F071BA78;
  }

  v31[2] = v13;
  v30[3] = @"bundleId";
  bundleID = [(AMSClipMediaTask *)self bundleID];
  v15 = bundleID;
  if (bundleID)
  {
    v16 = bundleID;
  }

  else
  {
    v16 = &stru_1F071BA78;
  }

  v31[3] = v16;
  v30[4] = @"clientInfo";
  v28 = @"bundleId";
  clientInfo = [(AMSClipMediaTask *)self clientInfo];
  bundleIdentifier = [clientInfo bundleIdentifier];
  v19 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v20 = bundleIdentifier;
  }

  else
  {
    v20 = &stru_1F071BA78;
  }

  v29 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v31[4] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];

  v23 = objc_alloc_init(AMSEngagement);
  v24 = [(AMSEngagement *)v23 enqueueData:v22];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __42__AMSClipMediaTask__performJourneysLookup__block_invoke;
  v27[3] = &unk_1E73B5EC8;
  v27[4] = self;
  v25 = [v24 thenWithBlock:v27];

  return v25;
}

id __42__AMSClipMediaTask__performJourneysLookup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];
  v5 = [v4 objectForKeyedSubscript:@"metadata"];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F8];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = v8;

  v10 = [v3 data];

  v11 = [v10 objectForKeyedSubscript:@"body"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;

  if ([v9 count] && objc_msgSend(v14, "count"))
  {
    v15 = [*(a1 + 32) URL];
    v16 = [objc_alloc(MEMORY[0x1E695AC08]) initWithURL:v15 statusCode:200 HTTPVersion:0 headerFields:v9];
    v17 = [AMSURLResult alloc];
    v18 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v19 = [(AMSURLResult *)v17 initWithTask:0 response:v16 data:v18 object:v14];

    v20 = [[AMSMediaResult alloc] initWithResult:v19];
    v21 = [AMSPromise promiseWithResult:v20];
  }

  else
  {
    v15 = AMSError(7, @"Clip Media Task Failed", @"No journeys data provided", 0);
    v21 = [AMSPromise promiseWithError:v15];
  }

  return v21;
}

- (id)_performNetworkLookup
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing network lookup", buf, 0x16u);
  }

  v7 = [[AMSMediaTokenService alloc] initWithClientIdentifier:self->_clientID bag:self->_bag];
  v8 = [AMSURLSession alloc];
  defaultSessionConfiguration = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  v10 = [(AMSURLSession *)v8 initWithConfiguration:defaultSessionConfiguration];

  v11 = [[AMSMediaProtocolHandler alloc] initWithTokenService:v7];
  [(AMSURLSession *)v10 setProtocolHandler:v11];

  v12 = objc_alloc_init(AMSMediaResponseDecoder);
  [(AMSURLSession *)v10 setResponseDecoder:v12];

  [(AMSMediaTokenService *)v7 setSession:v10];
  _componentsPromise = [(AMSClipMediaTask *)self _componentsPromise];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __41__AMSClipMediaTask__performNetworkLookup__block_invoke;
  v21 = &unk_1E73B5EF0;
  v22 = v7;
  selfCopy = self;
  v14 = v7;
  v15 = [_componentsPromise thenWithBlock:&v18];
  v16 = [(AMSURLSession *)v10 dataTaskPromiseWithRequestPromise:v15, v18, v19, v20, v21];

  return v16;
}

id __41__AMSClipMediaTask__performNetworkLookup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AMSMediaRequestEncoder alloc];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bag];
  v7 = [(AMSMediaRequestEncoder *)v4 initWithTokenService:v5 bag:v6];

  v8 = [*(a1 + 40) clientInfo];
  [(AMSMediaRequestEncoder *)v7 setClientInfo:v8];

  v9 = AMSLogKey();
  [(AMSMediaRequestEncoder *)v7 setLogKey:v9];

  v10 = [(AMSMediaRequestEncoder *)v7 requestWithComponents:v3];

  return v10;
}

- (id)_componentsPromise
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [AMSClipMediaURLBuilder alloc];
  bundleID = [(AMSClipMediaTask *)self bundleID];
  v5 = [(AMSClipMediaTask *)self bag];
  v6 = [(AMSClipMediaURLBuilder *)v3 initWithBundleID:bundleID bag:v5];

  externalVersionID = [(AMSClipMediaTask *)self externalVersionID];

  if (externalVersionID)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      externalVersionID2 = [(AMSClipMediaTask *)self externalVersionID];
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = externalVersionID2;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Requesting specific version (unsupported in production) %{public}@", &v16, 0x20u);
    }

    externalVersionID3 = [(AMSClipMediaTask *)self externalVersionID];
    [(AMSClipMediaURLBuilder *)v6 setExternalVersionID:externalVersionID3];
  }

  build = [(AMSClipMediaURLBuilder *)v6 build];

  return build;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end