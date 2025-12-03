@interface AMSEngagementClientData
+ (BOOL)_isDaemon;
+ (NSURL)clientDataURL;
+ (id)_fetchClientData;
+ (id)_sharedQueue;
+ (id)loadFromDisk;
+ (void)_registerNotifications;
+ (void)erase;
- (AMSEngagementClientData)initWithCacheObject:(id)object;
- (BOOL)destination:(id)destination allowsEvent:(id)event;
- (id)_appForIdentifier:(id)identifier;
- (id)cachedResponseDataForEvent:(id)event;
- (id)destinationsForEvent:(id)event;
- (id)destinationsNeedingSyncSinceBuild:(id)build;
- (id)lastSyncedBuildForDestination:(id)destination;
- (void)_enumerateAppsWithBlock:(id)block;
- (void)_setApp:(id)app forIdentifier:(id)identifier;
- (void)addCachedResponseData:(id)data cacheInfo:(id)info appIdentifier:(id)identifier;
- (void)saveToDisk;
- (void)setAllowedEvents:(id)events appIdentifier:(id)identifier;
- (void)setLastSyncedBuild:(id)build appIdentifier:(id)identifier;
@end

@implementation AMSEngagementClientData

+ (id)loadFromDisk
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__26;
  v11 = __Block_byref_object_dispose__26;
  v12 = 0;
  _sharedQueue = [self _sharedQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__AMSEngagementClientData_loadFromDisk__block_invoke;
  v6[3] = &unk_1E73B5F60;
  v6[4] = &v7;
  v6[5] = self;
  dispatch_sync(_sharedQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__AMSEngagementClientData_loadFromDisk__block_invoke(uint64_t a1)
{
  v2 = kSharedInstance;
  if (!kSharedInstance)
  {
    v3 = [*(a1 + 40) _fetchClientData];
    v4 = v3;
    v5 = MEMORY[0x1E695E0F8];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;

    v7 = [[AMSEngagementClientData alloc] initWithCacheObject:v6];
    v8 = kSharedInstance;
    kSharedInstance = v7;

    v2 = kSharedInstance;
  }

  v9 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v9, v2);
}

+ (id)_sharedQueue
{
  if (_MergedGlobals_107 != -1)
  {
    dispatch_once(&_MergedGlobals_107, &__block_literal_global_47);
  }

  v3 = qword_1ED6E2988;

  return v3;
}

void __39__AMSEngagementClientData__sharedQueue__block_invoke()
{
  v2 = dispatch_get_global_queue(0, 0);
  v0 = dispatch_queue_create_with_target_V2("com.apple.AMSEngagementClientData", 0, v2);
  v1 = qword_1ED6E2988;
  qword_1ED6E2988 = v0;
}

+ (id)_fetchClientData
{
  v29 = *MEMORY[0x1E69E9840];
  clientDataURL = [self clientDataURL];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [clientDataURL path];
  v5 = [defaultManager fileExistsAtPath:path];

  if (v5)
  {
    v22 = 0;
    oSLogObject2 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:clientDataURL options:0 error:&v22];
    v7 = v22;
    if (v7)
    {
      v8 = v7;
      v9 = +[AMSLogConfig sharedEngagementConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = AMSLogKey();
        *buf = 138543874;
        v24 = v11;
        v25 = 2114;
        v26 = v12;
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to lookup client data. %{public}@", buf, 0x20u);
      }

      v13 = 0;
      goto LABEL_8;
    }

    if (oSLogObject2)
    {
      v21 = 0;
      v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:oSLogObject2 options:0 error:&v21];
      v8 = v21;
      v9 = v16;
      objc_opt_class();
      v13 = 0;
      if (objc_opt_isKindOfClass())
      {
        v13 = v9;
      }

      if (!v8)
      {
        goto LABEL_9;
      }

      oSLogObject = +[AMSLogConfig sharedEngagementConfig];
      if (!oSLogObject)
      {
        oSLogObject = +[AMSLogConfig sharedConfig];
      }

      v10OSLogObject = [oSLogObject OSLogObject];
      if (os_log_type_enabled(v10OSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        *buf = 138543874;
        v24 = v18;
        v25 = 2114;
        v26 = v19;
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_192869000, v10OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode client data. %{public}@", buf, 0x20u);
      }

LABEL_8:
LABEL_9:

      goto LABEL_25;
    }

    v8 = 0;
  }

  else
  {
    v8 = +[AMSLogConfig sharedEngagementConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No client data", buf, 0x16u);
    }
  }

  v13 = 0;
LABEL_25:

  return v13;
}

+ (NSURL)clientDataURL
{
  ams_engagementDirectory = [MEMORY[0x1E695DFF8] ams_engagementDirectory];
  v3 = [ams_engagementDirectory URLByAppendingPathComponent:@"clientData.txt"];

  return v3;
}

void __49__AMSEngagementClientData__registerNotifications__block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _handleClearCachesNotification, @"AMSEngagementClientDataChanged", 0, CFNotificationSuspensionBehaviorDrop);
}

+ (void)_registerNotifications
{
  if (!+[AMSEngagementClientData _isDaemon])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AMSEngagementClientData__registerNotifications__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (_registerNotifications_onceToken != -1)
    {
      dispatch_once(&_registerNotifications_onceToken, block);
    }
  }
}

+ (BOOL)_isDaemon
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v4 = [processName isEqualToString:@"amsengagementd"];

  return v4;
}

- (AMSEngagementClientData)initWithCacheObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = AMSEngagementClientData;
  v5 = [(AMSEngagementClientData *)&v18 init];
  if (v5)
  {
    v6 = [objectCopy objectForKeyedSubscript:@"lastSyncedBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    lastSyncedBuild = v5->_lastSyncedBuild;
    v5->_lastSyncedBuild = v7;

    v9 = [objectCopy objectForKeyedSubscript:@"apps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__AMSEngagementClientData_initWithCacheObject___block_invoke;
    v16[3] = &unk_1E73B55D8;
    v12 = v11;
    v17 = v12;
    [v10 enumerateKeysAndObjectsUsingBlock:v16];
    apps = v5->_apps;
    v5->_apps = v12;
    v14 = v12;

    +[AMSEngagementClientData _registerNotifications];
  }

  return v5;
}

void __47__AMSEngagementClientData_initWithCacheObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 length];
  if (v9 && v10)
  {
    v11 = [[AMSEngagementAppData alloc] initWithIdentifier:v7 cacheObject:v9];
    if (v11)
    {
      [*(a1 + 32) setObject:v11 forKeyedSubscript:v7];
    }
  }
}

- (void)addCachedResponseData:(id)data cacheInfo:(id)info appIdentifier:(id)identifier
{
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  +[AMSEngagementClientData _assertEngagementd];
  v10 = [(AMSEngagementClientData *)self _appForIdentifier:identifierCopy];
  v11 = [v10 copy];

  if (!v11)
  {
    v11 = [[AMSEngagementAppData alloc] initWithIdentifier:identifierCopy cacheObject:0];
  }

  v12 = [[AMSEngagementAppResponseModel alloc] initWithData:dataCopy cacheInfo:infoCopy];

  if (v12)
  {
    cachedResponses = [(AMSEngagementAppData *)v11 cachedResponses];
    v14 = [cachedResponses arrayByAddingObject:v12];
    [(AMSEngagementAppData *)v11 setCachedResponses:v14];
  }

  [(AMSEngagementClientData *)self _setApp:v11 forIdentifier:identifierCopy];
}

- (void)setAllowedEvents:(id)events appIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  identifierCopy = identifier;
  +[AMSEngagementClientData _assertEngagementd];
  v8 = [(AMSEngagementClientData *)self _appForIdentifier:identifierCopy];
  v9 = [v8 copy];

  if (!v9)
  {
    v9 = [[AMSEngagementAppData alloc] initWithIdentifier:identifierCopy cacheObject:0];
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = eventsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = [AMSEngagementAppEventFilterModel alloc];
        v18 = [(AMSEngagementAppEventFilterModel *)v17 initWithDefinition:v16, v19];
        if (v18)
        {
          [v10 addObject:v18];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(AMSEngagementAppData *)v9 setEventFilters:v10];
  [(AMSEngagementClientData *)self _setApp:v9 forIdentifier:identifierCopy];
}

- (id)cachedResponseDataForEvent:(id)event
{
  eventCopy = event;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__26;
  v18 = __Block_byref_object_dispose__26;
  v19 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __54__AMSEngagementClientData_cachedResponseDataForEvent___block_invoke;
  v11 = &unk_1E73B7540;
  v5 = eventCopy;
  v12 = v5;
  v13 = &v14;
  [(AMSEngagementClientData *)self _enumerateAppsWithBlock:&v8];
  responseData = [v15[5] responseData];

  _Block_object_dispose(&v14, 8);

  return responseData;
}

void __54__AMSEngagementClientData_cachedResponseDataForEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 cachedResponses];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 matchesEvent:*(a1 + 32)])
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
          *a4 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)destination:(id)destination allowsEvent:(id)event
{
  destinationCopy = destination;
  eventCopy = event;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  _sharedQueue = [objc_opt_class() _sharedQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__AMSEngagementClientData_destination_allowsEvent___block_invoke;
  v12[3] = &unk_1E73B7568;
  v12[4] = self;
  v13 = destinationCopy;
  v14 = eventCopy;
  v15 = &v16;
  v9 = eventCopy;
  v10 = destinationCopy;
  dispatch_sync(_sharedQueue, v12);

  LOBYTE(eventCopy) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return eventCopy;
}

void __51__AMSEngagementClientData_destination_allowsEvent___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) apps];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 eventFilters];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) matchesEvent:*(a1 + 48)])
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)lastSyncedBuildForDestination:(id)destination
{
  v3 = [(AMSEngagementClientData *)self _appForIdentifier:destination];
  lastSyncedBuild = [v3 lastSyncedBuild];

  return lastSyncedBuild;
}

- (void)setLastSyncedBuild:(id)build appIdentifier:(id)identifier
{
  identifierCopy = identifier;
  buildCopy = build;
  v8 = [(AMSEngagementClientData *)self _appForIdentifier:identifierCopy];
  v9 = [v8 copy];

  [v9 setLastSyncedBuild:buildCopy];
  [(AMSEngagementClientData *)self _setApp:v9 forIdentifier:identifierCopy];
}

- (id)destinationsNeedingSyncSinceBuild:(id)build
{
  buildCopy = build;
  v5 = [MEMORY[0x1E695DFA8] set];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AMSEngagementClientData_destinationsNeedingSyncSinceBuild___block_invoke;
  v11[3] = &unk_1E73B7590;
  v12 = buildCopy;
  v6 = v5;
  v13 = v6;
  v7 = buildCopy;
  [(AMSEngagementClientData *)self _enumerateAppsWithBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __61__AMSEngagementClientData_destinationsNeedingSyncSinceBuild___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 lastSyncedBuild];
  if (!v6 || (v7 = v6, [v5 lastSyncedBuild], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *(a1 + 32)), v8, v7, (v9 & 1) == 0))
  {
    [*(a1 + 40) addObject:v10];
  }
}

- (id)destinationsForEvent:(id)event
{
  eventCopy = event;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__AMSEngagementClientData_destinationsForEvent___block_invoke;
  v11[3] = &unk_1E73B7590;
  v12 = eventCopy;
  v6 = v5;
  v13 = v6;
  v7 = eventCopy;
  [(AMSEngagementClientData *)self _enumerateAppsWithBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __48__AMSEngagementClientData_destinationsForEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = a3;
  v6 = [v13 eventFilters];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 matchesEvent:*(a1 + 32)])
        {
          if (!v9)
          {
            v9 = [[AMSEngagementDestination alloc] initWithIdentifier:v5];
            [(AMSEngagementDestination *)v9 setAllowsResponse:0];
            [(AMSEngagementDestination *)v9 setComponents:0];
            [*(a1 + 40) addObject:v9];
          }

          -[AMSEngagementDestination setAllowsResponse:](v9, "setAllowsResponse:", [v12 allowsResponse] | -[AMSEngagementDestination allowsResponse](v9, "allowsResponse"));
          -[AMSEngagementDestination setComponents:](v9, "setComponents:", -[AMSEngagementDestination components](v9, "components") | [v12 components]);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }
}

+ (void)erase
{
  v20 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  clientDataURL = [self clientDataURL];
  v13 = 0;
  v5 = [defaultManager removeItemAtURL:clientDataURL error:&v13];
  v6 = v13;

  if ((v5 & 1) == 0)
  {
    if (([v6 code] & 0xFFFFFFFFFFFFFEFFLL) != 4 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", *MEMORY[0x1E696A250]), v7, (v8 & 1) == 0))
    {
      v9 = +[AMSLogConfig sharedEngagementConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = AMSLogKey();
        *buf = 138543874;
        v15 = v11;
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to erase client data: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)saveToDisk
{
  v38 = *MEMORY[0x1E69E9840];
  +[AMSEngagementClientData _assertEngagementd];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  lastSyncedBuild = [(AMSEngagementClientData *)self lastSyncedBuild];
  [v3 setObject:lastSyncedBuild forKeyedSubscript:@"lastSyncedBuild"];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __37__AMSEngagementClientData_saveToDisk__block_invoke;
  v30[3] = &unk_1E73B75B8;
  v6 = v5;
  v31 = v6;
  [(AMSEngagementClientData *)self _enumerateAppsWithBlock:v30];
  [v3 setObject:v6 forKeyedSubscript:@"apps"];
  v7 = +[AMSEngagementClientData clientDataURL];
  uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [defaultManager fileExistsAtPath:path];

  if ((v11 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = 0;
    v13 = [defaultManager2 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v29];
    v14 = v29;

    if (v14 || (v13 & 1) == 0)
    {
      oSLogObject2 = +[AMSLogConfig sharedEngagementConfig];
      if (!oSLogObject2)
      {
        oSLogObject2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [oSLogObject2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v22 = objc_opt_class();
      v17OSLogObject = AMSLogKey();
      *buf = 138543874;
      v33 = v22;
      v34 = 2114;
      v35 = v17OSLogObject;
      v36 = 2114;
      v37 = v14;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error creating directory. %{public}@", buf, 0x20u);
      goto LABEL_18;
    }
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v3])
  {
    v28 = 0;
    oSLogObject2 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v28];
    v14 = v28;
    v16 = +[AMSLogConfig sharedEngagementConfig];
    oSLogObject = v16;
    if (v14)
    {
      if (!v16)
      {
        oSLogObject = +[AMSLogConfig sharedConfig];
      }

      v17OSLogObject = [oSLogObject OSLogObject];
      if (os_log_type_enabled(v17OSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = AMSLogKey();
        *buf = 138543874;
        v33 = v19;
        v34 = 2114;
        v35 = v20;
        v36 = 2114;
        v37 = v14;
        _os_log_impl(&dword_192869000, v17OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failing to serialize client data. %{public}@", buf, 0x20u);
      }

LABEL_18:

      goto LABEL_19;
    }

    if (!v16)
    {
      oSLogObject = +[AMSLogConfig sharedConfig];
    }

    v17OSLogObject2 = [oSLogObject OSLogObject];
    if (os_log_type_enabled(v17OSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543618;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&dword_192869000, v17OSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overwriting client data.", buf, 0x16u);
    }

    path2 = [v7 path];
    [oSLogObject2 writeToFile:path2 atomically:1];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AMSEngagementClientDataChanged", 0, 0, 1u);
    v14 = 0;
  }

  else
  {
    v14 = +[AMSLogConfig sharedEngagementConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      oSLogObject = AMSLogKey();
      *buf = 138543618;
      v33 = v21;
      v34 = 2114;
      v35 = oSLogObject;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failing to validate client data, invalid format.", buf, 0x16u);
LABEL_19:
    }
  }
}

void __37__AMSEngagementClientData_saveToDisk__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 exportObject];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)_appForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26;
  v16 = __Block_byref_object_dispose__26;
  v17 = 0;
  _sharedQueue = [objc_opt_class() _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AMSEngagementClientData__appForIdentifier___block_invoke;
  block[3] = &unk_1E73B75E0;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(_sharedQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__AMSEngagementClientData__appForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) apps];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_enumerateAppsWithBlock:(id)block
{
  blockCopy = block;
  _sharedQueue = [objc_opt_class() _sharedQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AMSEngagementClientData__enumerateAppsWithBlock___block_invoke;
  v7[3] = &unk_1E73B36D0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(_sharedQueue, v7);
}

void __51__AMSEngagementClientData__enumerateAppsWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) apps];
  [v2 enumerateKeysAndObjectsUsingBlock:*(a1 + 40)];
}

- (void)_setApp:(id)app forIdentifier:(id)identifier
{
  appCopy = app;
  identifierCopy = identifier;
  _sharedQueue = [objc_opt_class() _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AMSEngagementClientData__setApp_forIdentifier___block_invoke;
  block[3] = &unk_1E73B71B0;
  block[4] = self;
  v12 = identifierCopy;
  v13 = appCopy;
  v9 = appCopy;
  v10 = identifierCopy;
  dispatch_sync(_sharedQueue, block);
}

void __49__AMSEngagementClientData__setApp_forIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) apps];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

@end