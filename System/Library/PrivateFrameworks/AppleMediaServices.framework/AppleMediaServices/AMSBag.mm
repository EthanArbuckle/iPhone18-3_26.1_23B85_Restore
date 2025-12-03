@interface AMSBag
+ (AMSBagCache)bagCache;
+ (id)_bagForProfile:(id)profile profileVersion:(id)version processInfo:(id)info accountProvider:(id)provider;
+ (id)bagForProfile:(id)profile profileVersion:(id)version;
+ (id)bagForProfile:(id)profile profileVersion:(id)version processInfo:(id)info;
+ (id)bagForProfile:(id)profile profileVersion:(id)version processInfo:(id)info account:(id)account;
+ (id)sharedPersistenceQueue;
+ (id)sharedPersistenceWithDefaultDirectory;
+ (void)resetBagCache;
- (AMSBag)initWithDataSource:(id)source persistenceDirectoryURL:(id)l persistenceQueue:(id)queue changeHandlerQueue:(id)handlerQueue shouldConfigureDataSourceHandlers:(BOOL)handlers;
- (AMSBag)initWithDataSource:(id)source shouldConfigureDataSourceHandlers:(BOOL)handlers;
- (AMSProcessInfo)processInfo;
- (BOOL)isExpired;
- (BOOL)isLoaded;
- (BOOL)persistenceIsEnabled;
- (NSDate)expirationDate;
- (NSString)description;
- (NSString)descriptionExtended;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)URLForKey:(id)key account:(id)account;
- (id)URLFromURLString:(id)string account:(id)account;
- (id)_availableValuesFromCachedData:(id)data keys:(id)keys partialIdentifier:(id)identifier expirationDate:(id)date updateHandler:(id)handler outToken:(unint64_t *)token;
- (id)_availableValuesFromPersistedBagData:(id)data error:(id)error keys:(id)keys partialIdentifier:(id)identifier updateHandler:(id)handler outToken:(unint64_t *)token;
- (id)_initWithDataSource:(id)source persistence:(id)persistence persistenceQueue:(id)queue updateHandlers:(id)handlers shouldConfigureDataSourceHandlers:(BOOL)sourceHandlers;
- (id)_temporaryDictionary;
- (id)arrayForKey:(id)key;
- (id)cachedValuesForKeys:(id)keys observationToken:(unint64_t *)token updateHandler:(id)handler;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)_configureDataSourceHandlers;
- (void)_loadAndPersistBag;
- (void)_persistBagDictionary:(id)dictionary withIdentifier:(id)identifier partialIdentifier:(id)partialIdentifier expirationDate:(id)date onlyIfPreExisting:(BOOL)existing;
- (void)createSnapshotWithCompletion:(id)completion;
- (void)removeObserverWithToken:(unint64_t)token;
- (void)setDefaultValue:(id)value forKey:(id)key;
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
  dataSource = [(AMSBag *)self dataSource];
  [dataSource setDataSourceChangedHandler:v7];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AMSBag__configureDataSourceHandlers__block_invoke_2;
  v5[3] = &unk_1E73B41E0;
  objc_copyWeak(&v6, &location);
  dataSource2 = [(AMSBag *)self dataSource];
  [dataSource2 setDataSourceDataInvalidatedHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (NSString)description
{
  dataSource = [(AMSBag *)self dataSource];
  v3 = [dataSource description];

  return v3;
}

- (BOOL)persistenceIsEnabled
{
  persistence = [(AMSBag *)self persistence];
  v3 = persistence != 0;

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

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Calling loadWithCompletion.", buf, 0xCu);
    if (v6)
    {

      v10 = v2;
    }
  }

  dataSource = [(AMSBag *)self dataSource];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__AMSBag__loadAndPersistBag__block_invoke;
  v12[3] = &unk_1E73B40F8;
  v12[4] = self;
  [dataSource loadWithCompletion:v12];
}

- (BOOL)isExpired
{
  expirationDate = [(AMSBag *)self expirationDate];
  if (expirationDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = [date compare:expirationDate] == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSDate)expirationDate
{
  dataSource = [(AMSBag *)self dataSource];
  expirationDate = [dataSource expirationDate];

  return expirationDate;
}

- (NSString)profile
{
  dataSource = [(AMSBag *)self dataSource];
  profile = [dataSource profile];

  return profile;
}

- (NSString)profileVersion
{
  dataSource = [(AMSBag *)self dataSource];
  profileVersion = [dataSource profileVersion];

  return profileVersion;
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
  dataSource = [(AMSBag *)self dataSource];
  processInfo = [dataSource processInfo];

  return processInfo;
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

- (AMSBag)initWithDataSource:(id)source persistenceDirectoryURL:(id)l persistenceQueue:(id)queue changeHandlerQueue:(id)handlerQueue shouldConfigureDataSourceHandlers:(BOOL)handlers
{
  handlersCopy = handlers;
  sourceCopy = source;
  lCopy = l;
  queueCopy = queue;
  handlerQueueCopy = handlerQueue;
  if (sourceCopy)
  {
    if (lCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:106 description:{@"Unexpected nil reference: %s", "dataSource"}];

    if (lCopy)
    {
LABEL_3:
      if (queueCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:108 description:{@"Unexpected nil reference: %s", "persistenceQueue"}];

      if (handlerQueueCopy)
      {
        goto LABEL_5;
      }

LABEL_9:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:109 description:{@"Unexpected nil reference: %s", "changeHandlerQueue"}];

      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:107 description:{@"Unexpected nil reference: %s", "persistenceDirectoryURL"}];

  if (!queueCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!handlerQueueCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = [[AMSBagUnderlyingDataPersistence alloc] initWithDirectoryURL:lCopy];
  v18 = [[AMSBagCachedValueUpdateHandlers alloc] initWithHandlerQueue:handlerQueueCopy];
  v19 = [(AMSBag *)self _initWithDataSource:sourceCopy persistence:v17 persistenceQueue:queueCopy updateHandlers:v18 shouldConfigureDataSourceHandlers:handlersCopy];

  return v19;
}

- (AMSBag)initWithDataSource:(id)source shouldConfigureDataSourceHandlers:(BOOL)handlers
{
  handlersCopy = handlers;
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:121 description:{@"Unexpected nil reference: %s", "dataSource"}];
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
  v11 = [(AMSBag *)self _initWithDataSource:sourceCopy persistence:v8 persistenceQueue:v9 updateHandlers:v10 shouldConfigureDataSourceHandlers:handlersCopy];

  return v11;
}

- (id)_initWithDataSource:(id)source persistence:(id)persistence persistenceQueue:(id)queue updateHandlers:(id)handlers shouldConfigureDataSourceHandlers:(BOOL)sourceHandlers
{
  sourceHandlersCopy = sourceHandlers;
  sourceCopy = source;
  persistenceCopy = persistence;
  queueCopy = queue;
  handlersCopy = handlers;
  v17 = handlersCopy;
  if (sourceCopy)
  {
    if (handlersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:139 description:{@"Unexpected nil reference: %s", "dataSource"}];

    if (v17)
    {
LABEL_3:
      if (!persistenceCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:140 description:{@"Unexpected nil reference: %s", "updateHandlers"}];

  if (!persistenceCopy)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (!queueCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = @"'persistenceQueue' must be provided if 'persistence' is provided.";
    v28 = currentHandler3;
    v25 = a2;
    selfCopy2 = self;
    v27 = 141;
    goto LABEL_13;
  }

LABEL_5:
  if (!persistenceCopy && queueCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = @"'persistence' must be provided if 'persistenceQueue' is provided.";
    v28 = currentHandler3;
    v25 = a2;
    selfCopy2 = self;
    v27 = 142;
LABEL_13:
    [currentHandler3 handleFailureInMethod:v25 object:selfCopy2 file:@"AMSBag.m" lineNumber:v27 description:v24];
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

    objc_storeStrong(&v18->_dataSource, source);
    objc_storeStrong(&v18->_persistence, persistence);
    v18->_persistenceAPIWasCalled = 0;
    objc_storeStrong(&v18->_persistenceQueue, queue);
    v18->_updateHandlerConsistencyLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v18->_updateHandlers, handlers);
    if (sourceHandlersCopy)
    {
      [(AMSBag *)v18 _configureDataSourceHandlers];
    }
  }

  return v18;
}

+ (id)bagForProfile:(id)profile profileVersion:(id)version
{
  versionCopy = version;
  profileCopy = profile;
  v7 = [objc_opt_class() bagForProfile:profileCopy profileVersion:versionCopy processInfo:0];

  return v7;
}

+ (id)bagForProfile:(id)profile profileVersion:(id)version processInfo:(id)info
{
  infoCopy = info;
  versionCopy = version;
  profileCopy = profile;
  v10 = objc_opt_class();
  v11 = objc_alloc_init(AMSBagActiveAccountProvider);
  v12 = [v10 _bagForProfile:profileCopy profileVersion:versionCopy processInfo:infoCopy accountProvider:v11];

  return v12;
}

+ (id)bagForProfile:(id)profile profileVersion:(id)version processInfo:(id)info account:(id)account
{
  accountCopy = account;
  infoCopy = info;
  versionCopy = version;
  profileCopy = profile;
  v13 = objc_opt_class();
  v14 = [[AMSBagFixedAccountProvider alloc] initWithAccount:accountCopy];

  v15 = [v13 _bagForProfile:profileCopy profileVersion:versionCopy processInfo:infoCopy accountProvider:v14];

  return v15;
}

- (BOOL)isLoaded
{
  dataSource = [(AMSBag *)self dataSource];
  isLoaded = [dataSource isLoaded];

  return isLoaded;
}

- (id)cachedValuesForKeys:(id)keys observationToken:(unint64_t *)token updateHandler:(id)handler
{
  v87 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  handlerCopy = handler;
  if (!keysCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:236 description:@"The 'keys' set must be provided."];
  }

  if (![keysCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:237 description:@"The 'keys' set must not be empty."];
  }

  if ([keysCopy ams_allWithTest:&__block_literal_global_58])
  {
    if (token)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:240 description:@"Every value in the 'keys' set must be a non-empty string."];

    if (token)
    {
      goto LABEL_7;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:241 description:@"An 'outToken' pointer must be provided."];

LABEL_7:
  if (!handlerCopy)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:242 description:@"An 'updateHandler' block must be provided."];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_2;
  aBlock[3] = &unk_1E73B40A8;
  aBlock[4] = self;
  aBlock[5] = token;
  v57 = _Block_copy(aBlock);
  [(AMSBag *)self setPersistenceAPIWasCalled:1];
  os_unfair_lock_lock(&self->_updateHandlerConsistencyLock);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_87;
  v78[3] = &unk_1E73B3680;
  v78[4] = self;
  v10 = _Block_copy(v78);
  dataSource = [(AMSBag *)self dataSource];
  bagLoadingPartialIdentifier = [dataSource bagLoadingPartialIdentifier];

  dataSource2 = [(AMSBag *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    dataSource3 = [(AMSBag *)self dataSource];
    v77 = 0;
    v15 = [dataSource3 loadedValuesForKeys:keysCopy outExpirationDate:&v77];
    v16 = v77;

    if (v15)
    {
      v17 = [(AMSBag *)self _availableValuesFromCachedData:v15 keys:keysCopy partialIdentifier:bagLoadingPartialIdentifier expirationDate:v16 updateHandler:handlerCopy outToken:token];

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

    oSLogObject = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Persistence is not enabled. No cached values will be returned from cachedValuesForKeys:.", &buf, 0xCu);
      if (v30)
      {

        v33 = v27;
      }
    }

    updateHandlers = [(AMSBag *)self updateHandlers];
    *token = [updateHandlers addHandlerWithKeys:keysCopy initialValues:MEMORY[0x1E695E0F8] handler:handlerCopy];

    dataSource4 = [(AMSBag *)self dataSource];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_91;
    v59[3] = &unk_1E73B40F8;
    v59[4] = self;
    [dataSource4 loadWithCompletion:v59];

    v17 = MEMORY[0x1E695E0F8];
    goto LABEL_61;
  }

  persistenceQueue = [(AMSBag *)self persistenceQueue];
  v19 = persistenceQueue == 0;

  if (v19)
  {
    if (+[AMSUnitTests isRunningUnitTests])
    {
      v34 = +[AMSLogConfig sharedBagConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v34 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Persistence was enabled but persisteneQueue was unexpectedly nil. No persisted bag will be loaded.", &buf, 0xCu);
        if (v36)
        {

          v39 = v13;
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject3 = +[AMSLogConfig sharedBagConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject3 userInfo:0];
    }

    else
    {
      defaultCenter = +[AMSLogConfig sharedBagConfig];
      if (!defaultCenter)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_FAULT))
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
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_FAULT, "%{public}@Persistence was enabled but persisteneQueue was unexpectedly nil. No persisted bag will be loaded.", &buf, 0xCu);
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
    persistenceQueue2 = [(AMSBag *)self persistenceQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AMSBag_cachedValuesForKeys_observationToken_updateHandler___block_invoke_90;
    block[3] = &unk_1E73B40D0;
    block[4] = self;
    p_buf = &buf;
    v17 = bagLoadingPartialIdentifier;
    v61 = v17;
    v63 = &v71;
    v64 = &v65;
    dispatch_sync(persistenceQueue2, block);

    v21 = *(*(&buf + 1) + 40);
    if (v21)
    {
      v22 = 0x1E73B0000uLL;
      v23 = +[AMSLogConfig sharedBagConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@Preloaded persisted bag data was found and will be returned from cachedValuesForKeys:.", v80, 0xCu);
        if (v55)
        {

          v26 = v22;
        }
      }

      v17 = [(AMSBag *)self _availableValuesFromPersistedBagData:*(*(&buf + 1) + 40) error:0 keys:keysCopy partialIdentifier:v17 updateHandler:handlerCopy outToken:token];
    }

    _Block_object_dispose(&buf, 8);
    if (v21)
    {
      goto LABEL_61;
    }
  }

  v17 = [(AMSBag *)self _availableValuesFromPersistedBagData:v72[5] error:v66[5] keys:keysCopy partialIdentifier:bagLoadingPartialIdentifier updateHandler:handlerCopy outToken:token];
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

- (void)removeObserverWithToken:(unint64_t)token
{
  updateHandlers = [(AMSBag *)self updateHandlers];
  [updateHandlers removeHandlerWithToken:token];
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = +[AMSLogConfig sharedConfigOversize];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSLogKey();
    *buf = 138543874;
    v19 = v7;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to create a snapshot. originalBag = %{public}@", buf, 0x20u);
  }

  v10 = AMSLogKey();
  objc_initWeak(buf, self);
  dataSource = [(AMSBag *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__AMSBag_createSnapshotWithCompletion___block_invoke;
  v14[3] = &unk_1E73B4120;
  objc_copyWeak(&v17, buf);
  v12 = v10;
  v15 = v12;
  v13 = completionCopy;
  v16 = v13;
  [dataSource loadWithCompletion:v14];

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
  dataSource = [(AMSBag *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  dataSource2 = [(AMSBag *)self dataSource];
  v6 = dataSource2;
  if (v4)
  {
    [dataSource2 descriptionExtended];
  }

  else
  {
    [dataSource2 description];
  }
  v7 = ;

  return v7;
}

- (void)setDefaultValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  dataSource = [(AMSBag *)self dataSource];
  [dataSource setDefaultValue:valueCopy forKey:keyCopy];
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:0];

  return v7;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:1];

  return v7;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:2];

  return v7;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:3];

  return v7;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:4];

  return v7;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:5];

  return v7;
}

- (id)URLForKey:(id)key account:(id)account
{
  accountCopy = account;
  keyCopy = key;
  v8 = [AMSBagValue alloc];
  dataSource = [(AMSBag *)self dataSource];
  v10 = [(AMSBagValue *)v8 initWithDataSource:dataSource key:keyCopy valueType:5 account:accountCopy];

  return v10;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:6];

  return v7;
}

- (id)_temporaryDictionary
{
  v3 = objc_alloc_init(AMSMutablePromise);
  objc_initWeak(&location, self);
  dataSource = [(AMSBag *)self dataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__AMSBag__temporaryDictionary__block_invoke;
  v9[3] = &unk_1E73B4148;
  objc_copyWeak(&v11, &location);
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [dataSource loadWithCompletion:v9];

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

+ (id)_bagForProfile:(id)profile profileVersion:(id)version processInfo:(id)info accountProvider:(id)provider
{
  profileCopy = profile;
  versionCopy = version;
  infoCopy = info;
  providerCopy = provider;
  if (profileCopy)
  {
    if (versionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:474 description:{@"Unexpected nil reference: %s", "profile"}];

    if (versionCopy)
    {
LABEL_3:
      if (providerCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:475 description:{@"Unexpected nil reference: %s", "profileVersion"}];

  if (providerCopy)
  {
LABEL_4:
    if (infoCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"AMSBag.m" lineNumber:476 description:{@"Unexpected nil reference: %s", "accountProvider"}];

  if (!infoCopy)
  {
LABEL_5:
    infoCopy = +[AMSProcessInfo currentProcess];
  }

LABEL_6:
  v15 = [AMSBagNetworkDataSource requestPartialIdentifierForClientInfo:infoCopy profile:profileCopy profileVersion:versionCopy];
  identity = [providerCopy identity];
  accountMediaType = [infoCopy accountMediaType];
  bagCache = [self bagCache];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __68__AMSBag__bagForProfile_profileVersion_processInfo_accountProvider___block_invoke;
  v28[3] = &unk_1E73B4190;
  v29 = profileCopy;
  v30 = versionCopy;
  v31 = infoCopy;
  v32 = providerCopy;
  v33 = a2;
  selfCopy = self;
  v19 = providerCopy;
  v20 = infoCopy;
  v21 = versionCopy;
  v22 = profileCopy;
  v23 = [bagCache bagWithIdentifier:v15 accountProviderIdentity:identity accountMediaType:accountMediaType orCreateUsingBlock:v28];

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

- (id)_availableValuesFromCachedData:(id)data keys:(id)keys partialIdentifier:(id)identifier expirationDate:(id)date updateHandler:(id)handler outToken:(unint64_t *)token
{
  v51 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keysCopy = keys;
  identifierCopy = identifier;
  handlerCopy = handler;
  dateCopy = date;
  v16 = [keysCopy mutableCopy];
  v17 = MEMORY[0x1E695DFD8];
  allKeys = [dataCopy allKeys];
  v19 = [v17 setWithArray:allKeys];
  [v16 intersectSet:v19];

  v20 = [v16 count];
  v21 = [keysCopy count];
  v22 = +[AMSLogConfig sharedBagConfig];
  if (!v22)
  {
    v22 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v22 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v29 = AMSHashIfNeeded(identifierCopy);
    *buf = 138544130;
    v44 = v28;
    v45 = 2048;
    v46 = v39;
    v47 = 2048;
    v48 = v38;
    v49 = 2114;
    v50 = v29;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Returning %lu cached bag values from a total of %lu. partialBagIdentifier = %{public}@", buf, 0x2Au);
    if (v24)
    {

      v28 = v37;
    }
  }

  v30 = [dataCopy ams_valuesForKeys:v16];
  v31 = [MEMORY[0x1E695DF00] now];
  v32 = [dateCopy compare:v31];

  v33 = +[AMSBagPersistenceMetricsTracker trackerForCachedValuesCallWithRequestedValueCount:cachedValueCount:cachedBagWasExpired:](AMSBagPersistenceMetricsTracker, "trackerForCachedValuesCallWithRequestedValueCount:cachedValueCount:cachedBagWasExpired:", [keysCopy count], objc_msgSend(v16, "count"), v32 == -1);
  updateHandlers = [(AMSBag *)self updateHandlers];
  v35 = [updateHandlers addHandlerWithKeys:keysCopy initialValues:v30 metricsTracker:v33 handler:handlerCopy];

  *token = v35;
  [(AMSBag *)self _loadAndPersistBag];

  return v30;
}

- (id)_availableValuesFromPersistedBagData:(id)data error:(id)error keys:(id)keys partialIdentifier:(id)identifier updateHandler:(id)handler outToken:(unint64_t *)token
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  errorCopy = error;
  keysCopy = keys;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (dataCopy)
  {
    bagDictionary = [dataCopy bagDictionary];
    expirationDate = [dataCopy expirationDate];
    v21 = [(AMSBag *)self _availableValuesFromCachedData:bagDictionary keys:keysCopy partialIdentifier:identifierCopy expirationDate:expirationDate updateHandler:handlerCopy outToken:token];

    goto LABEL_54;
  }

  updateHandlers = [(AMSBag *)self updateHandlers];
  v23 = [updateHandlers addHandlerWithKeys:keysCopy initialValues:MEMORY[0x1E695E0F8] handler:handlerCopy];

  *token = v23;
  if (!errorCopy)
  {
    if (identifierCopy)
    {
      v33 = +[AMSUnitTests isRunningUnitTests];
      v34 = +[AMSLogConfig sharedBagConfig];
      defaultCenter = v34;
      if (v33)
      {
        if (!v34)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
          selfCopy = ;
          *buf = 138543362;
          v64 = selfCopy;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received no error or result data. No data will be returned.", buf, 0xCu);
          if (v37)
          {

            selfCopy = self;
          }
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject2 = +[AMSLogConfig sharedBagConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
LABEL_52:

        goto LABEL_53;
      }

      if (!v34)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
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
      selfCopy2 = ;
      *buf = 138543362;
      v64 = selfCopy2;
      v58 = "%{public}@Unexpectedly received no error or result data. No data will be returned.";
      v59 = oSLogObject2;
      v60 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      defaultCenter = +[AMSLogConfig sharedBagConfig];
      if (!defaultCenter)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
      selfCopy2 = ;
      *buf = 138543362;
      v64 = selfCopy2;
      v58 = "%{public}@Data source didn't provide a loading identifier. No cached data will be returned.";
      v59 = oSLogObject2;
      v60 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_192869000, v59, v60, v58, buf, 0xCu);
    if (v46)
    {

      selfCopy2 = self;
    }

    goto LABEL_52;
  }

  IsEqual = AMSErrorIsEqual(errorCopy, @"AMSErrorDomain", 7);
  v25 = +[AMSLogConfig sharedBagConfig];
  v26 = v25;
  if (IsEqual)
  {
    if (!v25)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v26 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
    v54 = AMSHashIfNeeded(identifierCopy);
    *buf = 138543618;
    v64 = v32;
    v65 = 2114;
    v66 = v54;
    v55 = "%{public}@Failed to load persisted bag because one wasn't found on file system. Returning empty dictionary. partialBagIdentifier = %{public}@";
    v56 = oSLogObject3;
    v57 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!v25)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v26 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
    v54 = AMSHashIfNeeded(identifierCopy);
    *buf = 138543618;
    v64 = v32;
    v65 = 2114;
    v66 = v54;
    v55 = "%{public}@Failed to load persisted bag for reading cached values. partialBagIdentifier = %{public}@";
    v56 = oSLogObject3;
    v57 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_192869000, v56, v57, v55, buf, 0x16u);
  if (v28)
  {

    v32 = v62;
  }

LABEL_39:
  [(AMSBag *)self _loadAndPersistBag];
  +[AMSBagPersistenceMetricsTracker trackCachedValuesUnavailableWithRequestedValueCount:](AMSBagPersistenceMetricsTracker, "trackCachedValuesUnavailableWithRequestedValueCount:", [keysCopy count]);
LABEL_53:
  v21 = MEMORY[0x1E695E0F8];
LABEL_54:

  return v21;
}

- (void)_persistBagDictionary:(id)dictionary withIdentifier:(id)identifier partialIdentifier:(id)partialIdentifier expirationDate:(id)date onlyIfPreExisting:(BOOL)existing
{
  v161 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  partialIdentifierCopy = partialIdentifier;
  dateCopy = date;
  persistence = [(AMSBag *)self persistence];

  v149 = dateCopy;
  if (!persistence)
  {
    v15 = +[AMSUnitTests isRunningUnitTests];
    v16 = 0x1E73B0000uLL;
    v17 = +[AMSLogConfig sharedBagConfig];
    defaultCenter = v17;
    v19 = identifierCopy;
    if (v15)
    {
      if (!v17)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v21 = AMSLogKey();
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v24 = v23;
        v139 = dictionaryCopy;
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
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v21)
        {

          v25 = v145;
        }

        dictionaryCopy = v139;
        dateCopy = v149;
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedBagConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v17)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v27 = AMSLogKey();
        v28 = MEMORY[0x1E696AEC0];
        v29 = objc_opt_class();
        v30 = v29;
        v140 = dictionaryCopy;
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
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v27)
        {

          v31 = v16;
        }

        dictionaryCopy = v140;
        dateCopy = v149;
      }
    }

    identifierCopy = v19;
  }

  persistenceQueue = [(AMSBag *)self persistenceQueue];

  if (!persistenceQueue)
  {
    v146 = identifierCopy;
    v37 = +[AMSUnitTests isRunningUnitTests];
    v38 = +[AMSLogConfig sharedBagConfig];
    defaultCenter2 = v38;
    if (v37)
    {
      if (!v38)
      {
        defaultCenter2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [defaultCenter2 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v41 = AMSLogKey();
        v42 = MEMORY[0x1E696AEC0];
        v43 = objc_opt_class();
        v44 = v43;
        v141 = dictionaryCopy;
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
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v41)
        {

          v45 = v138;
        }

        dictionaryCopy = v141;
        dateCopy = v149;
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject4 = +[AMSLogConfig sharedBagConfig];
      [defaultCenter2 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject4 userInfo:0];
    }

    else
    {
      if (!v38)
      {
        defaultCenter2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [defaultCenter2 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
      {
        v47 = AMSLogKey();
        v48 = MEMORY[0x1E696AEC0];
        v49 = objc_opt_class();
        v50 = v49;
        v51 = dictionaryCopy;
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
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v47)
        {

          v52 = v138;
        }

        dictionaryCopy = v51;
        dateCopy = v149;
      }
    }

    identifierCopy = v146;
  }

  if (persistence)
  {
    v57 = persistenceQueue == 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = !v57;
  if (!identifierCopy)
  {
    v59 = +[AMSUnitTests isRunningUnitTests];
    v60 = +[AMSLogConfig sharedBagConfig];
    defaultCenter3 = v60;
    if (v59)
    {
      if (!v60)
      {
        defaultCenter3 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [defaultCenter3 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        v63 = AMSLogKey();
        v64 = MEMORY[0x1E696AEC0];
        v65 = objc_opt_class();
        v66 = v65;
        v142 = dictionaryCopy;
        if (v63)
        {
          identifierCopy = AMSLogKey();
          [v64 stringWithFormat:@"%@: [%@] ", v66, identifierCopy];
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
        _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v63)
        {

          v67 = identifierCopy;
        }

        dictionaryCopy = v142;
        identifierCopy = 0;
        dateCopy = v149;
      }

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject6 = +[AMSLogConfig sharedBagConfig];
      [defaultCenter3 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject6 userInfo:0];
    }

    else
    {
      if (!v60)
      {
        defaultCenter3 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject6 = [defaultCenter3 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_FAULT))
      {
        v69 = AMSLogKey();
        v70 = MEMORY[0x1E696AEC0];
        v71 = objc_opt_class();
        v72 = v71;
        v73 = dictionaryCopy;
        if (v69)
        {
          identifierCopy = AMSLogKey();
          [v70 stringWithFormat:@"%@: [%@] ", v72, identifierCopy];
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
        _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v69)
        {

          v74 = identifierCopy;
        }

        dictionaryCopy = v73;
        identifierCopy = 0;
        dateCopy = v149;
      }
    }
  }

  if (!identifierCopy)
  {
    v58 = 0;
  }

  if (!dateCopy)
  {
    v79 = +[AMSUnitTests isRunningUnitTests];
    v80 = +[AMSLogConfig sharedBagConfig];
    defaultCenter4 = v80;
    if (v79)
    {
      if (!v80)
      {
        defaultCenter4 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject7 = [defaultCenter4 OSLogObject];
      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
      {
        v147 = identifierCopy;
        v83 = AMSLogKey();
        v84 = MEMORY[0x1E696AEC0];
        v85 = objc_opt_class();
        v86 = v85;
        v143 = dictionaryCopy;
        if (v83)
        {
          identifierCopy = AMSLogKey();
          [v84 stringWithFormat:@"%@: [%@] ", v86, identifierCopy];
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
        _os_log_impl(&dword_192869000, oSLogObject7, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v83)
        {

          v87 = identifierCopy;
        }

        dictionaryCopy = v143;
        identifierCopy = v147;
        dateCopy = v149;
      }

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject8 = +[AMSLogConfig sharedBagConfig];
      [defaultCenter4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject8 userInfo:0];
    }

    else
    {
      if (!v80)
      {
        defaultCenter4 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject8 = [defaultCenter4 OSLogObject];
      if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_FAULT))
      {
        v148 = identifierCopy;
        v89 = AMSLogKey();
        v90 = MEMORY[0x1E696AEC0];
        v91 = objc_opt_class();
        v92 = v91;
        v93 = dictionaryCopy;
        if (v89)
        {
          identifierCopy = AMSLogKey();
          [v90 stringWithFormat:@"%@: [%@] ", v92, identifierCopy];
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
        _os_log_impl(&dword_192869000, oSLogObject8, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v89)
        {

          v94 = identifierCopy;
        }

        dictionaryCopy = v93;
        identifierCopy = v148;
        dateCopy = v149;
      }
    }
  }

  if ([identifierCopy length])
  {
    v99 = v58 ^ 1;
    if (!dateCopy)
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

      oSLogObject9 = [v101 OSLogObject];
      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
      {
        v103 = dictionaryCopy;
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
        v127 = AMSHashIfNeeded(identifierCopy);
        *buf = 138543618;
        *&buf[4] = v108;
        *&buf[12] = 2114;
        *&buf[14] = v127;
        _os_log_impl(&dword_192869000, oSLogObject9, OS_LOG_TYPE_DEFAULT, "%{public}@Enqueuing async bag persistence. bagIdentifier = %{public}@", buf, 0x16u);
        if (v104)
        {

          v108 = v100;
        }

        dictionaryCopy = v103;
        dateCopy = v149;
      }

      persistenceQueue2 = [(AMSBag *)self persistenceQueue];
      v151[0] = MEMORY[0x1E69E9820];
      v151[1] = 3221225472;
      v151[2] = __98__AMSBag__persistBagDictionary_withIdentifier_partialIdentifier_expirationDate_onlyIfPreExisting___block_invoke;
      v151[3] = &unk_1E73B4208;
      v151[4] = self;
      v152 = identifierCopy;
      v153 = dateCopy;
      existingCopy = existing;
      v154 = partialIdentifierCopy;
      v155 = dictionaryCopy;
      v129 = v151;
      v130 = AMSLogKey();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __AMSDispatchAsync_block_invoke_0;
      v158 = &unk_1E73B36D0;
      v159 = v130;
      v160 = v129;
      v131 = v130;
      dispatch_async(persistenceQueue2, buf);
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

      oSLogObject10 = [v111 OSLogObject];
      if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_ERROR))
      {
        v113 = identifierCopy;
        v114 = AMSLogKey();
        v115 = MEMORY[0x1E696AEC0];
        v116 = objc_opt_class();
        v117 = v116;
        v118 = dictionaryCopy;
        if (v114)
        {
          self = AMSLogKey();
          [v115 stringWithFormat:@"%@: [%@] ", v117, self];
        }

        else
        {
          [v115 stringWithFormat:@"%@: ", v116];
        }
        selfCopy = ;
        v132 = AMSHashIfNeeded(@"identifier.length > 0");
        v133 = AMSHashIfNeeded(@"'identifier' must be non-empty in order to persist a bag.");
        *buf = 138543874;
        *&buf[4] = selfCopy;
        *&buf[12] = 2114;
        *&buf[14] = v132;
        *&buf[22] = 2114;
        v158 = v133;
        _os_log_impl(&dword_192869000, oSLogObject10, OS_LOG_TYPE_ERROR, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v114)
        {

          selfCopy = self;
        }

        dictionaryCopy = v118;
        identifierCopy = v113;
      }

      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      v135 = +[AMSLogConfig sharedBagConfig];
      [defaultCenter5 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v135 userInfo:0];

      dateCopy = v149;
    }

    else
    {
      if (!v110)
      {
        v111 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject11 = [v111 OSLogObject];
      if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_FAULT))
      {
        v121 = AMSLogKey();
        v122 = MEMORY[0x1E696AEC0];
        v123 = objc_opt_class();
        v124 = v123;
        v125 = dictionaryCopy;
        if (v121)
        {
          self = AMSLogKey();
          [v122 stringWithFormat:@"%@: [%@] ", v124, self];
        }

        else
        {
          [v122 stringWithFormat:@"%@: ", v123];
        }
        selfCopy2 = ;
        v136 = AMSHashIfNeeded(@"identifier.length > 0");
        v137 = AMSHashIfNeeded(@"'identifier' must be non-empty in order to persist a bag.");
        *buf = 138543874;
        *&buf[4] = selfCopy2;
        *&buf[12] = 2114;
        *&buf[14] = v136;
        *&buf[22] = 2114;
        v158 = v137;
        _os_log_impl(&dword_192869000, oSLogObject11, OS_LOG_TYPE_FAULT, "%{public}@Assertion failed: %{public}@. Description: %{public}@", buf, 0x20u);
        if (v121)
        {

          selfCopy2 = self;
        }

        dictionaryCopy = v125;
        dateCopy = v149;
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
  bagCache = [self bagCache];
  [bagCache removeAll];
}

- (void)waitUntilPersistenceWorkComplete
{
  selfCopy = self;
  v14 = *MEMORY[0x1E69E9840];
  persistenceQueue = [(AMSBag *)self persistenceQueue];

  if (persistenceQueue)
  {
    persistenceQueue2 = [selfCopy persistenceQueue];
    dispatch_sync(persistenceQueue2, &__block_literal_global_162);

    v5 = +[AMSLogConfig sharedBagConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = AMSLogKey();
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        selfCopy = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v10, selfCopy];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      *buf = 138543362;
      v13 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Finished waiting for any pending persistence work.", buf, 0xCu);
      if (v7)
      {

        v11 = selfCopy;
      }
    }
  }
}

- (id)URLFromURLString:(id)string account:(id)account
{
  v35 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  accountCopy = account;
  if (!accountCopy)
  {
    v8 = objc_alloc_init(AMSBagActiveAccountProvider);
    processInfo = [(AMSBag *)self processInfo];
    accountMediaType = [processInfo accountMediaType];
    accountCopy = [(AMSBagActiveAccountProvider *)v8 bagAccountForAccountMediaType:accountMediaType];
  }

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __35__AMSBag_URLFromURLString_account___block_invoke;
  v26 = &unk_1E73B4230;
  selfCopy = self;
  v11 = accountCopy;
  v28 = v11;
  v12 = [AMSBagURLParser URLBySubstitutingVariablesInURLString:stringCopy usingBlock:&v23];
  if (!v12)
  {
    v13 = +[AMSLogConfig sharedBagConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        self = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, self, v23, v24, v25, v26, selfCopy];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      selfCopy2 = ;
      v20 = AMSHashIfNeeded(stringCopy);
      v21 = AMSHashIfNeeded(v11);
      *buf = 138543874;
      v30 = selfCopy2;
      v31 = 2114;
      v32 = v20;
      v33 = 2114;
      v34 = v21;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to create template-substituted URL. URL = %{public}@ | account = %{public}@", buf, 0x20u);
      if (v15)
      {

        selfCopy2 = self;
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