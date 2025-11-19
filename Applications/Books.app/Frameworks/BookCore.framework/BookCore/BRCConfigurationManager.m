@interface BRCConfigurationManager
+ (BRCConfigurationManager)sharedInstance;
- (BOOL)waitForCachedConfigurationLoaded:(double)a3;
- (BRCConfigurationManager)init;
- (id)_cacheURLFromNamespace:(id)a3;
- (id)_namespaceNamed:(id)a3;
- (id)_readFromCacheForNamespace:(id)a3;
- (id)_valueForKey:(id)a3 fromNamespaceData:(id)a4 source:(unint64_t)a5;
- (id)allLogicalValuesFromNamespace:(id)a3 allowsOnlyDefaultSource:(BOOL)a4;
- (id)jsBridge;
- (id)namespaceInfo;
- (id)rawValueForKey:(id)a3 fromNamespace:(id)a4;
- (id)subscribeToKeys:(id)a3 inNamespace:(id)a4 callback:(id)a5;
- (id)valueForKey:(id)a3 fromNamespace:(id)a4 source:(unint64_t)a5;
- (void)_clearSubscribers;
- (void)_executeMonitorWithMessage:(id)a3 data:(id)a4;
- (void)_saveToCacheNamespaceData:(id)a3 withNamespace:(id)a4;
- (void)_updateNamespace:(id)a3 systemDefaults:(id)a4 configuration:(id)a5 treatmentIDs:(id)a6 segmentIDs:(id)a7 segmentSetIDs:(id)a8 reason:(int64_t)a9;
- (void)addObserver:(id)a3;
- (void)clearNamespace:(id)a3;
- (void)dealloc;
- (void)disableMonitoring;
- (void)dump:(id)a3;
- (void)enableMonitoring:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)refreshNamespace:(id)a3;
- (void)registerNamespace:(id)a3 withDefaults:(id)a4 forBundleID:(id)a5;
- (void)removeObserver:(id)a3;
- (void)resetForJavascript;
- (void)setUserID:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4 forNamespace:(id)a5;
- (void)setValue:(id)a3 forKey:(id)a4 inNamespace:(id)a5 source:(unint64_t)a6;
- (void)subscribe:(id)a3 toKeys:(id)a4 inNamespace:(id)a5 callback:(id)a6;
- (void)unsubscribe:(id)a3;
@end

@implementation BRCConfigurationManager

+ (BRCConfigurationManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12DC0C;
  block[3] = &unk_2C7CA8;
  block[4] = a1;
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

- (void)setUserID:(id)a3
{
  v5 = self->_userID;
  v6 = [a3 copy];
  userID = self->_userID;
  self->_userID = v6;

  if ([(NSString *)self->_userID length]&& ![(NSString *)self->_userID isEqualToString:v5])
  {
    v8 = [(BRCConfigurationManager *)self data];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_12E06C;
    v9[3] = &unk_2CDB18;
    v9[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)registerNamespace:(id)a3 withDefaults:(id)a4 forBundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BRCConfigurationManager *)self _namespaceNamed:v8];
  [v11 setBundleID:v10];

  v12 = [(BRCConfigurationManager *)self workerQueue];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_12E2A8;
  v19 = &unk_2CBED8;
  v20 = self;
  v13 = v8;
  v21 = v13;
  v22 = v11;
  v23 = v9;
  v14 = v9;
  v15 = v11;
  dispatch_sync(v12, &v16);

  if ([(BRCConfigurationManager *)self refreshOnRegister:v16])
  {
    [(BRCConfigurationManager *)self refreshNamespace:v13];
  }
}

- (id)valueForKey:(id)a3 fromNamespace:(id)a4 source:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(BRCConfigurationManager *)self data];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    v12 = [(BRCConfigurationManager *)self _valueForKey:v8 fromNamespaceData:v11 source:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)subscribe:(id)a3 toKeys:(id)a4 inNamespace:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [(BRCConfigurationManager *)self updateQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_12E7F0;
  v19[3] = &unk_2CDB40;
  objc_copyWeak(&v24, &location);
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v11;
  v16 = v13;
  v17 = v10;
  v18 = v12;
  dispatch_async(v14, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)refreshNamespace:(id)a3
{
  v4 = a3;
  v5 = [(BRCConfigurationManager *)self userID];

  if (v5)
  {
    v14 = @"namespace";
    v15 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"refresh requested" data:v6];

    v7 = [(BRCConfigurationManager *)self data];
    v8 = [v7 objectForKey:v4];

    v9 = [(BRCConfigurationManager *)self userID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_12EB10;
    v11[3] = &unk_2CDB90;
    v11[4] = self;
    v12 = v4;
    v13 = v8;
    v10 = v8;
    [v10 settingsWithUserID:v9 completion:v11];
  }
}

- (void)resetForJavascript
{
  objc_initWeak(&location, self);
  v3 = [(BRCConfigurationManager *)self updateQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12F170;
  v4[3] = &unk_2C8FF8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)namespaceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(BRCConfigurationManager *)self data];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12F298;
  v7[3] = &unk_2CDB18;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)allLogicalValuesFromNamespace:(id)a3 allowsOnlyDefaultSource:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BRCConfigurationManager *)self data];
  v8 = [v7 objectForKey:v6];

  v9 = [v8 systemDefaults];
  v10 = [v9 copy];

  v11 = [v8 configuration];
  v12 = [v11 copy];

  if ([v12 count])
  {
    v13 = [NSMutableDictionary dictionaryWithDictionary:v10];
    [v13 addEntriesFromDictionary:v12];
    v14 = [v13 copy];
  }

  else if (v4)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)waitForCachedConfigurationLoaded:(double)a3
{
  v5 = [NSDate dateWithTimeIntervalSinceNow:?];
  v6 = [(BRCConfigurationManager *)self cacheLoadedCondition];
  [v6 lock];

  if (![(BRCConfigurationManager *)self cacheLoaded])
  {
    v7 = BRCConfigLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = a3;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "waitForCachedConfigurationLoaded: Waiting for cacheLoaded. timeout: %f", &v21, 0xCu);
    }
  }

  if (![(BRCConfigurationManager *)self cacheLoaded])
  {
    do
    {
      v8 = [(BRCConfigurationManager *)self cacheLoadedCondition];
      v9 = [v8 waitUntilDate:v5];
    }

    while (![(BRCConfigurationManager *)self cacheLoaded]&& (v9 & 1) != 0);
  }

  v10 = [(BRCConfigurationManager *)self cacheLoaded];
  if (!v10)
  {
    v11 = BRCConfigLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1EA8E0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = [(BRCConfigurationManager *)self cacheLoadedCondition];
  [v19 unlock];

  return v10;
}

- (void)setValue:(id)a3 forKey:(id)a4 forNamespace:(id)a5
{
  v16 = a5;
  self->_configurationLoaded = 1;
  v8 = a4;
  v9 = a3;
  v10 = [(BRCConfigurationManager *)self data];
  v11 = [v10 objectForKeyedSubscript:v16];

  if (!v11)
  {
    v11 = objc_alloc_init(BRCNamespaceData);
    [(BRCNamespaceData *)v11 setNamespaceIdentifier:v16];
    v12 = [(BRCConfigurationManager *)self data];
    [v12 setObject:v11 forKeyedSubscript:v16];
  }

  v13 = [(BRCNamespaceData *)v11 configuration];
  v14 = [v13 mutableCopy];

  [v14 setObject:v9 forKeyedSubscript:v8];
  v15 = [v14 copy];
  [(BRCNamespaceData *)v11 setConfiguration:v15];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_33EEA0 == a6)
  {
    v7 = [(BRCConfigurationManager *)self data:a3];
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
    [(BRCConfigurationManager *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_updateNamespace:(id)a3 systemDefaults:(id)a4 configuration:(id)a5 treatmentIDs:(id)a6 segmentIDs:(id)a7 segmentSetIDs:(id)a8 reason:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  objc_initWeak(&location, self);
  v21 = [(BRCConfigurationManager *)self updateQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_12FB44;
  v28[3] = &unk_2CDBB8;
  objc_copyWeak(v36, &location);
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v19;
  v33 = v20;
  v34 = v18;
  v35 = self;
  v36[1] = a9;
  v22 = v18;
  v23 = v20;
  v24 = v19;
  v25 = v17;
  v26 = v16;
  v27 = v15;
  dispatch_async(v21, v28);

  objc_destroyWeak(v36);
  objc_destroyWeak(&location);
}

- (id)_valueForKey:(id)a3 fromNamespaceData:(id)a4 source:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  switch(a5)
  {
    case 2uLL:
LABEL_5:
      v13 = [v10 systemDefaults];
LABEL_7:
      v14 = v13;
      v12 = [v13 valueForKeyPath:v8];

      goto LABEL_9;
    case 1uLL:
      v13 = [v9 configuration];
      goto LABEL_7;
    case 0uLL:
      v11 = [v9 configuration];
      v12 = [v11 valueForKeyPath:v8];

      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
  }

  v12 = 0;
LABEL_9:
  v20[0] = @"namespace";
  v15 = [v10 namespaceIdentifier];
  v21[0] = v15;
  v21[1] = v8;
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

- (id)_namespaceNamed:(id)a3
{
  v4 = a3;
  v5 = [(BRCConfigurationManager *)self data];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = objc_alloc_init(BRCNamespaceData);
    [(BRCNamespaceData *)v6 setNamespaceIdentifier:v4];
    v7 = [(BRCConfigurationManager *)self data];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (void)_clearSubscribers
{
  objc_initWeak(&location, self);
  v3 = [(BRCConfigurationManager *)self updateQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_130520;
  v4[3] = &unk_2C8FF8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_executeMonitorWithMessage:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRCConfigurationManager *)self monitorCallback];
  if (v8)
  {
    v9 = v8;
    v10 = [(BRCConfigurationManager *)self jsBridge];

    if (v10)
    {
      v11 = [NSString stringWithFormat:@"RemoteConfigMonitor: %@, data = %@", v6, v7];
      v12 = [(BRCConfigurationManager *)self jsBridge];
      v13 = [(BRCConfigurationManager *)self monitorCallback];
      v20 = v11;
      v14 = [NSArray arrayWithObjects:&v20 count:1];
      [v12 enqueueValueCall:v13 arguments:v14 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/RemoteConfig/BRCConfigurationManager.m" line:538];
    }
  }

  if ([(BRCConfigurationManager *)self monitoringEnabled])
  {
    v15 = BRCConfigLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "RemoteConfigMonitor: %@, data = %@", buf, 0x16u);
    }
  }
}

- (id)rawValueForKey:(id)a3 fromNamespace:(id)a4
{
  v4 = [(BRCConfigurationManager *)self valueForKey:a3 fromNamespace:a4];
  v5 = [v4 object];

  return v5;
}

- (id)subscribeToKeys:(id)a3 inNamespace:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];

  objc_initWeak(&location, self);
  v13 = [(BRCConfigurationManager *)self updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_130A1C;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v27, &location);
  v14 = v12;
  v26 = v14;
  dispatch_sync(v13, block);

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_130A7C;
  v23[4] = sub_130A8C;
  v15 = v10;
  v24 = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_130A94;
  v20[3] = &unk_2CDC20;
  v20[4] = self;
  v22 = v23;
  v16 = v14;
  v21 = v16;
  [(BRCConfigurationManager *)self subscribe:v16 toKeys:v8 inNamespace:v9 callback:v20];
  v17 = v21;
  v18 = v16;

  _Block_object_dispose(v23, 8);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v18;
}

- (void)unsubscribe:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(BRCConfigurationManager *)self updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_130D80;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setValue:(id)a3 forKey:(id)a4 inNamespace:(id)a5 source:(unint64_t)a6
{
  v10 = a3;
  v8 = a4;
  if ([(BRCConfigurationManager *)self monitoringEnabled])
  {
    v9 = +[BCRCDataContainer defaultContainer];
    [v9 setOverrideObject:v10 forKey:v8];
  }
}

- (void)enableMonitoring:(id)a3
{
  v5 = a3;
  if ([(BRCConfigurationManager *)self monitoringEnabled])
  {
    v4 = [(BRCConfigurationManager *)self jsBridge];

    if (v4)
    {
      [(BRCConfigurationManager *)self setMonitorCallback:v5];
      [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"monitoring callback set." data:0];
    }
  }
}

- (void)disableMonitoring
{
  [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"monitoring callback cleared." data:0];

  [(BRCConfigurationManager *)self setMonitorCallback:0];
}

- (void)clearNamespace:(id)a3
{
  v4 = a3;
  if ([(BRCConfigurationManager *)self monitoringEnabled])
  {
    objc_initWeak(&location, self);
    v5 = [(BRCConfigurationManager *)self updateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_13102C;
    block[3] = &unk_2C8188;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)dump:(id)a3
{
  v4 = a3;
  v5 = [(BRCConfigurationManager *)self data];
  v8 = [v5 objectForKey:v4];

  if (v8)
  {
    v6 = [v8 systemDefaults];
    [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"system defaults" data:v6];

    v7 = [v8 configuration];
    [(BRCConfigurationManager *)self _executeMonitorWithMessage:@"configured defaults" data:v7];
  }
}

- (id)_readFromCacheForNamespace:(id)a3
{
  v4 = a3;
  v5 = [(BRCConfigurationManager *)self workerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BRCConfigurationManager *)self _cacheURLFromNamespace:v4];

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

- (void)_saveToCacheNamespaceData:(id)a3 withNamespace:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setNamespaceIdentifier:v6];
  v15 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v15];

  v9 = v15;
  if (!v8)
  {
    v10 = BRCConfigLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1EA9B8();
    }
  }

  v11 = [(BRCConfigurationManager *)self _cacheURLFromNamespace:v6];
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

- (id)_cacheURLFromNamespace:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:v3 isDirectory:0];
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