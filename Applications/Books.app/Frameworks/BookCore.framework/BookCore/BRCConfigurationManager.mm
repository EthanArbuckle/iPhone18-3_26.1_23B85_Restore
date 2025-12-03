@interface BRCConfigurationManager
+ (BRCConfigurationManager)sharedInstance;
- (BOOL)waitForCachedConfigurationLoaded:(double)loaded;
- (BRCConfigurationManager)init;
- (id)_cacheURLFromNamespace:(id)namespace;
- (id)_namespaceNamed:(id)named;
- (id)_readFromCacheForNamespace:(id)namespace;
- (id)_valueForKey:(id)key fromNamespaceData:(id)data source:(unint64_t)source;
- (id)allLogicalValuesFromNamespace:(id)namespace allowsOnlyDefaultSource:(BOOL)source;
- (id)jsBridge;
- (id)namespaceInfo;
- (id)rawValueForKey:(id)key fromNamespace:(id)namespace;
- (id)subscribeToKeys:(id)keys inNamespace:(id)namespace callback:(id)callback;
- (id)valueForKey:(id)key fromNamespace:(id)namespace source:(unint64_t)source;
- (void)_clearSubscribers;
- (void)_executeMonitorWithMessage:(id)message data:(id)data;
- (void)_saveToCacheNamespaceData:(id)data withNamespace:(id)namespace;
- (void)_updateNamespace:(id)namespace systemDefaults:(id)defaults configuration:(id)configuration treatmentIDs:(id)ds segmentIDs:(id)iDs segmentSetIDs:(id)setIDs reason:(int64_t)reason;
- (void)addObserver:(id)observer;
- (void)clearNamespace:(id)namespace;
- (void)dealloc;
- (void)disableMonitoring;
- (void)dump:(id)dump;
- (void)enableMonitoring:(id)monitoring;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refreshNamespace:(id)namespace;
- (void)registerNamespace:(id)namespace withDefaults:(id)defaults forBundleID:(id)d;
- (void)removeObserver:(id)observer;
- (void)resetForJavascript;
- (void)setUserID:(id)d;
- (void)setValue:(id)value forKey:(id)key forNamespace:(id)namespace;
- (void)setValue:(id)value forKey:(id)key inNamespace:(id)namespace source:(unint64_t)source;
- (void)subscribe:(id)subscribe toKeys:(id)keys inNamespace:(id)namespace callback:(id)callback;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation BRCConfigurationManager

+ (BRCConfigurationManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12DC0C;
  block[3] = &unk_2C7CA8;
  block[4] = self;
  if (qword_345E80 != -1)
  {
    dispatch_once(&qword_345E80, block);
  }

  v2 = qword_345E88;

  return v2;
}

- (BRCConfigurationManager)init
{
  v25.receiver = self;
  v25.super_class = BRCConfigurationManager;
  v2 = [(BRCConfigurationManager *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = +[NSHashTable hashTableWithWeakObjects];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    data = v3->_data;
    v3->_data = v6;

    v8 = dispatch_get_global_queue(25, 0);
    workerQueue = v3->_workerQueue;
    v3->_workerQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.booksremoteconfig", v10);
    updateQueue = v3->_updateQueue;
    v3->_updateQueue = v11;

    *&v3->_refreshOnRegister = 1;
    v13 = objc_alloc_init(NSMutableArray);
    jsSubscribers = v3->_jsSubscribers;
    v3->_jsSubscribers = v13;

    v15 = +[UIApplication applicationConfigurationDirectory];
    v16 = [NSURL fileURLWithPath:v15];

    v17 = [[RCConfigurationManager alloc] initWithContentDirectoryURL:v16];
    remoteConfigurationManager = v3->_remoteConfigurationManager;
    v3->_remoteConfigurationManager = v17;

    v3->_configurationLoaded = 0;
    v3->_cacheLoaded = 0;
    v19 = objc_alloc_init(NSCondition);
    cacheLoadedCondition = v3->_cacheLoadedCondition;
    v3->_cacheLoadedCondition = v19;

    v21 = [NSUserDefaults alloc];
    v22 = [v21 initWithSuiteName:BUBooksGroupContainerIdentifier];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v22;

    [(NSUserDefaults *)v3->_userDefaults addObserver:v3 forKeyPath:@"BRCIgnoreCache" options:1 context:off_33EEA0];
    [(NSUserDefaults *)v3->_userDefaults addObserver:v3 forKeyPath:@"BRCDisableABTesting" options:1 context:off_33EEA0];
    [(NSUserDefaults *)v3->_userDefaults addObserver:v3 forKeyPath:@"BRCOverrideSegmentIDs" options:1 context:off_33EEA0];
    [(NSUserDefaults *)v3->_userDefaults addObserver:v3 forKeyPath:@"BRCAdditionalSegmentIDs" options:1 context:off_33EEA0];
    [(NSUserDefaults *)v3->_userDefaults addObserver:v3 forKeyPath:@"BRCServerEnv" options:1 context:off_33EEA0];
    [(NSUserDefaults *)v3->_userDefaults addObserver:v3 forKeyPath:@"BRCConfigSource" options:1 context:off_33EEA0];
  }

  return v3;
}

- (void)dealloc
{
  [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"BRCIgnoreCache"];
  [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"BRCDisableABTesting"];
  [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"BRCOverrideSegmentIDs"];
  [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"BRCAdditionalSegmentIDs"];
  [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"BRCServerEnv"];
  [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"BRCConfigSource"];
  v3.receiver = self;
  v3.super_class = BRCConfigurationManager;
  [(BRCConfigurationManager *)&v3 dealloc];
}

- (void)setUserID:(id)d
{
  v5 = self->_userID;
  v6 = [d copy];
  userID = self->_userID;
  self->_userID = v6;

  if ([(NSString *)self->_userID length]&& ![(NSString *)self->_userID isEqualToString:v5])
  {
    data = [(BRCConfigurationManager *)self data];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_12E06C;
    v9[3] = &unk_2CDB18;
    v9[4] = self;
    [data enumerateKeysAndObjectsUsingBlock:v9];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)registerNamespace:(id)namespace withDefaults:(id)defaults forBundleID:(id)d
{
  namespaceCopy = namespace;
  defaultsCopy = defaults;
  dCopy = d;
  v11 = [(BRCConfigurationManager *)self _namespaceNamed:namespaceCopy];
  [v11 setBundleID:dCopy];

  workerQueue = [(BRCConfigurationManager *)self workerQueue];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_12E2A8;
  v19 = &unk_2CBED8;
  selfCopy = self;
  v13 = namespaceCopy;
  v21 = v13;
  v22 = v11;
  v23 = defaultsCopy;
  v14 = defaultsCopy;
  v15 = v11;
  dispatch_sync(workerQueue, &v16);

  if ([(BRCConfigurationManager *)self refreshOnRegister:v16])
  {
    [(BRCConfigurationManager *)self refreshNamespace:v13];
  }
}

- (id)valueForKey:(id)key fromNamespace:(id)namespace source:(unint64_t)source
{
  keyCopy = key;
  namespaceCopy = namespace;
  data = [(BRCConfigurationManager *)self data];
  v11 = [data objectForKey:namespaceCopy];

  if (v11)
  {
    v12 = [(BRCConfigurationManager *)self _valueForKey:keyCopy fromNamespaceData:v11 source:source];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)subscribe:(id)subscribe toKeys:(id)keys inNamespace:(id)namespace callback:(id)callback
{
  subscribeCopy = subscribe;
  keysCopy = keys;
  namespaceCopy = namespace;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  updateQueue = [(BRCConfigurationManager *)self updateQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_12E7F0;
  v19[3] = &unk_2CDB40;
  objc_copyWeak(&v24, &location);
  v20 = namespaceCopy;
  v21 = subscribeCopy;
  v22 = keysCopy;
  v23 = callbackCopy;
  v15 = keysCopy;
  v16 = callbackCopy;
  v17 = subscribeCopy;
  v18 = namespaceCopy;
  dispatch_async(updateQueue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)refreshNamespace:(id)namespace
{
  namespaceCopy = namespace;
  userID = [(BRCConfigurationManager *)self userID];

  if (userID)
  {
    v14 = @"namespace";
    v15 = namespaceCopy;
    v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"refresh requested" data:v6];

    data = [(BRCConfigurationManager *)self data];
    v8 = [data objectForKey:namespaceCopy];

    userID2 = [(BRCConfigurationManager *)self userID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_12EB10;
    v11[3] = &unk_2CDB90;
    v11[4] = self;
    v12 = namespaceCopy;
    v13 = v8;
    v10 = v8;
    [v10 settingsWithUserID:userID2 completion:v11];
  }
}

- (void)resetForJavascript
{
  objc_initWeak(&location, self);
  updateQueue = [(BRCConfigurationManager *)self updateQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12F170;
  v4[3] = &unk_2C8FF8;
  objc_copyWeak(&v5, &location);
  dispatch_async(updateQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)namespaceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  data = [(BRCConfigurationManager *)self data];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12F298;
  v7[3] = &unk_2CDB18;
  v5 = v3;
  v8 = v5;
  [data enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)allLogicalValuesFromNamespace:(id)namespace allowsOnlyDefaultSource:(BOOL)source
{
  sourceCopy = source;
  namespaceCopy = namespace;
  data = [(BRCConfigurationManager *)self data];
  v8 = [data objectForKey:namespaceCopy];

  systemDefaults = [v8 systemDefaults];
  v10 = [systemDefaults copy];

  configuration = [v8 configuration];
  v12 = [configuration copy];

  if ([v12 count])
  {
    v13 = [NSMutableDictionary dictionaryWithDictionary:v10];
    [v13 addEntriesFromDictionary:v12];
    v14 = [v13 copy];
  }

  else if (sourceCopy)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)waitForCachedConfigurationLoaded:(double)loaded
{
  v5 = [NSDate dateWithTimeIntervalSinceNow:?];
  cacheLoadedCondition = [(BRCConfigurationManager *)self cacheLoadedCondition];
  [cacheLoadedCondition lock];

  if (![(BRCConfigurationManager *)self cacheLoaded])
  {
    v7 = BRCConfigLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      loadedCopy = loaded;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "waitForCachedConfigurationLoaded: Waiting for cacheLoaded. timeout: %f", &v21, 0xCu);
    }
  }

  if (![(BRCConfigurationManager *)self cacheLoaded])
  {
    do
    {
      cacheLoadedCondition2 = [(BRCConfigurationManager *)self cacheLoadedCondition];
      v9 = [cacheLoadedCondition2 waitUntilDate:v5];
    }

    while (![(BRCConfigurationManager *)self cacheLoaded]&& (v9 & 1) != 0);
  }

  cacheLoaded = [(BRCConfigurationManager *)self cacheLoaded];
  if (!cacheLoaded)
  {
    v11 = BRCConfigLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1EA8E0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  cacheLoadedCondition3 = [(BRCConfigurationManager *)self cacheLoadedCondition];
  [cacheLoadedCondition3 unlock];

  return cacheLoaded;
}

- (void)setValue:(id)value forKey:(id)key forNamespace:(id)namespace
{
  namespaceCopy = namespace;
  self->_configurationLoaded = 1;
  keyCopy = key;
  valueCopy = value;
  data = [(BRCConfigurationManager *)self data];
  v11 = [data objectForKeyedSubscript:namespaceCopy];

  if (!v11)
  {
    v11 = objc_alloc_init(BRCNamespaceData);
    [(BRCNamespaceData *)v11 setNamespaceIdentifier:namespaceCopy];
    data2 = [(BRCConfigurationManager *)self data];
    [data2 setObject:v11 forKeyedSubscript:namespaceCopy];
  }

  configuration = [(BRCNamespaceData *)v11 configuration];
  v14 = [configuration mutableCopy];

  [v14 setObject:valueCopy forKeyedSubscript:keyCopy];
  v15 = [v14 copy];
  [(BRCNamespaceData *)v11 setConfiguration:v15];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_33EEA0 == context)
  {
    v7 = [(BRCConfigurationManager *)self data:path];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_12F930;
    v13[3] = &unk_2CDB18;
    v13[4] = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];

    v8 = BRCConfigLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"BRCOverrideSegmentIDs"];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "RemoteConfigInfo: Override SegmentIDs = %@", buf, 0xCu);
    }

    v10 = BRCConfigLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"BRCAdditionalSegmentIDs"];
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "RemoteConfigInfo: Additional SegmentIDs = %@", buf, 0xCu);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BRCConfigurationManager;
    [(BRCConfigurationManager *)&v12 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_updateNamespace:(id)namespace systemDefaults:(id)defaults configuration:(id)configuration treatmentIDs:(id)ds segmentIDs:(id)iDs segmentSetIDs:(id)setIDs reason:(int64_t)reason
{
  namespaceCopy = namespace;
  defaultsCopy = defaults;
  configurationCopy = configuration;
  dsCopy = ds;
  iDsCopy = iDs;
  setIDsCopy = setIDs;
  objc_initWeak(&location, self);
  updateQueue = [(BRCConfigurationManager *)self updateQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_12FB44;
  v28[3] = &unk_2CDBB8;
  objc_copyWeak(v36, &location);
  v29 = namespaceCopy;
  v30 = defaultsCopy;
  v31 = configurationCopy;
  v32 = iDsCopy;
  v33 = setIDsCopy;
  v34 = dsCopy;
  selfCopy = self;
  v36[1] = reason;
  v22 = dsCopy;
  v23 = setIDsCopy;
  v24 = iDsCopy;
  v25 = configurationCopy;
  v26 = defaultsCopy;
  v27 = namespaceCopy;
  dispatch_async(updateQueue, v28);

  objc_destroyWeak(v36);
  objc_destroyWeak(&location);
}

- (id)_valueForKey:(id)key fromNamespaceData:(id)data source:(unint64_t)source
{
  keyCopy = key;
  dataCopy = data;
  v10 = dataCopy;
  switch(source)
  {
    case 2uLL:
LABEL_5:
      systemDefaults = [v10 systemDefaults];
LABEL_7:
      v14 = systemDefaults;
      v12 = [systemDefaults valueForKeyPath:keyCopy];

      goto LABEL_9;
    case 1uLL:
      systemDefaults = [dataCopy configuration];
      goto LABEL_7;
    case 0uLL:
      configuration = [dataCopy configuration];
      v12 = [configuration valueForKeyPath:keyCopy];

      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
  }

  v12 = 0;
LABEL_9:
  v20[0] = @"namespace";
  namespaceIdentifier = [v10 namespaceIdentifier];
  v21[0] = namespaceIdentifier;
  v21[1] = keyCopy;
  v20[1] = @"key";
  v20[2] = @"value";
  v16 = v12;
  if (!v12)
  {
    v16 = +[NSNull null];
  }

  v21[2] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"default queried" data:v17];

  if (!v12)
  {
  }

  v18 = [[BRCConfigValue alloc] initWithObject:v12];

  return v18;
}

- (id)_namespaceNamed:(id)named
{
  namedCopy = named;
  data = [(BRCConfigurationManager *)self data];
  v6 = [data objectForKey:namedCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(BRCNamespaceData);
    [(BRCNamespaceData *)v6 setNamespaceIdentifier:namedCopy];
    data2 = [(BRCConfigurationManager *)self data];
    [data2 setObject:v6 forKey:namedCopy];
  }

  return v6;
}

- (void)_clearSubscribers
{
  objc_initWeak(&location, self);
  updateQueue = [(BRCConfigurationManager *)self updateQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_130520;
  v4[3] = &unk_2C8FF8;
  objc_copyWeak(&v5, &location);
  dispatch_async(updateQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_executeMonitorWithMessage:(id)message data:(id)data
{
  messageCopy = message;
  dataCopy = data;
  monitorCallback = [(BRCConfigurationManager *)self monitorCallback];
  if (monitorCallback)
  {
    v9 = monitorCallback;
    jsBridge = [(BRCConfigurationManager *)self jsBridge];

    if (jsBridge)
    {
      dataCopy = [NSString stringWithFormat:@"RemoteConfigMonitor: %@, data = %@", messageCopy, dataCopy];
      jsBridge2 = [(BRCConfigurationManager *)self jsBridge];
      monitorCallback2 = [(BRCConfigurationManager *)self monitorCallback];
      v20 = dataCopy;
      v14 = [NSArray arrayWithObjects:&v20 count:1];
      [jsBridge2 enqueueValueCall:monitorCallback2 arguments:v14 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/RemoteConfig/BRCConfigurationManager.m" line:538];
    }
  }

  if ([(BRCConfigurationManager *)self monitoringEnabled])
  {
    v15 = BRCConfigLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = messageCopy;
      v18 = 2112;
      v19 = dataCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "RemoteConfigMonitor: %@, data = %@", buf, 0x16u);
    }
  }
}

- (id)rawValueForKey:(id)key fromNamespace:(id)namespace
{
  v4 = [(BRCConfigurationManager *)self valueForKey:key fromNamespace:namespace];
  object = [v4 object];

  return object;
}

- (id)subscribeToKeys:(id)keys inNamespace:(id)namespace callback:(id)callback
{
  keysCopy = keys;
  namespaceCopy = namespace;
  callbackCopy = callback;
  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];

  objc_initWeak(&location, self);
  updateQueue = [(BRCConfigurationManager *)self updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_130A1C;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v27, &location);
  v14 = uUIDString;
  v26 = v14;
  dispatch_sync(updateQueue, block);

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_130A7C;
  v23[4] = sub_130A8C;
  v15 = callbackCopy;
  v24 = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_130A94;
  v20[3] = &unk_2CDC20;
  v20[4] = self;
  v22 = v23;
  v16 = v14;
  v21 = v16;
  [(BRCConfigurationManager *)self subscribe:v16 toKeys:keysCopy inNamespace:namespaceCopy callback:v20];
  v17 = v21;
  v18 = v16;

  _Block_object_dispose(v23, 8);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v18;
}

- (void)unsubscribe:(id)unsubscribe
{
  unsubscribeCopy = unsubscribe;
  objc_initWeak(&location, self);
  updateQueue = [(BRCConfigurationManager *)self updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_130D80;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = unsubscribeCopy;
  v6 = unsubscribeCopy;
  dispatch_async(updateQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setValue:(id)value forKey:(id)key inNamespace:(id)namespace source:(unint64_t)source
{
  valueCopy = value;
  keyCopy = key;
  if ([(BRCConfigurationManager *)self monitoringEnabled])
  {
    v9 = +[BCRCDataContainer defaultContainer];
    [v9 setOverrideObject:valueCopy forKey:keyCopy];
  }
}

- (void)enableMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  if ([(BRCConfigurationManager *)self monitoringEnabled])
  {
    jsBridge = [(BRCConfigurationManager *)self jsBridge];

    if (jsBridge)
    {
      [(BRCConfigurationManager *)self setMonitorCallback:monitoringCopy];
      [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"monitoring callback set." data:0];
    }
  }
}

- (void)disableMonitoring
{
  [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"monitoring callback cleared." data:0];

  [(BRCConfigurationManager *)self setMonitorCallback:0];
}

- (void)clearNamespace:(id)namespace
{
  namespaceCopy = namespace;
  if ([(BRCConfigurationManager *)self monitoringEnabled])
  {
    objc_initWeak(&location, self);
    updateQueue = [(BRCConfigurationManager *)self updateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_13102C;
    block[3] = &unk_2C8188;
    objc_copyWeak(&v8, &location);
    v7 = namespaceCopy;
    dispatch_async(updateQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)dump:(id)dump
{
  dumpCopy = dump;
  data = [(BRCConfigurationManager *)self data];
  v8 = [data objectForKey:dumpCopy];

  if (v8)
  {
    systemDefaults = [v8 systemDefaults];
    [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"system defaults" data:systemDefaults];

    configuration = [v8 configuration];
    [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"configured defaults" data:configuration];
  }
}

- (id)_readFromCacheForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  workerQueue = [(BRCConfigurationManager *)self workerQueue];
  dispatch_assert_queue_V2(workerQueue);

  v6 = [(BRCConfigurationManager *)self _cacheURLFromNamespace:namespaceCopy];

  v7 = [NSData dataWithContentsOfURL:v6];
  if (v7)
  {
    v12 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v12];
    v9 = v12;
    if (v9)
    {
      v10 = BRCConfigLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1EA950();
      }
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  return v8;
}

- (void)_saveToCacheNamespaceData:(id)data withNamespace:(id)namespace
{
  namespaceCopy = namespace;
  dataCopy = data;
  [dataCopy setNamespaceIdentifier:namespaceCopy];
  v15 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v15];

  v9 = v15;
  if (!v8)
  {
    v10 = BRCConfigLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1EA9B8();
    }
  }

  v11 = [(BRCConfigurationManager *)self _cacheURLFromNamespace:namespaceCopy];
  v14 = v9;
  [v8 writeToURL:v11 options:1 error:&v14];
  v12 = v14;

  if (v12)
  {
    v13 = BRCConfigLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1EAA20();
    }
  }
}

- (id)_cacheURLFromNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:namespaceCopy isDirectory:0];
  }

  else
  {
    v8 = BRCConfigLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1EAA88();
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsBridge
{
  WeakRetained = objc_loadWeakRetained(&self->_jsBridge);

  return WeakRetained;
}

@end