@interface StorageDataAppsWrapper
- (void)dealloc;
- (void)startObservingWithUpdateHandler:(id)handler;
- (void)stopObserving;
- (void)updateApps:(id)apps;
@end

@implementation StorageDataAppsWrapper

- (void)dealloc
{
  [(StorageDataAppsWrapper *)self stopObserving];
  v3.receiver = self;
  v3.super_class = StorageDataAppsWrapper;
  [(StorageDataAppsWrapper *)&v3 dealloc];
}

- (void)startObservingWithUpdateHandler:(id)handler
{
  if (!self->isMonitoring)
  {
    self->isMonitoring = 1;
    v5 = objc_retainBlock(handler);
    updateHandler = self->updateHandler;
    self->updateHandler = v5;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"updateApps:" name:STNotifyAppSizesChanged object:0];
    [v10 addObserver:self selector:"updateApps:" name:STStoragePurgeableChangedNotification object:0];
    v7 = +[STStorageDiskMonitor sharedMonitor];
    [v7 startMonitor];

    v8 = +[STStorageAppsMonitor sharedMonitor];
    [v8 startMonitor];

    v9 = +[STStorageCacheDelete sharedMonitor];
  }
}

- (void)stopObserving
{
  if (self->isMonitoring)
  {
    self->isMonitoring = 0;
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:STNotifyAppSizesChanged object:0];
    [v6 removeObserver:self name:STStoragePurgeableChangedNotification object:0];
    v4 = +[STStorageDiskMonitor sharedMonitor];
    [v4 stopMonitor];

    v5 = +[STStorageAppsMonitor sharedMonitor];
    [v5 stopMonitor];
  }
}

- (void)updateApps:(id)apps
{
  v39 = objc_alloc_init(SAAppSizerResults);
  v3 = +[STStorageAppsMonitor sharedMonitor];
  apps = [v3 apps];

  v5 = +[NSMutableDictionary dictionary];
  v6 = +[STStorageDataNotifier sharedNotifier];
  [v6 postLoadingComplete];

  v7 = +[STStorageDiskMonitor sharedMonitor];
  storageSpace = [v7 storageSpace];
  totalBytes = [storageSpace totalBytes];

  v9 = +[STStorageDiskMonitor sharedMonitor];
  storageSpace2 = [v9 storageSpace];
  usedBytes = [storageSpace2 usedBytes];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = apps;
  v11 = &swift_slowDealloc_ptr;
  v43 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  v12 = 0;
  if (v43)
  {
    v42 = *v49;
    v40 = v5;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v15 = objc_alloc_init(v11[155]);
        appSize = [v14 appSize];
        [v15 setFixedSize:{objc_msgSend(appSize, "fixed")}];

        appSize2 = [v14 appSize];
        [v15 setDataSize:{objc_msgSend(appSize2, "docsAndData")}];

        appSize3 = [v14 appSize];
        userTotal = [appSize3 userTotal];

        v20 = +[NSMutableSet set];
        childApps = [v14 childApps];
        v22 = [childApps count];

        if (v22)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          childApps2 = [v14 childApps];
          v24 = [childApps2 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v45;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v45 != v26)
                {
                  objc_enumerationMutation(childApps2);
                }

                bundleIdentifier = [*(*(&v44 + 1) + 8 * j) bundleIdentifier];
                [v20 addObject:bundleIdentifier];
              }

              v25 = [childApps2 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v25);
            v5 = v40;
            v11 = &swift_slowDealloc_ptr;
          }
        }

        else
        {
          childApps2 = [v14 bundleIdentifier];
          [v20 addObject:childApps2];
        }

        v12 += userTotal;

        [v5 setObject:v15 forKey:v20];
      }

      v43 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v43);
  }

  v29 = v5;
  v30 = objc_alloc_init(v11[155]);
  [v30 setDataSize:STSizeOfSystemVolume()];
  v31 = STSizeOfSystemVolume();
  v32 = [NSSet setWithObject:@"com.apple.fakeapp.System"];
  [v29 setObject:v30 forKey:v32];

  v33 = &usedBytes[-v12 - v31];
  v34 = objc_alloc_init(v11[155]);
  [v34 setDataSize:v33];
  v35 = [NSSet setWithObject:@"com.apple.fakeapp.SystemData"];
  [v29 setObject:v34 forKey:v35];

  [v39 setAppData:v29];
  [v39 setDiskUsed:usedBytes];
  [v39 setDiskCapacity:totalBytes];
  (*(self->updateHandler + 2))();
}

@end