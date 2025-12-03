@interface AMSNotificationSettingsTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
- (AMSNotificationSettingsTask)initWithIdentifier:(id)identifier account:(id)account bag:(id)bag;
- (id)_generateParametersForItems:(id)items;
- (id)_stringForKey:(id)key fromBag:(id)bag;
- (id)_url;
- (id)fetchAllSettings;
- (id)updateSettings:(id)settings;
@end

@implementation AMSNotificationSettingsTask

- (AMSNotificationSettingsTask)initWithIdentifier:(id)identifier account:(id)account bag:(id)bag
{
  identifierCopy = identifier;
  accountCopy = account;
  bagCopy = bag;
  v15.receiver = self;
  v15.super_class = AMSNotificationSettingsTask;
  v12 = [(AMSTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_bag, bag);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (id)fetchAllSettings
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AMSNotificationSettingsTask_fetchAllSettings__block_invoke;
  v5[3] = &unk_1E73BA460;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = [(AMSTask *)self performTaskWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

AMSNotificationSettingsResult *__47__AMSNotificationSettingsTask_fetchAllSettings__block_invoke(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x1E69E9840];
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
    v68 = v14;
    v69 = 2114;
    v70 = v12;
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
    v68 = v11;
    v69 = 2114;
    v70 = v12;
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
    v60 = objc_loadWeakRetained((a1 + 40));
    [v60 account];
    v20 = v56 = a2;
    v21 = AMSHashIfNeeded(v20);
    v22 = objc_loadWeakRetained((a1 + 40));
    v23 = [v22 identifier];
    v24 = AMSHashIfNeeded(v23);
    *buf = 138544130;
    v68 = v19;
    v10 = v18;
    v69 = 2114;
    v70 = v18;
    v71 = 2114;
    v72 = v21;
    v73 = 2114;
    v74 = v24;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching Granular Push Notification Settings. account = %{public}@ | identifier = %{public}@", buf, 0x2Au);

    a2 = v56;
  }

  v25 = [AMSMediaSharedProperties propertiesForNotificationSettingsTask:*(a1 + 32)];
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
  v59 = [*(a1 + 32) _url];
  [(AMSMediaRequestEncoder *)v29 requestWithURL:?];
  v58 = v66 = 0;
  v35 = [v58 resultWithTimeout:&v66 error:60.0];
  v36 = v66;
  v9 = v36;
  v61 = v25;
  if (!v35 || v36)
  {
    v43 = +[AMSLogConfig sharedUserNotificationConfig];
    if (!v43)
    {
      v43 = +[AMSLogConfig sharedConfig];
    }

    v44 = [v43 OSLogObject];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      *buf = 138543874;
      v68 = v45;
      v69 = 2114;
      v70 = v10;
      v71 = 2114;
      v72 = v9;
      v46 = v45;
      _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating media request: %{public}@", buf, 0x20u);
    }

    v47 = v9;
    v15 = 0;
    *a2 = v9;
  }

  else
  {
    v55 = v34;
    v37 = [AMSMutableLazyPromise alloc];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __47__AMSNotificationSettingsTask_fetchAllSettings__block_invoke_23;
    v63[3] = &unk_1E73B8C50;
    v64 = v25;
    v65 = v35;
    v38 = [(AMSMutableLazyPromise *)v37 initWithBlock:v63];
    v62 = 0;
    v39 = [(AMSLazyPromise *)v38 resultWithError:&v62];
    v40 = v62;
    v9 = v40;
    if (!v39 || v40)
    {
      v57 = a2;
      v48 = v10;
      v49 = +[AMSLogConfig sharedUserNotificationConfig];
      if (!v49)
      {
        v49 = +[AMSLogConfig sharedConfig];
      }

      v50 = [v49 OSLogObject];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        *buf = 138543874;
        v68 = v51;
        v69 = 2114;
        v70 = v48;
        v71 = 2114;
        v72 = v9;
        v52 = v51;
        _os_log_impl(&dword_192869000, v50, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error getting result: %{public}@", buf, 0x20u);
      }

      v53 = v9;
      v15 = 0;
      *v57 = v9;
      v10 = v48;
    }

    else
    {
      v41 = [AMSNotificationSettingsResult alloc];
      v42 = [v39 responseDictionary];
      v15 = [(AMSNotificationSettingsResult *)v41 initWithDictionaryRepresentation:v42];
    }

    v34 = v55;
  }

LABEL_34:

  return v15;
}

void __47__AMSNotificationSettingsTask_fetchAllSettings__block_invoke_23(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 session];
  v5 = [v6 dataTaskPromiseWithRequest:*(a1 + 40)];
  [v4 finishWithPromise:v5];
}

- (id)updateSettings:(id)settings
{
  settingsCopy = settings;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AMSNotificationSettingsTask_updateSettings___block_invoke;
  v8[3] = &unk_1E73BA488;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v5 = settingsCopy;
  v9 = v5;
  v6 = [(AMSTask *)self performBinaryTaskWithBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

uint64_t __46__AMSNotificationSettingsTask_updateSettings___block_invoke(id *a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
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
    v63 = v14;
    v64 = 2114;
    v65 = v12;
    v13 = "%{public}@ [%{public}@] Unable to sync notification settings without an account.";
    goto LABEL_11;
  }

  v6 = objc_loadWeakRetained(a1 + 6);
  v7 = [v6 account];
  v8 = [v7 ams_isLocalAccount];

  if (!v8)
  {
    v10 = AMSLogKey();
    v16 = +[AMSLogConfig sharedAccountsConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v52 = objc_opt_class();
      v54 = objc_loadWeakRetained(a1 + 6);
      v18 = [v54 account];
      v19 = AMSHashIfNeeded(v18);
      v20 = objc_loadWeakRetained(a1 + 6);
      v21 = [v20 identifier];
      v22 = AMSHashIfNeeded(v21);
      AMSHashIfNeeded(a1[5]);
      v23 = v56 = a2;
      *buf = 138544386;
      v63 = v52;
      v64 = 2114;
      v65 = v10;
      v66 = 2114;
      v67 = v19;
      v68 = 2114;
      v69 = v22;
      v70 = 2114;
      v71 = v23;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating Granular Push Notification Setting. account = %{public}@ | identifier = %{public}@ | items = %{public}@", buf, 0x34u);

      a2 = v56;
    }

    v24 = [AMSURLRequestEncoder alloc];
    v25 = objc_loadWeakRetained(a1 + 6);
    v26 = [v25 bag];
    v27 = [(AMSURLRequestEncoder *)v24 initWithBag:v26];

    v28 = objc_loadWeakRetained(a1 + 6);
    v29 = [v28 account];
    [(AMSURLRequestEncoder *)v27 setAccount:v29];

    [(AMSURLRequestEncoder *)v27 setRequestEncoding:3];
    [(AMSURLRequestEncoder *)v27 setLogUUID:v10];
    v30 = objc_loadWeakRetained(a1 + 6);
    v31 = [v30 bag];
    v32 = [v31 URLForKey:@"setGranularNotificationSettings"];

    v60 = 0;
    v33 = [v32 valueWithError:&v60];
    v34 = v60;
    if (v34)
    {
      v9 = v34;
      v15 = 0;
      *a2 = v34;
LABEL_24:

      goto LABEL_25;
    }

    v55 = v32;
    v57 = a2;
    v35 = [MEMORY[0x1E696AF20] componentsWithURL:v33 resolvingAgainstBaseURL:1];
    v53 = [v35 queryItems];
    v36 = MEMORY[0x1E696AF60];
    v37 = objc_loadWeakRetained(a1 + 6);
    v38 = [v37 identifier];
    v39 = [v36 queryItemWithName:@"serviceId" value:v38];
    v61 = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    v41 = [v53 arrayByAddingObjectsFromArray:v40];
    [v35 setQueryItems:v41];

    v42 = [v35 URL];

    v43 = [a1[4] _generateParametersForItems:a1[5]];
    v44 = [(AMSURLRequestEncoder *)v27 requestWithMethod:4 URL:v42 parameters:v43];

    v59 = 0;
    v45 = [v44 resultWithError:&v59];
    v46 = v59;
    if (v46)
    {
      v9 = v46;
      v47 = 0;
    }

    else
    {
      v48 = +[AMSURLSession defaultSession];
      v49 = [v48 dataTaskPromiseWithRequest:v45];
      v58 = 0;
      v47 = [v49 resultWithError:&v58];
      v9 = v58;

      if (!v9)
      {
        v15 = 1;
        v32 = v55;
        goto LABEL_23;
      }
    }

    v32 = v55;
    v50 = v9;
    v15 = 0;
    *v57 = v9;
LABEL_23:

    v33 = v42;
    goto LABEL_24;
  }

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
  v63 = v11;
  v64 = 2114;
  v65 = v12;
  v13 = "%{public}@ [%{public}@] Unable to sync notification settings without a local account.";
LABEL_11:
  _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);

LABEL_12:
  v15 = 0;
LABEL_25:

  return v15;
}

- (id)_url
{
  v3 = objc_opt_new();
  identifier = [(AMSNotificationSettingsTask *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"service"];

  v5 = [(AMSNotificationSettingsTask *)self bag];
  v6 = [(AMSNotificationSettingsTask *)self _stringForKey:@"language-tag" fromBag:v5];

  if (!v6)
  {
    v6 = +[AMSDevice language];
  }

  [v3 setObject:v6 forKeyedSubscript:@"l"];
  v7 = [(AMSNotificationSettingsTask *)self bag];
  v8 = [(AMSNotificationSettingsTask *)self _stringForKey:@"getGranularNotificationSettings" fromBag:v7];

  v9 = [(AMSNotificationSettingsTask *)self bag];
  v10 = [(AMSNotificationSettingsTask *)self _countryCodeFromBag:v9];

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v21 = 0;
  }

  else
  {
    v12 = [v8 stringByReplacingOccurrencesOfString:@"{cc}" withString:v10];
    v13 = objc_opt_new();
    v14 = [(AMSNotificationSettingsTask *)self bag];
    v15 = [(AMSNotificationSettingsTask *)self _stringForKey:@"notification-settings-media-api-host" fromBag:v14];
    [v13 setHost:v15];

    [v13 setPath:v12];
    v16 = MEMORY[0x1E695DF70];
    v17 = MEMORY[0x1E696AF60];
    v18 = [v3 copy];
    v19 = [v17 queryItemsFromDictionary:v18];
    v20 = [v16 arrayWithArray:v19];
    [v13 setQueryItems:v20];

    [v13 setScheme:@"https"];
    v21 = [v13 URL];
  }

  return v21;
}

- (id)_stringForKey:(id)key fromBag:(id)bag
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [bag stringForKey:key];
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

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }
  }

  return v5;
}

- (id)_generateParametersForItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        [v4 addObject:dictionaryRepresentation];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithObject:v4 forKey:@"settings"];

  return v11;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_14 != -1)
  {
    dispatch_once(&_MergedGlobals_1_14, &__block_literal_global_108);
  }

  v3 = qword_1ED6E1F48;

  return v3;
}

void __44__AMSNotificationSettingsTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1F48;
  qword_1ED6E1F48 = @"GranularNotificationSettings";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1F50 != -1)
  {
    dispatch_once(&qword_1ED6E1F50, &__block_literal_global_48_1);
  }

  v3 = qword_1ED6E1F58;

  return v3;
}

void __51__AMSNotificationSettingsTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1F58;
  qword_1ED6E1F58 = @"1";
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end