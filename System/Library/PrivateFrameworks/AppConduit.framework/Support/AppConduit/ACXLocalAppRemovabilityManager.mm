@interface ACXLocalAppRemovabilityManager
+ (id)sharedInstance;
- (ACXLocalAppRemovabilityManager)init;
- (id)_onQueue_updateRemovabilityInfoAndReturnRemovabilityMap;
- (id)getRemovabilityForAllAppsWithStoreUUID:(id *)d sequenceNumber:(unint64_t *)number;
- (void)_onQueue_handleRemovabilityChangedNotification:(id)notification;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)fetchCurrentRemovabilityStoreUUID:(id *)d sequenceNumber:(unint64_t *)number;
- (void)removeObserver:(id)observer;
- (void)updateRemovabilityInfoAndReturnRemovabilityMap:(id)map;
@end

@implementation ACXLocalAppRemovabilityManager

- (id)_onQueue_updateRemovabilityInfoAndReturnRemovabilityMap
{
  internalQueue = [(ACXLocalAppRemovabilityManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v13 = 0;
  v14 = 0;
  v4 = [IXAppInstallCoordinator removabilityDataWithChangeClock:&v14 error:&v13];
  v5 = v14;
  v6 = v14;
  v7 = v13;
  if (v4)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100010E04;
    v11[3] = &unk_10008D038;
    v12 = objc_opt_new();
    v8 = v12;
    [v4 enumerateKeysAndObjectsUsingBlock:v11];
    objc_storeStrong(&self->_removabilityChangeClock, v5);
    v9 = [v8 copy];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 4)
    {
      MOLogWrite();
    }

    v9 = 0;
  }

  return v9;
}

- (void)_onQueue_handleRemovabilityChangedNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  internalQueue = [(ACXLocalAppRemovabilityManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    userInfo = [notificationCopy userInfo];
    MOLogWrite();
  }

  userInfo2 = [notificationCopy userInfo];
  v7 = [userInfo2 valueForKey:kCFBundleIdentifierKey];
  if (v7)
  {
    v21 = notificationCopy;
    v8 = [userInfo2 objectForKeyedSubscript:IXNotificationPayloadRemovabilityValueKey];
    v20 = userInfo2;
    v9 = [userInfo2 objectForKeyedSubscript:IXNotificationPayloadRemovabilityStoreClockKey];
    v10 = [v9 objectForKeyedSubscript:kIXNotificationPayloadDataStoreClockGUIDKey];
    v19 = v9;
    v11 = [v9 objectForKeyedSubscript:kIXNotificationPayloadDataStoreClockSequenceNumberKey];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(ACXLocalAppRemovabilityManager *)selfCopy observers];
    v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        v15 = 0;
        do
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * v15);
          observerQueue = [(ACXLocalAppRemovabilityManager *)selfCopy observerQueue];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100011198;
          v24[3] = &unk_10008C9D0;
          v24[4] = v16;
          v25 = v8;
          v26 = v7;
          v27 = v10;
          v28 = v11;
          sub_100005828(observerQueue, v24);

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    userInfo2 = v20;
    notificationCopy = v21;
  }
}

- (void)updateRemovabilityInfoAndReturnRemovabilityMap:(id)map
{
  mapCopy = map;
  internalQueue = [(ACXLocalAppRemovabilityManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011260;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = mapCopy;
  v6 = mapCopy;
  dispatch_sync(internalQueue, v7);
}

- (ACXLocalAppRemovabilityManager)init
{
  v24.receiver = self;
  v24.super_class = ACXLocalAppRemovabilityManager;
  v2 = [(ACXLocalAppRemovabilityManager *)&v24 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appconduit.removabilitySyncManagerQueue", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appconduit.ACXLocalRemovabilityObserver", v6);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v7;

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100011490;
    v22 = sub_1000114A0;
    v23 = 0;
    internalQueue = [(ACXLocalAppRemovabilityManager *)v2 internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000114A8;
    block[3] = &unk_10008C958;
    v17 = &v18;
    v10 = v2;
    v16 = v10;
    dispatch_sync(internalQueue, block);

    if (v19[5])
    {
      objc_initWeak(&location, v10);
      v11 = +[NSDistributedNotificationCenter defaultCenter];
      [v11 addObserver:v10 selector:"updateRemovabilityInfoAndReturnRemovabilityMap:" name:IXAppRemovabilityChangedNotificationName object:0];

      v12 = v10;
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)sharedInstance
{
  if (qword_1000A47A8 != -1)
  {
    sub_100059B04();
  }

  v3 = qword_1000A47A0;

  return v3;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ACXLocalAppRemovabilityManager;
  [(ACXLocalAppRemovabilityManager *)&v4 dealloc];
}

- (void)fetchCurrentRemovabilityStoreUUID:(id *)d sequenceNumber:(unint64_t *)number
{
  internalQueue = [(ACXLocalAppRemovabilityManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000116FC;
  block[3] = &unk_10008D080;
  block[4] = self;
  block[5] = d;
  block[6] = number;
  dispatch_sync(internalQueue, block);
}

- (id)getRemovabilityForAllAppsWithStoreUUID:(id *)d sequenceNumber:(unint64_t *)number
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100011490;
  v15 = sub_1000114A0;
  v16 = 0;
  internalQueue = [(ACXLocalAppRemovabilityManager *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000118D8;
  v10[3] = &unk_10008D0A8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = d;
  v10[7] = number;
  dispatch_sync(internalQueue, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = [(ACXLocalAppRemovabilityManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011A5C;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = [(ACXLocalAppRemovabilityManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011B90;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
}

@end