@interface AMSAccountStoreCache
+ (AMSThreadSafeDictionary)cache;
+ (id)accountStoreForMediaType:(id)type;
+ (id)mediaTypeForAccountStore:(id)store;
+ (void)_resetAccountStoreCache;
@end

@implementation AMSAccountStoreCache

uint64_t __29__AMSAccountStoreCache_cache__block_invoke()
{
  qword_1ED6E26C8 = objc_alloc_init(AMSThreadSafeDictionary);

  return MEMORY[0x1EEE66BB8]();
}

+ (AMSThreadSafeDictionary)cache
{
  if (_MergedGlobals_82 != -1)
  {
    dispatch_once(&_MergedGlobals_82, &__block_literal_global_4);
  }

  v3 = qword_1ED6E26C8;

  return v3;
}

+ (id)accountStoreForMediaType:(id)type
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (typeCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__2;
    v24 = __Block_byref_object_dispose__2;
    v25 = 0;
    cache = [self cache];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__AMSAccountStoreCache_accountStoreForMediaType___block_invoke;
    v18[3] = &unk_1E73B3720;
    v20 = buf;
    v19 = typeCopy;
    selfCopy = self;
    [cache readWrite:v18];

    v7 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v14 = AMSLogKey();
        v15 = [v11 stringWithFormat:@"%@: [%@] ", v13, v14];
      }

      else
      {
        v15 = [v11 stringWithFormat:@"%@: ", v12];
        v14 = v15;
      }

      v16 = NSStringFromSelector(a2);
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@%{public}@ was passed a nil media type. Returning an ACAccountStore that isn't associated with any media type.", buf, 0x16u);
      if (v10)
      {
      }
    }

    if (+[AMSUnitTests isRunningUnitTests])
    {
      [MEMORY[0x1E6959A48] _ams_newAccountStore];
    }

    else
    {
      [MEMORY[0x1E6959A48] _ams_defaultAccountStore];
    }
    v7 = ;
  }

  return v7;
}

void __49__AMSAccountStoreCache_accountStoreForMediaType___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = +[AMSLogConfig sharedAccountsConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        v2 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, v2];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v23 = *(a1 + 32);
      v24 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543874;
      v30 = v16;
      v31 = 2114;
      v32 = v23;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_INFO, "%{public}@Found an existing ACAccountStore for a media type. mediaType = %{public}@ | accountStore = %{public}@", buf, 0x20u);
      if (v12)
      {

        v16 = v2;
      }
    }
  }

  else
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v10 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = AMSLogKey();
      v19 = MEMORY[0x1E696AEC0];
      v20 = objc_opt_class();
      v21 = v20;
      if (v18)
      {
        v2 = AMSLogKey();
        [v19 stringWithFormat:@"%@: [%@] ", v21, v2];
      }

      else
      {
        [v19 stringWithFormat:@"%@: ", v20];
      }
      v22 = ;
      v25 = *(a1 + 32);
      *buf = 138543618;
      v30 = v22;
      v31 = 2114;
      v32 = v25;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Creating a new ACAccountStore for a media type. mediaType = %{public}@", buf, 0x16u);
      if (v18)
      {

        v22 = v2;
      }
    }

    v26 = [MEMORY[0x1E6959A48] _ams_newAccountStore];
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    [v4 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
  }
}

+ (id)mediaTypeForAccountStore:(id)store
{
  v21 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  cache = [self cache];
  allKeys = [cache allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      cache2 = [self cache];
      v13 = [cache2 objectForKeyedSubscript:v11];

      if (v13 == storeCopy)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = +[AMSProcessInfo defaultMediaTypeForCurrentProcess];
LABEL_12:

  return v14;
}

+ (void)_resetAccountStoreCache
{
  cache = [self cache];
  [cache removeAllObjects];
}

@end