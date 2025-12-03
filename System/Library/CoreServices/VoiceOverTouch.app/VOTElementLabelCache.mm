@interface VOTElementLabelCache
+ (id)sharedManager;
- (VOTElementLabelCache)init;
- (id)userLabelForIdentification:(id)identification;
- (void)_handleCustomLabelsChanged:(id)changed;
- (void)_iCloudPublishData:(id)data;
- (void)_iCloudReconcileDataStore:(id)store;
- (void)_icloudDataChanged:(id)changed;
- (void)_loadLabelCache;
- (void)_syncLabelCache;
- (void)dealloc;
- (void)storeUserLabel:(id)label forIdentification:(id)identification;
@end

@implementation VOTElementLabelCache

+ (id)sharedManager
{
  if (qword_1001FEFB8 != -1)
  {
    sub_100130EDC();
  }

  v3 = qword_1001FEFB0;

  return v3;
}

- (VOTElementLabelCache)init
{
  v17.receiver = self;
  v17.super_class = VOTElementLabelCache;
  v2 = [(VOTElementLabelCache *)&v17 init];
  v3 = v2;
  if (v2)
  {
    [(VOTElementLabelCache *)v2 _loadLabelCache];
    v4 = dispatch_queue_create("vot-label-access-queue", 0);
    labelCacheAccessQueue = v3->_labelCacheAccessQueue;
    v3->_labelCacheAccessQueue = v4;

    v6 = dispatch_queue_create("vot-label-icloud-interaction-queue", 0);
    iCloudInteractionQueue = v3->_iCloudInteractionQueue;
    v3->_iCloudInteractionQueue = v6;

    [(VOTElementLabelCache *)v3 _icloudDataChanged:0];
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = +[NSUbiquitousKeyValueStore defaultStore];
    [v8 addObserver:v3 selector:"_icloudDataChanged:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v9];

    objc_initWeak(&location, v3);
    v10 = +[AXSettings sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001076C0;
    v14[3] = &unk_1001C78D8;
    objc_copyWeak(&v15, &location);
    v11 = objc_loadWeakRetained(&location);
    [v10 registerUpdateBlock:v14 forRetrieveSelector:"voiceOverCustomLabels" withListener:v11];

    objc_destroyWeak(&v15);
    v12 = v3;
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)_handleCustomLabelsChanged:(id)changed
{
  labelCacheAccessQueue = self->_labelCacheAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107778;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(labelCacheAccessQueue, block);
}

- (void)_loadLabelCache
{
  labelCache = self->_labelCache;
  self->_labelCache = 0;

  v4 = +[AXSettings sharedInstance];
  voiceOverCustomLabels = [v4 voiceOverCustomLabels];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = voiceOverCustomLabels;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = self->_labelCache;
        if (!v12)
        {
          v13 = objc_allocWithZone(NSMutableDictionary);
          v14 = [v13 init];
          v15 = self->_labelCache;
          self->_labelCache = v14;

          v12 = self->_labelCache;
        }

        v16 = [v6 objectForKey:{v11, v18}];
        v17 = [VOTElementUniqueIdentification identificationFromKey:v11];
        [(NSMutableDictionary *)v12 setObject:v16 forKey:v17];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)dealloc
{
  iCloudInteractionQueue = self->_iCloudInteractionQueue;
  self->_iCloudInteractionQueue = 0;

  labelCacheAccessQueue = self->_labelCacheAccessQueue;
  self->_labelCacheAccessQueue = 0;

  v5.receiver = self;
  v5.super_class = VOTElementLabelCache;
  [(VOTElementLabelCache *)&v5 dealloc];
}

- (void)_icloudDataChanged:(id)changed
{
  iCloudInteractionQueue = self->_iCloudInteractionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107A20;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(iCloudInteractionQueue, block);
}

- (void)_iCloudReconcileDataStore:(id)store
{
  storeCopy = store;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [storeCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v19 = 0;
    v8 = *v21;
    *&v6 = 138543618;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(storeCopy);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [storeCopy objectForKeyedSubscript:{v10, v18}];
        v12 = [VOTElementUniqueIdentification identificationFromKey:v10];
        v13 = [(NSMutableDictionary *)self->_labelCache objectForKey:v12];

        if (!v13)
        {
          if (!self->_labelCache)
          {
            v14 = objc_alloc_init(NSMutableDictionary);
            labelCache = self->_labelCache;
            self->_labelCache = v14;
          }

          v16 = VOTLogICloud();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v25 = v11;
            v26 = 2114;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Made changes from iCloud: %{public}@ =  %{public}@", buf, 0x16u);
          }

          v17 = [VOTElementUniqueIdentification identificationFromKey:v10];
          [(NSMutableDictionary *)self->_labelCache setObject:v11 forKey:v17];

          v19 = 1;
        }
      }

      v7 = [storeCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
    if (v19)
    {
      [(VOTElementLabelCache *)self _syncLabelCache];
    }
  }
}

- (void)_iCloudPublishData:(id)data
{
  if (data)
  {
    v4 = [data copy];
    iCloudInteractionQueue = self->_iCloudInteractionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100107EA8;
    block[3] = &unk_1001C76E8;
    v8 = v4;
    v6 = v4;
    dispatch_async(iCloudInteractionQueue, block);
  }
}

- (void)_syncLabelCache
{
  v3 = [objc_allocWithZone(NSMutableDictionary) init];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_labelCache;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_labelCache objectForKey:v9, v13, v14, v15];
        if (v10)
        {
          hashKey = [v9 hashKey];
          [v3 setObject:v10 forKey:hashKey];
        }

        else
        {
          v14 = @"***Label cache had a nil value in it. That is not good.";
          LOBYTE(v13) = 1;
          _AXLogWithFacility();
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = +[AXSettings sharedInstance];
  [v12 setVoiceOverCustomLabels:v3];
}

- (void)storeUserLabel:(id)label forIdentification:(id)identification
{
  labelCopy = label;
  identificationCopy = identification;
  labelCacheAccessQueue = self->_labelCacheAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100108300;
  block[3] = &unk_1001C8C70;
  block[4] = self;
  v12 = labelCopy;
  v13 = identificationCopy;
  v9 = identificationCopy;
  v10 = labelCopy;
  dispatch_async(labelCacheAccessQueue, block);
}

- (id)userLabelForIdentification:(id)identification
{
  identificationCopy = identification;
  v5 = identificationCopy;
  if (self->_labelCache)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_1001085AC;
    v16 = sub_1001085BC;
    v17 = 0;
    labelCacheAccessQueue = self->_labelCacheAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001085C4;
    block[3] = &unk_1001C77A0;
    block[4] = self;
    v10 = identificationCopy;
    v11 = &v12;
    dispatch_sync(labelCacheAccessQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end