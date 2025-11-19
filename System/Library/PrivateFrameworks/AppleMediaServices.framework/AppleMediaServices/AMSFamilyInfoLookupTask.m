@interface AMSFamilyInfoLookupTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_processURLResult:(id)a3;
+ (id)createBagForSubProfile;
- (AMSFamilyInfoLookupTask)initWithAccount:(id)a3 bag:(id)a4;
- (AMSFamilyInfoLookupTask)initWithBag:(id)a3;
- (AMSFamilyInfoLookupTask)initWithBagContract:(id)a3;
- (id)_cachedFamilyInfoLookupResultForAccount:(id)a3;
- (id)_currentCachedFamilyInfo;
- (id)_pathForCachedFamilyInfoLookupResult;
- (id)_performFamilyInfoRequestForAccount:(id)a3 error:(id *)a4;
- (id)fetchFamilyInfoLookupFromCache;
- (id)fetchFamilyInfoLookupFromServer;
- (id)performFamilyInfoLookupWithCachePolicy:(int64_t)a3;
- (void)_cacheFamilyInfoLookupResult:(id)a3 forAccount:(id)a4;
@end

@implementation AMSFamilyInfoLookupTask

- (AMSFamilyInfoLookupTask)initWithAccount:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSFamilyInfoLookupTask;
  v9 = [(AMSTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_bag, a4);
    v11 = AMSGenerateLogCorrelationKey();
    logKey = v10->_logKey;
    v10->_logKey = v11;
  }

  return v10;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_9 != -1)
  {
    dispatch_once(&_MergedGlobals_1_9, &__block_literal_global_55);
  }

  v3 = qword_1ED6E1EA8;

  return v3;
}

void __40__AMSFamilyInfoLookupTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1EA8;
  qword_1ED6E1EA8 = @"AMSFamilyInfo";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1EB0 != -1)
  {
    dispatch_once(&qword_1ED6E1EB0, &__block_literal_global_18_0);
  }

  v3 = qword_1ED6E1EB8;

  return v3;
}

void __47__AMSFamilyInfoLookupTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1EB8;
  qword_1ED6E1EB8 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

- (id)performFamilyInfoLookupWithCachePolicy:(int64_t)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AMSFamilyInfoLookupTask_performFamilyInfoLookupWithCachePolicy___block_invoke;
  v5[3] = &unk_1E73B7900;
  v5[4] = self;
  v5[5] = a3;
  v3 = [(AMSTask *)self performTaskWithPromiseBlock:v5];

  return v3;
}

id __66__AMSFamilyInfoLookupTask_performFamilyInfoLookupWithCachePolicy___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 logKey];
    v8 = *(a1 + 40);
    *buf = 138543874;
    v15 = v4;
    v16 = 2114;
    v17 = v7;
    v18 = 2050;
    v19 = v8;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing look up (cachePolicy: %{public}ld)", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  switch(v9)
  {
    case 2:
      v11 = [*(a1 + 32) fetchFamilyInfoLookupFromCache];
      goto LABEL_11;
    case 1:
      v11 = [*(a1 + 32) fetchFamilyInfoLookupFromServer];
LABEL_11:
      v2 = v11;
      break;
    case 0:
      v10 = [*(a1 + 32) fetchFamilyInfoLookupFromCache];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__AMSFamilyInfoLookupTask_performFamilyInfoLookupWithCachePolicy___block_invoke_23;
      v13[3] = &unk_1E73B78D8;
      v13[4] = *(a1 + 32);
      v2 = [v10 continueWithBlock:v13];

      break;
  }

  return v2;
}

id __66__AMSFamilyInfoLookupTask_performFamilyInfoLookupWithCachePolicy___block_invoke_23(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = [AMSPromise promiseWithResult:a2];
  }

  else
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 logKey];
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Failed to fetch cache, attempting to query server", &v11, 0x16u);
    }

    v2 = [*(a1 + 32) fetchFamilyInfoLookupFromServer];
  }

  return v2;
}

- (id)fetchFamilyInfoLookupFromCache
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(AMSFamilyInfoLookupTask *)self account];
  v4 = [(AMSFamilyInfoLookupTask *)self _cachedFamilyInfoLookupResultForAccount:v3];

  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [(AMSFamilyInfoLookupTask *)self logKey];
      v11 = [v4 dictionaryRepresentation];
      v19 = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] returning cached result %{public}@", &v19, 0x20u);
    }

    v12 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v6 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [(AMSFamilyInfoLookupTask *)self logKey];
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Cache not available", &v19, 0x16u);
    }

    v17 = AMSError(7, @"Family Info Lookup Failed", @"Cache not available", 0);
    v12 = [AMSPromise promiseWithError:v17];
  }

  return v12;
}

- (id)fetchFamilyInfoLookupFromServer
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(AMSFamilyInfoLookupTask *)self account];

  if (v3)
  {
    v4 = [(AMSFamilyInfoLookupTask *)self account];
    v45 = 0;
    v5 = [(AMSFamilyInfoLookupTask *)self _performFamilyInfoRequestForAccount:v4 error:&v45];
    v6 = v45;

    v7 = [AMSFamilyInfoLookupTask _processURLResult:v5];
    v8 = v7;
    if (v5 && v7)
    {
      v9 = +[AMSLogConfig sharedConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v13 = [(AMSFamilyInfoLookupTask *)self logKey];
        *buf = 138543618;
        v47 = v11;
        v48 = 2114;
        v49 = v13;
        _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Successfully fetched family info from server", buf, 0x16u);
      }

      v14 = [(AMSFamilyInfoLookupTask *)self account];
      [(AMSFamilyInfoLookupTask *)self _cacheFamilyInfoLookupResult:v8 forAccount:v14];
    }

    else
    {
      if (!v5)
      {
        v21 = +[AMSLogConfig sharedConfig];
        if (!v21)
        {
          v21 = +[AMSLogConfig sharedConfig];
        }

        v22 = [v21 OSLogObject];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = [(AMSFamilyInfoLookupTask *)self logKey];
          v25 = AMSLogableError(v6);
          *buf = 138543874;
          v47 = v23;
          v48 = 2114;
          v49 = v24;
          v50 = 2114;
          v51 = v25;
          _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load the family info because the network call failed. error = %{public}@", buf, 0x20u);
        }
      }

      v26 = [(AMSFamilyInfoLookupTask *)self account];
      v27 = [(AMSFamilyInfoLookupTask *)self _cachedFamilyInfoLookupResultForAccount:v26];

      v28 = +[AMSLogConfig sharedConfig];
      v14 = v28;
      if (!v27)
      {
        if (!v28)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        v42 = [v14 OSLogObject];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = objc_opt_class();
          v44 = [(AMSFamilyInfoLookupTask *)self logKey];
          *buf = 138543618;
          v47 = v43;
          v48 = 2114;
          v49 = v44;
          _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We failed to load the family info, and we have no cached family info to return.", buf, 0x16u);
        }

        v8 = AMSError(0, @"Family Info Lookup Failed", @"We failed to load the family info for the active account.", v6);
        v40 = [AMSPromise promiseWithError:v8];
        goto LABEL_31;
      }

      if (!v28)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v14 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = v30;
        v32 = [(AMSFamilyInfoLookupTask *)self logKey];
        *buf = 138543618;
        v47 = v30;
        v48 = 2114;
        v49 = v32;
        _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Returning cached family info.", buf, 0x16u);
      }

      v8 = v27;
    }

    v33 = +[AMSLogConfig sharedConfig];
    if (!v33)
    {
      v33 = +[AMSLogConfig sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = objc_opt_class();
      v36 = v35;
      v37 = [(AMSFamilyInfoLookupTask *)self logKey];
      v38 = [v8 dictionaryRepresentation];
      v39 = AMSHashIfNeeded(v38);
      *buf = 138543874;
      v47 = v35;
      v48 = 2114;
      v49 = v37;
      v50 = 2114;
      v51 = v39;
      _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] returning result %{public}@", buf, 0x20u);
    }

    v40 = [AMSPromise promiseWithResult:v8];
LABEL_31:
    v20 = v40;

    goto LABEL_32;
  }

  v15 = +[AMSLogConfig sharedConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    v18 = v17;
    v19 = [(AMSFamilyInfoLookupTask *)self logKey];
    *buf = 138543618;
    v47 = v17;
    v48 = 2114;
    v49 = v19;
    _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed because there's no account.", buf, 0x16u);
  }

  v6 = AMSError(103, @"Family Info Lookup Failed", @"We cannot load the family circle if there's no account.", 0);
  v20 = [AMSPromise promiseWithError:v6];
LABEL_32:

  return v20;
}

- (id)_performFamilyInfoRequestForAccount:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AMSFamilyInfoLookupTask *)self bag];
  v8 = [v7 URLForKey:@"family-info"];
  v27 = 0;
  v9 = [v8 valueWithError:&v27];
  v10 = v27;

  if (v9)
  {
    v11 = [AMSURLRequestEncoder alloc];
    v12 = [(AMSFamilyInfoLookupTask *)self bag];
    v13 = [(AMSURLRequestEncoder *)v11 initWithBag:v12];

    [(AMSURLRequestEncoder *)v13 setAccount:v6];
    v14 = [(AMSFamilyInfoLookupTask *)self logKey];
    [(AMSURLRequestEncoder *)v13 setLogUUID:v14];

    [(AMSURLRequestEncoder *)v13 setUrlKnownToBeTrusted:1];
    v15 = [(AMSURLRequestEncoder *)v13 requestWithMethod:2 URL:v9 parameters:0];
    v16 = [v15 resultWithError:a4];

    v17 = objc_alloc_init(AMSPromise);
    v18 = +[AMSURLSession defaultSession];
    v19 = [(AMSPromise *)v17 completionHandlerAdapter];
    v20 = [v18 dataTaskWithRequest:v16 completionHandler:v19];

    [v20 resume];
    v21 = [(AMSPromise *)v17 resultWithError:a4];
  }

  else
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = [(AMSFamilyInfoLookupTask *)self logKey];
      *buf = 138543874;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed because the bag didn't give us the URL. error = %{public}@", buf, 0x20u);
    }

    if (a4)
    {
      AMSError(204, @"Family Info Lookup Failed", @"We were unable to get the family circle URL.", v10);
      *a4 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (id)_processURLResult:(id)a3
{
  if (!a3)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"family"];

      if (v5)
      {
        v5 = [[AMSFamilyInfoLookupResult alloc] initWithDictionaryRepresentation:v4 cached:0];
      }

      goto LABEL_9;
    }
  }

  else
  {

    v4 = 0;
  }

  v5 = 0;
LABEL_9:

LABEL_10:

  return v5;
}

- (void)_cacheFamilyInfoLookupResult:(id)a3 forAccount:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AMSFamilyInfoLookupTask *)self _pathForCachedFamilyInfoLookupResult];
  if (v8)
  {
    v9 = [v7 ams_DSID];

    if (v9)
    {
      v10 = MEMORY[0x1E696AE40];
      v39[0] = @"account";
      v11 = [v7 ams_DSID];
      v40[0] = v11;
      v39[1] = @"circle";
      v12 = [v6 dictionaryRepresentation];
      v40[1] = v12;
      v39[2] = @"timestamp";
      v13 = [MEMORY[0x1E695DF00] date];
      v40[2] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
      v38 = 0;
      v15 = [v10 dataWithPropertyList:v14 format:200 options:0 error:&v38];
      v16 = v38;

      if (!v15)
      {
        v20 = +[AMSLogConfig sharedConfig];
        if (!v20)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        v21 = [v20 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = [(AMSFamilyInfoLookupTask *)self logKey];
          v35 = AMSLogableError(v16);
          *buf = 138543874;
          v42 = v33;
          v43 = 2114;
          v44 = v34;
          v45 = 2114;
          v46 = v35;
          _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize the family info. error = %{public}@", buf, 0x20u);
        }

        goto LABEL_28;
      }

      v37 = v16;
      v17 = [v15 writeToFile:v8 options:1 error:&v37];
      v18 = v37;

      v19 = +[AMSLogConfig sharedConfig];
      v20 = v19;
      if (v17)
      {
        if (!v19)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        v21 = [v20 OSLogObject];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v22 = objc_opt_class();
        v23 = v22;
        v24 = [(AMSFamilyInfoLookupTask *)self logKey];
        *buf = 138543618;
        v42 = v22;
        v43 = 2114;
        v44 = v24;
        v25 = "%{public}@: [%{public}@] Successfully cached family info";
        v26 = v21;
        v27 = OS_LOG_TYPE_INFO;
        v28 = 22;
      }

      else
      {
        if (!v19)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        v21 = [v20 OSLogObject];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v36 = objc_opt_class();
        v24 = [(AMSFamilyInfoLookupTask *)self logKey];
        v23 = AMSLogableError(v18);
        *buf = 138543874;
        v42 = v36;
        v43 = 2114;
        v44 = v24;
        v45 = 2114;
        v46 = v23;
        v25 = "%{public}@: [%{public}@] Failed to write the serialized family info to disk. error = %{public}@";
        v26 = v21;
        v27 = OS_LOG_TYPE_ERROR;
        v28 = 32;
      }

      _os_log_impl(&dword_192869000, v26, v27, v25, buf, v28);

LABEL_27:
      v16 = v18;
LABEL_28:

      goto LABEL_29;
    }

    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v16 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v30 = [(AMSFamilyInfoLookupTask *)self logKey];
      v32 = [v7 hashedDescription];
      *buf = 138543874;
      v42 = v31;
      v43 = 2114;
      v44 = v30;
      v45 = 2114;
      v46 = v32;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to cache a family info lookup because the given account has no DSID. account = %{public}@", buf, 0x20u);

      goto LABEL_17;
    }
  }

  else
  {
    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v16 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = [(AMSFamilyInfoLookupTask *)self logKey];
      *buf = 138543618;
      v42 = v29;
      v43 = 2114;
      v44 = v30;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to generate the path in order to cache a family info lookup.", buf, 0x16u);
LABEL_17:
    }
  }

LABEL_29:
}

- (id)_cachedFamilyInfoLookupResultForAccount:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 ams_DSID];

  if (!v5)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v7 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = [(AMSFamilyInfoLookupTask *)self logKey];
      v12 = [v4 hashedDescription];
      v34 = 138543874;
      v35 = v10;
      v36 = 2114;
      v37 = v11;
      v38 = 2114;
      v39 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to load cached family info because the account has no DSID. account = %{public}@", &v34, 0x20u);
    }

    v13 = 0;
    goto LABEL_36;
  }

  v6 = [(AMSFamilyInfoLookupTask *)self _currentCachedFamilyInfo];
  v7 = v6;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_37;
  }

  v8 = [v6 objectForKeyedSubscript:@"account"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v14 = [v4 ams_DSID];
  v15 = [v9 isEqualToNumber:v14];

  if ((v15 & 1) == 0)
  {
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v17 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = [(AMSFamilyInfoLookupTask *)self logKey];
      v34 = 138543618;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Our cached family info isn't for the given account.", &v34, 0x16u);
    }

    goto LABEL_34;
  }

  v16 = [v7 objectForKeyedSubscript:@"timestamp"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    v19 = 2.22044605e-16;
    goto LABEL_21;
  }

  v17 = v16;

  if (v17)
  {
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:v17];
    v19 = v18;
LABEL_21:

    goto LABEL_22;
  }

  v19 = 2.22044605e-16;
LABEL_22:
  v23 = [(AMSFamilyInfoLookupTask *)self bag];
  v24 = [v23 doubleForKey:@"family-info-max-cache-age"];
  v25 = [v24 valueWithError:0];
  [v25 doubleValue];
  v27 = v26;

  if (v19 > 2.22044605e-16)
  {
    v28 = 604800.0;
    if (v27 != 0.0)
    {
      v28 = v27;
    }

    if (v19 < v28)
    {
      v29 = [v7 objectForKeyedSubscript:@"circle"];
      v13 = [v29 objectForKeyedSubscript:@"family"];

      if (v13)
      {
        v13 = [[AMSFamilyInfoLookupResult alloc] initWithDictionaryRepresentation:v29 cached:1];
      }

      goto LABEL_35;
    }
  }

  v20 = +[AMSLogConfig sharedConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  v30 = [v20 OSLogObject];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = objc_opt_class();
    v32 = [(AMSFamilyInfoLookupTask *)self logKey];
    v34 = 138543618;
    v35 = v31;
    v36 = 2114;
    v37 = v32;
    _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] We have cached family info for the account, but it's too old to return.", &v34, 0x16u);
  }

LABEL_34:
  v13 = 0;
LABEL_35:

LABEL_36:
LABEL_37:

  return v13;
}

- (id)_currentCachedFamilyInfo
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(AMSFamilyInfoLookupTask *)self _pathForCachedFamilyInfoLookupResult];
  if (!v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v4 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = [(AMSFamilyInfoLookupTask *)self logKey];
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to generate the path in order to load cached family info.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v3];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_19;
  }

  v15 = 0;
  v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v15];
  v6 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_12:
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = [(AMSFamilyInfoLookupTask *)self logKey];
      *buf = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to deserialize the cached family info. error = %{public}@", buf, 0x20u);
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v7 = v5;

  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_18:

LABEL_19:

  return v7;
}

- (id)_pathForCachedFamilyInfoLookupResult
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v13[0] = v3;
    v13[1] = @"com.apple.itunesstored";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v6 = [v4 pathWithComponents:v5];

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v7 fileExistsAtPath:v6] & 1) != 0 || (v8 = 0, objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v6, 1, 0, 0)))
    {
      v9 = MEMORY[0x1E696AEC0];
      v12[0] = v6;
      v12[1] = @"JFamilyCircle.plist";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
      v8 = [v9 pathWithComponents:v10];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (AMSFamilyInfoLookupTask)initWithBag:(id)a3
{
  v4 = MEMORY[0x1E6959A48];
  v5 = a3;
  v6 = [v4 ams_sharedAccountStore];
  v7 = [v6 ams_activeiTunesAccount];

  v8 = [(AMSFamilyInfoLookupTask *)self initWithAccount:v7 bag:v5];
  return v8;
}

- (AMSFamilyInfoLookupTask)initWithBagContract:(id)a3
{
  v4 = a3;
  v5 = [[AMSContractBagShim alloc] initWithBagContract:v4];

  v6 = [(AMSFamilyInfoLookupTask *)self initWithBag:v5];
  return v6;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end