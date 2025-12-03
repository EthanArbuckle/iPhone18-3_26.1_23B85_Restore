@interface AMSMercuryCacheFetchTask
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (id)requestEncoderWithSharedProperties:(id)properties task:(id)task;
- (AMSMercuryCacheFetchTask)initWithAccount:(id)account bag:(id)bag cacheTypeIDs:(id)ds clientIdentifier:(id)identifier clientVersion:(id)version;
- (id)_updateEndpointURLRequestWithError:(id *)error;
- (id)perform;
@end

@implementation AMSMercuryCacheFetchTask

- (AMSMercuryCacheFetchTask)initWithAccount:(id)account bag:(id)bag cacheTypeIDs:(id)ds clientIdentifier:(id)identifier clientVersion:(id)version
{
  accountCopy = account;
  bagCopy = bag;
  dsCopy = ds;
  identifierCopy = identifier;
  versionCopy = version;
  v21.receiver = self;
  v21.super_class = AMSMercuryCacheFetchTask;
  v17 = [(AMSTask *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_account, account);
    objc_storeStrong(&v18->_bag, bag);
    objc_storeStrong(&v18->_cacheTypeIDs, ds);
    objc_storeStrong(&v18->_clientIdentifier, identifier);
    objc_storeStrong(&v18->_clientVersion, version);
  }

  return v18;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__AMSMercuryCacheFetchTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __35__AMSMercuryCacheFetchTask_perform__block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [objc_opt_class() sharedPropertiesFromTask:*(a1 + 32)];
  v4 = [objc_opt_class() requestEncoderWithSharedProperties:v3 task:*(a1 + 32)];
  v5 = *(a1 + 32);
  v63 = 0;
  v6 = [v5 _updateEndpointURLRequestWithError:&v63];
  v7 = v63;
  v8 = [v4 requestByEncodingRequest:v6 parameters:0];

  if (v7)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 logKey];
      *buf = 138543874;
      v65 = v11;
      v66 = 2114;
      v67 = v14;
      v68 = 2114;
      v69 = v7;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating url request: %{public}@", buf, 0x20u);
    }

    [v2 finishWithError:v7];
    v15 = v2;
  }

  else
  {
    v62 = 0;
    v16 = [v8 resultWithTimeout:&v62 error:60.0];
    v17 = v62;
    if (v17)
    {
      v7 = v17;
      v18 = +[AMSLogConfig sharedConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = v8;
        v21 = v16;
        v22 = objc_opt_class();
        v23 = *(a1 + 32);
        v58 = v22;
        v24 = [v23 logKey];
        *buf = 138543874;
        v65 = v22;
        v16 = v21;
        v8 = v20;
        v66 = 2114;
        v67 = v24;
        v68 = 2114;
        v69 = v7;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating media request: %{public}@", buf, 0x20u);
      }

      [v2 finishWithError:v7];
      v25 = v2;
    }

    else
    {
      v26 = [v3 session];
      v27 = [v26 dataTaskPromiseWithRequest:v16];

      v61 = 0;
      v59 = v27;
      v28 = [v27 resultWithTimeout:&v61 error:60.0];
      v29 = v61;
      v60 = v16;
      if (v29)
      {
        v7 = v29;
        v56 = v28;
        v30 = +[AMSLogConfig sharedConfig];
        if (!v30)
        {
          v30 = +[AMSLogConfig sharedConfig];
        }

        v31 = [v30 OSLogObject];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = *(a1 + 32);
          v34 = v32;
          v35 = [v33 logKey];
          *buf = 138543874;
          v65 = v32;
          v66 = 2114;
          v67 = v35;
          v68 = 2114;
          v69 = v7;
          _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error performing data task: %{public}@", buf, 0x20u);
        }

        [v2 finishWithError:v7];
        v36 = v2;
        v16 = v60;
        v28 = v56;
      }

      else
      {
        v37 = [v28 responseDictionary];
        v38 = [v28 responseHeaders];
        v39 = [v37 ams_dictionaryByAddingEntriesFromDictionary:v38];

        v55 = v39;
        if (v39)
        {
          v40 = +[AMSLogConfig sharedConfig];
          if (!v40)
          {
            v40 = +[AMSLogConfig sharedConfig];
          }

          v41 = [v40 OSLogObject];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = objc_opt_class();
            v43 = *(a1 + 32);
            v44 = v42;
            v45 = [v43 logKey];
            *buf = 138543874;
            v65 = v42;
            v66 = 2114;
            v67 = v45;
            v68 = 2114;
            v69 = v55;
            _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetch complete %{public}@", buf, 0x20u);
          }

          v46 = v55;
          [v2 finishWithResult:v55];
          v7 = 0;
        }

        else
        {
          v57 = v28;
          v7 = AMSError(7, @"Sync response contains no data", @"Data expected is missing.", 0);
          v47 = +[AMSLogConfig sharedConfig];
          if (!v47)
          {
            v47 = +[AMSLogConfig sharedConfig];
          }

          v48 = [v47 OSLogObject];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = objc_opt_class();
            v50 = *(a1 + 32);
            v51 = v49;
            v52 = [v50 logKey];
            *buf = 138543874;
            v65 = v49;
            v66 = 2114;
            v67 = v52;
            v68 = 2114;
            v69 = v7;
            _os_log_impl(&dword_192869000, v48, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error performing fetching data: %{public}@", buf, 0x20u);
          }

          [v2 finishWithError:v7];
          v46 = 0;
          v28 = v57;
        }

        v53 = v2;

        v16 = v60;
      }
    }
  }

  return v2;
}

- (id)_updateEndpointURLRequestWithError:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = [(AMSMercuryCacheFetchTask *)self bag];
  v6 = [v5 stringForKey:@"mercury-sync-media-api-url"];
  valuePromise = [v6 valuePromise];
  v62 = 0;
  v8 = [valuePromise resultWithError:&v62];
  v9 = v62;

  v10 = [(AMSMercuryCacheFetchTask *)self bag];
  v11 = [v10 stringForKey:@"countryCode"];
  valuePromise2 = [v11 valuePromise];
  v61 = v9;
  v13 = [valuePromise2 resultWithError:&v61];
  v14 = v61;

  v15 = [(AMSMercuryCacheFetchTask *)self bag];
  v16 = [v15 stringForKey:@"language-tag"];
  valuePromise3 = [v16 valuePromise];
  v60 = v14;
  v18 = [valuePromise3 resultWithError:&v60];
  v19 = v60;

  if (v19)
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = v22;
      logKey = [(AMSMercuryCacheFetchTask *)self logKey];
      *buf = 138543874;
      v64 = v22;
      v65 = 2114;
      v66 = logKey;
      v67 = 2114;
      v68 = v19;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error fetching bag values for url generation %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v25 = v19;
      v26 = 0;
      *error = v19;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    cacheTypeIDs = [(AMSMercuryCacheFetchTask *)self cacheTypeIDs];
    allObjects = [cacheTypeIDs allObjects];
    v29 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    v30 = [v29 componentsJoinedByString:{@", "}];

    v59 = v13;
    v57 = [v8 stringByReplacingOccurrencesOfString:@"{cc}" withString:v13];
    v56 = [MEMORY[0x1E695DFF8] URLWithString:?];
    v31 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v56 resolvingAgainstBaseURL:1];
    v32 = objc_opt_new();
    v33 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"l" value:v18];
    [v32 addObject:v33];

    v58 = v30;
    v34 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"kinds" value:v30];
    [v32 addObject:v34];

    v35 = +[AMSMediaURLBuilderUtility devicePlatform];
    if (v35)
    {
      v36 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"platform" value:v35];
      [v32 addObject:v36];
    }

    [v31 setQueryItems:v32];
    v55 = v31;
    v37 = [v31 URL];
    if (v37)
    {
      v26 = [MEMORY[0x1E695AC18] requestWithURL:v37];
      [v26 setHTTPMethod:@"GET"];
      v38 = +[AMSLogConfig sharedConfig];
      if (!v38)
      {
        v38 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v38 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        v51 = v40;
        logKey2 = [(AMSMercuryCacheFetchTask *)self logKey];
        AMSLogableURLRequest(v26);
        v53 = v18;
        v43 = v42 = v8;
        *buf = 138543874;
        v64 = v40;
        v65 = 2114;
        v66 = logKey2;
        v67 = 2114;
        v68 = v43;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Request generated %{public}@", buf, 0x20u);

        v8 = v42;
        v18 = v53;
      }

      v19 = 0;
    }

    else
    {
      v19 = AMSError(12, @"URL was not generated from components", @"No URL generated", 0);
      v44 = +[AMSLogConfig sharedConfig];
      if (!v44)
      {
        v44 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v44 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v54 = v18;
        v46 = v8;
        v47 = objc_opt_class();
        v52 = v47;
        logKey3 = [(AMSMercuryCacheFetchTask *)self logKey];
        *buf = 138543874;
        v64 = v47;
        v8 = v46;
        v18 = v54;
        v65 = 2114;
        v66 = logKey3;
        v67 = 2114;
        v68 = v19;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error fetching bag values for url generation %{public}@", buf, 0x20u);
      }

      if (error)
      {
        v49 = v19;
        v26 = 0;
        *error = v19;
      }

      else
      {
        v26 = 0;
      }
    }

    v13 = v59;
  }

  return v26;
}

+ (id)requestEncoderWithSharedProperties:(id)properties task:(id)task
{
  taskCopy = task;
  propertiesCopy = properties;
  v7 = [AMSMediaRequestEncoder alloc];
  tokenService = [propertiesCopy tokenService];

  v9 = [taskCopy bag];
  v10 = [(AMSMediaRequestEncoder *)v7 initWithTokenService:tokenService bag:v9];

  account = [taskCopy account];
  [(AMSMediaRequestEncoder *)v10 setAccount:account];

  clientInfo = [taskCopy clientInfo];

  [(AMSMediaRequestEncoder *)v10 setClientInfo:clientInfo];
  v13 = objc_alloc_init(AMSMediaResponseDecoder);
  [(AMSMediaRequestEncoder *)v10 setResponseDecoder:v13];

  return v10;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_13 != -1)
  {
    dispatch_once(&_MergedGlobals_1_13, &__block_literal_global_87);
  }

  v3 = qword_1ED6E1F28;

  return v3;
}

void __41__AMSMercuryCacheFetchTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1F28;
  qword_1ED6E1F28 = @"AMSMercuryCache";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1F30 != -1)
  {
    dispatch_once(&qword_1ED6E1F30, &__block_literal_global_46_0);
  }

  v3 = qword_1ED6E1F38;

  return v3;
}

void __48__AMSMercuryCacheFetchTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1F38;
  qword_1ED6E1F38 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

@end