@interface AMSUserNotificationSettingsTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
- (AMSUserNotificationSettingsTask)initWithIdentifier:(id)a3 clientIdentifier:(id)a4 account:(id)a5 bag:(id)a6;
- (id)_generateParametersForItems:(id)a3;
- (id)_stringForKey:(id)a3 fromBag:(id)a4;
- (id)_url;
- (id)fetchAllSettings;
- (id)updateSettings:(id)a3;
@end

@implementation AMSUserNotificationSettingsTask

- (AMSUserNotificationSettingsTask)initWithIdentifier:(id)a3 clientIdentifier:(id)a4 account:(id)a5 bag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AMSUserNotificationSettingsTask;
  v15 = [(AMSTask *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a5);
    objc_storeStrong(&v16->_bag, a6);
    objc_storeStrong(&v16->_clientIdentifier, a4);
    objc_storeStrong(&v16->_identifier, a3);
  }

  return v16;
}

- (id)fetchAllSettings
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AMSUserNotificationSettingsTask_fetchAllSettings__block_invoke;
  v5[3] = &unk_1E73BA460;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = [(AMSTask *)self performTaskWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

AMSUserNotificationSettingsResult *__51__AMSUserNotificationSettingsTask_fetchAllSettings__block_invoke(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained account];

  if (!v5)
  {
    *a2 = AMSError(2, @"Invalid Parameter", @"We cannot sync settings without an account.", 0);
    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v12 = AMSLogKey();
    *buf = 138543618;
    v69 = v14;
    v70 = 2114;
    v71 = v12;
    v13 = "%{public}@ [%{public}@] Unable to sync notification settings without an account.";
    goto LABEL_11;
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 account];
  v8 = [v7 ams_isLocalAccount];

  if (v8)
  {
    *a2 = AMSError(2, @"Invalid Parameter", @"We cannot sync the local account's push notification settings.", 0);
    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = objc_opt_class();
    v12 = AMSLogKey();
    *buf = 138543618;
    v69 = v11;
    v70 = 2114;
    v71 = v12;
    v13 = "%{public}@ [%{public}@] Unable to sync notification settings without a local account.";
LABEL_11:
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);

LABEL_12:
    v15 = 0;
    goto LABEL_34;
  }

  v10 = AMSLogKey();
  v16 = +[AMSLogConfig sharedAccountsConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v10;
    v19 = objc_opt_class();
    v61 = objc_loadWeakRetained((a1 + 40));
    [v61 account];
    v20 = v57 = a2;
    v21 = AMSHashIfNeeded(v20);
    v22 = objc_loadWeakRetained((a1 + 40));
    v23 = [v22 identifier];
    v24 = AMSHashIfNeeded(v23);
    *buf = 138544130;
    v69 = v19;
    v10 = v18;
    v70 = 2114;
    v71 = v18;
    v72 = 2114;
    v73 = v21;
    v74 = 2114;
    v75 = v24;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching Granular Push Notification Settings. account = %{public}@ | identifier = %{public}@", buf, 0x2Au);

    a2 = v57;
  }

  v25 = [AMSMediaSharedProperties propertiesForUserNotificationSettingsTask:*(a1 + 32)];
  v26 = [AMSMediaRequestEncoder alloc];
  v27 = [v25 tokenService];
  v28 = [*(a1 + 32) bag];
  v29 = [(AMSMediaRequestEncoder *)v26 initWithTokenService:v27 bag:v28];

  v30 = objc_loadWeakRetained((a1 + 40));
  v31 = [v30 account];
  [(AMSMediaRequestEncoder *)v29 setAccount:v31];

  v32 = objc_loadWeakRetained((a1 + 40));
  v33 = [v32 clientInfo];
  [(AMSMediaRequestEncoder *)v29 setClientInfo:v33];

  v34 = objc_alloc_init(AMSMediaResponseDecoder);
  [(AMSMediaRequestEncoder *)v29 setResponseDecoder:v34];
  v60 = [*(a1 + 32) _url];
  [(AMSMediaRequestEncoder *)v29 requestWithURL:?];
  v59 = v67 = 0;
  v35 = [v59 resultWithTimeout:&v67 error:60.0];
  v36 = v67;
  v9 = v36;
  v62 = v25;
  if (!v35 || v36)
  {
    v44 = +[AMSLogConfig sharedUserNotificationConfig];
    if (!v44)
    {
      v44 = +[AMSLogConfig sharedConfig];
    }

    v45 = [v44 OSLogObject];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      *buf = 138543874;
      v69 = v46;
      v70 = 2114;
      v71 = v10;
      v72 = 2114;
      v73 = v9;
      v47 = v46;
      _os_log_impl(&dword_192869000, v45, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating media request: %{public}@", buf, 0x20u);
    }

    v48 = v9;
    v15 = 0;
    *a2 = v9;
  }

  else
  {
    v56 = v34;
    v37 = [AMSMutableLazyPromise alloc];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __51__AMSUserNotificationSettingsTask_fetchAllSettings__block_invoke_35;
    v64[3] = &unk_1E73B8C50;
    v65 = v25;
    v66 = v35;
    v38 = [(AMSMutableLazyPromise *)v37 initWithBlock:v64];
    v63 = 0;
    v39 = [(AMSLazyPromise *)v38 resultWithError:&v63];
    v40 = v63;
    v9 = v40;
    if (!v39 || v40)
    {
      v58 = a2;
      v49 = v10;
      v50 = +[AMSLogConfig sharedUserNotificationConfig];
      if (!v50)
      {
        v50 = +[AMSLogConfig sharedConfig];
      }

      v51 = [v50 OSLogObject];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        *buf = 138543874;
        v69 = v52;
        v70 = 2114;
        v71 = v49;
        v72 = 2114;
        v73 = v9;
        v53 = v52;
        _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error getting result: %{public}@", buf, 0x20u);
      }

      v54 = v9;
      v15 = 0;
      *v58 = v9;
      v10 = v49;
    }

    else
    {
      v41 = [AMSUserNotificationSettingsResult alloc];
      v42 = [*(a1 + 32) identifier];
      v43 = [v39 responseDictionary];
      v15 = [(AMSUserNotificationSettingsResult *)v41 initWithServiceIdentifier:v42 dictionaryRepresentation:v43];
    }

    v34 = v56;
  }

LABEL_34:

  return v15;
}

void __51__AMSUserNotificationSettingsTask_fetchAllSettings__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 session];
  v5 = [v6 dataTaskPromiseWithRequest:*(a1 + 40)];
  [v4 finishWithPromise:v5];
}

- (id)updateSettings:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AMSUserNotificationSettingsTask_updateSettings___block_invoke;
  v8[3] = &unk_1E73BA488;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v6 = [(AMSTask *)self performBinaryTaskWithBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

uint64_t __50__AMSUserNotificationSettingsTask_updateSettings___block_invoke(id *a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained account];

  if (!v5)
  {
    *a2 = AMSError(2, @"Invalid Parameter", @"We cannot sync settings without an account.", 0);
    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v12 = AMSLogKey();
    *buf = 138543618;
    v77 = v14;
    v78 = 2114;
    v79 = v12;
    v13 = "%{public}@ [%{public}@] Unable to sync notification settings without an account.";
    goto LABEL_11;
  }

  v6 = objc_loadWeakRetained(a1 + 6);
  v7 = [v6 account];
  v8 = [v7 ams_isLocalAccount];

  if (v8)
  {
    *a2 = AMSError(2, @"Invalid Parameter", @"We cannot sync the local account's push notification settings.", 0);
    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = objc_opt_class();
    v12 = AMSLogKey();
    *buf = 138543618;
    v77 = v11;
    v78 = 2114;
    v79 = v12;
    v13 = "%{public}@ [%{public}@] Unable to sync notification settings without a local account.";
LABEL_11:
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);

LABEL_12:
    v15 = 0;
    goto LABEL_45;
  }

  v10 = AMSLogKey();
  v16 = +[AMSLogConfig sharedAccountsConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v65 = objc_opt_class();
    v67 = objc_loadWeakRetained(a1 + 6);
    v18 = [v67 account];
    v19 = AMSHashIfNeeded(v18);
    v69 = a2;
    v20 = objc_loadWeakRetained(a1 + 6);
    v21 = [v20 identifier];
    AMSHashIfNeeded(v21);
    v23 = v22 = v10;
    v24 = AMSHashIfNeeded(a1[5]);
    *buf = 138544386;
    v77 = v65;
    v78 = 2114;
    v79 = v22;
    v80 = 2114;
    v81 = v19;
    v82 = 2114;
    v83 = v23;
    v84 = 2114;
    v85 = v24;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating Granular Push Notification Setting. account = %{public}@ | identifier = %{public}@ | items = %{public}@", buf, 0x34u);

    a2 = v69;
    v10 = v22;
  }

  v25 = [AMSMediaSharedProperties propertiesForUserNotificationSettingsTask:a1[4]];
  v26 = [AMSMediaRequestEncoder alloc];
  v27 = [v25 tokenService];
  v28 = [a1[4] bag];
  v29 = [(AMSMediaRequestEncoder *)v26 initWithTokenService:v27 bag:v28];

  v30 = objc_loadWeakRetained(a1 + 6);
  v31 = [v30 account];
  [(AMSMediaRequestEncoder *)v29 setAccount:v31];

  v32 = objc_loadWeakRetained(a1 + 6);
  v33 = [v32 clientInfo];
  [(AMSMediaRequestEncoder *)v29 setClientInfo:v33];

  [(AMSMediaRequestEncoder *)v29 setRequestEncoding:3];
  v34 = [a1[4] _url];
  if (v34)
  {
    v35 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v34];
    [v35 setHTTPMethod:@"PATCH"];
    v68 = [a1[4] _generateParametersForItems:a1[5]];
    [(AMSMediaRequestEncoder *)v29 requestByEncodingRequest:v35 parameters:?];
    v66 = v75 = 0;
    v36 = [v66 resultWithTimeout:&v75 error:60.0];
    v37 = v75;
    v9 = v37;
    v64 = v36;
    if (!v36 || v37)
    {
      v63 = v35;
      v53 = v25;
      v54 = +[AMSLogConfig sharedUserNotificationConfig];
      if (!v54)
      {
        v54 = +[AMSLogConfig sharedConfig];
      }

      v55 = [v54 OSLogObject];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = objc_opt_class();
        *buf = 138543874;
        v77 = v56;
        v78 = 2114;
        v79 = v10;
        v80 = 2114;
        v81 = v9;
        v57 = v56;
        _os_log_impl(&dword_192869000, v55, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating media request: %{public}@", buf, 0x20u);
      }

      v58 = v9;
      v15 = 0;
      *a2 = v9;
      v25 = v53;
      v35 = v63;
    }

    else
    {
      v70 = a2;
      v38 = [AMSMutableLazyPromise alloc];
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __50__AMSUserNotificationSettingsTask_updateSettings___block_invoke_49;
      v72[3] = &unk_1E73B8C50;
      v73 = v25;
      v74 = v36;
      v39 = [(AMSMutableLazyPromise *)v38 initWithBlock:v72];
      v71 = 0;
      v40 = [(AMSLazyPromise *)v39 resultWithError:&v71];
      v41 = v71;
      v9 = v41;
      if (v40)
      {
        v42 = v41 == 0;
      }

      else
      {
        v42 = 0;
      }

      v15 = v42;
      if (!v42)
      {
        v60 = v39;
        v61 = v25;
        v62 = v35;
        v43 = v10;
        v44 = +[AMSLogConfig sharedUserNotificationConfig];
        if (!v44)
        {
          v44 = +[AMSLogConfig sharedConfig];
        }

        v45 = [v44 OSLogObject];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          *buf = 138543874;
          v77 = v46;
          v78 = 2114;
          v79 = v43;
          v80 = 2114;
          v81 = v9;
          v47 = v46;
          _os_log_impl(&dword_192869000, v45, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error getting result: %{public}@", buf, 0x20u);
        }

        v48 = v9;
        *v70 = v9;
        v10 = v43;
        v25 = v61;
        v35 = v62;
        v39 = v60;
      }
    }
  }

  else
  {
    v49 = +[AMSLogConfig sharedUserNotificationConfig];
    if (!v49)
    {
      v49 = +[AMSLogConfig sharedConfig];
    }

    v50 = [v49 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_opt_class();
      *buf = 138543618;
      v77 = v51;
      v78 = 2114;
      v79 = v10;
      v52 = v51;
      _os_log_impl(&dword_192869000, v50, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Bag missing URL", buf, 0x16u);
    }

    AMSError(204, @"Could not build user notification task URL", @"Bag is missing URL components", 0);
    v9 = 0;
    *a2 = v15 = 0;
  }

LABEL_45:
  return v15;
}

void __50__AMSUserNotificationSettingsTask_updateSettings___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 session];
  v5 = [v6 dataTaskPromiseWithRequest:*(a1 + 40)];
  [v4 finishWithPromise:v5];
}

- (id)_generateParametersForItems:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 ams_dictionaryUsingTransform:&__block_literal_global_153];
  v5 = [v4 ams_mapWithTransform:&__block_literal_global_54_1];
  v12 = @"notification-preferences";
  v6 = [(AMSUserNotificationSettingsTask *)self identifier];
  v10 = v6;
  v11 = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v8;
}

AMSPair *__63__AMSUserNotificationSettingsTask__generateParametersForItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = [v4 updateDictionary];

  v8 = [(AMSPair *)v6 initWithFirst:v5 second:v7];

  return v8;
}

- (id)_url
{
  v3 = objc_opt_new();
  [v3 setObject:@"notification-preferences" forKeyedSubscript:@"kinds"];
  v4 = [(AMSUserNotificationSettingsTask *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"service"];

  [v3 setObject:@"explicit" forKeyedSubscript:@"action"];
  v5 = +[AMSMediaURLBuilderUtility devicePlatform];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"platform"];
  }

  v6 = [(AMSUserNotificationSettingsTask *)self bag];
  v7 = [(AMSUserNotificationSettingsTask *)self _stringForKey:@"notification-settings-media-api-path" fromBag:v6];

  v8 = [(AMSUserNotificationSettingsTask *)self bag];
  v9 = [(AMSUserNotificationSettingsTask *)self _countryCodeFromBag:v8];

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v20 = 0;
  }

  else
  {
    v11 = [v7 stringByReplacingOccurrencesOfString:@"{cc}" withString:v9];
    v12 = objc_opt_new();
    v13 = [(AMSUserNotificationSettingsTask *)self bag];
    v14 = [(AMSUserNotificationSettingsTask *)self _stringForKey:@"notification-settings-media-api-host" fromBag:v13];
    [v12 setHost:v14];

    [v12 setPath:v11];
    v15 = MEMORY[0x1E695DF70];
    v16 = MEMORY[0x1E696AF60];
    v17 = [v3 copy];
    v18 = [v16 queryItemsFromDictionary:v17];
    v19 = [v15 arrayWithArray:v18];
    [v12 setQueryItems:v19];

    [v12 setScheme:@"https"];
    v20 = [v12 URL];
  }

  return v20;
}

- (id)_stringForKey:(id)a3 fromBag:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a4 stringForKey:a3];
  v13 = 0;
  v5 = [v4 valueWithError:&v13];
  v6 = v13;

  if (v6)
  {
    v7 = +[AMSLogConfig sharedUserNotificationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }
  }

  return v5;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_19 != -1)
  {
    dispatch_once(&_MergedGlobals_1_19, &__block_literal_global_64_1);
  }

  v3 = qword_1ED6E1FD8;

  return v3;
}

void __48__AMSUserNotificationSettingsTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1FD8;
  qword_1ED6E1FD8 = @"GranularNotificationSettings";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1FE0 != -1)
  {
    dispatch_once(&qword_1ED6E1FE0, &__block_literal_global_69_0);
  }

  v3 = qword_1ED6E1FE8;

  return v3;
}

void __55__AMSUserNotificationSettingsTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1FE8;
  qword_1ED6E1FE8 = @"1";
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end