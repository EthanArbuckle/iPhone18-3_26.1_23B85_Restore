@interface AMSEngagementOfflineBag
- (AMSEngagementOfflineBag)initWithUnderlyingBag:(id)a3;
- (AMSSnapshotBag)underlyingOfflineBag;
- (BOOL)isExpired;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)URLForKey:(id)a3 account:(id)a4;
- (id)_attemptBagLoad;
- (id)_getOfflineBagData;
- (id)_getSnapshotResult;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)createSnapshotWithCompletion:(id)a3;
@end

@implementation AMSEngagementOfflineBag

- (AMSEngagementOfflineBag)initWithUnderlyingBag:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AMSEngagementOfflineBag;
  v6 = [(AMSEngagementOfflineBag *)&v11 init];
  v7 = v6;
  if (v6)
  {
    snapshotPromise = v6->_snapshotPromise;
    v6->_snapshotPromise = 0;

    underlyingOfflineBag = v7->_underlyingOfflineBag;
    v7->_underlyingOfflineBag = 0;

    objc_storeStrong(&v7->_underlyingBag, a3);
  }

  return v7;
}

- (id)_attemptBagLoad
{
  v3 = [(AMSEngagementOfflineBag *)self snapshotPromise];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    [(AMSEngagementOfflineBag *)self setSnapshotPromise:v4];

    v5 = [(AMSEngagementOfflineBag *)self underlyingBag];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__AMSEngagementOfflineBag__attemptBagLoad__block_invoke;
    v8[3] = &unk_1E7F24260;
    v8[4] = self;
    [v5 createSnapshotWithCompletion:v8];
  }

  v6 = [(AMSEngagementOfflineBag *)self snapshotPromise];

  return v6;
}

void __42__AMSEngagementOfflineBag__attemptBagLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) underlyingOfflineBag];

    v8 = [MEMORY[0x1E698C968] sharedBagConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = objc_opt_class();
        v13 = v12;
        v14 = AMSLogKey();
        v30 = 138543618;
        v31 = v12;
        v32 = 2114;
        v33 = v14;
        _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to load the underlying bag. Falling back to offline bag..", &v30, 0x16u);
      }

      v15 = [*(a1 + 32) snapshotPromise];
      v16 = [*(a1 + 32) underlyingOfflineBag];
      [v15 finishWithResult:v16 error:0];
    }

    else
    {
      if (!v8)
      {
        v9 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v24 = [v9 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        v26 = objc_opt_class();
        v27 = v26;
        v28 = AMSLogKey();
        v30 = 138543618;
        v31 = v26;
        v32 = 2114;
        v33 = v28;
        _os_log_impl(&dword_1BB036000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to generate offline bag.", &v30, 0x16u);
      }

      v15 = [*(a1 + 32) snapshotPromise];
      [v15 finishWithError:v6];
    }

    [*(a1 + 32) setSnapshotPromise:0];
  }

  else
  {
    v17 = [MEMORY[0x1E698C968] sharedBagConfig];
    if (!v17)
    {
      v17 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = v20;
      v22 = AMSLogKey();
      v30 = 138543618;
      v31 = v20;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully snapshotted the bag. Using underlying bag..", &v30, 0x16u);
    }

    v23 = [*(a1 + 32) snapshotPromise];
    [v23 finishWithResult:v5 error:0];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)_getOfflineBagData
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFF8] ams_dynamicUIDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"offline-bag" isDirectory:0];

  v20 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:&v20];
  v5 = v20;
  v6 = [MEMORY[0x1E698C968] sharedBagConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded();
      *buf = 138543874;
      v22 = v9;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to read offline bag data. error = %{public}@", buf, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v7 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = AMSLogKey();
      *buf = 138543618;
      v22 = v15;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Successfully read offline bag data.", buf, 0x16u);
    }

    v13 = v4;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_getSnapshotResult
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v13 = 0;
  v3 = [v2 resultWithError:&v13];
  v4 = v13;

  if (v4)
  {
    v5 = [MEMORY[0x1E698C968] sharedBagConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = AMSHashIfNeeded();
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get snapshot result for key. error = %{public}@", buf, 0x20u);
    }

    v10 = 0;
  }

  else
  {
    v10 = v3;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (AMSSnapshotBag)underlyingOfflineBag
{
  v42 = *MEMORY[0x1E69E9840];
  underlyingOfflineBag = self->_underlyingOfflineBag;
  if (underlyingOfflineBag)
  {
    goto LABEL_2;
  }

  v5 = MEMORY[0x1E696ACD0];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v11 = [(AMSEngagementOfflineBag *)self _getOfflineBagData];
  v35 = 0;
  v12 = [v5 unarchivedObjectOfClasses:v10 fromData:v11 error:&v35];
  v13 = v35;

  if (v13)
  {
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E698CB38]);
    [v14 setData:v12];
    v15 = [(AMSEngagementOfflineBag *)self expirationDate];
    [v14 setExpirationDate:v15];

    v16 = [(AMSEngagementOfflineBag *)self profile];
    [v14 setProfile:v16];

    v17 = [(AMSEngagementOfflineBag *)self profileVersion];
    [v14 setProfileVersion:v17];

    v34 = 0;
    v18 = [v14 buildWithError:&v34];
    v19 = v34;
    v20 = [MEMORY[0x1E698C968] sharedBagConfig];
    v21 = v20;
    if (v19)
    {
      if (!v20)
      {
        v21 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v33 = v23;
        v24 = AMSLogKey();
        v25 = AMSHashIfNeeded();
        *buf = 138543874;
        v37 = v23;
        v38 = 2114;
        v39 = v24;
        v40 = 2114;
        v41 = v25;
        _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create the offline snapshot. error = %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (!v20)
      {
        v21 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v26 = [v21 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = v27;
        v29 = AMSLogKey();
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v29;
        _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully created the offline snapshot.", buf, 0x16u);
      }

      v30 = v18;
      v21 = self->_underlyingOfflineBag;
      self->_underlyingOfflineBag = v30;
    }

    if (!v19)
    {
      underlyingOfflineBag = self->_underlyingOfflineBag;
LABEL_2:
      v3 = underlyingOfflineBag;
      goto LABEL_18;
    }
  }

  v3 = 0;
LABEL_18:
  v31 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isExpired
{
  v2 = [(AMSEngagementOfflineBag *)self expirationDate];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = [v3 compare:v2] == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSString)profile
{
  v2 = [(AMSEngagementOfflineBag *)self underlyingBag];
  v3 = [v2 profile];

  return v3;
}

- (NSString)profileVersion
{
  v2 = [(AMSEngagementOfflineBag *)self underlyingBag];
  v3 = [v2 profileVersion];

  return v3;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v6 = [v5 isFinished];

  if (v6)
  {
    [(AMSEngagementOfflineBag *)self _getSnapshotResult];
  }

  else
  {
    v7 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
    [(AMSEngagementOfflineBag *)self underlyingOfflineBag];
  }
  v8 = ;
  v9 = [v8 arrayForKey:v4];

  return v9;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v6 = [v5 isFinished];

  if (v6)
  {
    [(AMSEngagementOfflineBag *)self _getSnapshotResult];
  }

  else
  {
    v7 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
    [(AMSEngagementOfflineBag *)self underlyingOfflineBag];
  }
  v8 = ;
  v9 = [v8 BOOLForKey:v4];

  return v9;
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v6 = [v5 isFinished];

  if (v6)
  {
    [(AMSEngagementOfflineBag *)self _getSnapshotResult];
  }

  else
  {
    v7 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
    [(AMSEngagementOfflineBag *)self underlyingOfflineBag];
  }
  v8 = ;
  v9 = [v8 doubleForKey:v4];

  return v9;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v6 = [v5 isFinished];

  if (v6)
  {
    [(AMSEngagementOfflineBag *)self _getSnapshotResult];
  }

  else
  {
    v7 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
    [(AMSEngagementOfflineBag *)self underlyingOfflineBag];
  }
  v8 = ;
  v9 = [v8 integerForKey:v4];

  return v9;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v6 = [v5 isFinished];

  if (v6)
  {
    [(AMSEngagementOfflineBag *)self _getSnapshotResult];
  }

  else
  {
    v7 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
    [(AMSEngagementOfflineBag *)self underlyingOfflineBag];
  }
  v8 = ;
  v9 = [v8 stringForKey:v4];

  return v9;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v6 = [v5 isFinished];

  if (v6)
  {
    [(AMSEngagementOfflineBag *)self _getSnapshotResult];
  }

  else
  {
    v7 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
    [(AMSEngagementOfflineBag *)self underlyingOfflineBag];
  }
  v8 = ;
  v9 = [v8 URLForKey:v4];

  return v9;
}

- (id)URLForKey:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v9 = [v8 isFinished];

  if (v9)
  {
    [(AMSEngagementOfflineBag *)self _getSnapshotResult];
  }

  else
  {
    v10 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
    [(AMSEngagementOfflineBag *)self underlyingOfflineBag];
  }
  v11 = ;
  v12 = [v11 URLForKey:v7 account:v6];

  return v12;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementOfflineBag *)self snapshotPromise];
  v6 = [v5 isFinished];

  if (v6)
  {
    [(AMSEngagementOfflineBag *)self _getSnapshotResult];
  }

  else
  {
    v7 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
    [(AMSEngagementOfflineBag *)self underlyingOfflineBag];
  }
  v8 = ;
  v9 = [v8 dictionaryForKey:v4];

  return v9;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementOfflineBag *)self _attemptBagLoad];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AMSEngagementOfflineBag_createSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E7F24288;
  v8 = v4;
  v6 = v4;
  [v5 addFinishBlock:v7];
}

@end