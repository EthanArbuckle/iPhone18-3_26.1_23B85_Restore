@interface AMSEngagementCache
+ (id)sharedInstance;
- (AMSEngagementCache)initWithFileURL:(id)a3;
- (id)cachedResponseForEvent:(id)a3;
- (void)cacheResponse:(id)a3 filter:(id)a4 expiration:(id)a5;
- (void)dealloc;
@end

@implementation AMSEngagementCache

+ (id)sharedInstance
{
  if (qword_1ED6E2978 != -1)
  {
    dispatch_once(&qword_1ED6E2978, &__block_literal_global_46);
  }

  v3 = _MergedGlobals_106;

  return v3;
}

void __36__AMSEngagementCache_sharedInstance__block_invoke()
{
  v3 = [AMSDatabaseHelper databaseFolderNameForType:3];
  v0 = [AMSDatabaseHelper databaseURLForCachePath:v3 type:3];
  v1 = [[AMSEngagementCache alloc] initWithFileURL:v0];
  v2 = _MergedGlobals_106;
  _MergedGlobals_106 = v1;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedEngagementConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Closing database", buf, 0x16u);
  }

  database = self->_database;
  v18 = 0;
  v8 = [(AMSEngagementCacheDatabase *)database closeWithError:&v18];
  v9 = v18;
  v10 = +[AMSLogConfig sharedEngagementConfig];
  v11 = v10;
  if (v8)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Database is closed", buf, 0x16u);
LABEL_14:
    }
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v14 = AMSLogKey();
      v16 = AMSHashIfNeeded(v9);
      *buf = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to close database: %{public}@", buf, 0x20u);

      goto LABEL_14;
    }
  }

  v17.receiver = self;
  v17.super_class = AMSEngagementCache;
  [(AMSEngagementCache *)&v17 dealloc];
}

- (void)cacheResponse:(id)a3 filter:(id)a4 expiration:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v39 = a5;
  v10 = +[AMSLogConfig sharedEngagementConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = AMSHashIfNeeded(v8);
    AMSHashIfNeeded(v9);
    v16 = v15 = v9;
    *buf = 138544130;
    v44 = v12;
    v45 = 2114;
    v46 = v13;
    v47 = 2114;
    v48 = v14;
    v49 = 2114;
    v50 = v16;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caching (response: %{public}@, filter: %{public}@)", buf, 0x2Au);

    v9 = v15;
  }

  v42 = 0;
  v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:0 error:&v42];
  v18 = v42;
  if (v17)
  {
    v41 = v18;
    v38 = v9;
    v19 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:&v41];
    v20 = v41;

    if (!v19)
    {
      v25 = +[AMSLogConfig sharedEngagementConfig];
      if (!v25)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        v35 = AMSHashIfNeeded(v20);
        *buf = 138543874;
        v44 = v33;
        v45 = 2114;
        v46 = v34;
        v47 = 2114;
        v48 = v35;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode filter: %{public}@", buf, 0x20u);
      }

      goto LABEL_26;
    }

    v21 = [(AMSEngagementCache *)self database];
    v40 = v20;
    v22 = [v21 insertResponseData:v17 filterData:v19 expiration:v39 error:&v40];
    v23 = v40;

    v24 = +[AMSLogConfig sharedEngagementConfig];
    v25 = v24;
    if (v22)
    {
      if (!v24)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v27 = objc_opt_class();
      v28 = AMSLogKey();
      *buf = 138543618;
      v44 = v27;
      v45 = 2114;
      v46 = v28;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caching complete", buf, 0x16u);
    }

    else
    {
      if (!v24)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v36 = objc_opt_class();
      v28 = AMSLogKey();
      v37 = AMSHashIfNeeded(v23);
      *buf = 138543874;
      v44 = v36;
      v45 = 2114;
      v46 = v28;
      v47 = 2114;
      v48 = v37;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to insert response: %{public}@", buf, 0x20u);
    }

LABEL_25:
    v20 = v23;
LABEL_26:

    v18 = v20;
    v9 = v38;
    goto LABEL_27;
  }

  v19 = +[AMSLogConfig sharedEngagementConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v25 = [v19 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v29 = objc_opt_class();
    v30 = AMSLogKey();
    AMSHashIfNeeded(v18);
    v32 = v31 = v9;
    *buf = 138543874;
    v44 = v29;
    v45 = 2114;
    v46 = v30;
    v47 = 2114;
    v48 = v32;
    _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode response: %{public}@", buf, 0x20u);

    v9 = v31;
  }

LABEL_27:
}

- (AMSEngagementCache)initWithFileURL:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AMSEngagementCache;
  v5 = [(AMSEngagementCache *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc_init(AMSEngagementCacheDatabase);
    v7 = +[AMSLogConfig sharedEngagementConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = [v4 path];
      v12 = AMSHashIfNeeded(v11);
      *buf = 138543874;
      v29 = v9;
      v30 = 2114;
      v31 = v10;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening database (path: %{public}@)", buf, 0x20u);
    }

    v13 = [v4 path];
    v26 = 0;
    v14 = [(AMSEngagementCacheDatabase *)v6 openAtPath:v13 error:&v26];
    v15 = v26;

    v16 = +[AMSLogConfig sharedEngagementConfig];
    v17 = v16;
    if (v14)
    {
      if (!v16)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = AMSLogKey();
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v20;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Database is open", buf, 0x16u);
      }

      objc_storeStrong(&v5->_database, v6);
    }

    else
    {
      if (!v16)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v17 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = AMSLogKey();
        v24 = AMSHashIfNeeded(v15);
        *buf = 138543874;
        v29 = v22;
        v30 = 2114;
        v31 = v23;
        v32 = 2114;
        v33 = v24;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to open database: %{public}@", buf, 0x20u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)cachedResponseForEvent:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedEngagementConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Collecting garbage", buf, 0x16u);
  }

  v9 = [(AMSEngagementCache *)self database];
  v35 = 0;
  v10 = [v9 collectGarbageWithError:&v35];
  v11 = v35;

  v12 = +[AMSLogConfig sharedEngagementConfig];
  v13 = v12;
  if (v10)
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Garbage collection is complete", buf, 0x16u);
    }
  }

  else
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = AMSHashIfNeeded(v11);
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      *&buf[22] = 2114;
      v37 = v19;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Failed to collect garbage: %{public}@", buf, 0x20u);
    }
  }

  v20 = +[AMSLogConfig sharedEngagementConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = AMSLogKey();
    v24 = AMSHashIfNeeded(v4);
    *buf = 138543874;
    *&buf[4] = v22;
    *&buf[12] = 2114;
    *&buf[14] = v23;
    *&buf[22] = 2114;
    v37 = v24;
    _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching cached response (event: %{public}@)", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = __Block_byref_object_copy__25;
  v38 = __Block_byref_object_dispose__25;
  v39 = 0;
  v25 = [(AMSEngagementCache *)self database];
  v26 = [MEMORY[0x1E695DF00] now];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __54__AMSEngagementCache_Project__cachedResponseForEvent___block_invoke;
  v32[3] = &unk_1E73B73C8;
  v32[4] = self;
  v27 = v4;
  v33 = v27;
  v34 = buf;
  v31 = v11;
  [v25 selectWithExpirationDate:v26 handler:v32 error:&v31];
  v28 = v31;

  v29 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v29;
}

uint64_t __54__AMSEngagementCache_Project__cachedResponseForEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = 0;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a2 options:0 error:&v26];
  v7 = v26;
  if (v6)
  {
    v25 = v7;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v25];
    v9 = v25;

    if (v8)
    {
      v10 = *(a1 + 40);
      v11 = +[AMSEngagementAppEventFilterModel sharedRegexCache];
      v12 = [AMSEngagementAppEventFilterModel matchEvent:v10 toFilter:v8 withCache:v11];

      if (!v12)
      {
        v23 = 1;
        goto LABEL_16;
      }

      v13 = *(*(a1 + 48) + 8);
      v14 = v6;
      v15 = *(v13 + 40);
      *(v13 + 40) = v14;
    }

    else
    {
      v15 = +[AMSLogConfig sharedEngagementConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v15 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = AMSLogKey();
        v22 = AMSHashIfNeeded(v9);
        *buf = 138543874;
        v28 = v20;
        v29 = 2114;
        v30 = v21;
        v31 = 2114;
        v32 = v22;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode filter: %{public}@", buf, 0x20u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = +[AMSLogConfig sharedEngagementConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v8 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSHashIfNeeded(v7);
      *buf = 138543874;
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      v31 = 2114;
      v32 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode response: %{public}@", buf, 0x20u);
    }

    v9 = v7;
  }

  v23 = 0;
LABEL_16:

  return v23;
}

@end