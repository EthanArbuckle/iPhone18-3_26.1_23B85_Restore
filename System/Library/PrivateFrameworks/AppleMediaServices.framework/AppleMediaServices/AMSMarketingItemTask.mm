@interface AMSMarketingItemTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSMarketingItemTask)initWithAccount:(id)account bag:(id)bag clientIdentifier:(id)identifier clientVersion:(id)version placement:(id)placement serviceType:(id)type;
- (AMSMarketingItemTask)initWithBag:(id)bag clientIdentifier:(id)identifier clientVersion:(id)version placement:(id)placement serviceType:(id)type;
- (id)_fetchItems;
- (id)_fetchItemsFromURL:(id)l;
- (id)_processMediaResultFromPromise:(id)promise;
- (id)_requestForURL:(id)l tokenService:(id)service;
- (id)perform;
- (id)performWithFetchOnly;
@end

@implementation AMSMarketingItemTask

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (id)performWithFetchOnly
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AMSMarketingItemTask_performWithFetchOnly__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __44__AMSMarketingItemTask_performWithFetchOnly__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _fetchItems];
  v2 = [v1 thenWithBlock:&__block_literal_global_78];

  return v2;
}

- (id)_fetchItems
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedMarketingItemConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    logKey = [(AMSMarketingItemTask *)self logKey];
    serviceType = [(AMSMarketingItemTask *)self serviceType];
    placement = [(AMSMarketingItemTask *)self placement];
    contextInfo = [(AMSMarketingItemTask *)self contextInfo];
    *buf = 138544386;
    v31 = v5;
    v32 = 2114;
    v33 = logKey;
    v34 = 2114;
    v35 = serviceType;
    v36 = 2114;
    v37 = placement;
    v38 = 2114;
    v39 = contextInfo;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching marketing items for serviceType: %{public}@ \nplacement: %{public}@ \ncontext: %{public}@", buf, 0x34u);
  }

  if (+[AMSDefaults disableStubbedMarketingItems])
  {
    serviceType3 = objc_alloc_init(AMSMarketingItemTaskURLBuilder);
    serviceType2 = [(AMSMarketingItemTask *)self serviceType];
    placement2 = [(AMSMarketingItemTask *)self placement];
    v14 = [(AMSMarketingItemTask *)self bag];
    hydrateRelatedContent = [(AMSMarketingItemTask *)self hydrateRelatedContent];
    offerHints = [(AMSMarketingItemTask *)self offerHints];
    contextInfo2 = [(AMSMarketingItemTask *)self contextInfo];
    placement3 = [(AMSMarketingItemTaskURLBuilder *)serviceType3 urlWithServiceType:serviceType2 placement:placement2 bag:v14 hydrateRelatedContents:hydrateRelatedContent offerHints:offerHints additionalParameters:contextInfo2];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __35__AMSMarketingItemTask__fetchItems__block_invoke;
    v28[3] = &unk_1E73B5A70;
    v28[4] = self;
    v19 = [placement3 thenWithBlock:v28];
  }

  else
  {
    v20 = +[AMSLogConfig sharedMarketingItemConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = v22;
      logKey2 = [(AMSMarketingItemTask *)self logKey];
      *buf = 138543618;
      v31 = v22;
      v32 = 2114;
      v33 = logKey2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using local stubs", buf, 0x16u);
    }

    serviceType3 = [(AMSMarketingItemTask *)self serviceType];
    placement3 = [(AMSMarketingItemTask *)self placement];
    v25 = [AMSMarketingItemStub stubForServiceType:serviceType3 placement:placement3];
    v29 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v19 = [AMSPromise promiseWithResult:v26];
  }

  return v19;
}

- (AMSMarketingItemTask)initWithBag:(id)bag clientIdentifier:(id)identifier clientVersion:(id)version placement:(id)placement serviceType:(id)type
{
  bagCopy = bag;
  identifierCopy = identifier;
  versionCopy = version;
  placementCopy = placement;
  typeCopy = type;
  v21.receiver = self;
  v21.super_class = AMSMarketingItemTask;
  v17 = [(AMSTask *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bag, bag);
    objc_storeStrong(&v18->_clientIdentifier, identifier);
    objc_storeStrong(&v18->_clientVersion, version);
    v18->_hydrateRelatedContent = 1;
    v18->_includeMediaAssets = 1;
    objc_storeStrong(&v18->_placement, placement);
    objc_storeStrong(&v18->_serviceType, type);
  }

  return v18;
}

- (AMSMarketingItemTask)initWithAccount:(id)account bag:(id)bag clientIdentifier:(id)identifier clientVersion:(id)version placement:(id)placement serviceType:(id)type
{
  accountCopy = account;
  v16 = [(AMSMarketingItemTask *)self initWithBag:bag clientIdentifier:identifier clientVersion:version placement:placement serviceType:type];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_account, account);
  }

  return v17;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__AMSMarketingItemTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __31__AMSMarketingItemTask_perform__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AMSMarketingItemTask_perform__block_invoke_2;
  v5[3] = &unk_1E73B3028;
  v5[4] = *(a1 + 32);
  v3 = [v2 thenWithBlock:v5];

  return v3;
}

id __31__AMSMarketingItemTask_perform__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 serviceType];
  v6 = [*(a1 + 32) placement];
  v7 = [AMSMarketingItemParser selectionFromRawMarketingItems:v4 serviceType:v5 placement:v6];

  return v7;
}

AMSMutablePromise *__44__AMSMarketingItemTask_performWithFetchOnly__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = [v2 ams_mapWithTransform:&__block_literal_global_9];

  [(AMSMutablePromise *)v3 finishWithResult:v4];

  return v3;
}

AMSMarketingItem *__44__AMSMarketingItemTask_performWithFetchOnly__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSMarketingItem alloc] initWithDictionary:v2];

  return v3;
}

- (id)_fetchItemsFromURL:(id)l
{
  lCopy = l;
  v5 = [AMSMediaSharedProperties propertiesForMarketingItemTask:self];
  tokenService = [v5 tokenService];
  v7 = [(AMSMarketingItemTask *)self _requestForURL:lCopy tokenService:tokenService];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__AMSMarketingItemTask__fetchItemsFromURL___block_invoke;
  v11[3] = &unk_1E73B45F0;
  v12 = v5;
  selfCopy = self;
  v8 = v5;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

id __43__AMSMarketingItemTask__fetchItemsFromURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AMSMutableLazyPromise alloc];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __43__AMSMarketingItemTask__fetchItemsFromURL___block_invoke_2;
  v12 = &unk_1E73B8C50;
  v13 = *(a1 + 32);
  v14 = v3;
  v5 = v3;
  v6 = [(AMSMutableLazyPromise *)v4 initWithBlock:&v9];
  v7 = [*(a1 + 40) _processMediaResultFromPromise:{v6, v9, v10, v11, v12}];

  return v7;
}

void __43__AMSMarketingItemTask__fetchItemsFromURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 session];
  v5 = [v6 dataTaskPromiseWithRequest:*(a1 + 40)];
  [v4 finishWithPromise:v5];
}

- (id)_requestForURL:(id)l tokenService:(id)service
{
  serviceCopy = service;
  lCopy = l;
  v8 = [AMSMediaRequestEncoder alloc];
  v9 = [(AMSMarketingItemTask *)self bag];
  v10 = [(AMSMediaRequestEncoder *)v8 initWithTokenService:serviceCopy bag:v9];

  account = [(AMSMarketingItemTask *)self account];
  [(AMSMediaRequestEncoder *)v10 setAccount:account];

  clientInfo = [(AMSMarketingItemTask *)self clientInfo];
  [(AMSMediaRequestEncoder *)v10 setClientInfo:clientInfo];

  logKey = [(AMSMarketingItemTask *)self logKey];
  [(AMSMediaRequestEncoder *)v10 setLogKey:logKey];

  v14 = objc_alloc_init(AMSMediaResponseDecoder);
  [(AMSMediaRequestEncoder *)v10 setResponseDecoder:v14];
  v15 = [(AMSMediaRequestEncoder *)v10 requestWithURL:lCopy];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__AMSMarketingItemTask__requestForURL_tokenService___block_invoke;
  v19[3] = &unk_1E73B3510;
  v19[4] = self;
  v16 = [v15 thenWithBlock:v19];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__AMSMarketingItemTask__requestForURL_tokenService___block_invoke_2;
  v18[3] = &unk_1E73B34B8;
  v18[4] = self;
  [v16 addErrorBlock:v18];

  return v16;
}

id __52__AMSMarketingItemTask__requestForURL_tokenService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) account];
  if (v4)
  {
    v5 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v6 = [v5 ams_iCloudAccountForAccount:v4];

    v7 = [v6 ams_iCloudPartition];
    v8 = [v7 description];
    [v3 setValue:v8 forHTTPHeaderField:@"x-apple-icloud-partition"];
  }

  v9 = [AMSPromise promiseWithResult:v3];

  return v9;
}

void __52__AMSMarketingItemTask__requestForURL_tokenService___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedMarketingItemConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 logKey];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating media request: %{public}@", &v10, 0x20u);
  }
}

- (id)_processMediaResultFromPromise:(id)promise
{
  promiseCopy = promise;
  v4 = [AMSMutableLazyPromise alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__AMSMarketingItemTask__processMediaResultFromPromise___block_invoke;
  v8[3] = &unk_1E73B56C8;
  v9 = promiseCopy;
  v5 = promiseCopy;
  v6 = [(AMSMutableLazyPromise *)v4 initWithTimeout:v8 block:60.0];

  return v6;
}

void __55__AMSMarketingItemTask__processMediaResultFromPromise___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__AMSMarketingItemTask__processMediaResultFromPromise___block_invoke_2;
  v10[3] = &unk_1E73B34B8;
  v5 = v3;
  v11 = v5;
  [v4 addErrorBlock:v10];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__AMSMarketingItemTask__processMediaResultFromPromise___block_invoke_3;
  v8[3] = &unk_1E73B8C78;
  v9 = v5;
  v7 = v5;
  [v6 addSuccessBlock:v8];
}

void __55__AMSMarketingItemTask__processMediaResultFromPromise___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v9 = [v3 stringWithFormat:@"%@.%@", @"results", @"data"];
  v5 = [v4 responseDictionary];

  v6 = [v5 valueForKeyPath:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;

    if (v7)
    {
      [*(a1 + 32) finishWithResult:v7];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = AMSError(7, @"Could not find array for key path results.data in response dictionary", @"Data expected is missing.", 0);
  [*(a1 + 32) finishWithError:v8];

  v7 = 0;
LABEL_6:
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_11 != -1)
  {
    dispatch_once(&_MergedGlobals_1_11, &__block_literal_global_39);
  }

  v3 = qword_1ED6E1EE8;

  return v3;
}

void __37__AMSMarketingItemTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1EE8;
  qword_1ED6E1EE8 = @"AMSMarketingItemTask";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1EF0 != -1)
  {
    dispatch_once(&qword_1ED6E1EF0, &__block_literal_global_44_0);
  }

  v3 = qword_1ED6E1EF8;

  return v3;
}

void __44__AMSMarketingItemTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1EF8;
  qword_1ED6E1EF8 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

@end