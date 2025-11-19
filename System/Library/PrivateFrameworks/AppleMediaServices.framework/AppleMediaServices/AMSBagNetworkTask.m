@interface AMSBagNetworkTask
+ (BOOL)_shouldReloadDataForOriginalCookies:(id)a3 newCookies:(id)a4;
+ (id)_URLCookieNamesForProfile:(id)a3;
+ (id)_bagDataByApplyingOverridesToBagData:(id)a3;
+ (id)_bagDataByApplyingOverridesToBagData:(id)a3 overrides:(id)a4 ignoredKeys:(id)a5 inserts:(id)a6;
+ (id)_cookiesForNames:(id)a3 clientInfo:(id)a4 account:(id)a5;
+ (id)_createURLSessionPromise;
+ (id)_defaultURLCookieNames;
+ (id)_queryItemsForClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5 cookieNames:(id)a6 account:(id)a7 storefront:(id)a8;
+ (id)_queryItemsForClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5 cookieNames:(id)a6 accountProvider:(id)a7;
+ (id)_requestIdentifierForQueryItems:(id)a3 prefix:(id)a4;
+ (id)_setStorefrontFromURLResponse:(id)a3 bagData:(id)a4;
+ (id)_urlSessionPromise;
+ (id)requestPartialIdentifierForClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5;
+ (void)_setURLCookieNames:(id)a3 forProfile:(id)a4;
- (AMSBagNetworkTask)initWithClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5 accountProvider:(id)a6;
- (BOOL)_shouldRetryForResult:(id)a3 cookieNames:(id)a4 urlCookies:(id)a5 responseStorefront:(id)a6;
- (id)_createRequestWithQueryItems:(id)a3;
- (id)_performFetchWithAttemptedCount:(unint64_t)a3 account:(id)a4 storefront:(id)a5;
- (id)performFetch;
- (void)_updateStorefrontSuffixIfNecessaryWithBagData:(id)a3;
@end

@implementation AMSBagNetworkTask

- (id)performFetch
{
  v20 = *MEMORY[0x1E69E9840];
  if (+[AMSUnitTests isRunningUnitTests])
  {
    v3 = +[AMSUnitTests isRunningUnitTests];
    v4 = +[AMSLogConfig sharedBagConfig];
    v5 = v4;
    if (v3)
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = AMSLogKey();
        *buf = 138543618;
        v17 = v7;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Running unit tests. We won't go to the network to fetch bags. Unit tests should use mocked bags.", buf, 0x16u);
      }

      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = +[AMSLogConfig sharedBagConfig];
      [v5 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v9 userInfo:0];
    }

    else
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v5 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        v12 = AMSLogKey();
        *buf = 138543618;
        v17 = v11;
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Running unit tests. We won't go to the network to fetch bags. Unit tests should use mocked bags.", buf, 0x16u);
      }
    }

    v13 = AMSError(203, @"Bag Load Failed", @"Running unit test", 0);
    v10 = [AMSPromise promiseWithError:v13];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __33__AMSBagNetworkTask_performFetch__block_invoke;
    v15[3] = &unk_1E73B3588;
    v15[4] = self;
    v10 = [(AMSTask *)self performTaskWithPromiseBlock:v15];
  }

  return v10;
}

+ (id)_defaultURLCookieNames
{
  if (qword_1ED6E24C0 != -1)
  {
    dispatch_once(&qword_1ED6E24C0, &__block_literal_global_155);
  }

  v3 = qword_1ED6E24C8;

  return v3;
}

id __33__AMSBagNetworkTask_performFetch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountProvider];
  v3 = [*(a1 + 32) clientInfo];
  v4 = [v3 accountMediaType];
  v5 = [v2 bagAccountPromiseForAccountMediaType:v4];

  v6 = [*(a1 + 32) accountProvider];
  v7 = [*(a1 + 32) clientInfo];
  v8 = [v7 accountMediaType];
  v9 = [v6 bagStorefrontPromiseForAccountMediaType:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__AMSBagNetworkTask_performFetch__block_invoke_2;
  v14[3] = &unk_1E73B4538;
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v11 = v9;
  v12 = [v5 continueWithBlock:v14];

  return v12;
}

id __33__AMSBagNetworkTask_performFetch__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__AMSBagNetworkTask_performFetch__block_invoke_3;
  v8[3] = &unk_1E73B4510;
  v4 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  v6 = [v4 continueWithBlock:v8];

  return v6;
}

void __43__AMSBagNetworkTask__defaultURLCookieNames__block_invoke()
{
  v0 = qword_1ED6E24C8;
  qword_1ED6E24C8 = &unk_1F0779B98;
}

uint64_t __39__AMSBagNetworkTask__urlSessionPromise__block_invoke(uint64_t a1)
{
  qword_1ED6E24B8 = [*(a1 + 32) _createURLSessionPromise];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_createURLSessionPromise
{
  v2 = [[AMSMutableLazyPromise alloc] initWithBlock:&__block_literal_global_107];

  return v2;
}

void __45__AMSBagNetworkTask__createURLSessionPromise__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695AC80];
  v3 = a2;
  v4 = +[AMSProcessInfo currentProcess];
  v5 = [v2 ams_configurationWithClientInfo:v4 bag:0];
  v6 = [v5 thenWithBlock:&__block_literal_global_112];

  [v3 finishWithPromise:v6];
}

id __45__AMSBagNetworkTask__createURLSessionPromise__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTimeoutIntervalForResource:30.0];
  v3 = [[AMSURLSession alloc] initWithConfiguration:v2 delegate:0 delegateQueue:0];

  v4 = [AMSPromise promiseWithResult:v3];

  return v4;
}

+ (id)_urlSessionPromise
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AMSBagNetworkTask__urlSessionPromise__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_3_1 != -1)
  {
    dispatch_once(&_MergedGlobals_3_1, block);
  }

  v2 = qword_1ED6E24B8;

  return v2;
}

- (AMSBagNetworkTask)initWithClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5 accountProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = AMSBagNetworkTask;
  v15 = [(AMSTask *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountProvider, a6);
    objc_storeStrong(&v16->_clientInfo, a3);
    objc_storeStrong(&v16->_profile, a4);
    objc_storeStrong(&v16->_profileVersion, a5);
    v17 = AMSSetLogKeyIfNeeded();
    logKey = v16->_logKey;
    v16->_logKey = v17;

    v19 = [[AMSMetricsActivity alloc] initWithLabel:1];
    activity = v16->_activity;
    v16->_activity = v19;
  }

  return v16;
}

+ (id)requestPartialIdentifierForClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5
{
  v6 = [AMSBagNetworkTask _queryItemsForClientInfo:a3 profile:a4 profileVersion:a5 cookieNames:MEMORY[0x1E695E0F0] accountProvider:0];
  v7 = [a1 _requestIdentifierForQueryItems:v6 prefix:@"com.apple.AppleMediaServices.AMSBagNetworkTask.partial-identifier"];

  return v7;
}

- (id)_performFetchWithAttemptedCount:(unint64_t)a3 account:(id)a4 storefront:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v10 = +[AMSLogConfig sharedBagConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v42 = v12;
      v43 = 2114;
      v44 = v13;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempted a bag load but an account wasn't provided.", buf, 0x16u);
    }
  }

  if (a3 < 3)
  {
    v21 = [(AMSBagNetworkTask *)self profile];
    v22 = [AMSBagNetworkTask _URLCookieNamesForProfile:v21];

    v23 = [(AMSBagNetworkTask *)self clientInfo];
    v24 = [(AMSBagNetworkTask *)self profile];
    v25 = [(AMSBagNetworkTask *)self profileVersion];
    v26 = [AMSBagNetworkTask _queryItemsForClientInfo:v23 profile:v24 profileVersion:v25 cookieNames:v22 account:v8 storefront:v9];

    v27 = [(AMSBagNetworkTask *)self _createRequestWithQueryItems:v26];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __72__AMSBagNetworkTask__performFetchWithAttemptedCount_account_storefront___block_invoke;
    v40[3] = &unk_1E73B3510;
    v40[4] = self;
    v28 = [v27 thenWithBlock:v40];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __72__AMSBagNetworkTask__performFetchWithAttemptedCount_account_storefront___block_invoke_4;
    v35[3] = &unk_1E73B44E8;
    v35[4] = self;
    v36 = v26;
    v37 = v22;
    v39 = a3;
    v38 = v8;
    v29 = v22;
    v30 = v26;
    v31 = [v28 thenWithBlock:v35];
  }

  else
  {
    v14 = +[AMSUnitTests isRunningUnitTests];
    v15 = +[AMSLogConfig sharedBagConfig];
    v16 = v15;
    if (v14)
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        *buf = 138543874;
        v42 = v18;
        v43 = 2114;
        v44 = v19;
        v45 = 2050;
        v46 = a3;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempt-count parameter exceeds the maximum. count = %{public}lu", buf, 0x20u);
      }

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      v20 = +[AMSLogConfig sharedBagConfig];
      [v16 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v20 userInfo:0];
    }

    else
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v16 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v32 = objc_opt_class();
        v33 = AMSLogKey();
        *buf = 138543874;
        v42 = v32;
        v43 = 2114;
        v44 = v33;
        v45 = 2050;
        v46 = a3;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Attempt-count parameter exceeds the maximum. count = %{public}lu", buf, 0x20u);
      }
    }

    v27 = AMSError(203, @"Bag Load Failed", @"Invalid attempt count.", 0);
    v31 = [AMSPromise promiseWithError:v27];
  }

  return v31;
}

id __72__AMSBagNetworkTask__performFetchWithAttemptedCount_account_storefront___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSBagNetworkTask _urlSessionPromise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__AMSBagNetworkTask__performFetchWithAttemptedCount_account_storefront___block_invoke_2;
  v9[3] = &unk_1E73B44C0;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 thenWithBlock:v9];

  return v7;
}

id __72__AMSBagNetworkTask__performFetchWithAttemptedCount_account_storefront___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 activity];
  v6 = [v5 nwActivity];
  v7 = [v4 dataTaskPromiseWithRequest:v2 activity:v6];

  v8 = [v7 catchWithBlock:&__block_literal_global_18];

  return v8;
}

id __72__AMSBagNetworkTask__performFetchWithAttemptedCount_account_storefront___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = AMSError(203, @"Bag Load Failed", @"We failed to load the bag.", a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

id __72__AMSBagNetworkTask__performFetchWithAttemptedCount_account_storefront___block_invoke_4(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v4;

  if (!v5)
  {
LABEL_9:
    v15 = AMSError(203, @"Bag Load Failed", @"Network response object was not a dictionary.", 0);
    v13 = [AMSPromise promiseWithError:v15];

    goto LABEL_23;
  }

  v6 = [v5 objectForKeyedSubscript:@"urlCookies"];
  v7 = [*(a1 + 32) profile];
  [AMSBagNetworkTask _setURLCookieNames:v6 forProfile:v7];

  [*(a1 + 32) _updateStorefrontSuffixIfNecessaryWithBagData:v5];
  v8 = [v3 response];
  v9 = [AMSBagNetworkTask _setStorefrontFromURLResponse:v8 bagData:v5];

  v10 = [AMSBagURLQueryItemsBuilder storefrontFromQueryItems:*(a1 + 40)];
  v11 = v10;
  if (v9)
  {
    v11 = v9;
  }

  v44 = v11;
  if ([*(a1 + 32) _shouldRetryForResult:v3 cookieNames:*(a1 + 48) urlCookies:v6 responseStorefront:v9])
  {
    if (*(a1 + 64) == 3)
    {
      v12 = AMSError(203, @"Bag Load Failed", @"Maximum number of attempts exceeded.", 0);
      v13 = [AMSPromise promiseWithError:v12];

      v14 = v44;
    }

    else
    {
      v34 = +[AMSLogConfig sharedBagConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v41 = objc_opt_class();
        v43 = AMSLogKey();
        v36 = AMSHashIfNeeded(v10);
        AMSHashIfNeeded(v44);
        *buf = 138544130;
        v46 = v41;
        v47 = 2114;
        v48 = v43;
        v49 = 2114;
        v50 = v36;
        v52 = v51 = 2114;
        v37 = v52;
        _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrying bag load. originalStorefront = %{public}@ | newStorefront = %{public}@", buf, 0x2Au);
      }

      v14 = v44;
      v13 = [*(a1 + 32) _performFetchWithAttemptedCount:*(a1 + 64) + 1 account:*(a1 + 56) storefront:v44];
    }
  }

  else
  {
    v40 = [objc_opt_class() _bagDataByApplyingOverridesToBagData:v5];

    v16 = [v3 response];
    [v16 ams_expirationInterval];
    v18 = v17;

    Current = CFAbsoluteTimeGetCurrent();
    v20 = 60.0;
    if (v18 >= 60.0)
    {
      v20 = v18;
    }

    v39 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:Current + v20];
    v21 = +[AMSLogConfig sharedBagConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v42 = v6;
    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543618;
      v46 = v23;
      v47 = 2114;
      v48 = v24;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully loaded the bag data.", buf, 0x16u);
    }

    v25 = [objc_opt_class() _requestIdentifierForQueryItems:*(a1 + 40)];
    v26 = objc_opt_class();
    v27 = [*(a1 + 32) clientInfo];
    v28 = [*(a1 + 32) profile];
    v29 = [*(a1 + 32) profileVersion];
    v30 = [v26 requestPartialIdentifierForClientInfo:v27 profile:v28 profileVersion:v29];

    v31 = [AMSBagNetworkTaskResult alloc];
    v32 = [*(a1 + 56) identifier];
    v5 = v40;
    v14 = v44;
    v33 = [(AMSBagNetworkTaskResult *)v31 initWithData:v40 expirationDate:v39 loadedBagIdentifier:v25 loadedBagPartialIdentifier:v30 storefront:v44 accountIdentifier:v32];

    v13 = [AMSPromise promiseWithResult:v33];

    v6 = v42;
  }

LABEL_23:

  return v13;
}

+ (id)_bagDataByApplyingOverridesToBagData:(id)a3
{
  v4 = a3;
  v5 = +[AMSDefaults bagOverrides];
  v6 = +[AMSDefaults bagOverrideIgnoredKeys];
  v7 = +[AMSDefaults bagOverrideInserts];
  v8 = [a1 _bagDataByApplyingOverridesToBagData:v4 overrides:v5 ignoredKeys:v6 inserts:v7];

  return v8;
}

+ (id)_bagDataByApplyingOverridesToBagData:(id)a3 overrides:(id)a4 ignoredKeys:(id)a5 inserts:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 count] || objc_msgSend(v12, "count") || objc_msgSend(v13, "count"))
  {
    v14 = +[AMSLogConfig sharedBagConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = AMSLogKey();
      *buf = 138543618;
      v55 = a1;
      v56 = 2114;
      v57 = v16;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Applying bag overrides", buf, 0x16u);
    }

    v17 = [v10 mutableCopy];
    if ([v11 count])
    {
      v18 = +[AMSLogConfig sharedBagConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v10;
        v21 = objc_opt_class();
        AMSLogKey();
        v43 = v12;
        v23 = v22 = v13;
        v24 = [v11 allKeys];
        *buf = 138543874;
        v55 = v21;
        v10 = v20;
        v56 = 2114;
        v57 = v23;
        v58 = 2114;
        v59 = v24;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding the following keys: %{public}@", buf, 0x20u);

        v13 = v22;
        v12 = v43;
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __88__AMSBagNetworkTask__bagDataByApplyingOverridesToBagData_overrides_ignoredKeys_inserts___block_invoke;
      v51[3] = &unk_1E73B4560;
      v52 = v17;
      [v11 enumerateKeysAndObjectsUsingBlock:v51];
    }

    if ([v13 count])
    {
      v25 = +[AMSLogConfig sharedBagConfig];
      if (!v25)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        AMSLogKey();
        v28 = v44 = v10;
        [v13 allKeys];
        v29 = v11;
        v30 = v12;
        v32 = v31 = v13;
        *buf = 138543874;
        v55 = v27;
        v56 = 2114;
        v57 = v28;
        v58 = 2114;
        v59 = v32;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Inserting to the following keys: %{public}@", buf, 0x20u);

        v13 = v31;
        v12 = v30;
        v11 = v29;

        v10 = v44;
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __88__AMSBagNetworkTask__bagDataByApplyingOverridesToBagData_overrides_ignoredKeys_inserts___block_invoke_102;
      v49[3] = &unk_1E73B4588;
      v50 = v17;
      [v13 enumerateKeysAndObjectsUsingBlock:v49];
    }

    if ([v12 count])
    {
      v33 = +[AMSLogConfig sharedBagConfig];
      if (!v33)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      v34 = [v33 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = AMSLogKey();
        *buf = 138543874;
        v55 = v35;
        v56 = 2114;
        v57 = v36;
        v58 = 2114;
        v59 = v12;
        _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing the following keys: %{public}@", buf, 0x20u);
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v37 = v12;
      v38 = [v37 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v46;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v46 != v40)
            {
              objc_enumerationMutation(v37);
            }

            [v17 ams_deleteValueForKeyPath:*(*(&v45 + 1) + 8 * i)];
          }

          v39 = [v37 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v39);
      }
    }
  }

  else
  {
    v17 = v10;
  }

  return v17;
}

- (id)_createRequestWithQueryItems:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSBagNetworkTask *)self clientInfo];
  v6 = [v5 accountMediaType];
  v7 = @"https://sandbox.itunes.apple.com/WebObjects/MZInit.woa/wa/initiateSession";
  if (([v6 isEqualToString:AMSAccountMediaTypeAppStoreSandbox] & 1) == 0)
  {
    v8 = [(AMSBagNetworkTask *)self clientInfo];
    v9 = [v8 accountMediaType];
    if (![v9 isEqualToString:AMSAccountMediaTypeAppStoreBeta])
    {
      v7 = @"https://bag.itunes.apple.com/bag.xml";
    }
  }

  v10 = MEMORY[0x1E696AF20];
  v11 = v7;
  v12 = [[v10 alloc] initWithString:v11];

  [v12 setPercentEncodedQueryItems:v4];
  v13 = [v12 URL];
  if (v13)
  {
    v14 = [[AMSURLRequestEncoder alloc] initWithBag:0];
    v15 = [(AMSBagNetworkTask *)self clientInfo];
    [(AMSURLRequestEncoder *)v14 setClientInfo:v15];

    v16 = AMSLogKey();
    [(AMSURLRequestEncoder *)v14 setLogUUID:v16];

    [(AMSURLRequestEncoder *)v14 setUrlKnownToBeTrusted:1];
    [(AMSURLRequestEncoder *)v14 setIncludeClientVersions:0];
    [(AMSURLRequestEncoder *)v14 setPreserveQueryParameterEncoding:1];
    [(AMSURLRequestEncoder *)v14 setShouldSetStorefrontHeader:0];
    [(AMSURLRequestEncoder *)v14 setShouldSetCookieHeader:0];
    v17 = [(AMSBagNetworkTask *)self accountProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [(AMSBagNetworkTask *)self accountProvider];
      v20 = [v19 account];
      [(AMSURLRequestEncoder *)v14 setAccount:v20];
    }

    v21 = [(AMSURLRequestEncoder *)v14 requestWithMethod:2 URL:v13 parameters:0];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __50__AMSBagNetworkTask__createRequestWithQueryItems___block_invoke;
    v32 = &unk_1E73B45F0;
    v33 = v4;
    v34 = self;
    v22 = [v21 thenWithBlock:&v29];
    v23 = [v22 catchWithBlock:{&__block_literal_global_123, v29, v30, v31, v32}];
  }

  else
  {
    v14 = +[AMSLogConfig sharedBagConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v21 = [(AMSURLRequestEncoder *)v14 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      v26 = [v4 ams_nonEmptyComponentsJoinedByString:{@", "}];
      v27 = AMSHashIfNeeded(v26);
      *buf = 138543874;
      v36 = v24;
      v37 = 2114;
      v38 = v25;
      v39 = 2114;
      v40 = v27;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to format bag URL. Query items = %{public}@", buf, 0x20u);
    }

    v23 = 0;
  }

  return v23;
}

id __50__AMSBagNetworkTask__createRequestWithQueryItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AMSBagURLQueryItemsBuilder storefrontFromQueryItems:*(a1 + 32)];
  if (v4)
  {
    [v3 setValue:v4 forHTTPHeaderField:@"X-Apple-Store-Front"];
  }

  v5 = [*(a1 + 40) logKey];
  v6 = [v3 properties];
  [v6 setLogUUID:v5];

  v7 = [AMSPromise promiseWithResult:v3];

  return v7;
}

id __50__AMSBagNetworkTask__createRequestWithQueryItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = AMSError(203, @"Bag Load Failed", @"Failed to create URL request.", a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

+ (id)_queryItemsForClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5 cookieNames:(id)a6 account:(id)a7 storefront:(id)a8
{
  v46 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (a8)
  {
    v19 = a8;
    v20 = [AMSStorefrontSuffixAccessor storefrontSuffixWithClientInfo:v14];
    v41 = 0;
    v21 = [AMSStorefrontHeaderValueCreation combinedStorefrontFromStorefront:v19 suffix:v20 error:&v41];

    v22 = v41;
    if (v22)
    {
      v40 = v20;
      v23 = +[AMSLogConfig sharedBagConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        log = v24;
        v25 = AMSLogKey();
        v35 = MEMORY[0x1E696AEC0];
        v38 = a1;
        v26 = objc_opt_class();
        v27 = v26;
        v39 = v25;
        if (v25)
        {
          v34 = AMSLogKey();
          [v35 stringWithFormat:@"%@: [%@] ", v27, v34];
        }

        else
        {
          [v35 stringWithFormat:@"%@: ", v26];
        }
        v28 = ;
        v29 = AMSLogableError(v22);
        *buf = 138543618;
        v43 = v28;
        v44 = 2114;
        v36 = v29;
        v45 = v29;
        v24 = log;
        _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_ERROR, "%{public}@Failed to combine storefront and storefront suffix. Defaulting to using a nil storefront. error = %{public}@", buf, 0x16u);
        if (v39)
        {

          v28 = v34;
        }

        a1 = v38;
      }

      v20 = v40;
    }
  }

  else
  {
    v21 = 0;
  }

  v30 = [a1 _cookiesForNames:v17 clientInfo:v14 account:v18];
  v31 = [[AMSBagURLQueryItemsBuilder alloc] initWithClientInfo:v14 profile:v15 profileVersion:v16];
  v32 = [(AMSBagURLQueryItemsBuilder *)v31 queryItemsWithCookies:v30 storefront:v21];

  return v32;
}

+ (id)_queryItemsForClientInfo:(id)a3 profile:(id)a4 profileVersion:(id)a5 cookieNames:(id)a6 accountProvider:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v16 accountMediaType];
  v18 = [v12 bagAccountForAccountMediaType:v17];
  v19 = [v16 accountMediaType];
  v20 = [v12 bagStorefrontForAccountMediaType:v19];

  v21 = [a1 _queryItemsForClientInfo:v16 profile:v15 profileVersion:v14 cookieNames:v13 account:v18 storefront:v20];

  return v21;
}

+ (id)_requestIdentifierForQueryItems:(id)a3 prefix:(id)a4
{
  v5 = a4;
  v6 = [a3 ams_mapWithTransform:&__block_literal_global_141];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v6 ams_nonEmptyComponentsJoinedByString:{@", "}];
  v9 = [v7 stringWithFormat:@"%@_%@", v5, v8];

  return v9;
}

id __60__AMSBagNetworkTask__requestIdentifierForQueryItems_prefix___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];

  v4 = MEMORY[0x1E696AEC0];
  v5 = [v2 name];
  v6 = v5;
  if (v3)
  {
    v7 = [v2 value];
    v8 = [v4 stringWithFormat:@"%@=%@", v6, v7];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"%@", v5];
  }

  return v8;
}

+ (id)_setStorefrontFromURLResponse:(id)a3 bagData:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = 0;
  if (v5 && (isKindOfClass & 1) != 0)
  {
    v8 = [v5 valueForHTTPHeaderField:@"X-Set-Apple-Store-Front"];
    v9 = [v6 objectForKeyedSubscript:@"storefront-header-suffix"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length] && (objc_msgSend(v8, "containsString:", v9) & 1) == 0)
    {
      v10 = [v8 stringByAppendingString:v9];

      v8 = v10;
    }
  }

  return v8;
}

- (BOOL)_shouldRetryForResult:(id)a3 cookieNames:(id)a4 urlCookies:(id)a5 responseStorefront:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([AMSBagNetworkTask _shouldReloadDataForOriginalCookies:v10 newCookies:v11])
  {
    v13 = +[AMSLogConfig sharedBagConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = objc_opt_class();
    v16 = AMSLogKey();
    *buf = 138544130;
    v26 = v15;
    v27 = 2114;
    v28 = v16;
    v29 = 2114;
    v30 = v10;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to load the bag again due to urlCookies. originalCookies = %{public}@ | newCookies = %{public}@", buf, 0x2Au);
LABEL_13:

LABEL_14:
    v19 = 1;
    goto LABEL_15;
  }

  v17 = [v9 task];
  v18 = [v17 originalRequest];
  v13 = [v18 valueForHTTPHeaderField:@"X-Apple-Store-Front"];

  if (v12 && ([v13 isEqualToString:v12] & 1) == 0)
  {
    v14 = +[AMSLogConfig sharedBagConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v14 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = AMSHashIfNeeded(v13);
      v22 = AMSHashIfNeeded(v12);
      *buf = 138544130;
      v26 = v24;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to load the bag again because the response had a x-set-apple-store-front header. originalStorefront = %{public}@ | newStorefront = %{public}@", buf, 0x2Au);
    }

    goto LABEL_13;
  }

  v19 = 0;
LABEL_15:

  return v19;
}

- (void)_updateStorefrontSuffixIfNecessaryWithBagData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"storefront-header-suffix"];
  v5 = [(AMSBagNetworkTask *)self clientInfo];
  v16 = 0;
  v6 = [AMSStorefrontSuffixAccessor setStorefrontSuffix:v4 clientInfo:v5 error:&v16];
  v7 = v16;

  if (!v6)
  {
    v8 = +[AMSLogConfig sharedAccountsStorefrontConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        self = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, self];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v15 = AMSLogableError(v7);
      *buf = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v4;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to set storefront suffix. suffix = %{public}@ | error = %{public}@", buf, 0x20u);
      if (v10)
      {

        v14 = self;
      }
    }
  }
}

+ (id)_cookiesForNames:(id)a3 clientInfo:(id)a4 account:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  if (v7)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v7 ams_cookies];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __57__AMSBagNetworkTask__cookiesForNames_clientInfo_account___block_invoke;
          v18[3] = &unk_1E73B2DB8;
          v18[4] = v13;
          v15 = [v14 ams_firstObjectPassingTest:v18];

          if (v15)
          {
            [v17 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

uint64_t __57__AMSBagNetworkTask__cookiesForNames_clientInfo_account___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ams_isCookieValidForBag])
  {
    v4 = [v3 name];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_setURLCookieNames:(id)a3 forProfile:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = +[AMSStorage bagURLCookies];
  if (v8 | v6)
  {
    v7 = [v6 mutableCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if (v8)
    {
      [v7 setObject:v8 forKeyedSubscript:v5];
    }

    else
    {
      [v7 removeObjectForKey:v5];
    }

    if (([v6 isEqualToDictionary:v7] & 1) == 0)
    {
      [AMSStorage setBagURLCookies:v7];
    }
  }
}

+ (BOOL)_shouldReloadDataForOriginalCookies:(id)a3 newCookies:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = a3;
    v9 = [[v7 alloc] initWithArray:v8];

    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
    v11 = [v9 isEqualToSet:v10];
  }

  else
  {
    v10 = a3;
    v9 = [a1 _defaultURLCookieNames];
    v11 = [v10 isEqualToArray:v9];
  }

  v12 = v11;

  return v12 ^ 1;
}

+ (id)_URLCookieNamesForProfile:(id)a3
{
  v4 = a3;
  v5 = +[AMSStorage bagURLCookies];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = [a1 _defaultURLCookieNames];
  }

  return v6;
}

@end