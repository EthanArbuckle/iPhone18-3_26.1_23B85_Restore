@interface PDOperationsManager
- (BOOL)isEDUMAID;
- (PDOperationsManager)init;
- (id)apsConnection;
- (id)apsEnvironmentString;
- (id)issueASMFetchMissingWithDependency:(id)dependency;
- (id)issueASMSyncWithDependency:(id)dependency;
- (id)issueCKBootstrapWithDependency:(id)dependency;
- (id)issueFetchFromCKWithDependency:(id)dependency;
- (id)issueFetchHandoutChangesWithDependency:(id)dependency;
- (id)issueIngestWithDependency:(id)dependency;
- (id)issuePushClassChangesWithDependency:(id)dependency;
- (id)issuePushToCKWithDependency:(id)dependency;
- (id)issueRegisterWithDependency:(id)dependency;
- (id)issueUploadEventsWithDependency:(id)dependency;
- (void)_addOperation:(id)operation onQueue:(id)queue;
- (void)_populateDependencySet:(id)set ofOperation:(id)operation;
- (void)addCompletion:(id)completion toOperation:(id)operation;
- (void)addPriorityOperation:(id)operation;
- (void)addReportErrorBlockToOperation:(id)operation;
- (void)afterBootstrapWithErrorCompletion:(id)completion doBlock:(id)block;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)databaseDataChanged:(id)changed;
- (void)dealloc;
- (void)loadICloudUserIDIfNeeded;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerCloudContainer;
- (void)registerForLockStateChangedDarwinNotification;
- (void)registerPeriodicTasksOnQueue:(id)queue;
- (void)registerPushTopics;
- (void)stopListeningToPushNotifications;
@end

@implementation PDOperationsManager

- (PDOperationsManager)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"The method [%@ %@] is not available.", v3, v4];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)registerCloudContainer
{
  v13 = [CKContainer containerIDForContainerIdentifier:@"com.apple.orion"];
  v3 = objc_alloc_init(CKContainerOptions);
  v4 = sub_10003E1B4();
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  identifier = [v7 identifier];
  if (identifier)
  {
    v9 = [[CKAccountOverrideInfo alloc] initWithAccountID:identifier];
    [v3 setAccountOverrideInfo:v9];
  }

  v10 = sub_10010AE9C();
  [v3 setApplicationBundleIdentifierOverrideForNetworkAttribution:v10];

  v11 = [[CKContainer alloc] initWithContainerID:v13 options:v3];
  cloudContainer = self->_cloudContainer;
  self->_cloudContainer = v11;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_userInteractiveOperationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_operationQueue removeObserver:self forKeyPath:@"operationCount" context:&off_10024BFC0];
  [(NSOperationQueue *)self->_userInteractiveOperationQueue removeObserver:self forKeyPath:@"operationCount" context:&off_10024BFC8];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDOperationsManager;
  [(PDOperationsManager *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_operationQueue == objectCopy)
  {
    v14 = [pathCopy isEqualToString:@"operationCount"];
    if (context == &off_10024BFC0)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (self->_userInteractiveOperationQueue == objectCopy)
  {
    v16 = [pathCopy isEqualToString:@"operationCount"];
    if (context == &off_10024BFC8)
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if ([(NSOperationQueue *)self->_operationQueue operationCount])
  {
    if ((v13 | v15))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  operationCount = [(NSOperationQueue *)self->_userInteractiveOperationQueue operationCount];
  if (((v13 | v15) & 1) == 0)
  {
LABEL_18:
    v20.receiver = self;
    v20.super_class = PDOperationsManager;
    [(PDOperationsManager *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_19;
  }

  if (!operationCount)
  {
    v18 = sub_1000B51E4();
    sub_1000B61E0(v18);

    CLSInitLog();
    v19 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "_operationQueue and _userInteractiveOperationQueue are finished.", buf, 2u);
    }
  }

LABEL_19:
}

- (void)addCompletion:(id)completion toOperation:(id)operation
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100121C2C;
    v7[3] = &unk_1002058F8;
    v8 = completionCopy;
    [operation addOnFinishBlock:v7];
  }
}

- (void)afterBootstrapWithErrorCompletion:(id)completion doBlock:(id)block
{
  completionCopy = completion;
  blockCopy = block;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001226B8;
  v10[3] = &unk_100205970;
  v8 = completionCopy;
  v11 = v8;
  objc_copyWeak(&v13, &location);
  v9 = blockCopy;
  v12 = v9;
  sub_100121CCC(self, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)issueCKBootstrapWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  [(PDOperationsManager *)self loadICloudUserIDIfNeeded];
  v5 = [PDCKBootstrap alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  cloudContainer = [(PDOperationsManager *)self cloudContainer];
  v8 = [(PDCKOperation *)v5 initWithDatabase:WeakRetained container:cloudContainer];

  [(PDCKBootstrap *)v8 setQualityOfService:25];
  if (dependencyCopy)
  {
    [(PDCKBootstrap *)v8 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v8];

  return v8;
}

- (id)issuePushToCKWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v5 = [PDCKPushLocalChanges alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  cloudContainer = [(PDOperationsManager *)self cloudContainer];
  v8 = [(PDCKOperation *)v5 initWithDatabase:WeakRetained container:cloudContainer];

  if (dependencyCopy)
  {
    [(PDCKPushLocalChanges *)v8 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v8];

  return v8;
}

- (id)issueIngestWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v5 = [PDIngestOperation alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(PDURLRequestOperation *)v5 initWithDatabase:WeakRetained];

  if (dependencyCopy)
  {
    [(PDIngestOperation *)v7 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v7];

  return v7;
}

- (id)issuePushClassChangesWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v5 = [PDPushLocalClassChanges alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(PDPushLocalClassChanges *)v5 initWithDatabase:WeakRetained];

  if (dependencyCopy)
  {
    [(PDPushLocalClassChanges *)v7 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v7];

  return v7;
}

- (id)issueRegisterWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v5 = [PDDashboardAppRegisterOperation alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(PDURLRequestOperation *)v5 initWithDatabase:WeakRetained];

  if (dependencyCopy)
  {
    [(PDDashboardAppRegisterOperation *)v7 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v7];

  return v7;
}

- (id)issueFetchFromCKWithDependency:(id)dependency
{
  v4 = [(PDOperationsManager *)self issueCKBootstrapWithDependency:dependency];
  v5 = [PDCKFetchRemoteChanges alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  cloudContainer = [(PDOperationsManager *)self cloudContainer];
  v8 = [(PDCKOperation *)v5 initWithDatabase:WeakRetained container:cloudContainer];

  [(PDCKFetchRemoteChanges *)v8 addDependency:v4];
  [(PDOperationsManager *)self addOperation:v8];

  return v8;
}

- (id)issueASMFetchMissingWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v5 = [PDASMFetchMissingEntitiesOperation alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(PDASMFetchMissingEntitiesOperation *)v5 initWithDatabase:WeakRetained];

  if (dependencyCopy)
  {
    [(PDASMFetchMissingEntitiesOperation *)v7 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v7];

  return v7;
}

- (id)issueASMSyncWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v5 = [PDASMSyncOperation alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(PDASMSyncOperation *)v5 initWithDatabase:WeakRetained];

  if (dependencyCopy)
  {
    [(PDASMSyncOperation *)v7 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v7];

  return v7;
}

- (id)issueFetchHandoutChangesWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v5 = [PDClassZoneGetChanges alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(PDClassZoneGetChanges *)v5 initWithDatabase:WeakRetained];

  if (dependencyCopy)
  {
    [(PDClassZoneGetChanges *)v7 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v7];

  return v7;
}

- (id)issueUploadEventsWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v5 = [PDUploadEventsOperation alloc];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = [(PDURLRequestOperation *)v5 initWithDatabase:WeakRetained];

  if (dependencyCopy)
  {
    [(PDUploadEventsOperation *)v7 addDependency:dependencyCopy];
  }

  [(PDOperationsManager *)self addOperation:v7];

  return v7;
}

- (void)addReportErrorBlockToOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100123E98;
  v5[3] = &unk_100205A60;
  objc_copyWeak(&v6, &location);
  [operationCopy addOnFinishBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_populateDependencySet:(id)set ofOperation:(id)operation
{
  setCopy = set;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dependencies = [operation dependencies];
  v8 = [dependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(dependencies);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [setCopy addObject:v12];
        [(PDOperationsManager *)self _populateDependencySet:setCopy ofOperation:v12];
      }

      v9 = [dependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)addPriorityOperation:(id)operation
{
  operationCopy = operation;
  if (![(PDOperationsManager *)self isInvalidated])
  {
    [operationCopy setQualityOfService:25];
    [(NSOperationQueue *)self->_operationQueue setSuspended:1];
    [(PDOperationsManager *)self addOperation:operationCopy];
    v5 = objc_opt_new();
    [(PDOperationsManager *)self _populateDependencySet:v5 ofOperation:operationCopy];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    operations = [(NSOperationQueue *)self->_operationQueue operations];
    reverseObjectEnumerator = [operations reverseObjectEnumerator];

    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (([v12 isExecuting] & 1) == 0 && (objc_msgSend(v12, "isCancelled") & 1) == 0)
          {
            isFinished = [v12 isFinished];
            if (v12 != operationCopy && (isFinished & 1) == 0 && ([v5 containsObject:v12] & 1) == 0)
            {
              [v12 addDependency:operationCopy];
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
        v9 = v14;
      }

      while (v14);
    }

    [(NSOperationQueue *)self->_operationQueue setSuspended:0];
  }
}

- (void)_addOperation:(id)operation onQueue:(id)queue
{
  operationCopy = operation;
  queueCopy = queue;
  if (![(PDOperationsManager *)self isInvalidated])
  {
    if (sub_100121714(self) || ![operationCopy requiresValidUser])
    {
      [(PDOperationsManager *)self addReportErrorBlockToOperation:operationCopy];
      [operationCopy setManager:self];
      v9 = +[PDUserDefaults sharedDefaults];
      enableVerboseLogging = [v9 enableVerboseLogging];

      if (enableVerboseLogging)
      {
        CLSInitLog();
        v11 = CLSLogOperations;
        if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
        {
          v12 = v11;
          v13 = objc_opt_class();
          v14 = v13;
          operationID = [operationCopy operationID];
          name = [queueCopy name];
          dependencies = [operationCopy dependencies];
          v18 = 138544130;
          v19 = v13;
          v20 = 2114;
          v21 = operationID;
          v22 = 2112;
          v23 = name;
          v24 = 2112;
          v25 = dependencies;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "OPS: queued %{public}@:%{public}@ on %@ dependencies: %@", &v18, 0x2Au);
        }
      }

      [queueCopy addOperation:operationCopy];
    }

    else
    {
      v8 = [NSError cls_createErrorWithCode:1 description:@"Valid user required."];
      [operationCopy abortWithError:v8];
    }
  }
}

- (void)databaseDataChanged:(id)changed
{
  CLSInitLog();
  v4 = CLSLogSync;
  if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "database data changed;", v5, 2u);
  }

  sub_100122748(self, 0);
}

- (void)loadICloudUserIDIfNeeded
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
    if (WeakRetained && sub_100121714(self))
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (selfCopy->_isLoadingICloudUserID)
      {
        objc_sync_exit(selfCopy);
      }

      else
      {
        selfCopy->_isLoadingICloudUserID = 1;
        objc_sync_exit(selfCopy);

        v5 = sub_10016A49C(WeakRetained, @"PDCK_iCloudUserID");
        if ([v5 length])
        {
          v6 = selfCopy;
          objc_sync_enter(v6);
          selfCopy->_isLoadingICloudUserID = 0;
          objc_sync_exit(v6);
        }

        else
        {
          objc_initWeak(&location, selfCopy);
          v7 = selfCopy;
          objc_sync_enter(v7);
          if (!v7->_loadICloudUser)
          {
            v8 = [PDRetry alloc];
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_1001247D8;
            v14[3] = &unk_100205948;
            objc_copyWeak(&v15, &location);
            v9 = sub_100046408(v8, @"loadICloudUserIDIfNeeded", 6, v14);
            loadICloudUser = v7->_loadICloudUser;
            v7->_loadICloudUser = v9;

            objc_destroyWeak(&v15);
          }

          objc_sync_exit(v7);

          v11 = v7->_loadICloudUser;
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100124AF8;
          v12[3] = &unk_100205AB0;
          objc_copyWeak(&v13, &location);
          sub_10004656C(v11, v12);
          objc_destroyWeak(&v13);
          objc_destroyWeak(&location);
        }
      }
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

- (id)apsEnvironmentString
{
  v3 = xpc_copy_entitlement_for_self();
  v4 = v3;
  if (v3)
  {
    v5 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v3)];
  }

  else
  {
    v5 = 0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1001221D4;
  v22 = sub_1001221E4;
  v23 = APSEnvironmentProduction;
  if (v5 && ![v5 compare:CKPushEnvironmentServerPreferred options:1])
  {
    v6 = dispatch_block_create(0, &stru_100205AD0);
    objc_initWeak(location, self);
    v7 = [PDRetry alloc];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100124F20;
    v16[3] = &unk_100205B48;
    objc_copyWeak(&v17, location);
    v16[4] = &v18;
    v8 = sub_100046408(v7, @"apsEnvLookup", 16, v16);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001252DC;
    v14[3] = &unk_100203320;
    v9 = v6;
    v15 = v9;
    sub_10004656C(v8, v14);
    dispatch_block_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  CLSInitLog();
  v10 = CLSLogPush;
  if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEBUG))
  {
    v13 = v19[5];
    LODWORD(location[0]) = 138543362;
    *(location + 4) = v13;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Using APS push environment: %{public}@", location, 0xCu);
  }

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  CLSInitLog();
  v7 = CLSLogPush;
  if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = tokenCopy;
    v10 = 2048;
    v11 = connectionCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Received public token %@ on connection %p", &v8, 0x16u);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  CLSInitLog();
  v13 = CLSLogPush;
  if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138413058;
    v15 = tokenCopy;
    v16 = 2114;
    v17 = topicCopy;
    v18 = 2112;
    v19 = identifierCopy;
    v20 = 2048;
    v21 = connectionCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received per-topic push token %@ for topic %{public}@ identifier %@ on connection %p", &v14, 0x2Au);
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v7 = [CKNotification notificationFromRemoteNotificationDictionary:userInfo];
  v8 = +[PDUserDefaults sharedDefaults];
  enableVerboseLogging = [v8 enableVerboseLogging];

  CLSInitLog();
  v10 = CLSLogPush;
  v11 = os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEBUG);
  if (enableVerboseLogging)
  {
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v10;
    topic = [messageCopy topic];
    v34 = 138543618;
    v35 = topic;
    v36 = 2114;
    v37 = v7;
    v14 = "APS push received: %{public}@ %{public}@";
    v15 = v12;
    v16 = 22;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v10;
    topic = [messageCopy topic];
    v34 = 138543362;
    v35 = topic;
    v14 = "APS push received: %{public}@";
    v15 = v12;
    v16 = 12;
  }

  _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, v14, &v34, v16);

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recordZoneID = [v7 recordZoneID];
    if (!recordZoneID)
    {
      goto LABEL_16;
    }

LABEL_10:
    v19 = recordZoneID;
    if (self)
    {
      if (sub_1001005D4(PDClassZoneGetChanges, v19))
      {
        WeakRetained = objc_loadWeakRetained(&self->_database);
        zoneName = [v19 zoneName];
        if (([WeakRetained entityExistsByClass:objc_opt_class() identity:zoneName] & 1) == 0)
        {
          v22 = objc_opt_new();
          sub_10008122C(v22, zoneName);
          if ([WeakRetained insertObject:v22])
          {
            goto LABEL_24;
          }

          CLSInitLog();
          v23 = CLSLogPush;
          if (!os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          v34 = 138412290;
          v35 = v19;
          v24 = "Failed to mark down zone with zoneID %@";
LABEL_31:
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, &v34, 0xCu);
LABEL_24:

          goto LABEL_25;
        }

        goto LABEL_25;
      }

      zoneName2 = [v19 zoneName];
      v29 = [zoneName2 hasPrefix:@"Class-Roster-"];

      if (v29)
      {
        zoneName3 = [v19 zoneName];
        WeakRetained = [zoneName3 substringFromIndex:{objc_msgSend(@"Class-Roster-", "length")}];

        zoneName = objc_loadWeakRetained(&self->_database);
        if (([zoneName entityExistsByClass:objc_opt_class() identity:WeakRetained] & 1) == 0)
        {
          CLSInitLog();
          v31 = CLSLogPush;
          if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 138477827;
            v35 = WeakRetained;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Push references missing ClassID: %{private}@", &v34, 0xCu);
          }

          v32 = [PDMissingEntityReference alloc];
          v33 = objc_opt_class();
          v22 = sub_10017BC18(&v32->super.isa, WeakRetained, v33, 0, 0);
          if ([zoneName insertOrUpdateObject:v22])
          {
            goto LABEL_24;
          }

          CLSInitLog();
          v23 = CLSLogPush;
          if (!os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          v34 = 138477827;
          v35 = WeakRetained;
          v24 = "Failed to save reference to missing ClassID = %{private}@ ";
          goto LABEL_31;
        }

LABEL_25:
      }
    }

    sub_10012175C(self, 0);
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recordID = [v7 recordID];
    recordZoneID = [recordID zoneID];

    if (recordZoneID)
    {
      goto LABEL_10;
    }
  }

LABEL_16:
  CLSInitLog();
  v25 = CLSLogPush;
  if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEBUG))
  {
    v26 = v25;
    topic2 = [messageCopy topic];
    v34 = 138543618;
    v35 = topic2;
    v36 = 2114;
    v37 = v7;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "APS push NO zoneID received: %{public}@ %{public}@", &v34, 0x16u);
  }

LABEL_27:
}

- (id)apsConnection
{
  if (!self->_apsConnection)
  {
    v3 = [APSConnection alloc];
    apsEnvironmentString = [(PDOperationsManager *)self apsEnvironmentString];
    v5 = sub_1001214FC();
    v6 = [v3 initWithEnvironmentName:apsEnvironmentString namedDelegatePort:@"com.apple.progressd.aps" queue:v5];
    apsConnection = self->_apsConnection;
    self->_apsConnection = v6;

    [(APSConnection *)self->_apsConnection setDelegate:self];
    v8 = self->_apsConnection;
    CLSInitLog();
    v9 = CLSLogPush;
    if (v8)
    {
      if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Created push connection.", v12, 2u);
      }
    }

    else if (os_log_type_enabled(CLSLogPush, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not create a push connection.", buf, 2u);
    }
  }

  v10 = self->_apsConnection;

  return v10;
}

- (void)registerPushTopics
{
  objc_initWeak(&location, self);
  v2 = sub_100125C10();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100125C64;
  v3[3] = &unk_100203000;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)registerForLockStateChangedDarwinNotification
{
  objc_initWeak(&location, self);
  v3 = +[CLSDarwinNotificationCenter defaultCenter];
  objc_opt_self();
  v4 = [NSString stringWithUTF8String:kMobileKeyBagLockStatusNotifyToken];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100125F94;
  v5[3] = &unk_100205B70;
  objc_copyWeak(&v6, &location);
  [v3 addObserver:self notificationName:v4 block:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)stopListeningToPushNotifications
{
  v3 = +[CLSDarwinNotificationCenter defaultCenter];
  objc_opt_self();
  v4 = [NSString stringWithUTF8String:kMobileKeyBagLockStatusNotifyToken];
  [v3 removeObserver:self notificationName:v4];

  v5 = sub_100125C10();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012610C;
  block[3] = &unk_100202D40;
  block[4] = self;
  dispatch_async(v5, block);
}

- (BOOL)isEDUMAID
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_database);
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = sub_1000BA854(WeakRetained);
  if (v3)
  {
    v4 = v3[9];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)registerPeriodicTasksOnQueue:(id)queue
{
  objc_storeStrong(&self->_taskQueue, queue);
  if (sub_100121714(self))
  {
    sub_10012721C(self);
    if (self->_taskQueue)
    {
      objc_initWeak(&location, self);
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_100127500;
      v11 = &unk_100203000;
      objc_copyWeak(&v12, &location);
      v4 = objc_retainBlock(&v8);
      v5 = [PDTaskSchedulerBlockTask alloc];
      v6 = [(PDTaskSchedulerBlockTask *)v5 initWithIdentifier:@"com.apple.progressd.pruneIDs" queue:self->_taskQueue block:v4, v8, v9, v10, v11];
      [(PDTaskSchedulerBlockTask *)v6 setDelay:604800];
      v7 = sub_10006DCEC();
      sub_10006E4A0(v7, v6);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

@end