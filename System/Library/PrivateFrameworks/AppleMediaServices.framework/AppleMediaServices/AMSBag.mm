@interface AMSBag
+ (AMSBagCache)bagCache;
+ (id)_bagForProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5 accountProvider:(id)a6;
+ (id)bagForProfile:(id)a3 profileVersion:(id)a4;
+ (id)bagForProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5;
+ (id)bagForProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5 account:(id)a6;
+ (id)sharedPersistenceQueue;
+ (id)sharedPersistenceWithDefaultDirectory;
+ (void)resetBagCache;
- (AMSBag)initWithDataSource:(id)a3 persistenceDirectoryURL:(id)a4 persistenceQueue:(id)a5 changeHandlerQueue:(id)a6 shouldConfigureDataSourceHandlers:(BOOL)a7;
- (AMSBag)initWithDataSource:(id)a3 shouldConfigureDataSourceHandlers:(BOOL)a4;
- (AMSProcessInfo)processInfo;
- (BOOL)isExpired;
- (BOOL)isLoaded;
- (BOOL)persistenceIsEnabled;
- (NSDate)expirationDate;
- (NSString)description;
- (NSString)descriptionExtended;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)URLForKey:(id)a3 account:(id)a4;
- (id)URLFromURLString:(id)a3 account:(id)a4;
- (id)_availableValuesFromCachedData:(id)a3 keys:(id)a4 partialIdentifier:(id)a5 expirationDate:(id)a6 updateHandler:(id)a7 outToken:(unint64_t *)a8;
- (id)_availableValuesFromPersistedBagData:(id)a3 error:(id)a4 keys:(id)a5 partialIdentifier:(id)a6 updateHandler:(id)a7 outToken:(unint64_t *)a8;
- (id)_initWithDataSource:(id)a3 persistence:(id)a4 persistenceQueue:(id)a5 updateHandlers:(id)a6 shouldConfigureDataSourceHandlers:(BOOL)a7;
- (id)_temporaryDictionary;
- (id)arrayForKey:(id)a3;
- (id)cachedValuesForKeys:(id)a3 observationToken:(unint64_t *)a4 updateHandler:(id)a5;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)_configureDataSourceHandlers;
- (void)_loadAndPersistBag;
- (void)_persistBagDictionary:(id)a3 withIdentifier:(id)a4 partialIdentifier:(id)a5 expirationDate:(id)a6 onlyIfPreExisting:(BOOL)a7;
- (void)createSnapshotWithCompletion:(id)a3;
- (void)removeObserverWithToken:(unint64_t)a3;
- (void)setDefaultValue:(id)a3 forKey:(id)a4;
- (void)waitUntilPersistenceWorkComplete;
@end

@implementation AMSBag

uint64_t __18__AMSBag_bagCache__block_invoke()
{
  qword_1ED6E2788 = objc_alloc_init(AMSBagCache);

  return MEMORY[0x1EEE66BB8]();
}

+ (AMSBagCache)bagCache
{
  if (_MergedGlobals_88 != -1)
  {
    dispatch_once(&_MergedGlobals_88, &__block_literal_global_16);
  }

  v3 = qword_1ED6E2788;

  return v3;
}

+ (id)sharedPersistenceWithDefaultDirectory
{
  if (qword_1ED6E27A0 != -1)
  {
    dispatch_once(&qword_1ED6E27A0, &__block_literal_global_48);
  }

  v3 = qword_1ED6E27A8;

  return v3;
}

uint64_t __47__AMSBag_sharedPersistenceWithDefaultDirectory__block_invoke()
{
  qword_1ED6E27A8 = +[AMSBagUnderlyingDataPersistence persistenceWithDefaultDirectory];

  return MEMORY[0x1EEE66BB8]();
}

void __32__AMSBag_sharedPersistenceQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppleMediaServices.AMSBag.persistenceQueue", v2);
  v1 = qword_1ED6E2798;
  qword_1ED6E2798 = v0;
}

+ (id)sharedPersistenceQueue
{
  if (qword_1ED6E2790 != -1)
  {
    dispatch_once(&qword_1ED6E2790, &__block_literal_global_45);
  }

  v3 = qword_1ED6E2798;

  return v3;
}

- (void)_configureDataSourceHandlers
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__AMSBag__configureDataSourceHandlers__block_invoke;
  v7[3] = &unk_1E73B41B8;
  objc_copyWeak(&v8, &location);
  v3 = [(AMSBag *)self dataSource];
  [v3 setDataSourceChangedHandler:v7];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AMSBag__configureDataSourceHandlers__block_invoke_2;
  v5[3] = &unk_1E73B41E0;
  objc_copyWeak(&v6, &location);
  v4 = [(AMSBag *)self dataSource];
  [v4 setDataSourceDataInvalidatedHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (NSString)description
{
  v2 = [(AMSBag *)self dataSource];
  v3 = [v2 description];

  return v3;
}

- (BOOL)persistenceIsEnabled
{
  v2 = [(AMSBag *)self persistence];
  v3 = v2 != 0;

  return v3;
}

- (void)_loadAndPersistBag
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedBagConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      v2 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Calling loadWithCompletion.", buf, 0xCu);
    if (v6)
    {

      v10 = v2;
    }
  }

  v11 = [(AMSBag *)self dataSource];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__AMSBag__loadAndPersistBag__block_invoke;
  v12[3] = &unk_1E73B40F8;
  v12[4] = self;
  [v11 loadWithCompletion:v12];
}

- (BOOL)isExpired
{
  v2 = [(AMSBag *)self expirationDate];
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

- (NSDate)expirationDate
{
  v2 = [(AMSBag *)self dataSource];
  v3 = [v2 expirationDate];

  return v3;
}

- (NSString)profile
{
  v2 = [(AMSBag *)self dataSource];
  v3 = [v2 profile];

  return v3;
}

- (NSString)profileVersion
{
  v2 = [(AMSBag *)self dataSource];
  v3 = [v2 profileVersion];

  return v3;
}

void __38__AMSBag__configureDataSourceHandlers__block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained persistenceQueue];

    if (v7)
    {
      v8 = [v6 persistenceQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__AMSBag__configureDataSourceHandlers__block_invoke_123;
      block[3] = &unk_1E73B3680;
      block[4] = v6;
      dispatch_async(v8, block);
    }

    v9 = +[AMSLogConfig sharedBagConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = v13;
      if (v11)
      {
        v2 = AMSLogKey();
        [v12 stringWithFormat:@"%@: [%@] ", v14, v2];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@The bag changed. Posting a notification.", &buf, 0xCu);
      if (v11)
      {

        v15 = v2;
      }
    }

    if ([v6 persistenceIsEnabled] && objc_msgSend(v6, "persistenceAPIWasCalled"))
    {
      v23 = [v4 updatedData];
      v24 = [v4 loadedBagIdentifier];
      v25 = [v4 loadedBagPartialIdentifier];
      v26 = [v4 updatedExpirationDate];
      [v6 _persistBagDictionary:v23 withIdentifier:v24 partialIdentifier:v25 expirationDate:v26 onlyIfPreExisting:1];
    }

    v27 = [v6 updateHandlers];
    v28 = [v4 updatedData];
    v29 = [v4 changedKeys];
    [v27 callHandlersUsingNewBagDictionary:v28 changedKeys:v29];

    v45[0] = @"profile";
    v30 = [v6 profile];
    v46[0] = v30;
    v45[1] = @"profileVersion";
    v31 = [v6 profileVersion];
    v46[1] = v31;
    v45[2] = @"changedKeys";
    v32 = [v4 changedKeys];
    v33 = [v32 allObjects];
    v46[2] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
    v35 = [v34 mutableCopy];

    v36 = [v4 accountIdentifier];

    if (v36)
    {
      v37 = [v4 accountIdentifier];
      [v35 setObject:v37 forKeyedSubscript:@"accountIdentifier"];
    }

    v38 = [v6 changeNotificationQueue];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __38__AMSBag__configureDataSourceHandlers__block_invoke_125;
    v42[3] = &unk_1E73B3DE0;
    v42[4] = v6;
    v43 = v35;
    v39 = v42;
    v16 = v35;
    v40 = AMSLogKey();
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v48 = __AMSDispatchAsync_block_invoke_0;
    v49 = &unk_1E73B36D0;
    v50 = v40;
    v51 = v39;
    v41 = v40;
    dispatch_async(v38, &buf);
  }

  else
  {
    v16 = +[AMSLogConfig sharedBagConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = AMSLogKey();
      v19 = MEMORY[0x1E696AEC0];
      objc_opt_class();
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
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@dataSourceChangedHandler was called, but the owning bag was deallocated after the handler was called. No AMSBagChangedNotification will be posted.", &buf, 0xCu);
      if (v18)
      {

        v22 = v2;
      }
    }
  }
}

void __38__AMSBag__configureDataSourceHandlers__block_invoke_125(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"AMSBagChangedNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (AMSProcessInfo)processInfo
{
  v2 = [(AMSBag *)self dataSource];
  v3 = [v2 processInfo];

  return v3;
}

void __28__AMSBag__loadAndPersistBag__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = +[AMSLogConfig sharedBagConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v3 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = v11;
    if (v3)
    {
      v4 = AMSLogKey();
      [v10 stringWithFormat:@"%@: [%@] ", v12, v4];
    }

    else
    {
      [v10 stringWithFormat:@"%@: ", v11];
    }
    v13 = ;
    *buf = 138543362;
    v43 = v13;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Handling result of loadWithCompletion.", buf, 0xCu);
    if (v3)
    {

      v13 = v4;
    }
  }

  if (a3)
  {
    v14 = +[AMSLogConfig sharedBagConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v16)
      {
        a1 = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, a1];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      v37 = [v7 loadedBagIdentifier];
      v38 = AMSHashIfNeeded(v37);
      *buf = 138543618;
      v43 = v20;
      v44 = 2114;
      v45 = v38;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to load bag while attempting persistence. bagIdentifier = %{public}@", buf, 0x16u);

      if (v16)
      {

        v20 = a1;
      }
    }

    goto LABEL_41;
  }

  v21 = [v7 loadedBagIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = [v7 loadedBagIdentifier];
    v24 = [v23 length];

    if (v24)
    {
      v25 = +[AMSLogConfig sharedBagConfig];
      if (!v25)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = AMSLogKey();
        v28 = MEMORY[0x1E696AEC0];
        v29 = objc_opt_class();
        v30 = v29;
        if (v27)
        {
          v3 = AMSLogKey();
          [v28 stringWithFormat:@"%@: [%@] ", v30, v3];
        }

        else
        {
          [v28 stringWithFormat:@"%@: ", v29];
        }
        v31 = ;
        v39 = [v7 loadedBagIdentifier];
        v40 = AMSHashIfNeeded(v39);
        *buf = 138543618;
        v43 = v31;
        v44 = 2114;
        v45 = v40;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting bag persistence. bagIdentifier = %{public}@", buf, 0x16u);

        if (v27)
        {

          v31 = v3;
        }
      }

      v41 = *(a1 + 32);
      v14 = [v7 data];
      v15 = [v7 loadedBagIdentifier];
      v32 = [v7 loadedBagPartialIdentifier];
      v36 = [v7 expirationDate];
      [v41 _persistBagDictionary:v14 withIdentifier:v15 partialIdentifier:v32 expirationDate:v36 onlyIfPreExisting:0];
LABEL_40:

      goto LABEL_41;
    }
  }

  v14 = +[AMSLogConfig sharedBagConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v32 = AMSLogKey();
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_opt_class();
    v35 = v34;
    if (v32)
    {
      a1 = AMSLogKey();
      [v33 stringWithFormat:@"%@: [%@] ", v35, a1];
    }

    else
    {
      [v33 stringWithFormat:@"%@: ", v34];
    }
    v36 = ;
    *buf = 138543362;
    v43 = v36;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Bag persistence will be skipped as no loadedBagIdentifier was provided.", buf, 0xCu);
    if (v32)
    {

      v36 = a1;
    }

    goto LABEL_40;
  }

LABEL_41:
}

- (AMSBag)initWithDataSource:(id)a3 persistenceDirectoryURL:(id)a4 persistenceQueue:(id)a5 changeHandlerQueue:(id)a6 shouldConfigureDataSourceHandlers:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:106 description:{@"Unexpected nil reference: %s", "dataSource"}];

    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

LABEL_8:
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:108 description:{@"Unexpected nil reference: %s", "persistenceQueue"}];

      if (v16)
      {
        goto LABEL_5;
      }

LABEL_9:
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:109 description:{@"Unexpected nil reference: %s", "changeHandlerQueue"}];

      goto LABEL_5;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:107 description:{@"Unexpected nil reference: %s", "persistenceDirectoryURL"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = [[AMSBagUnderlyingDataPersistence alloc] initWithDirectoryURL:v14];
  v18 = [[AMSBagCachedValueUpdateHandlers alloc] initWithHandlerQueue:v16];
  v19 = [(AMSBag *)self _initWithDataSource:v13 persistence:v17 persistenceQueue:v15 updateHandlers:v18 shouldConfigureDataSourceHandlers:v7];

  return v19;
}

- (AMSBag)initWithDataSource:(id)a3 shouldConfigureDataSourceHandlers:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:121 description:{@"Unexpected nil reference: %s", "dataSource"}];
  }

  v8 = +[AMSBag sharedPersistenceWithDefaultDirectory];
  if (v8)
  {
    v9 = +[AMSBag sharedPersistenceQueue];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc_init(AMSBagCachedValueUpdateHandlers);
  v11 = [(AMSBag *)self _initWithDataSource:v7 persistence:v8 persistenceQueue:v9 updateHandlers:v10 shouldConfigureDataSourceHandlers:v4];

  return v11;
}

- (id)_initWithDataSource:(id)a3 persistence:(id)a4 persistenceQueue:(id)a5 updateHandlers:(id)a6 shouldConfigureDataSourceHandlers:(BOOL)a7
{
  v31 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v16;
  if (v13)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:139 description:{@"Unexpected nil reference: %s", "dataSource"}];

    if (v17)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:140 description:{@"Unexpected nil reference: %s", "updateHandlers"}];

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (!v15)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = @"'persistenceQueue' must be provided if 'persistence' is provided.";
    v28 = v23;
    v25 = a2;
    v26 = self;
    v27 = 141;
    goto LABEL_13;
  }

LABEL_5:
  if (!v14 && v15)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = @"'persistence' must be provided if 'persistenceQueue' is provided.";
    v28 = v23;
    v25 = a2;
    v26 = self;
    v27 = 142;
LABEL_13:
    [v23 handleFailureInMethod:v25 object:v26 file:@"AMSBag.m" lineNumber:v27 description:v24];
  }

  v32.receiver = self;
  v32.super_class = AMSBag;
  v18 = [(AMSBag *)&v32 init];
  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.AppleMediaServices.AMSBag.changeNotificationQueue", v19);
    changeNotificationQueue = v18->_changeNotificationQueue;
    v18->_changeNotificationQueue = v20;

    objc_storeStrong(&v18->_dataSource, a3);
    objc_storeStrong(&v18->_persistence, a4);
    v18->_persistenceAPIWasCalled = 0;
    objc_storeStrong(&v18->_persistenceQueue, a5);
    v18->_updateHandlerConsistencyLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v18->_updateHandlers, a6);
    if (v31)
    {
      [(AMSBag *)v18 _configureDataSourceHandlers];
    }
  }

  return v18;
}

+ (id)bagForProfile:(id)a3 profileVersion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() bagForProfile:v6 profileVersion:v5 processInfo:0];

  return v7;
}

+ (id)bagForProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = objc_alloc_init(AMSBagActiveAccountProvider);
  v12 = [v10 _bagForProfile:v9 profileVersion:v8 processInfo:v7 accountProvider:v11];

  return v12;
}

+ (id)bagForProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5 account:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_class();
  v14 = [[AMSBagFixedAccountProvider alloc] initWithAccount:v9];

  v15 = [v13 _bagForProfile:v12 profileVersion:v11 processInfo:v10 accountProvider:v14];

  return v15;
}

- (BOOL)isLoaded
{
  v2 = [(AMSBag *)self dataSource];
  v3 = [v2 isLoaded];

  return v3;
}

- (id)cachedValuesForKeys:(id)a3 observationToken:(unint64_t *)a4 updateHandler:(id)a5
{
  v87 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v58 = a5;
  if (!v9)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:236 description:@"The 'keys' set must be provided."];
  }

  if (![v9 count])
  {
    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:237 description:@"The 'keys' set must not be empty."];
  }

  if ([v9 ams_allWithTest:&__block_literal_global_58])
  {
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    [v51 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:240 description:@"Every value in the 'keys' set must be a non-empty string."];

    if (a4)
    {
      goto LABEL_7;
    }
  }

  v52 = [MEMORY[0x1E696AAA8] currentHandler];
  [v52 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:241 description:@"An 'outToken' pointer must be provided."];

LABEL_7:
  if (!v58)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:242 description:@"An 'updateHandler' block must be provided."];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_2;
  aBlock[3] = &unk_1E73B40A8;
  aBlock[4] = self;
  aBlock[5] = a4;
  v57 = _Block_copy(aBlock);
  [(AMSBag *)self setPersistenceAPIWasCalled:1];
  os_unfair_lock_lock(&self->_updateHandlerConsistencyLock);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_87;
  v78[3] = &unk_1E73B3680;
  v78[4] = self;
  v10 = _Block_copy(v78);
  v11 = [(AMSBag *)self dataSource];
  v56 = [v11 bagLoadingPartialIdentifier];

  v12 = [(AMSBag *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(AMSBag *)self dataSource];
    v77 = 0;
    v15 = [v14 loadedValuesForKeys:v9 outExpirationDate:&v77];
    v16 = v77;

    if (v15)
    {
      v17 = [(AMSBag *)self _availableValuesFromCachedData:v15 keys:v9 partialIdentifier:v56 expirationDate:v16 updateHandler:v58 outToken:a4];

      goto LABEL_62;
    }
  }

  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__5;
  v75 = __Block_byref_object_dispose__5;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__5;
  v69 = __Block_byref_object_dispose__5;
  v70 = 0;
  if (![(AMSBag *)self persistenceIsEnabled])
  {
    v27 = 0x1E73B0000uLL;
    v28 = +[AMSLogConfig sharedBagConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = AMSLogKey();
      v31 = MEMORY[0x1E696AEC0];
      if (v30)
      {
        v32 = objc_opt_class();
        v27 = AMSLogKey();
        [v31 stringWithFormat:@"%@: [%@] ", v32, v27];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
      }
      v33 = ;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v33;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Persistence is not enabled. No cached values will be returned from cachedValuesForKeys:.", &buf, 0xCu);
      if (v30)
      {

        v33 = v27;
      }
    }

    v46 = [(AMSBag *)self updateHandlers];
    *a4 = [v46 addHandlerWithKeys:v9 initialValues:MEMORY[0x1E695E0F8] handler:v58];

    v47 = [(AMSBag *)self dataSource];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_91;
    v59[3] = &unk_1E73B40F8;
    v59[4] = self;
    [v47 loadWithCompletion:v59];

    v17 = MEMORY[0x1E695E0F8];
    goto LABEL_61;
  }

  v18 = [(AMSBag *)self persistenceQueue];
  v19 = v18 == 0;

  if (v19)
  {
    if (+[AMSUnitTests isRunningUnitTests])
    {
      v34 = +[AMSLogConfig sharedBagConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = AMSLogKey();
        v37 = MEMORY[0x1E696AEC0];
        if (v36)
        {
          v38 = objc_opt_class();
          v13 = AMSLogKey();
          [v37 stringWithFormat:@"%@: [%@] ", v38, v13];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v39 = ;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v39;
        _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_ERROR, "%{public}@Persistence was enabled but persisteneQueue was unexpectedly nil. No persisted bag will be loaded.", &buf, 0xCu);
        if (v36)
        {

          v39 = v13;
        }
      }

      v40 = [MEMORY[0x1E696AD88] defaultCenter];
      v41 = +[AMSLogConfig sharedBagConfig];
      [v40 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v41 userInfo:0];
    }

    else
    {
      v40 = +[AMSLogConfig sharedBagConfig];
      if (!v40)
      {
        v40 = +[AMSLogConfig sharedConfig];
      }

      v41 = [v40 OSLogObject];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        v42 = AMSLogKey();
        v43 = MEMORY[0x1E696AEC0];
        if (v42)
        {
          v44 = objc_opt_class();
          v13 = AMSLogKey();
          [v43 stringWithFormat:@"%@: [%@] ", v44, v13];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v45 = ;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v45;
        _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_FAULT, "%{public}@Persistence was enabled but persisteneQueue was unexpectedly nil. No persisted bag will be loaded.", &buf, 0xCu);
        if (v42)
        {

          v45 = v13;
        }
      }
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy__5;
    v85 = __Block_byref_object_dispose__5;
    v86 = 0;
    v20 = [(AMSBag *)self persistenceQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_90;
    block[3] = &unk_1E73B40D0;
    block[4] = self;
    p_buf = &buf;
    v17 = v56;
    v61 = v17;
    v63 = &v71;
    v64 = &v65;
    dispatch_sync(v20, block);

    v21 = *(*(&buf + 1) + 40);
    if (v21)
    {
      v22 = 0x1E73B0000uLL;
      v23 = +[AMSLogConfig sharedBagConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v55 = AMSLogKey();
        v54 = MEMORY[0x1E696AEC0];
        if (v55)
        {
          v25 = objc_opt_class();
          v22 = AMSLogKey();
          [v54 stringWithFormat:@"%@: [%@] ", v25, v22];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v26 = ;
        *v80 = 138543362;
        v81 = v26;
        _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Preloaded persisted bag data was found and will be returned from cachedValuesForKeys:.", v80, 0xCu);
        if (v55)
        {

          v26 = v22;
        }
      }

      v17 = [(AMSBag *)self _availableValuesFromPersistedBagData:*(*(&buf + 1) + 40) error:0 keys:v9 partialIdentifier:v17 updateHandler:v58 outToken:a4];
    }

    _Block_object_dispose(&buf, 8);
    if (v21)
    {
      goto LABEL_61;
    }
  }

  v17 = [(AMSBag *)self _availableValuesFromPersistedBagData:v72[5] error:v66[5] keys:v9 partialIdentifier:v56 updateHandler:v58 outToken:a4];
LABEL_61:
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
LABEL_62:

  v10[2](v10);
  v57[2]();

  return v17;
}

BOOL __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 length] != 0;

  return v3;
}

void __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v2 = **(a1 + 40);
  if (v2 == +[AMSBag uninitializedToken])
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
        v7 = AMSLogKey();
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = v9;
        if (v7)
        {
          v1 = AMSLogKey();
          [v8 stringWithFormat:@"%@: [%@] ", v10, v1];
        }

        else
        {
          [v8 stringWithFormat:@"%@: ", v9];
        }
        v11 = ;
        v18 = AMSHashIfNeeded(@"*outToken != AMSBagObservationUninitializedToken");
        v19 = AMSHashIfNeeded(@"Expected 'outToken' parameter to be assigned before returning.");
        *buf = 138543874;
        v23 = v11;
        v24 = 2114;
        v25 = v18;
        v26 = 2114;
        v27 = v19;
        _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v7)
        {

          v11 = v1;
        }
      }

      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = +[AMSLogConfig sharedBagConfig];
      [v5 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v12 userInfo:0];
    }

    else
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v5 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = AMSLogKey();
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v16 = v15;
        if (v13)
        {
          v1 = AMSLogKey();
          [v14 stringWithFormat:@"%@: [%@] ", v16, v1];
        }

        else
        {
          [v14 stringWithFormat:@"%@: ", v15];
        }
        v17 = ;
        v20 = AMSHashIfNeeded(@"*outToken != AMSBagObservationUninitializedToken");
        v21 = AMSHashIfNeeded(@"Expected 'outToken' parameter to be assigned before returning.");
        *buf = 138543874;
        v23 = v17;
        v24 = 2114;
        v25 = v20;
        v26 = 2114;
        v27 = v21;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v13)
        {

          v17 = v1;
        }
      }
    }
  }
}

void __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_90(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) temporaryPreloadedBagData];

  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) temporaryPreloadedBagData];

    MEMORY[0x1EEE66BB8]();
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4 && [v4 length])
    {
      v5 = [*(a1 + 32) persistence];
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 64) + 8);
      obj = *(v7 + 40);
      v8 = [v5 underlyingDataFor:v6 error:&obj];
      objc_storeStrong((v7 + 40), obj);
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [*(a1 + 32) temporaryPreloadedBagData];
      if (v11)
      {
      }

      else if (*(*(*(a1 + 56) + 8) + 40))
      {
        v12 = +[AMSLogConfig sharedBagConfig];
        if (!v12)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        v13 = [v12 OSLogObject];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = AMSLogKey();
          v15 = MEMORY[0x1E696AEC0];
          v16 = objc_opt_class();
          v17 = v16;
          if (v14)
          {
            v1 = AMSLogKey();
            [v15 stringWithFormat:@"%@: [%@] ", v17, v1];
          }

          else
          {
            [v15 stringWithFormat:@"%@: ", v16];
          }
          v18 = ;
          *buf = 138543362;
          v21 = v18;
          _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Persisted bag data was loaded and will be returned from cachedValuesForKeys: on future calls.", buf, 0xCu);
          if (v14)
          {

            v18 = v1;
          }
        }

        [*(a1 + 32) setTemporaryPreloadedBagData:*(*(*(a1 + 56) + 8) + 40)];
      }
    }
  }
}

void __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_91(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = +[AMSLogConfig sharedBagConfig];
  v8 = v7;
  if (a3)
  {
    if (!v7)
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
        a1 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, a1];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v21 = [v6 loadedBagIdentifier];
      v22 = AMSHashIfNeeded(v21);
      *buf = 138543618;
      v30 = v14;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to load bag. bagIdentifier = %{public}@", buf, 0x16u);

      if (v10)
      {

        v14 = a1;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v8 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v16)
      {
        v3 = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, v3];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      v23 = [v6 loadedBagIdentifier];
      v24 = AMSHashIfNeeded(v23);
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = v24;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Calling update handlers. bagIdentifier = %{public}@", buf, 0x16u);

      if (v16)
      {

        v20 = v3;
      }
    }

    v8 = [*(a1 + 32) updateHandlers];
    v9 = [v6 data];
    v25 = MEMORY[0x1E695DFD8];
    v26 = [v6 data];
    v27 = [v26 allKeys];
    v28 = [v25 setWithArray:v27];
    [v8 callHandlersUsingNewBagDictionary:v9 changedKeys:v28];
  }
}

- (void)removeObserverWithToken:(unint64_t)a3
{
  v4 = [(AMSBag *)self updateHandlers];
  [v4 removeHandlerWithToken:a3];
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfigOversize];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSLogKey();
    *buf = 138543874;
    v19 = v7;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = self;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to create a snapshot. originalBag = %{public}@", buf, 0x20u);
  }

  v10 = AMSLogKey();
  objc_initWeak(buf, self);
  v11 = [(AMSBag *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__AMSBag_createSnapshotWithCompletion___block_invoke;
  v14[3] = &unk_1E73B4120;
  objc_copyWeak(&v17, buf);
  v12 = v10;
  v15 = v12;
  v13 = v4;
  v16 = v13;
  [v11 loadWithCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __39__AMSBag_createSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = AMSSetLogKey(*(a1 + 32));
  if (!WeakRetained)
  {
    v25 = +[AMSLogConfig sharedBagConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = AMSLogKey();
      *buf = 138543362;
      v49 = v27;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "AMSBag: [%{public}@] Someone called [AMSBag createSnapshotWithCompletion:] but didn't hold onto a reference to the original AMSBag.", buf, 0xCu);
    }

    v28 = *(a1 + 40);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_19;
  }

  if (!v5)
  {
    v32 = +[AMSLogConfig sharedBagConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v32 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = v34;
      v36 = AMSLogKey();
      *buf = 138543874;
      v49 = v34;
      v50 = 2114;
      v51 = v36;
      v52 = 2114;
      v53 = v6;
      _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load the bag. Unable to create a snapshot. error = %{public}@", buf, 0x20u);
    }

    v28 = *(a1 + 40);
    v30 = @"Cannot Create Snapshot";
    v31 = @"We can't create a snapshot because we failed to load the bag.";
    v29 = 205;
LABEL_19:
    v9 = AMSError(v29, v30, v31, v6);
    (*(v28 + 16))(v28, 0, v9);
    goto LABEL_26;
  }

  v9 = objc_alloc_init(AMSSnapshotBagBuilder);
  v10 = [v5 data];
  [(AMSSnapshotBagBuilder *)v9 setData:v10];

  v11 = [WeakRetained expirationDate];
  [(AMSSnapshotBagBuilder *)v9 setExpirationDate:v11];

  v12 = [WeakRetained profile];
  [(AMSSnapshotBagBuilder *)v9 setProfile:v12];

  v13 = [WeakRetained profileVersion];
  [(AMSSnapshotBagBuilder *)v9 setProfileVersion:v13];

  v14 = [WeakRetained processInfo];
  [(AMSSnapshotBagBuilder *)v9 setProcessInfo:v14];

  v47 = 0;
  v15 = [(AMSSnapshotBagBuilder *)v9 buildWithError:&v47];
  v16 = v47;
  v17 = +[AMSLogConfig sharedBagConfig];
  v18 = v17;
  if (v15)
  {
    if (!v17)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v15;
      v20 = v5;
      v21 = v6;
      v22 = v16;
      v23 = objc_opt_class();
      v43 = v23;
      v24 = AMSLogKey();
      *buf = 138543618;
      v49 = v23;
      v16 = v22;
      v6 = v21;
      v5 = v20;
      v15 = v45;
      v50 = 2114;
      v51 = v24;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully created the snapshot.", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!v17)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v37 = [v18 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v44 = v42;
      v38 = AMSLogKey();
      AMSHashIfNeeded(v6);
      v39 = v46 = v16;
      *buf = 138543874;
      v49 = v42;
      v50 = 2114;
      v51 = v38;
      v52 = 2114;
      v53 = v39;
      _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create the snapshot. error = %{public}@", buf, 0x20u);

      v16 = v46;
    }

    v40 = *(a1 + 40);
    v41 = AMSError(205, @"Cannot Create Snapshot", @"We failed to create the snapshot.", v16);
    (*(v40 + 16))(v40, 0, v41);
  }

LABEL_26:
}

- (NSString)descriptionExtended
{
  v3 = [(AMSBag *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  v5 = [(AMSBag *)self dataSource];
  v6 = v5;
  if (v4)
  {
    [v5 descriptionExtended];
  }

  else
  {
    [v5 description];
  }
  v7 = ;

  return v7;
}

- (void)setDefaultValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSBag *)self dataSource];
  [v8 setDefaultValue:v7 forKey:v6];
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:0];

  return v7;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:1];

  return v7;
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:2];

  return v7;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:3];

  return v7;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:4];

  return v7;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:5];

  return v7;
}

- (id)URLForKey:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AMSBagValue alloc];
  v9 = [(AMSBag *)self dataSource];
  v10 = [(AMSBagValue *)v8 initWithDataSource:v9 key:v7 valueType:5 account:v6];

  return v10;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:6];

  return v7;
}

- (id)_temporaryDictionary
{
  v3 = objc_alloc_init(AMSMutablePromise);
  objc_initWeak(&location, self);
  v4 = [(AMSBag *)self dataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__AMSBag__temporaryDictionary__block_invoke;
  v9[3] = &unk_1E73B4148;
  objc_copyWeak(&v11, &location);
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 loadWithCompletion:v9];

  v6 = v10;
  v7 = v5;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __30__AMSBag__temporaryDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v8 = *(a1 + 40);
    v9 = [v5 data];
    [v8 finishWithResult:v9];
  }

  else
  {
    v10 = +[AMSLogConfig sharedBagConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = AMSLogKey();
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to retrieve temporary dictionary because we failed to load the bag.", &v16, 0x16u);
    }

    v15 = *(a1 + 40);
    v9 = AMSError(203, @"Bag Load Failed", @"Unable to retrieve temporary dictionary because we failed to load the bag.", v6);
    [v15 finishWithError:v9];
  }
}

+ (id)_bagForProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5 accountProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"AMSBag.m" lineNumber:474 description:{@"Unexpected nil reference: %s", "profile"}];

    if (v12)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:a1 file:@"AMSBag.m" lineNumber:475 description:{@"Unexpected nil reference: %s", "profileVersion"}];

  if (v14)
  {
LABEL_4:
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:a1 file:@"AMSBag.m" lineNumber:476 description:{@"Unexpected nil reference: %s", "accountProvider"}];

  if (!v13)
  {
LABEL_5:
    v13 = +[AMSProcessInfo currentProcess];
  }

LABEL_6:
  v15 = [AMSBagNetworkDataSource requestPartialIdentifierForClientInfo:v13 profile:v11 profileVersion:v12];
  v16 = [v14 identity];
  v17 = [v13 accountMediaType];
  v18 = [a1 bagCache];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __68__AMSBag__bagForProfile_profileVersion_processInfo_accountProvider___block_invoke;
  v28[3] = &unk_1E73B4190;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = a2;
  v34 = a1;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  v23 = [v18 bagWithIdentifier:v15 accountProviderIdentity:v16 accountMediaType:v17 orCreateUsingBlock:v28];

  return v23;
}

AMSBag *__68__AMSBag__bagForProfile_profileVersion_processInfo_accountProvider___block_invoke(void *a1)
{
  v2 = [[AMSBagNetworkDataSource alloc] initWithProfile:a1[4] profileVersion:a1[5] processInfo:a1[6] accountProvider:a1[7]];
  v3 = [[AMSBag alloc] initWithDataSource:v2 shouldConfigureDataSourceHandlers:1];
  v4 = [(AMSBag *)v3 dataSource];
  [v4 loadWithCompletion:&__block_literal_global_120];

  if (!v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a1[8] object:a1[9] file:@"AMSBag.m" lineNumber:499 description:{@"Unexpected nil reference: %s", "bag"}];
  }

  return v3;
}

void __38__AMSBag__configureDataSourceHandlers__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[AMSLogConfig sharedBagConfig];
  v3 = v2;
  if (WeakRetained)
  {
    if (!v2)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The bag was invalidated. Posting a notification.", buf, 0x16u);
    }

    v7 = [WeakRetained profile];
    v12[1] = @"profileVersion";
    v13[0] = v7;
    v8 = [WeakRetained profileVersion];
    v13[1] = v8;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"AMSBagInvalidatedNotification" object:WeakRetained userInfo:v3];
  }

  else
  {
    if (!v2)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v3 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] dataSourceDataInvalidatedHandler was called, but the owning bag was deallocated after the handler was called. No AMSBagInvalidatedNotification will be posted.", buf, 0x16u);
    }
  }
}

- (id)_availableValuesFromCachedData:(id)a3 keys:(id)a4 partialIdentifier:(id)a5 expirationDate:(id)a6 updateHandler:(id)a7 outToken:(unint64_t *)a8
{
  v51 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v42 = a5;
  v40 = a7;
  v15 = a6;
  v16 = [v14 mutableCopy];
  v17 = MEMORY[0x1E695DFD8];
  v18 = [v13 allKeys];
  v19 = [v17 setWithArray:v18];
  [v16 intersectSet:v19];

  v20 = [v16 count];
  v21 = [v14 count];
  v22 = +[AMSLogConfig sharedBagConfig];
  if (!v22)
  {
    v22 = +[AMSLogConfig sharedConfig];
  }

  v23 = [v22 OSLogObject];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v21;
    v39 = v20;
    v24 = AMSLogKey();
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    v27 = v26;
    if (v24)
    {
      v37 = AMSLogKey();
      [v25 stringWithFormat:@"%@: [%@] ", v27, v37];
    }

    else
    {
      [v25 stringWithFormat:@"%@: ", v26];
    }
    v28 = ;
    v29 = AMSHashIfNeeded(v42);
    *buf = 138544130;
    v44 = v28;
    v45 = 2048;
    v46 = v39;
    v47 = 2048;
    v48 = v38;
    v49 = 2114;
    v50 = v29;
    _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Returning %lu cached bag values from a total of %lu. partialBagIdentifier = %{public}@", buf, 0x2Au);
    if (v24)
    {

      v28 = v37;
    }
  }

  v30 = [v13 ams_valuesForKeys:v16];
  v31 = [MEMORY[0x1E695DF00] now];
  v32 = [v15 compare:v31];

  v33 = +[AMSBagPersistenceMetricsTracker trackerForCachedValuesCallWithRequestedValueCount:cachedValueCount:cachedBagWasExpired:](AMSBagPersistenceMetricsTracker, "trackerForCachedValuesCallWithRequestedValueCount:cachedValueCount:cachedBagWasExpired:", [v14 count], objc_msgSend(v16, "count"), v32 == -1);
  v34 = [(AMSBag *)self updateHandlers];
  v35 = [v34 addHandlerWithKeys:v14 initialValues:v30 metricsTracker:v33 handler:v40];

  *a8 = v35;
  [(AMSBag *)self _loadAndPersistBag];

  return v30;
}

- (id)_availableValuesFromPersistedBagData:(id)a3 error:(id)a4 keys:(id)a5 partialIdentifier:(id)a6 updateHandler:(id)a7 outToken:(unint64_t *)a8
{
  v67 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14)
  {
    v19 = [v14 bagDictionary];
    v20 = [v14 expirationDate];
    v21 = [(AMSBag *)self _availableValuesFromCachedData:v19 keys:v16 partialIdentifier:v17 expirationDate:v20 updateHandler:v18 outToken:a8];

    goto LABEL_54;
  }

  v22 = [(AMSBag *)self updateHandlers];
  v23 = [v22 addHandlerWithKeys:v16 initialValues:MEMORY[0x1E695E0F8] handler:v18];

  *a8 = v23;
  if (!v15)
  {
    if (v17)
    {
      v33 = +[AMSUnitTests isRunningUnitTests];
      v34 = +[AMSLogConfig sharedBagConfig];
      v35 = v34;
      if (v33)
      {
        if (!v34)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        v36 = [v35 OSLogObject];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = AMSLogKey();
          v38 = MEMORY[0x1E696AEC0];
          v39 = objc_opt_class();
          v40 = v39;
          if (v37)
          {
            self = AMSLogKey();
            [v38 stringWithFormat:@"%@: [%@] ", v40, self];
          }

          else
          {
            [v38 stringWithFormat:@"%@: ", v39];
          }
          v41 = ;
          *buf = 138543362;
          v64 = v41;
          _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received no error or result data. No data will be returned.", buf, 0xCu);
          if (v37)
          {

            v41 = self;
          }
        }

        v35 = [MEMORY[0x1E696AD88] defaultCenter];
        v45 = +[AMSLogConfig sharedBagConfig];
        [v35 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v45 userInfo:0];
LABEL_52:

        goto LABEL_53;
      }

      if (!v34)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v45 = [v35 OSLogObject];
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_52;
      }

      v46 = AMSLogKey();
      v51 = MEMORY[0x1E696AEC0];
      v52 = objc_opt_class();
      v53 = v52;
      if (v46)
      {
        self = AMSLogKey();
        [v51 stringWithFormat:@"%@: [%@] ", v53, self];
      }

      else
      {
        [v51 stringWithFormat:@"%@: ", v52];
      }
      v50 = ;
      *buf = 138543362;
      v64 = v50;
      v58 = "%{public}@Unexpectedly received no error or result data. No data will be returned.";
      v59 = v45;
      v60 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v35 = +[AMSLogConfig sharedBagConfig];
      if (!v35)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v45 = [v35 OSLogObject];
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      v46 = AMSLogKey();
      v47 = MEMORY[0x1E696AEC0];
      v48 = objc_opt_class();
      v49 = v48;
      if (v46)
      {
        self = AMSLogKey();
        [v47 stringWithFormat:@"%@: [%@] ", v49, self];
      }

      else
      {
        [v47 stringWithFormat:@"%@: ", v48];
      }
      v50 = ;
      *buf = 138543362;
      v64 = v50;
      v58 = "%{public}@Data source didn't provide a loading identifier. No cached data will be returned.";
      v59 = v45;
      v60 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_192869000, v59, v60, v58, buf, 0xCu);
    if (v46)
    {

      v50 = self;
    }

    goto LABEL_52;
  }

  IsEqual = AMSErrorIsEqual(v15, @"AMSErrorDomain", 7);
  v25 = +[AMSLogConfig sharedBagConfig];
  v26 = v25;
  if (IsEqual)
  {
    if (!v25)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v28 = AMSLogKey();
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    v31 = v30;
    if (v28)
    {
      v62 = AMSLogKey();
      [v29 stringWithFormat:@"%@: [%@] ", v31, v62];
    }

    else
    {
      [v29 stringWithFormat:@"%@: ", v30];
    }
    v32 = ;
    v54 = AMSHashIfNeeded(v17);
    *buf = 138543618;
    v64 = v32;
    v65 = 2114;
    v66 = v54;
    v55 = "%{public}@Failed to load persisted bag because one wasn't found on file system. Returning empty dictionary. partialBagIdentifier = %{public}@";
    v56 = v27;
    v57 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!v25)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    v28 = AMSLogKey();
    v42 = MEMORY[0x1E696AEC0];
    v43 = objc_opt_class();
    v44 = v43;
    if (v28)
    {
      v62 = AMSLogKey();
      [v42 stringWithFormat:@"%@: [%@] ", v44, v62];
    }

    else
    {
      [v42 stringWithFormat:@"%@: ", v43];
    }
    v32 = ;
    v54 = AMSHashIfNeeded(v17);
    *buf = 138543618;
    v64 = v32;
    v65 = 2114;
    v66 = v54;
    v55 = "%{public}@Failed to load persisted bag for reading cached values. partialBagIdentifier = %{public}@";
    v56 = v27;
    v57 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_192869000, v56, v57, v55, buf, 0x16u);
  if (v28)
  {

    v32 = v62;
  }

LABEL_39:
  [(AMSBag *)self _loadAndPersistBag];
  +[AMSBagPersistenceMetricsTracker trackCachedValuesUnavailableWithRequestedValueCount:](AMSBagPersistenceMetricsTracker, "trackCachedValuesUnavailableWithRequestedValueCount:", [v16 count]);
LABEL_53:
  v21 = MEMORY[0x1E695E0F8];
LABEL_54:

  return v21;
}

- (void)_persistBagDictionary:(id)a3 withIdentifier:(id)a4 partialIdentifier:(id)a5 expirationDate:(id)a6 onlyIfPreExisting:(BOOL)a7
{
  v161 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v150 = a5;
  v13 = a6;
  v14 = [(AMSBag *)self persistence];

  v149 = v13;
  if (!v14)
  {
    v15 = +[AMSUnitTests isRunningUnitTests];
    v16 = 0x1E73B0000uLL;
    v17 = +[AMSLogConfig sharedBagConfig];
    v18 = v17;
    v19 = v12;
    if (v15)
    {
      if (!v17)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v18 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = AMSLogKey();
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v24 = v23;
        v139 = v11;
        if (v21)
        {
          v145 = AMSLogKey();
          [v22 stringWithFormat:@"%@: [%@] ", v24, v145];
        }

        else
        {
          [v22 stringWithFormat:@"%@: ", v23];
        }
        v25 = ;
        v32 = AMSHashIfNeeded(@"self.persistence");
        v33 = AMSHashIfNeeded(@"persistence was unexpectedly nil.");
        *buf = 138543874;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        *&buf[22] = 2114;
        v158 = v33;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v21)
        {

          v25 = v145;
        }

        v11 = v139;
        v13 = v149;
      }

      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      v26 = +[AMSLogConfig sharedBagConfig];
      [v18 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v26 userInfo:0];
    }

    else
    {
      if (!v17)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v18 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = AMSLogKey();
        v28 = MEMORY[0x1E696AEC0];
        v29 = objc_opt_class();
        v30 = v29;
        v140 = v11;
        if (v27)
        {
          v16 = AMSLogKey();
          [v28 stringWithFormat:@"%@: [%@] ", v30, v16];
        }

        else
        {
          [v28 stringWithFormat:@"%@: ", v29];
        }
        v31 = ;
        v34 = AMSHashIfNeeded(@"self.persistence");
        v35 = AMSHashIfNeeded(@"persistence was unexpectedly nil.");
        *buf = 138543874;
        *&buf[4] = v31;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        *&buf[22] = 2114;
        v158 = v35;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v27)
        {

          v31 = v16;
        }

        v11 = v140;
        v13 = v149;
      }
    }

    v12 = v19;
  }

  v36 = [(AMSBag *)self persistenceQueue];

  if (!v36)
  {
    v146 = v12;
    v37 = +[AMSUnitTests isRunningUnitTests];
    v38 = +[AMSLogConfig sharedBagConfig];
    v39 = v38;
    if (v37)
    {
      if (!v38)
      {
        v39 = +[AMSLogConfig sharedConfig];
      }

      v40 = [v39 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = AMSLogKey();
        v42 = MEMORY[0x1E696AEC0];
        v43 = objc_opt_class();
        v44 = v43;
        v141 = v11;
        if (v41)
        {
          v138 = AMSLogKey();
          [v42 stringWithFormat:@"%@: [%@] ", v44, v138];
        }

        else
        {
          [v42 stringWithFormat:@"%@: ", v43];
        }
        v45 = ;
        v53 = AMSHashIfNeeded(@"self.persistenceQueue");
        v54 = AMSHashIfNeeded(@"persistenceQueue was unexpectedly nil.");
        *buf = 138543874;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v53;
        *&buf[22] = 2114;
        v158 = v54;
        _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v41)
        {

          v45 = v138;
        }

        v11 = v141;
        v13 = v149;
      }

      v39 = [MEMORY[0x1E696AD88] defaultCenter];
      v46 = +[AMSLogConfig sharedBagConfig];
      [v39 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v46 userInfo:0];
    }

    else
    {
      if (!v38)
      {
        v39 = +[AMSLogConfig sharedConfig];
      }

      v46 = [v39 OSLogObject];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        v47 = AMSLogKey();
        v48 = MEMORY[0x1E696AEC0];
        v49 = objc_opt_class();
        v50 = v49;
        v51 = v11;
        if (v47)
        {
          v138 = AMSLogKey();
          [v48 stringWithFormat:@"%@: [%@] ", v50, v138];
        }

        else
        {
          [v48 stringWithFormat:@"%@: ", v49];
        }
        v52 = ;
        v55 = AMSHashIfNeeded(@"self.persistenceQueue");
        v56 = AMSHashIfNeeded(@"persistenceQueue was unexpectedly nil.");
        *buf = 138543874;
        *&buf[4] = v52;
        *&buf[12] = 2114;
        *&buf[14] = v55;
        *&buf[22] = 2114;
        v158 = v56;
        _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v47)
        {

          v52 = v138;
        }

        v11 = v51;
        v13 = v149;
      }
    }

    v12 = v146;
  }

  if (v14)
  {
    v57 = v36 == 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = !v57;
  if (!v12)
  {
    v59 = +[AMSUnitTests isRunningUnitTests];
    v60 = +[AMSLogConfig sharedBagConfig];
    v61 = v60;
    if (v59)
    {
      if (!v60)
      {
        v61 = +[AMSLogConfig sharedConfig];
      }

      v62 = [v61 OSLogObject];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = AMSLogKey();
        v64 = MEMORY[0x1E696AEC0];
        v65 = objc_opt_class();
        v66 = v65;
        v142 = v11;
        if (v63)
        {
          v12 = AMSLogKey();
          [v64 stringWithFormat:@"%@: [%@] ", v66, v12];
        }

        else
        {
          [v64 stringWithFormat:@"%@: ", v65];
        }
        v67 = ;
        v75 = AMSHashIfNeeded(@"identifier");
        v76 = AMSHashIfNeeded(@"identifier argument was unexpectedly nil.");
        *buf = 138543874;
        *&buf[4] = v67;
        *&buf[12] = 2114;
        *&buf[14] = v75;
        *&buf[22] = 2114;
        v158 = v76;
        _os_log_impl(&dword_192869000, v62, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v63)
        {

          v67 = v12;
        }

        v11 = v142;
        v12 = 0;
        v13 = v149;
      }

      v61 = [MEMORY[0x1E696AD88] defaultCenter];
      v68 = +[AMSLogConfig sharedBagConfig];
      [v61 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v68 userInfo:0];
    }

    else
    {
      if (!v60)
      {
        v61 = +[AMSLogConfig sharedConfig];
      }

      v68 = [v61 OSLogObject];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        v69 = AMSLogKey();
        v70 = MEMORY[0x1E696AEC0];
        v71 = objc_opt_class();
        v72 = v71;
        v73 = v11;
        if (v69)
        {
          v12 = AMSLogKey();
          [v70 stringWithFormat:@"%@: [%@] ", v72, v12];
        }

        else
        {
          [v70 stringWithFormat:@"%@: ", v71];
        }
        v74 = ;
        v77 = AMSHashIfNeeded(@"identifier");
        v78 = AMSHashIfNeeded(@"identifier argument was unexpectedly nil.");
        *buf = 138543874;
        *&buf[4] = v74;
        *&buf[12] = 2114;
        *&buf[14] = v77;
        *&buf[22] = 2114;
        v158 = v78;
        _os_log_impl(&dword_192869000, v68, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v69)
        {

          v74 = v12;
        }

        v11 = v73;
        v12 = 0;
        v13 = v149;
      }
    }
  }

  if (!v12)
  {
    v58 = 0;
  }

  if (!v13)
  {
    v79 = +[AMSUnitTests isRunningUnitTests];
    v80 = +[AMSLogConfig sharedBagConfig];
    v81 = v80;
    if (v79)
    {
      if (!v80)
      {
        v81 = +[AMSLogConfig sharedConfig];
      }

      v82 = [v81 OSLogObject];
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v147 = v12;
        v83 = AMSLogKey();
        v84 = MEMORY[0x1E696AEC0];
        v85 = objc_opt_class();
        v86 = v85;
        v143 = v11;
        if (v83)
        {
          v12 = AMSLogKey();
          [v84 stringWithFormat:@"%@: [%@] ", v86, v12];
        }

        else
        {
          [v84 stringWithFormat:@"%@: ", v85];
        }
        v87 = ;
        v95 = AMSHashIfNeeded(@"expirationDate");
        v96 = AMSHashIfNeeded(@"expirationDate argument was unexpectedly nil.");
        *buf = 138543874;
        *&buf[4] = v87;
        *&buf[12] = 2114;
        *&buf[14] = v95;
        *&buf[22] = 2114;
        v158 = v96;
        _os_log_impl(&dword_192869000, v82, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v83)
        {

          v87 = v12;
        }

        v11 = v143;
        v12 = v147;
        v13 = v149;
      }

      v81 = [MEMORY[0x1E696AD88] defaultCenter];
      v88 = +[AMSLogConfig sharedBagConfig];
      [v81 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v88 userInfo:0];
    }

    else
    {
      if (!v80)
      {
        v81 = +[AMSLogConfig sharedConfig];
      }

      v88 = [v81 OSLogObject];
      if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
      {
        v148 = v12;
        v89 = AMSLogKey();
        v90 = MEMORY[0x1E696AEC0];
        v91 = objc_opt_class();
        v92 = v91;
        v93 = v11;
        if (v89)
        {
          v12 = AMSLogKey();
          [v90 stringWithFormat:@"%@: [%@] ", v92, v12];
        }

        else
        {
          [v90 stringWithFormat:@"%@: ", v91];
        }
        v94 = ;
        v97 = AMSHashIfNeeded(@"expirationDate");
        v98 = AMSHashIfNeeded(@"expirationDate argument was unexpectedly nil.");
        *buf = 138543874;
        *&buf[4] = v94;
        *&buf[12] = 2114;
        *&buf[14] = v97;
        *&buf[22] = 2114;
        v158 = v98;
        _os_log_impl(&dword_192869000, v88, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v89)
        {

          v94 = v12;
        }

        v11 = v93;
        v12 = v148;
        v13 = v149;
      }
    }
  }

  if ([v12 length])
  {
    v99 = v58 ^ 1;
    if (!v13)
    {
      v99 = 1;
    }

    if ((v99 & 1) == 0)
    {
      v100 = 0x1E73B0000uLL;
      v101 = +[AMSLogConfig sharedBagConfig];
      if (!v101)
      {
        v101 = +[AMSLogConfig sharedConfig];
      }

      v102 = [v101 OSLogObject];
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = v11;
        v104 = AMSLogKey();
        v105 = MEMORY[0x1E696AEC0];
        v106 = objc_opt_class();
        v107 = v106;
        if (v104)
        {
          v100 = AMSLogKey();
          [v105 stringWithFormat:@"%@: [%@] ", v107, v100];
        }

        else
        {
          [v105 stringWithFormat:@"%@: ", v106];
        }
        v108 = ;
        v127 = AMSHashIfNeeded(v12);
        *buf = 138543618;
        *&buf[4] = v108;
        *&buf[12] = 2114;
        *&buf[14] = v127;
        _os_log_impl(&dword_192869000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@Enqueuing async bag persistence. bagIdentifier = %{public}@", buf, 0x16u);
        if (v104)
        {

          v108 = v100;
        }

        v11 = v103;
        v13 = v149;
      }

      v128 = [(AMSBag *)self persistenceQueue];
      v151[0] = MEMORY[0x1E69E9820];
      v151[1] = 3221225472;
      v151[2] = __98__AMSBag__persistBagDictionary_withIdentifier_partialIdentifier_expirationDate_onlyIfPreExisting___block_invoke;
      v151[3] = &unk_1E73B4208;
      v151[4] = self;
      v152 = v12;
      v153 = v13;
      v156 = a7;
      v154 = v150;
      v155 = v11;
      v129 = v151;
      v130 = AMSLogKey();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __AMSDispatchAsync_block_invoke_0;
      v158 = &unk_1E73B36D0;
      v159 = v130;
      v160 = v129;
      v131 = v130;
      dispatch_async(v128, buf);
    }
  }

  else
  {
    v109 = +[AMSUnitTests isRunningUnitTests];
    v110 = +[AMSLogConfig sharedBagConfig];
    v111 = v110;
    if (v109)
    {
      if (!v110)
      {
        v111 = +[AMSLogConfig sharedConfig];
      }

      v112 = [v111 OSLogObject];
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        v113 = v12;
        v114 = AMSLogKey();
        v115 = MEMORY[0x1E696AEC0];
        v116 = objc_opt_class();
        v117 = v116;
        v118 = v11;
        if (v114)
        {
          self = AMSLogKey();
          [v115 stringWithFormat:@"%@: [%@] ", v117, self];
        }

        else
        {
          [v115 stringWithFormat:@"%@: ", v116];
        }
        v119 = ;
        v132 = AMSHashIfNeeded(@"identifier.length > 0");
        v133 = AMSHashIfNeeded(@"'identifier' must be non-empty in order to persist a bag.");
        *buf = 138543874;
        *&buf[4] = v119;
        *&buf[12] = 2114;
        *&buf[14] = v132;
        *&buf[22] = 2114;
        v158 = v133;
        _os_log_impl(&dword_192869000, v112, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v114)
        {

          v119 = self;
        }

        v11 = v118;
        v12 = v113;
      }

      v134 = [MEMORY[0x1E696AD88] defaultCenter];
      v135 = +[AMSLogConfig sharedBagConfig];
      [v134 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v135 userInfo:0];

      v13 = v149;
    }

    else
    {
      if (!v110)
      {
        v111 = +[AMSLogConfig sharedConfig];
      }

      v120 = [v111 OSLogObject];
      if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
      {
        v121 = AMSLogKey();
        v122 = MEMORY[0x1E696AEC0];
        v123 = objc_opt_class();
        v124 = v123;
        v125 = v11;
        if (v121)
        {
          self = AMSLogKey();
          [v122 stringWithFormat:@"%@: [%@] ", v124, self];
        }

        else
        {
          [v122 stringWithFormat:@"%@: ", v123];
        }
        v126 = ;
        v136 = AMSHashIfNeeded(@"identifier.length > 0");
        v137 = AMSHashIfNeeded(@"'identifier' must be non-empty in order to persist a bag.");
        *buf = 138543874;
        *&buf[4] = v126;
        *&buf[12] = 2114;
        *&buf[14] = v136;
        *&buf[22] = 2114;
        v158 = v137;
        _os_log_impl(&dword_192869000, v120, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v121)
        {

          v126 = self;
        }

        v11 = v125;
        v13 = v149;
      }
    }
  }
}

void __98__AMSBag__persistBagDictionary_withIdentifier_partialIdentifier_expirationDate_onlyIfPreExisting___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedBagConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      v1 = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v8, v1];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    v10 = AMSHashIfNeeded(*(a1 + 40));
    *buf = 138543618;
    v41 = v9;
    v42 = 2114;
    v43 = v10;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting enqueued async bag persistence. bagIdentifier = %{public}@", buf, 0x16u);
    if (v5)
    {

      v9 = v1;
    }
  }

  v11 = [*(a1 + 32) persistence];
  v12 = *(a1 + 40);
  v39 = 0;
  v13 = [v11 underlyingDataFor:v12 error:&v39];
  v14 = v39;

  if (v13)
  {
    v15 = [v13 expirationDate];
    v16 = [v15 compare:*(a1 + 48)];

    if (v16 != -1)
    {
      v17 = +[AMSLogConfig sharedBagConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = AMSLogKey();
        v21 = AMSHashIfNeeded(*(a1 + 40));
        *buf = 138543874;
        v41 = v19;
        v42 = 2114;
        v43 = v20;
        v44 = 2114;
        v45 = v21;
        v22 = "%{public}@: [%{public}@] Bag won't be persisted since the expiration date is earlier than an existing persisted one. bagIdentifier = %{public}@";
LABEL_16:
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, v22, buf, 0x20u);

LABEL_35:
        goto LABEL_42;
      }

      goto LABEL_42;
    }
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  if (!AMSErrorIsEqual(v14, @"AMSErrorDomain", 7))
  {
    v17 = +[AMSLogConfig sharedBagConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v20 = AMSLogKey();
      v34 = AMSLogableError(v14);
      v35 = AMSHashIfNeeded(*(a1 + 40));
      *buf = 138544130;
      v41 = v33;
      v42 = 2114;
      v43 = v20;
      v44 = 2114;
      v45 = v34;
      v46 = 2114;
      v47 = v35;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load persisted bag. error = %{public}@ | bagIdentifier = %{public}@", buf, 0x2Au);

      goto LABEL_35;
    }

    goto LABEL_42;
  }

  if (*(a1 + 72) != 1)
  {
LABEL_24:
    v17 = [MEMORY[0x1E695DFA8] setWithObject:*(a1 + 56)];
    if (v13)
    {
      v24 = [v13 aliasKeys];
      [v17 unionSet:v24];
    }

    v18 = [[AMSBagUnderlyingData alloc] initWithFileKey:*(a1 + 40) aliasKeys:v17 bagDictionary:*(a1 + 64) expirationDate:*(a1 + 48)];

    v25 = [*(a1 + 32) persistence];
    v38 = 0;
    [v25 persist:v18 error:&v38];
    v14 = v38;

    v26 = +[AMSLogConfig sharedBagConfig];
    v27 = v26;
    if (v14)
    {
      if (!v26)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v29 = objc_opt_class();
      v30 = AMSLogKey();
      v31 = AMSLogableError(v14);
      v32 = AMSHashIfNeeded(*(a1 + 40));
      *buf = 138544130;
      v41 = v29;
      v42 = 2114;
      v43 = v30;
      v44 = 2114;
      v45 = v31;
      v46 = 2114;
      v47 = v32;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to persist bag. error = %{public}@ | bagIdentifier = %{public}@", buf, 0x2Au);
    }

    else
    {
      if (!v26)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      v36 = objc_opt_class();
      v30 = AMSLogKey();
      v37 = AMSHashIfNeeded(*(a1 + 40));
      *buf = 138543874;
      v41 = v36;
      v42 = 2114;
      v43 = v30;
      v44 = 2114;
      v45 = v37;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully persisted bag. bagIdentifier = %{public}@", buf, 0x20u);
    }

LABEL_41:
    goto LABEL_42;
  }

  v17 = +[AMSLogConfig sharedBagConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v20 = AMSLogKey();
    v21 = AMSHashIfNeeded(*(a1 + 40));
    *buf = 138543874;
    v41 = v23;
    v42 = 2114;
    v43 = v20;
    v44 = 2114;
    v45 = v21;
    v22 = "%{public}@: [%{public}@] Bag won't be persisted as an existing persisted bag wasn't found. bagIdentifier = %{public}@";
    goto LABEL_16;
  }

LABEL_42:
}

+ (void)resetBagCache
{
  v2 = [a1 bagCache];
  [v2 removeAll];
}

- (void)waitUntilPersistenceWorkComplete
{
  v2 = self;
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(AMSBag *)self persistenceQueue];

  if (v3)
  {
    v4 = [v2 persistenceQueue];
    dispatch_sync(v4, &__block_literal_global_162);

    v5 = +[AMSLogConfig sharedBagConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = AMSLogKey();
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        v2 = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v10, v2];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      *buf = 138543362;
      v13 = v11;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Finished waiting for any pending persistence work.", buf, 0xCu);
      if (v7)
      {

        v11 = v2;
      }
    }
  }
}

- (id)URLFromURLString:(id)a3 account:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = objc_alloc_init(AMSBagActiveAccountProvider);
    v9 = [(AMSBag *)self processInfo];
    v10 = [v9 accountMediaType];
    v7 = [(AMSBagActiveAccountProvider *)v8 bagAccountForAccountMediaType:v10];
  }

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __35__AMSBag_URLFromURLString_account___block_invoke;
  v26 = &unk_1E73B4230;
  v27 = self;
  v11 = v7;
  v28 = v11;
  v12 = [AMSBagURLParser URLBySubstitutingVariablesInURLString:v6 usingBlock:&v23];
  if (!v12)
  {
    v13 = +[AMSLogConfig sharedBagConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        self = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, self, v23, v24, v25, v26, v27];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      v20 = AMSHashIfNeeded(v6);
      v21 = AMSHashIfNeeded(v11);
      *buf = 138543874;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      v33 = 2114;
      v34 = v21;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create template-substituted URL. URL = %{public}@ | account = %{public}@", buf, 0x20u);
      if (v15)
      {

        v19 = self;
      }
    }
  }

  return v12;
}

id __35__AMSBag_URLFromURLString_account___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSource];
  v6 = [v5 valueForURLVariable:v4 account:*(a1 + 40)];

  return v6;
}

@end