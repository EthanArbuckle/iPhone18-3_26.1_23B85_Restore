@interface CKDKVSStore
+ (id)kvsInterface;
- (BOOL)pullUpdates:(id *)updates;
- (CKDKVSStore)init;
- (UbiqitousKVSProxy)proxy;
- (id)copyAsDictionary;
- (id)objectForKey:(id)key;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)addOneToOutGoing;
- (void)connectToProxy:(id)proxy;
- (void)dealloc;
- (void)forceSynchronizeWithKVS;
- (void)kvsStoreChanged:(id)changed;
- (void)kvsStoreChangedAsync:(id)async;
- (void)perfCounters:(id)counters;
- (void)pushWrites:(id)writes requiresForceSync:(BOOL)sync;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setupSamplers;
@end

@implementation CKDKVSStore

- (UbiqitousKVSProxy)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

- (void)addOneToOutGoing
{
  perfQueue = [(CKDKVSStore *)self perfQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000092B0;
  block[3] = &unk_100018D18;
  block[4] = self;
  dispatch_async(perfQueue, block);
}

- (void)setupSamplers
{
  v3 = +[SOSAnalytics logger];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009388;
  v5[3] = &unk_100018E08;
  v5[4] = self;
  v4 = [v3 AddMultiSamplerForName:CKDKVSPerformanceCountersSampler withTimeInterval:v5 block:SFAnalyticsSamplerIntervalOncePerReport];
}

- (void)perfCounters:(id)counters
{
  countersCopy = counters;
  perfQueue = [(CKDKVSStore *)self perfQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009600;
  v7[3] = &unk_100018DB8;
  v7[4] = self;
  v8 = countersCopy;
  v6 = countersCopy;
  dispatch_async(perfQueue, v7);
}

- (BOOL)pullUpdates:(id *)updates
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000094F8;
  v20 = sub_100009508;
  v21 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = sub_10000AE54("fresh");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "EFRESH";
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CALLING OUT TO syncdefaultsd SWCH: %@", buf, 0x16u);
  }

  perfQueue = [(CKDKVSStore *)self perfQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009AAC;
  block[3] = &unk_100018D18;
  block[4] = self;
  dispatch_async(perfQueue, block);

  cloudStore = [(CKDKVSStore *)self cloudStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009AD4;
  v12[3] = &unk_100018D90;
  v12[4] = self;
  v14 = &v16;
  v9 = v5;
  v13 = v9;
  [cloudStore synchronizeWithCompletionHandler:v12];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (updates && !*updates)
  {
    *updates = v17[5];
  }

  v10 = v17[5] == 0;

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (void)kvsStoreChanged:(id)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009E00;
  v4[3] = &unk_100018D68;
  v4[4] = self;
  changedCopy = changed;
  v3 = changedCopy;
  _os_activity_initiate(&_mh_execute_header, "cloudChanged", OS_ACTIVITY_FLAG_DEFAULT, v4);
}

- (void)kvsStoreChangedAsync:(id)async
{
  asyncCopy = async;
  v5 = sub_10000AE54("CloudKeychainProxy");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = asyncCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ KVS Remote changed notification: %@", buf, 0x16u);
  }

  perfQueue = [(CKDKVSStore *)self perfQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A1A8;
  block[3] = &unk_100018D18;
  block[4] = self;
  dispatch_async(perfQueue, block);

  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000A1D0;
  v9[3] = &unk_100018D68;
  v9[4] = self;
  v10 = asyncCopy;
  v8 = asyncCopy;
  dispatch_async(v7, v9);
}

- (void)pushWrites:(id)writes requiresForceSync:(BOOL)sync
{
  syncCopy = sync;
  writesCopy = writes;
  v7 = sub_10000AE54("pushWrites");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Push writes", buf, 2u);
  }

  v8 = sub_10000AE54("pushWrites");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (syncCopy)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requested to force synchronize", buf, 2u);
    }

    [(CKDKVSStore *)self forceSynchronizeWithKVS];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "KVS on CloudKit enabled. Evaluating changed keys", buf, 2u);
    }

    if (writesCopy && [writesCopy count])
    {
      *buf = 0;
      v15 = buf;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000A448;
      v13[3] = &unk_100018D40;
      v13[4] = buf;
      [writesCopy enumerateObjectsUsingBlock:v13];
      if (v15[24])
      {
        [(CKDKVSStore *)self forceSynchronizeWithKVS];
      }

      else
      {
        v11 = sub_10000AE54("pushWrites");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "no keys to force push, returning", v12, 2u);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v10 = sub_10000AE54("pushWrites");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "key set is empty, returning", buf, 2u);
      }
    }
  }
}

- (void)forceSynchronizeWithKVS
{
  v3 = sub_10000AE54("pushWrites");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "requesting force synchronization with KVS on CloudKit", buf, 2u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A658;
  block[3] = &unk_100018D18;
  block[4] = self;
  dispatch_async(v4, block);

  perfQueue = [(CKDKVSStore *)self perfQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A778;
  v6[3] = &unk_100018D18;
  v6[4] = self;
  dispatch_async(perfQueue, v6);
}

- (void)removeAllObjects
{
  cloudStore = [(CKDKVSStore *)self cloudStore];
  dictionaryRepresentation = [cloudStore dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];
  v6 = [allKeys copy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A864;
  v7[3] = &unk_100018CF0;
  v7[4] = self;
  [v6 enumerateObjectsUsingBlock:v7];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  cloudStore = [(CKDKVSStore *)self cloudStore];
  [cloudStore removeObjectForKey:keyCopy];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  cloudStore = [(CKDKVSStore *)self cloudStore];
  v6 = [cloudStore objectForKey:keyCopy];

  return v6;
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000AA04;
  v3[3] = &unk_100018CC8;
  v3[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v3];
}

- (id)copyAsDictionary
{
  cloudStore = [(CKDKVSStore *)self cloudStore];
  dictionaryRepresentation = [cloudStore dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  cloudStore = [(CKDKVSStore *)self cloudStore];
  [cloudStore setObject:objectCopy forKey:keyCopy];
}

- (void)connectToProxy:(id)proxy
{
  objc_storeWeak(&self->_proxy, proxy);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"kvsStoreChangedAsync:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:0];
}

- (void)dealloc
{
  perfCounters = self->_perfCounters;
  if (perfCounters)
  {
    free(perfCounters);
  }

  v4.receiver = self;
  v4.super_class = CKDKVSStore;
  [(CKDKVSStore *)&v4 dealloc];
}

- (CKDKVSStore)init
{
  v11.receiver = self;
  v11.super_class = CKDKVSStore;
  v2 = [(CKDKVSStore *)&v11 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = +[NSUbiquitousKeyValueStore defaultStore];
  cloudStore = v2->_cloudStore;
  v2->_cloudStore = v3;

  objc_storeWeak(&v2->_proxy, 0);
  cloudStore = [(CKDKVSStore *)v2 cloudStore];

  if (cloudStore)
  {
    v6 = dispatch_queue_create("CKDKVSStorePerfQueue", 0);
    [(CKDKVSStore *)v2 setPerfQueue:v6];

    [(CKDKVSStore *)v2 setPerfCounters:malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL)];
    [(CKDKVSStore *)v2 setupSamplers];
LABEL_4:
    v7 = v2;
    goto LABEL_8;
  }

  v8 = sub_10000AE54("SecError");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NO NSUbiquitousKeyValueStore defaultStore!!!", v10, 2u);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)kvsInterface
{
  v2 = objc_alloc_init(CKDKVSStore);

  return v2;
}

@end