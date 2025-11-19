@interface AMSKeychainStore
- (AMSKeychainStore)initWithIdentifier:(id)a3 service:(id)a4 keychainAccessGroup:(id)a5 keychainAddFunc:(void *)a6 keychainCopyFunc:(void *)a7 keychainDeleteFunc:(void *)a8;
- (BOOL)_removeDataFromKeychain;
- (BOOL)storeData:(id)a3;
- (__CFDictionary)_copyKeychainQuery;
- (id)retrieveData;
@end

@implementation AMSKeychainStore

- (id)retrieveData
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(AMSKeychainStore *)self _copyKeychainQuery];
  v4 = *MEMORY[0x1E697B318];
  CFDictionaryAddValue(v3, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  value = 0;
  if (!([(AMSKeychainStore *)self storeSecItemCopyMatchingFunc])(v3, &value))
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  v5 = *MEMORY[0x1E697ABD8];
  CFDictionarySetValue(v3, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697AC20]);
  v6 = ([(AMSKeychainStore *)self storeSecItemCopyMatchingFunc])(v3, &value);
  if (!v6)
  {
    v7 = +[AMSLogConfig sharedKeychainConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(AMSKeychainStore *)self identifier];
      v12 = [(AMSKeychainStore *)self service];
      *buf = 138543874;
      v50 = v9;
      v51 = 2114;
      v52 = v11;
      v53 = 2114;
      v54 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Data previously stored with 'when unlocked' attribute found, attempting to re-save with 'after first unlock' and then return it.", buf, 0x20u);
    }

    CFDictionaryRemoveValue(v3, v4);
    v13 = ([(AMSKeychainStore *)self storeSecItemDeleteFunc])(v3);
    if (v13)
    {
      v14 = +[AMSLogConfig sharedKeychainConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v47 = v16;
        v17 = [(AMSKeychainStore *)self identifier];
        v18 = [(AMSKeychainStore *)self service];
        v19 = [MEMORY[0x1E696AD98] numberWithInt:v13];
        *buf = 138544130;
        v50 = v16;
        v51 = 2114;
        v52 = v17;
        v53 = 2114;
        v54 = v18;
        v55 = 2114;
        v56 = v19;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to delete data previously stored with 'when unlocked' attribute. Status: %{public}@", buf, 0x2Au);
      }
    }

    CFDictionarySetValue(v3, v5, *MEMORY[0x1E697ABE0]);
    CFDictionaryAddValue(v3, *MEMORY[0x1E697B3C0], value);
    if (([(AMSKeychainStore *)self storeSecItemAddFunc])(v3, 0))
    {
      v20 = +[AMSLogConfig sharedKeychainConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = v22;
        v24 = [(AMSKeychainStore *)self identifier];
        v25 = [(AMSKeychainStore *)self service];
        v26 = [MEMORY[0x1E696AD98] numberWithInt:v13];
        *buf = 138544130;
        v50 = v22;
        v51 = 2114;
        v52 = v24;
        v53 = 2114;
        v54 = v25;
        v55 = 2114;
        v56 = v26;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to re-save data with 'after first unlock' attribute. Status: %{public}@", buf, 0x2Au);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  CFRelease(v3);
  if (v6 || (v27 = value) == 0)
  {
    v28 = +[AMSLogConfig sharedKeychainConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = v30;
      v32 = [(AMSKeychainStore *)self identifier];
      v33 = [(AMSKeychainStore *)self service];
      v34 = [MEMORY[0x1E696AD98] numberWithInt:v6];
      *buf = 138544130;
      v50 = v30;
      v51 = 2114;
      v52 = v32;
      v53 = 2114;
      v54 = v33;
      v55 = 2114;
      v56 = v34;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Failed to fetch data from keychain. Status: %{public}@", buf, 0x2Au);
    }

    if (!soft_MKBDeviceUnlockedSinceBoot())
    {
      v35 = +[AMSUnitTests isRunningUnitTests];
      v36 = +[AMSLogConfig sharedKeychainConfig];
      v37 = v36;
      if (v35)
      {
        if (!v36)
        {
          v37 = +[AMSLogConfig sharedConfig];
        }

        v38 = [v37 OSLogObject];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = [(AMSKeychainStore *)self identifier];
          v41 = [(AMSKeychainStore *)self service];
          *buf = 138543874;
          v50 = v39;
          v51 = 2114;
          v52 = v40;
          v53 = 2114;
          v54 = v41;
          _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Unexpected attempt to retrieve data before first unlock", buf, 0x20u);
        }

        v37 = [MEMORY[0x1E696AD88] defaultCenter];
        v42 = +[AMSLogConfig sharedKeychainConfig];
        [v37 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v42 userInfo:0];
      }

      else
      {
        if (!v36)
        {
          v37 = +[AMSLogConfig sharedConfig];
        }

        v42 = [v37 OSLogObject];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          v43 = objc_opt_class();
          v44 = [(AMSKeychainStore *)self identifier];
          v45 = [(AMSKeychainStore *)self service];
          *buf = 138543874;
          v50 = v43;
          v51 = 2114;
          v52 = v44;
          v53 = 2114;
          v54 = v45;
          _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] [%{public}@] Unexpected attempt to retrieve data before first unlock", buf, 0x20u);
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
  v5 = [(AMSKeychainStore *)self identifier];
  CFDictionaryAddValue(Mutable, v4, v5);

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B390], *MEMORY[0x1E695E4D0]);
  v6 = *MEMORY[0x1E697AE88];
  v7 = [(AMSKeychainStore *)self service];
  CFDictionaryAddValue(Mutable, v6, v7);

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE0]);
  v8 = [(AMSKeychainStore *)self keychainAccessGroup];

  if (v8)
  {
    v9 = *MEMORY[0x1E697ABD0];
    v10 = [(AMSKeychainStore *)self keychainAccessGroup];
    CFDictionaryAddValue(Mutable, v9, v10);
  }

  return Mutable;
}

- (AMSKeychainStore)initWithIdentifier:(id)a3 service:(id)a4 keychainAccessGroup:(id)a5 keychainAddFunc:(void *)a6 keychainCopyFunc:(void *)a7 keychainDeleteFunc:(void *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v25.receiver = self;
  v25.super_class = AMSKeychainStore;
  v17 = [(AMSKeychainStore *)&v25 init];
  if (v17)
  {
    v18 = [v14 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v15 copy];
    service = v17->_service;
    v17->_service = v20;

    v22 = [v16 copy];
    keychainAccessGroup = v17->_keychainAccessGroup;
    v17->_keychainAccessGroup = v22;

    v17->_storeSecItemCopyMatchingFunc = a7;
    v17->_storeSecItemDeleteFunc = a8;
    v17->_storeSecItemAddFunc = a6;
  }

  return v17;
}

- (BOOL)storeData:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(AMSKeychainStore *)self _removeDataFromKeychain];
  if (!v4)
  {
LABEL_19:
    v28 = 1;
    goto LABEL_29;
  }

  v5 = [(AMSKeychainStore *)self _copyKeychainQuery];
  CFDictionaryAddValue(v5, *MEMORY[0x1E697B3C0], v4);
  v6 = ([(AMSKeychainStore *)self storeSecItemAddFunc])(v5, 0);
  CFRelease(v5);
  v7 = +[AMSLogConfig sharedKeychainConfig];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v8 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = v24;
      v26 = [(AMSKeychainStore *)self identifier];
      v27 = [(AMSKeychainStore *)self service];
      *buf = 138543874;
      v35 = v24;
      v36 = 2114;
      v37 = v26;
      v38 = 2114;
      v39 = v27;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Saved data to keychain.", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (!v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(AMSKeychainStore *)self identifier];
    v13 = [(AMSKeychainStore *)self service];
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    *buf = 138544130;
    v35 = v10;
    v36 = 2114;
    v37 = v12;
    v38 = 2114;
    v39 = v13;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to save data to keychain. Status: %{public}@", buf, 0x2Au);
  }

  if (!soft_MKBDeviceUnlockedSinceBoot())
  {
    v15 = +[AMSUnitTests isRunningUnitTests];
    v16 = +[AMSLogConfig sharedKeychainConfig];
    v17 = v16;
    if (v15)
    {
      if (!v16)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = [(AMSKeychainStore *)self identifier];
        v21 = [(AMSKeychainStore *)self service];
        *buf = 138543874;
        v35 = v19;
        v36 = 2114;
        v37 = v20;
        v38 = 2114;
        v39 = v21;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Unexpected attempt to store data first unlock", buf, 0x20u);
      }

      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      v22 = +[AMSLogConfig sharedKeychainConfig];
      [v17 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v22 userInfo:0];
    }

    else
    {
      if (!v16)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v17 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v29 = objc_opt_class();
        v30 = [(AMSKeychainStore *)self identifier];
        v31 = [(AMSKeychainStore *)self service];
        *buf = 138543874;
        v35 = v29;
        v36 = 2114;
        v37 = v30;
        v38 = 2114;
        v39 = v31;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] [%{public}@] Unexpected attempt to store data first unlock", buf, 0x20u);
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

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(AMSKeychainStore *)self identifier];
    v8 = [(AMSKeychainStore *)self service];
    *buf = 138543874;
    v34 = v5;
    v35 = 2114;
    v36 = v7;
    v37 = 2114;
    v38 = v8;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Trying to remove data from keychain", buf, 0x20u);
  }

  v9 = [(AMSKeychainStore *)self _copyKeychainQuery];
  v10 = ([(AMSKeychainStore *)self storeSecItemDeleteFunc])(v9);
  CFDictionarySetValue(v9, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697AC20]);
  v11 = ([(AMSKeychainStore *)self storeSecItemDeleteFunc])(v9);
  CFRelease(v9);
  v12 = 1;
  if (v10 != -25303 && v10 != -25300 && v10)
  {
    v13 = +[AMSLogConfig sharedKeychainConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v32 = v15;
      v16 = [(AMSKeychainStore *)self identifier];
      v17 = [(AMSKeychainStore *)self service];
      v18 = [MEMORY[0x1E696AD98] numberWithInt:v10];
      *buf = 138544130;
      v34 = v15;
      v35 = 2114;
      v36 = v16;
      v37 = 2114;
      v38 = v17;
      v39 = 2114;
      v40 = v18;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to remove data stored with 'after first unlock' attribute from keychain. Status: %{public}@", buf, 0x2Au);
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

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [(AMSKeychainStore *)self identifier];
      v24 = [(AMSKeychainStore *)self service];
      *buf = 138543874;
      v34 = v21;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [%{public}@] Removed data from keychain", buf, 0x20u);
    }
  }

  else
  {
    v19 = +[AMSLogConfig sharedKeychainConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = v25;
      v27 = [(AMSKeychainStore *)self identifier];
      v28 = [(AMSKeychainStore *)self service];
      v29 = [MEMORY[0x1E696AD98] numberWithInt:v11];
      *buf = 138544130;
      v34 = v25;
      v35 = 2114;
      v36 = v27;
      v37 = 2114;
      v38 = v28;
      v39 = 2114;
      v40 = v29;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [%{public}@] Failed to remove data stored with 'when unlocked' attribute from keychain. Status: %{public}@", buf, 0x2Au);
    }
  }

  return !v10 || v11 == 0;
}

@end