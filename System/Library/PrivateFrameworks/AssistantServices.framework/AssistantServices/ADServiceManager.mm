@interface ADServiceManager
+ (id)_serviceBundleIDFromServiceReloadNotification:(id)notification;
- (ADServiceManager)init;
- (ADServiceManager)initWithInstanceContext:(id)context;
- (id)_buildFliteredInfoDictionaryFromBundleURL:(id)l;
- (id)_bundleServicesCache;
- (id)_bundleServicesCache:(BOOL *)cache;
- (id)_commandMap;
- (id)_generatedBundleServicesCache;
- (id)_pendingServiceReloadNotifications;
- (id)_serviceMap;
- (id)_syncKeyMap;
- (id)allServices;
- (id)allSyncAnchorKeys;
- (id)allVocabSyncInfo;
- (id)controlCenterLockRestrictedCommands;
- (id)firstUnlockRestrictedCommands;
- (id)lockRestrictedCommands;
- (id)serviceForDomain:(id)domain command:(id)command;
- (id)serviceForIdentifier:(id)identifier;
- (id)serviceForSyncAnchorKey:(id)key;
- (id)servicesThatRequireBootMaintenance;
- (void)_addService:(id)service precedence:(int64_t)precedence;
- (void)_addServiceWithRecord:(id)record;
- (void)_loadServiceFromBundlePath:(id)path infoDictionary:(id)dictionary;
- (void)_loadServicesIfNeeded;
- (void)_reloadServices:(id)services;
- (void)_removeService:(id)service;
- (void)_reprioritizeService:(id)service;
- (void)_writeBundleServicesCache:(id)cache toPath:(id)path;
- (void)cancelOperationsForRequest:(id)request forAssistantID:(id)d fromRemote:(BOOL)remote reason:(int64_t)reason;
- (void)pendServiceReloadNotification:(id)notification;
- (void)preheatBundleServices;
- (void)preheatServicesForDomain:(id)domain;
- (void)reloadServiceForNotification:(id)notification;
- (void)reloadServicesForAllPendingServiceNotifications;
- (void)setCommandCenterClient:(id)client;
@end

@implementation ADServiceManager

- (void)_loadServicesIfNeeded
{
  if (!self->_bundleServicesLoaded)
  {
    _bundleServicesCache = [(ADServiceManager *)self _bundleServicesCache];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000D358C;
    v4[3] = &unk_1005150A0;
    v4[4] = self;
    [_bundleServicesCache enumerateKeysAndObjectsUsingBlock:v4];

    self->_bundleServicesLoaded = 1;
  }
}

- (id)_serviceMap
{
  [(ADServiceManager *)self _loadServicesIfNeeded];
  serviceMap = self->_serviceMap;

  return serviceMap;
}

- (id)allServices
{
  _serviceMap = [(ADServiceManager *)self _serviceMap];
  allValues = [_serviceMap allValues];

  return allValues;
}

- (id)_commandMap
{
  [(ADServiceManager *)self _loadServicesIfNeeded];
  commandMap = self->_commandMap;

  return commandMap;
}

- (id)lockRestrictedCommands
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allServices = [(ADServiceManager *)self allServices];
  v5 = [allServices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allServices);
        }

        lockRestrictedCommands = [*(*(&v11 + 1) + 8 * i) lockRestrictedCommands];
        if (lockRestrictedCommands)
        {
          [v3 addObjectsFromArray:lockRestrictedCommands];
        }
      }

      v6 = [allServices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_reloadServices:(id)services
{
  servicesCopy = services;
  v5 = AFBundleServicesCachePath();
  v35 = 0;
  v6 = [(ADServiceManager *)self _bundleServicesCache:&v35];
  v26 = [v6 mutableCopy];

  if ((v35 & 1) == 0)
  {
    v24 = v5;
    v25 = servicesCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = servicesCopy;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          handle = [v12 handle];
          if (handle)
          {
            v14 = [NSURL fileURLWithPath:handle];
            v15 = [(ADServiceManager *)self _buildFliteredInfoDictionaryFromBundleURL:v14];
            if (v15)
            {
              [v26 setObject:v15 forKey:handle];
              [(ADServiceManager *)self removeService:v12];
              [(ADServiceManager *)self _loadServiceFromBundlePath:handle infoDictionary:v15];
              v35 = 1;
            }

            else
            {
              v17 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v37 = "[ADServiceManager _reloadServices:]";
                v38 = 2114;
                v39 = handle;
                _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unable to create bundle dictionary at from bundle path %{public}@", buf, 0x16u);
              }
            }
          }

          else
          {
            v16 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v37 = "[ADServiceManager _reloadServices:]";
              v38 = 2114;
              v39 = v12;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to reload service (%{public}@), because the service's bundle path wasn't found", buf, 0x16u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v9);
    }

    v5 = v24;
    servicesCopy = v25;
    if (v35 == 1)
    {
      [(ADServiceManager *)self _writeBundleServicesCache:v26 toPath:v24];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v27 + 1) + 8 * j) reload];
          }

          v20 = [v18 countByEnumeratingWithState:&v27 objects:v42 count:16];
        }

        while (v20);
      }

      v23 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v37 = "[ADServiceManager _reloadServices:]";
        v38 = 2114;
        v39 = v18;
        v40 = 2114;
        v41 = v5;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Done reload the following services: %{public}@\nBundle services cache written to: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)reloadServicesForAllPendingServiceNotifications
{
  _pendingServiceReloadNotifications = [(ADServiceManager *)self _pendingServiceReloadNotifications];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_pendingServiceReloadNotifications count]);

  _pendingServiceReloadNotifications2 = [(ADServiceManager *)self _pendingServiceReloadNotifications];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000D25C4;
  v11 = &unk_100519AE8;
  selfCopy = self;
  v13 = v4;
  v6 = v4;
  [_pendingServiceReloadNotifications2 enumerateObjectsUsingBlock:&v8];

  [(ADServiceManager *)self _reloadServices:v6, v8, v9, v10, v11, selfCopy];
  pendingServiceReloadNotifications = self->_pendingServiceReloadNotifications;
  self->_pendingServiceReloadNotifications = 0;
}

- (void)reloadServiceForNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = [ADServiceManager _serviceBundleIDFromServiceReloadNotification:notificationCopy];
    v6 = [(NSMutableDictionary *)self->_serviceMap objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      v14 = v6;
      v8 = [NSArray arrayWithObjects:&v14 count:1];
      [(ADServiceManager *)self _reloadServices:v8];
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "[ADServiceManager reloadServiceForNotification:]";
        v12 = 2114;
        v13 = notificationCopy;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unable to find the service to reload for notification %{public}@", &v10, 0x16u);
      }
    }
  }
}

- (void)pendServiceReloadNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy && [ADServiceManager isReloadServiceNotification:notificationCopy])
  {
    v5 = [ADServiceManager _serviceBundleIDFromServiceReloadNotification:notificationCopy];
    _pendingServiceReloadNotifications = [(ADServiceManager *)self _pendingServiceReloadNotifications];
    v7 = [_pendingServiceReloadNotifications containsObject:v5];

    if (v7)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v11 = 136315650;
        v12 = "[ADServiceManager pendServiceReloadNotification:]";
        v13 = 2114;
        v14 = notificationCopy;
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Service reload notification %{public}@ is already pending for %{public}@, so this one will be ignored", &v11, 0x20u);
      }
    }

    else
    {
      _pendingServiceReloadNotifications2 = [(ADServiceManager *)self _pendingServiceReloadNotifications];
      [_pendingServiceReloadNotifications2 addObject:notificationCopy];
    }
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[ADServiceManager pendServiceReloadNotification:]";
      v13 = 2114;
      v14 = kAFAssistantBundleReloadServiceNotificationSuffix;
      v15 = 2114;
      v16 = notificationCopy;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Bad notification name for reload service. Expecting format to look like <serviceBundleID>%{public}@. Instead, received %{public}@", &v11, 0x20u);
    }
  }
}

- (void)cancelOperationsForRequest:(id)request forAssistantID:(id)d fromRemote:(BOOL)remote reason:(int64_t)reason
{
  remoteCopy = remote;
  requestCopy = request;
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSMutableDictionary *)self->_serviceMap allValues];
  v13 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v17 + 1) + 8 * v16) cancelOperationsForRequestID:requestCopy forAssistantID:dCopy fromRemote:remoteCopy reason:reason];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (id)controlCenterLockRestrictedCommands
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allServices = [(ADServiceManager *)self allServices];
  v5 = [allServices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allServices);
        }

        controlCenterLockRestrictedCommands = [*(*(&v11 + 1) + 8 * i) controlCenterLockRestrictedCommands];
        [v3 addObjectsFromArray:controlCenterLockRestrictedCommands];
      }

      v6 = [allServices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)preheatBundleServices
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_serviceMap allValues];
  v3 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 preheatDomain:0];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)preheatServicesForDomain:(id)domain
{
  domainCopy = domain;
  if (domainCopy)
  {
    _commandMap = [(ADServiceManager *)self _commandMap];
    v6 = [_commandMap objectForKeyedSubscript:domainCopy];

    allValues = [v6 allValues];
    v8 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = allValues;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          object = [*(*(&v16 + 1) + 8 * v13) object];
          service = [object service];

          if (([v8 containsObject:service] & 1) == 0)
          {
            [service preheatDomain:domainCopy];
            [v8 addObject:service];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)setCommandCenterClient:(id)client
{
  clientCopy = client;
  v5 = [(ADServiceManager *)self serviceForIdentifier:@"ADExtensionServiceIdentifier"];
  [v5 setCommandCenterClient:clientCopy];
}

- (id)firstUnlockRestrictedCommands
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allServices = [(ADServiceManager *)self allServices];
  v5 = [allServices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allServices);
        }

        firstUnlockRestrictedCommands = [*(*(&v11 + 1) + 8 * i) firstUnlockRestrictedCommands];
        [v3 addObjectsFromArray:firstUnlockRestrictedCommands];
      }

      v6 = [allServices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allVocabSyncInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(ADServiceManager *)self serviceForIdentifier:@"com.apple.siri.SynapseSyncPlugin"];
  customVocabSyncInfo = [v4 customVocabSyncInfo];
  v6 = +[ADSyncSnapshot sharedInstance];
  [v6 pruneCacheWithCurrentSynapseInfo:customVocabSyncInfo];

  [v3 addEntriesFromDictionary:customVocabSyncInfo];

  return v3;
}

- (id)allSyncAnchorKeys
{
  _syncKeyMap = [(ADServiceManager *)self _syncKeyMap];
  allKeys = [_syncKeyMap allKeys];

  return allKeys;
}

- (id)serviceForSyncAnchorKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    goto LABEL_13;
  }

  _syncKeyMap = [(ADServiceManager *)self _syncKeyMap];
  v6 = [_syncKeyMap objectForKey:keyCopy];

  if (!v6)
  {
    if ([keyCopy isEqualToString:@"com.apple.siri.vocabularyupdates"])
    {
      v13 = [(ADServiceManager *)self serviceForIdentifier:@"com.apple.siri.SynapseSyncPlugin"];
      if (v13)
      {
        v6 = v13;
        goto LABEL_3;
      }
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

LABEL_3:
  v7 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v7 assistantIsEnabled];

  if (assistantIsEnabled)
  {
    goto LABEL_9;
  }

  v9 = keyCopy;
  if (qword_100590920 != -1)
  {
    dispatch_once(&qword_100590920, &stru_10051B070);
  }

  v10 = [qword_100590918 containsObject:v9];

  if (!v10)
  {
LABEL_9:
    v11 = v6;
  }

  else
  {
    v11 = [(ADServiceManager *)self serviceForIdentifier:@"com.apple.siri.sync.DisabledSyncDataToBeDeleted"];

    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = 136315650;
      v16 = "[ADServiceManager serviceForSyncAnchorKey:]";
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Substituting %@ service for %@", &v15, 0x20u);
    }
  }

LABEL_14:

  return v11;
}

- (id)serviceForDomain:(id)domain command:(id)command
{
  domainCopy = domain;
  commandCopy = command;
  _commandMap = [(ADServiceManager *)self _commandMap];
  v9 = [_commandMap objectForKey:domainCopy];

  v10 = [v9 objectForKey:commandCopy];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [v9 objectForKey:domainCopy];
  }

  v12 = v11;

  object = [v12 object];
  service = [object service];

  return service;
}

- (id)serviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _serviceMap = [(ADServiceManager *)self _serviceMap];
  v6 = [_serviceMap objectForKey:identifierCopy];

  return v6;
}

- (id)servicesThatRequireBootMaintenance
{
  _serviceMap = [(ADServiceManager *)self _serviceMap];
  allValues = [_serviceMap allValues];

  v4 = [allValues indexesOfObjectsPassingTest:&stru_100510D88];
  v5 = [allValues objectsAtIndexes:v4];

  return v5;
}

- (id)_pendingServiceReloadNotifications
{
  pendingServiceReloadNotifications = self->_pendingServiceReloadNotifications;
  if (!pendingServiceReloadNotifications)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_pendingServiceReloadNotifications;
    self->_pendingServiceReloadNotifications = v4;

    pendingServiceReloadNotifications = self->_pendingServiceReloadNotifications;
  }

  return pendingServiceReloadNotifications;
}

- (id)_syncKeyMap
{
  [(ADServiceManager *)self _loadServicesIfNeeded];
  syncKeyMap = self->_syncKeyMap;

  return syncKeyMap;
}

- (void)_loadServiceFromBundlePath:(id)path infoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  v8 = objc_opt_class();
  v9 = [dictionaryCopy objectForKey:kCFBundleIdentifierKey];
  if ([v9 isEqual:@"com.apple.siri.SynapseSyncPlugin"])
  {
    v8 = objc_opt_class();
  }

  v10 = [[v8 alloc] initWithBundlePath:pathCopy infoDictionary:dictionaryCopy instanceContext:self->_instanceContext];

  [(ADServiceManager *)self _addService:v10 precedence:1];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[ADServiceManager _loadServiceFromBundlePath:infoDictionary:]";
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Service loaded: %{public}@", &v12, 0x16u);
  }
}

- (id)_bundleServicesCache
{
  v4 = 0;
  v2 = [(ADServiceManager *)self _bundleServicesCache:&v4];

  return v2;
}

- (id)_bundleServicesCache:(BOOL *)cache
{
  v5 = AFBundleServicesCachePath();
  _generatedBundleServicesCache = [[NSMutableDictionary alloc] initWithContentsOfFile:v5];
  v7 = AFBuildVersion();
  v8 = [_generatedBundleServicesCache objectForKey:@"Build"];
  if ([v7 isEqualToString:v8])
  {
    if (_generatedBundleServicesCache)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "[ADServiceManager _bundleServicesCache:]";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s regenerating bundle service cache due to version mismatch %@ %@", &v11, 0x20u);
    }
  }

  _generatedBundleServicesCache = [(ADServiceManager *)self _generatedBundleServicesCache];
  [(ADServiceManager *)self _writeBundleServicesCache:_generatedBundleServicesCache toPath:v5];
  *cache = 1;
LABEL_8:
  [_generatedBundleServicesCache removeObjectForKey:@"Build"];

  return _generatedBundleServicesCache;
}

- (void)_writeBundleServicesCache:(id)cache toPath:(id)path
{
  cacheCopy = cache;
  pathCopy = path;
  v15 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:cacheCopy format:200 options:0 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v14 = v8;
    v10 = [v7 writeToFile:pathCopy options:1 error:&v14];
    v11 = v14;

    if ((v10 & 1) == 0)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "[ADServiceManager _writeBundleServicesCache:toPath:]";
        v18 = 2114;
        v19 = pathCopy;
        v20 = 2114;
        v21 = v11;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Can't write to %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v9 = v11;
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "[ADServiceManager _writeBundleServicesCache:toPath:]";
      v18 = 2112;
      v19 = cacheCopy;
      v20 = 2114;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Can't serialize %@: %{public}@", buf, 0x20u);
    }
  }
}

- (id)_generatedBundleServicesCache
{
  v3 = +[NSFileManager defaultManager];
  v4 = AFServicePluginsURL();
  v5 = +[NSArray array];
  v23 = 0;
  v6 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v5 options:0 error:&v23];
  v18 = v23;

  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count") + 1}];
  v8 = AFBuildVersion();
  if (v8)
  {
    [v7 setObject:v8 forKey:@"Build"];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [(ADServiceManager *)self _buildFliteredInfoDictionaryFromBundleURL:v14];
        if (v15)
        {
          path = [v14 path];
          [v7 setObject:v15 forKey:path];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }

  return v7;
}

- (id)_buildFliteredInfoDictionaryFromBundleURL:(id)l
{
  lCopy = l;
  v4 = +[ADBundleService requiredInfoDictionaryKeys];
  v5 = [v4 count];
  pathExtension = [lCopy pathExtension];
  v7 = [pathExtension isEqualToString:@"assistantBundle"];

  if (v7)
  {
    v8 = [[NSBundle alloc] initWithURL:lCopy];
    bundlePath = [v8 bundlePath];
    v10 = bundlePath;
    if (bundlePath)
    {
      v22 = bundlePath;
      v23 = v8;
      infoDictionary = [v8 infoDictionary];
      v12 = [[NSMutableDictionary alloc] initWithCapacity:v5];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = v4;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            v19 = [infoDictionary objectForKeyedSubscript:v18];
            [v12 setValue:v19 forKey:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }

      v10 = v22;
      v8 = v23;
    }

    else
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[ADServiceManager _buildFliteredInfoDictionaryFromBundleURL:]";
        v31 = 2114;
        v32 = lCopy;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Couldn't create bundle at URL %{public}@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_reprioritizeService:(id)service
{
  serviceCopy = service;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[ADServiceManager _reprioritizeService:]";
    v43 = 2112;
    v44 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  [serviceCopy domains];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v26)
  {
    v24 = *v36;
    do
    {
      v5 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v5;
        v6 = *(*(&v35 + 1) + 8 * v5);
        v7 = [serviceCopy commandsForDomain:v6];
        v30 = [(NSMutableDictionary *)self->_commandMap objectForKey:v6];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v28 = v7;
        v8 = [v28 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v8)
        {
          v9 = v8;
          v29 = *v32;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v32 != v29)
              {
                objc_enumerationMutation(v28);
              }

              v11 = *(*(&v31 + 1) + 8 * i);
              v12 = [v30 objectForKey:v11];
              v13 = v12;
              while (1)
              {
                object = [v13 object];
                precedence = [object precedence];
                object2 = [v12 object];
                precedence2 = [object2 precedence];

                if (precedence != precedence2)
                {
                  v18 = v12;

                  v13 = v18;
                }

                object3 = [v12 object];
                service = [object3 service];

                if (service == serviceCopy)
                {
                  break;
                }

                nextItem = [v12 nextItem];

                v12 = nextItem;
                if (!nextItem)
                {
                  goto LABEL_22;
                }
              }

              if (v12 != v13)
              {
                [v12 removeFromList];
                [v12 insertBeforeItem:v13];
                previousItem = [v12 previousItem];

                if (!previousItem)
                {
                  [v30 setObject:v12 forKey:v11];
                }
              }

LABEL_22:
            }

            v9 = [v28 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v9);
        }

        v5 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v26);
  }
}

- (void)_removeService:(id)service
{
  serviceCopy = service;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v53 = "[ADServiceManager _removeService:]";
    v54 = 2112;
    v55 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  serviceMap = self->_serviceMap;
  identifier = [serviceCopy identifier];
  [(NSMutableDictionary *)serviceMap removeObjectForKey:identifier];

  [serviceCopy domains];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v48 = 0u;
  v34 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v34)
  {
    v32 = *v46;
    selfCopy = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v8;
        v9 = *(*(&v45 + 1) + 8 * v8);
        v10 = [serviceCopy commandsForDomain:v9];
        v35 = v9;
        v11 = [(NSMutableDictionary *)self->_commandMap objectForKey:v9];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v42;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v42 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v41 + 1) + 8 * i);
              v18 = [v11 objectForKey:v17];
              while (1)
              {
                object = [v18 object];
                service = [object service];

                if (service == serviceCopy)
                {
                  break;
                }

                nextItem = [v18 nextItem];

                v18 = nextItem;
                if (!nextItem)
                {
                  goto LABEL_22;
                }
              }

              previousItem = [v18 previousItem];
              nextItem2 = [v18 nextItem];
              [v18 removeFromList];
              if (!previousItem)
              {
                if (nextItem2)
                {
                  [v11 setObject:nextItem2 forKey:v17];
                }

                else
                {
                  [v11 removeObjectForKey:v17];
                }
              }

LABEL_22:
              ;
            }

            v14 = [v12 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v14);
        }

        self = selfCopy;
        if (![v11 count])
        {
          [(NSMutableDictionary *)selfCopy->_commandMap removeObjectForKey:v35];
        }

        v8 = v36 + 1;
      }

      while ((v36 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v34);
  }

  syncKeys = [serviceCopy syncKeys];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = [syncKeys countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(syncKeys);
        }

        v29 = *(*(&v37 + 1) + 8 * j);
        v30 = [(NSMutableDictionary *)self->_syncKeyMap objectForKey:v29];

        if (v30 == serviceCopy)
        {
          [(NSMutableDictionary *)self->_syncKeyMap removeObjectForKey:v29];
        }
      }

      v26 = [syncKeys countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v26);
  }
}

- (void)_addService:(id)service precedence:(int64_t)precedence
{
  serviceCopy = service;
  v7 = [[ADServiceRecord alloc] initWithService:serviceCopy precedence:precedence];

  [(ADServiceManager *)self _addServiceWithRecord:v7];
}

- (void)_addServiceWithRecord:(id)record
{
  recordCopy = record;
  service = [recordCopy service];
  identifier = [service identifier];
  if (identifier)
  {
    v8 = [(NSMutableDictionary *)self->_serviceMap objectForKey:identifier];

    if (v8)
    {
      v32 = +[NSAssertionHandler currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"ADServiceManager.m" lineNumber:93 description:{@"Shouldn't already have a service with identifier %@", identifier}];
    }

    v33 = identifier;
    [(NSMutableDictionary *)self->_serviceMap setObject:service forKey:identifier];
    [service domains];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v54 = 0u;
    v38 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v38)
    {
      v35 = *v52;
      selfCopy = self;
      v37 = service;
      do
      {
        v9 = 0;
        do
        {
          if (*v52 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v9;
          v10 = *(*(&v51 + 1) + 8 * v9);
          v11 = [service commandsForDomain:v10];
          v12 = [(NSMutableDictionary *)self->_commandMap objectForKey:v10];
          v13 = [v12 mutableCopy];

          if (!v13)
          {
            v13 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
            [(NSMutableDictionary *)self->_commandMap setObject:v13 forKey:v10];
          }

          v39 = v10;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v41 = v11;
          v14 = [v41 countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v14)
          {
            v15 = v14;
            v42 = *v48;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v48 != v42)
                {
                  objc_enumerationMutation(v41);
                }

                v17 = *(*(&v47 + 1) + 8 * i);
                v18 = [[AFLinkedListItem alloc] initWithObject:recordCopy];
                nextItem = [v13 objectForKey:v17];
                object = [nextItem object];
                v21 = [recordCopy hasEqualOrHigherPrecedenceThanServiceRecord:object];

                if (v21)
                {
                  v22 = 0;
                }

                else
                {
                  v23 = 0;
                  do
                  {
                    v22 = nextItem;

                    nextItem = [v22 nextItem];

                    object2 = [nextItem object];
                    v25 = [recordCopy hasEqualOrHigherPrecedenceThanServiceRecord:object2];

                    v23 = v22;
                  }

                  while ((v25 & 1) == 0);
                }

                if (nextItem)
                {
                  [v18 insertBeforeItem:nextItem];
                }

                else
                {
                  [v18 insertAfterItem:v22];
                }

                previousItem = [v18 previousItem];

                if (!previousItem)
                {
                  [v13 setObject:v18 forKey:v17];
                }
              }

              v15 = [v41 countByEnumeratingWithState:&v47 objects:v56 count:16];
            }

            while (v15);
          }

          self = selfCopy;
          [(NSMutableDictionary *)selfCopy->_commandMap setObject:v13 forKey:v39];

          v9 = v40 + 1;
          service = v37;
        }

        while ((v40 + 1) != v38);
        v38 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v38);
    }

    syncKeys = [service syncKeys];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = [syncKeys countByEnumeratingWithState:&v43 objects:v55 count:16];
    identifier = v33;
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(syncKeys);
          }

          [(NSMutableDictionary *)self->_syncKeyMap setObject:service forKey:*(*(&v43 + 1) + 8 * j)];
        }

        v29 = [syncKeys countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v29);
    }
  }
}

- (ADServiceManager)init
{
  v3 = +[AFInstanceContext defaultContext];
  v4 = [(ADServiceManager *)self initWithInstanceContext:v3];

  return v4;
}

- (ADServiceManager)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = ADServiceManager;
  v5 = [(ADServiceManager *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    serviceMap = v5->_serviceMap;
    v5->_serviceMap = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    commandMap = v5->_commandMap;
    v5->_commandMap = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    syncKeyMap = v5->_syncKeyMap;
    v5->_syncKeyMap = v10;

    if (contextCopy)
    {
      v12 = contextCopy;
    }

    else
    {
      v12 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v12;
  }

  return v5;
}

+ (id)_serviceBundleIDFromServiceReloadNotification:(id)notification
{
  notificationCopy = notification;
  v4 = notificationCopy;
  if ([ADServiceManager isReloadServiceNotification:notificationCopy])
  {
    v5 = [notificationCopy length];
    v6 = v5 - [kAFAssistantBundleReloadServiceNotificationSuffix length];
    v4 = notificationCopy;
    if (v6 >= 1)
    {
      v4 = [notificationCopy substringToIndex:?];
    }
  }

  return v4;
}

@end