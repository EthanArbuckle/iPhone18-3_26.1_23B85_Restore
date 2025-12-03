@interface AMSKeychainStore
- (AMSKeychainStore)initWithIdentifier:(id)identifier service:(id)service keychainAccessGroup:(id)group keychainAddFunc:(void *)func keychainCopyFunc:(void *)copyFunc keychainDeleteFunc:(void *)deleteFunc;
- (BOOL)_removeDataFromKeychain;
- (BOOL)storeData:(id)data;
- (__CFDictionary)_copyKeychainQuery;
- (id)retrieveData;
@end

@implementation AMSKeychainStore

- (id)retrieveData
{
  v57 = *MEMORY[0x1E69E9840];
  _copyKeychainQuery = [(AMSKeychainStore *)self _copyKeychainQuery];
  v4 = *MEMORY[0x1E697B318];
  CFDictionaryAddValue(_copyKeychainQuery, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  value = 0;
  if (!([(AMSKeychainStore *)self storeSecItemCopyMatchingFunc])(_copyKeychainQuery, &value))
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  v5 = *MEMORY[0x1E697ABD8];
  CFDictionarySetValue(_copyKeychainQuery, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697AC20]);
  v6 = ([(AMSKeychainStore *)self storeSecItemCopyMatchingFunc])(_copyKeychainQuery, &value);
  if (!v6)
  {
    v7 = +[AMSLogConfig sharedKeychainConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      identifier = [(AMSKeychainStore *)self identifier];
      service = [(AMSKeychainStore *)self service];
      *buf = 138543874;
      v50 = v9;
      v51 = 2114;
      v52 = identifier;
      v53 = 2114;
      v54 = service;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Data previously stored with 'when unlocked' attribute found, attempting to re-save with 'after first unlock' and then return it.", buf, 0x20u);
    }

    CFDictionaryRemoveValue(_copyKeychainQuery, v4);
    v13 = ([(AMSKeychainStore *)self storeSecItemDeleteFunc])(_copyKeychainQuery);
    if (v13)
    {
      v14 = +[AMSLogConfig sharedKeychainConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v47 = v16;
        identifier2 = [(AMSKeychainStore *)self identifier];
        service2 = [(AMSKeychainStore *)self service];
        v19 = [MEMORY[0x1E696AD98] numberWithInt:v13];
        *buf = 138544130;
        v50 = v16;
        v51 = 2114;
        v52 = identifier2;
        v53 = 2114;
        v54 = service2;
        v55 = 2114;
        v56 = v19;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to delete data previously stored with 'when unlocked' attribute. Status: %{public}@", buf, 0x2Au);
      }
    }

    CFDictionarySetValue(_copyKeychainQuery, v5, *MEMORY[0x1E697ABE0]);
    CFDictionaryAddValue(_copyKeychainQuery, *MEMORY[0x1E697B3C0], value);
    if (([(AMSKeychainStore *)self storeSecItemAddFunc])(_copyKeychainQuery, 0))
    {
      v20 = +[AMSLogConfig sharedKeychainConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = v22;
        identifier3 = [(AMSKeychainStore *)self identifier];
        service3 = [(AMSKeychainStore *)self service];
        v26 = [MEMORY[0x1E696AD98] numberWithInt:v13];
        *buf = 138544130;
        v50 = v22;
        v51 = 2114;
        v52 = identifier3;
        v53 = 2114;
        v54 = service3;
        v55 = 2114;
        v56 = v26;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to re-save data with 'after first unlock' attribute. Status: %{public}@", buf, 0x2Au);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  CFRelease(_copyKeychainQuery);
  if (v6 || (v27 = value) == 0)
  {
    v28 = +[AMSLogConfig sharedKeychainConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = v30;
      identifier4 = [(AMSKeychainStore *)self identifier];
      service4 = [(AMSKeychainStore *)self service];
      v34 = [MEMORY[0x1E696AD98] numberWithInt:v6];
      *buf = 138544130;
      v50 = v30;
      v51 = 2114;
      v52 = identifier4;
      v53 = 2114;
      v54 = service4;
      v55 = 2114;
      v56 = v34;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Failed to fetch data from keychain. Status: %{public}@", buf, 0x2Au);
    }

    if (!soft_MKBDeviceUnlockedSinceBoot())
    {
      v35 = +[AMSUnitTests isRunningUnitTests];
      v36 = +[AMSLogConfig sharedKeychainConfig];
      defaultCenter = v36;
      if (v35)
      {
        if (!v36)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject5 = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          identifier5 = [(AMSKeychainStore *)self identifier];
          service5 = [(AMSKeychainStore *)self service];
          *buf = 138543874;
          v50 = v39;
          v51 = 2114;
          v52 = identifier5;
          v53 = 2114;
          v54 = service5;
          _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Unexpected attempt to retrieve data before first unlock", buf, 0x20u);
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject6 = +[AMSLogConfig sharedKeychainConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject6 userInfo:0];
      }

      else
      {
        if (!v36)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject6 = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_FAULT))
        {
          v43 = objc_opt_class();
          identifier6 = [(AMSKeychainStore *)self identifier];
          service6 = [(AMSKeychainStore *)self service];
          *buf = 138543874;
          v50 = v43;
          v51 = 2114;
          v52 = identifier6;
          v53 = 2114;
          v54 = service6;
          _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] [%{public}@] Unexpected attempt to retrieve data before first unlock", buf, 0x20u);
        }
      }
    }

    v27 = 0;
  }

  return v27;
}

- (__CFDictionary)_copyKeychainQuery
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v4 = *MEMORY[0x1E697AC30];
  identifier = [(AMSKeychainStore *)self identifier];
  CFDictionaryAddValue(Mutable, v4, identifier);

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B390], *MEMORY[0x1E695E4D0]);
  v6 = *MEMORY[0x1E697AE88];
  service = [(AMSKeychainStore *)self service];
  CFDictionaryAddValue(Mutable, v6, service);

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE0]);
  keychainAccessGroup = [(AMSKeychainStore *)self keychainAccessGroup];

  if (keychainAccessGroup)
  {
    v9 = *MEMORY[0x1E697ABD0];
    keychainAccessGroup2 = [(AMSKeychainStore *)self keychainAccessGroup];
    CFDictionaryAddValue(Mutable, v9, keychainAccessGroup2);
  }

  return Mutable;
}

- (AMSKeychainStore)initWithIdentifier:(id)identifier service:(id)service keychainAccessGroup:(id)group keychainAddFunc:(void *)func keychainCopyFunc:(void *)copyFunc keychainDeleteFunc:(void *)deleteFunc
{
  identifierCopy = identifier;
  serviceCopy = service;
  groupCopy = group;
  v25.receiver = self;
  v25.super_class = AMSKeychainStore;
  v17 = [(AMSKeychainStore *)&v25 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [serviceCopy copy];
    service = v17->_service;
    v17->_service = v20;

    v22 = [groupCopy copy];
    keychainAccessGroup = v17->_keychainAccessGroup;
    v17->_keychainAccessGroup = v22;

    v17->_storeSecItemCopyMatchingFunc = copyFunc;
    v17->_storeSecItemDeleteFunc = deleteFunc;
    v17->_storeSecItemAddFunc = func;
  }

  return v17;
}

- (BOOL)storeData:(id)data
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  [(AMSKeychainStore *)self _removeDataFromKeychain];
  if (!dataCopy)
  {
LABEL_19:
    v28 = 1;
    goto LABEL_29;
  }

  _copyKeychainQuery = [(AMSKeychainStore *)self _copyKeychainQuery];
  CFDictionaryAddValue(_copyKeychainQuery, *MEMORY[0x1E697B3C0], dataCopy);
  v6 = ([(AMSKeychainStore *)self storeSecItemAddFunc])(_copyKeychainQuery, 0);
  CFRelease(_copyKeychainQuery);
  v7 = +[AMSLogConfig sharedKeychainConfig];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = v24;
      identifier = [(AMSKeychainStore *)self identifier];
      service = [(AMSKeychainStore *)self service];
      *buf = 138543874;
      v35 = v24;
      v36 = 2114;
      v37 = identifier;
      v38 = 2114;
      v39 = service;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Saved data to keychain.", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (!v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = v10;
    identifier2 = [(AMSKeychainStore *)self identifier];
    service2 = [(AMSKeychainStore *)self service];
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    *buf = 138544130;
    v35 = v10;
    v36 = 2114;
    v37 = identifier2;
    v38 = 2114;
    v39 = service2;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to save data to keychain. Status: %{public}@", buf, 0x2Au);
  }

  if (!soft_MKBDeviceUnlockedSinceBoot())
  {
    v15 = +[AMSUnitTests isRunningUnitTests];
    v16 = +[AMSLogConfig sharedKeychainConfig];
    defaultCenter = v16;
    if (v15)
    {
      if (!v16)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        identifier3 = [(AMSKeychainStore *)self identifier];
        service3 = [(AMSKeychainStore *)self service];
        *buf = 138543874;
        v35 = v19;
        v36 = 2114;
        v37 = identifier3;
        v38 = 2114;
        v39 = service3;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Unexpected attempt to store data first unlock", buf, 0x20u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject4 = +[AMSLogConfig sharedKeychainConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject4 userInfo:0];
    }

    else
    {
      if (!v16)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
      {
        v29 = objc_opt_class();
        identifier4 = [(AMSKeychainStore *)self identifier];
        service4 = [(AMSKeychainStore *)self service];
        *buf = 138543874;
        v35 = v29;
        v36 = 2114;
        v37 = identifier4;
        v38 = 2114;
        v39 = service4;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] [%{public}@] Unexpected attempt to store data first unlock", buf, 0x20u);
      }
    }
  }

  if (v6 == -34018)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__AMSKeychainStore_storeData___block_invoke;
    block[3] = &unk_1E73B3680;
    block[4] = self;
    if (storeData__logOnceToken__COUNTER__ != -1)
    {
      dispatch_once(&storeData__logOnceToken__COUNTER__, block);
    }
  }

  v28 = 0;
LABEL_29:

  return v28;
}

void __30__AMSKeychainStore_storeData___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedKeychainConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 32) identifier];
    v6 = [*(a1 + 32) service];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] [%{public}@] Failed to save data to keychain, it will be refetched for every request (performance concern)", &v7, 0x20u);
  }
}

- (BOOL)_removeDataFromKeychain
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedKeychainConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    identifier = [(AMSKeychainStore *)self identifier];
    service = [(AMSKeychainStore *)self service];
    *buf = 138543874;
    v34 = v5;
    v35 = 2114;
    v36 = identifier;
    v37 = 2114;
    v38 = service;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Trying to remove data from keychain", buf, 0x20u);
  }

  _copyKeychainQuery = [(AMSKeychainStore *)self _copyKeychainQuery];
  v10 = ([(AMSKeychainStore *)self storeSecItemDeleteFunc])(_copyKeychainQuery);
  CFDictionarySetValue(_copyKeychainQuery, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697AC20]);
  v11 = ([(AMSKeychainStore *)self storeSecItemDeleteFunc])(_copyKeychainQuery);
  CFRelease(_copyKeychainQuery);
  v12 = 1;
  if (v10 != -25303 && v10 != -25300 && v10)
  {
    v13 = +[AMSLogConfig sharedKeychainConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v32 = v15;
      identifier2 = [(AMSKeychainStore *)self identifier];
      service2 = [(AMSKeychainStore *)self service];
      v18 = [MEMORY[0x1E696AD98] numberWithInt:v10];
      *buf = 138544130;
      v34 = v15;
      v35 = 2114;
      v36 = identifier2;
      v37 = 2114;
      v38 = service2;
      v39 = 2114;
      v40 = v18;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to remove data stored with 'after first unlock' attribute from keychain. Status: %{public}@", buf, 0x2Au);
    }

    v12 = 0;
  }

  if (v11 == -25303 || v11 == -25300 || !v11)
  {
    if (!v12)
    {
      return !v10 || v11 == 0;
    }

    v19 = +[AMSLogConfig sharedKeychainConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = v21;
      identifier3 = [(AMSKeychainStore *)self identifier];
      service3 = [(AMSKeychainStore *)self service];
      *buf = 138543874;
      v34 = v21;
      v35 = 2114;
      v36 = identifier3;
      v37 = 2114;
      v38 = service3;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Removed data from keychain", buf, 0x20u);
    }
  }

  else
  {
    v19 = +[AMSLogConfig sharedKeychainConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = v25;
      identifier4 = [(AMSKeychainStore *)self identifier];
      service4 = [(AMSKeychainStore *)self service];
      v29 = [MEMORY[0x1E696AD98] numberWithInt:v11];
      *buf = 138544130;
      v34 = v25;
      v35 = 2114;
      v36 = identifier4;
      v37 = 2114;
      v38 = service4;
      v39 = 2114;
      v40 = v29;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to remove data stored with 'when unlocked' attribute from keychain. Status: %{public}@", buf, 0x2Au);
    }
  }

  return !v10 || v11 == 0;
}

@end