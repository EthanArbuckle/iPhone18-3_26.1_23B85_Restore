@interface MTSubscriptionSyncProcessor
+ (id)subscriptionSyncProcessorSyncKeys;
- (BOOL)hasLocalChanges;
- (BOOL)mergeData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch;
- (BOOL)mergeLocalAndRemoteData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch;
- (BOOL)overrideLocalWithRemoteData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch;
- (BOOL)updatePodcastsToAdd:(id)add addingPodcastIfNeeded:(id)needed hasLocalPodcast:(BOOL)podcast;
- (BOOL)updatePodcastsToUnsubscribe:(id)unsubscribe remotePodcast:(id)podcast localPodcast:(id)localPodcast;
- (BOOL)updateSettingsIfNeededForLocalPodcast:(id)podcast remotePodcast:(id)remotePodcast;
- (MTSubscriptionSyncProcessor)initWithStorage:(id)storage config:(id)config cloudSyncBugReporter:(id)reporter;
- (id)_addedSubscriptions;
- (id)_podcastSubscriptions;
- (id)context;
- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version;
- (id)logPrefix;
- (id)podcastCacheInContext:(id)context;
- (id)syncDictionaryToMetricsDictionary:(id)dictionary;
- (id)unvisitedPodcastsToUnsubscribeIn:(id)in mismatch:(BOOL *)mismatch version:(id)version;
- (id)versionForGetTransaction:(id)transaction key:(id)key;
- (int64_t)operationTypeForSET;
- (unint64_t)_subscribedPodcastsCount;
- (void)checkPotentialLibraryDeletionIssueForPreviouslySubscribedPodcastsCount:(unint64_t)count podcastsToUnsubscribeCount:(unint64_t)unsubscribeCount newVersion:(id)version;
- (void)completeTransactionWithNewVersion:(id)version mismatch:(BOOL)mismatch finishedBlock:(id)block;
- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)importRemotePodcastDicts:(id)dicts inContext:(id)context visitingPodcastsInCache:(id)cache updatingPodcastsToAdd:(id)add updatingPodcastsToUnsubscribe:(id)unsubscribe mismatch:(BOOL)mismatch version:(id)version;
- (void)markAddedSubscriptionsAsSynced;
- (void)markAllShowsAsSynced;
- (void)markShowsAsSyncedForPredicate:(id)predicate;
- (void)reorderLocalPodcastsToMatchRemote:(id)remote;
- (void)reportImportingRemotePodcast:(id)podcast withLocalPodcast:(id)localPodcast shouldAddPodcast:(BOOL)addPodcast shouldUnsubscribeLocalPodcast:(BOOL)unsubscribeLocalPodcast shouldUpdateSettings:(BOOL)settings mismatch:(BOOL)mismatch version:(id)version;
- (void)subscribeFromCloudToPodcasts:(id)podcasts;
- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version;
- (void)updateSettingsForLocalPodcast:(id)podcast remotePodcast:(id)remotePodcast ctx:(id)ctx;
@end

@implementation MTSubscriptionSyncProcessor

- (MTSubscriptionSyncProcessor)initWithStorage:(id)storage config:(id)config cloudSyncBugReporter:(id)reporter
{
  storageCopy = storage;
  configCopy = config;
  reporterCopy = reporter;
  v20.receiver = self;
  v20.super_class = MTSubscriptionSyncProcessor;
  v11 = [(MTSubscriptionSyncProcessor *)&v20 init];
  v12 = v11;
  if (v11)
  {
    [(MTSubscriptionSyncProcessor *)v11 setConfig:configCopy];
    [(MTSubscriptionSyncProcessor *)v12 setStorageProvider:storageCopy];
    [(MTSubscriptionSyncProcessor *)v12 setCloudSyncBugReporter:reporterCopy];
    v13 = dispatch_queue_create("MTSubscriptionSyncProcessor.workQueue", 0);
    [(MTSubscriptionSyncProcessor *)v12 setWorkQueue:v13];

    v14 = _MTLogCategoryCloudSync();
    v12->_signpostID = os_signpost_id_generate(v14);

    v15 = _MTLogCategoryCloudSync();
    v16 = v15;
    signpostID = v12->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, signpostID, "MTSubscriptionSyncProcessor.created", "", v19, 2u);
    }
  }

  return v12;
}

+ (id)subscriptionSyncProcessorSyncKeys
{
  if (qword_100583DB8 != -1)
  {
    sub_1003B2D3C();
  }

  v3 = qword_100583DB0;

  return v3;
}

- (id)context
{
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  importContext = [storageProvider importContext];

  return importContext;
}

- (int64_t)operationTypeForSET
{
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  syncType = [storageProvider syncType];

  if (syncType == 1)
  {
    return 13;
  }

  else
  {
    return 1;
  }
}

- (BOOL)hasLocalChanges
{
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  syncDirtyFlag = [storageProvider syncDirtyFlag];

  return syncDirtyFlag;
}

- (id)versionForGetTransaction:(id)transaction key:(id)key
{
  keyCopy = key;
  v6 = _MTLogCategoryCloudSync();
  v7 = v6;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v17 = 138412290;
    v18 = keyCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTSubscriptionSyncProcessor.GET", "key: %@", &v17, 0xCu);
  }

  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  syncVersion = [storageProvider syncVersion];

  v11 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v17 = 138543874;
    v18 = logPrefix;
    v19 = 2114;
    v20 = syncVersion;
    v21 = 2114;
    v22 = keyCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Version for GET transaction [%{public}@] key: %{public}@", &v17, 0x20u);
  }

  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix2 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v17 = 138543874;
    v18 = logPrefix2;
    v19 = 2114;
    v20 = syncVersion;
    v21 = 2114;
    v22 = keyCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Gathering addedSubscriptions for GET transaction [%{public}@] key: %{public}@", &v17, 0x20u);
  }

  _addedSubscriptions = [(MTSubscriptionSyncProcessor *)self _addedSubscriptions];
  [(MTSubscriptionSyncProcessor *)self setAddedSubscriptions:_addedSubscriptions];

  [(MTSubscriptionSyncProcessor *)self setInitialSubscribedPodcastsCount:[(MTSubscriptionSyncProcessor *)self _subscribedPodcastsCount]];

  return syncVersion;
}

- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version
{
  keyCopy = key;
  if (+[_TtC18PodcastsFoundation18SyncKeysRepository shouldSyncInReadOnlyMode])
  {
    cloudSyncBugReporter = [(MTSubscriptionSyncProcessor *)self cloudSyncBugReporter];
    storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncType = [storageProvider syncType];
    storageProvider2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncVersion = [storageProvider2 syncVersion];
    [cloudSyncBugReporter reportSubscriptionsSyncIssue:4 subscriptionSyncType:syncType version:syncVersion userInfo:0];
  }

  v13 = _MTLogCategoryCloudSync();
  v14 = v13;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v49 = 138412290;
    v50 = keyCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTSubscriptionSyncProcessor.SET", "key: %@", &v49, 0xCu);
  }

  storageProvider3 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  if ([storageProvider3 syncDirtyFlag])
  {
  }

  else
  {
    storageProvider4 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncVersion2 = [storageProvider4 syncVersion];

    if (syncVersion2)
    {
      _podcastSubscriptions = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(_podcastSubscriptions, OS_LOG_TYPE_DEFAULT))
      {
        logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
        storageProvider5 = [(MTSubscriptionSyncProcessor *)self storageProvider];
        v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [storageProvider5 syncDirtyFlag]);
        storageProvider6 = [(MTSubscriptionSyncProcessor *)self storageProvider];
        syncVersion3 = [storageProvider6 syncVersion];
        v49 = 138544130;
        v50 = logPrefix;
        v51 = 2114;
        v52 = v22;
        v53 = 2114;
        v54 = syncVersion3;
        v55 = 2114;
        v56 = keyCopy;
        _os_log_impl(&_mh_execute_header, _podcastSubscriptions, OS_LOG_TYPE_DEFAULT, "%{public}@ No data for SET transaction. syncDirtyFlag: %{public}@, podcastSyncVersion: %{public}@, key: %{public}@", &v49, 0x2Au);
      }

      goto LABEL_21;
    }
  }

  storageProvider7 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  *version = [storageProvider7 syncVersion];

  v26 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix2 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v28 = *version;
    v49 = 138543874;
    v50 = logPrefix2;
    v51 = 2114;
    v52 = v28;
    v53 = 2114;
    v54 = keyCopy;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Gathering data for SET transaction [%{public}@] key: %{public}@", &v49, 0x20u);
  }

  _podcastSubscriptions = [(MTSubscriptionSyncProcessor *)self _podcastSubscriptions];
  _addedSubscriptions = [(MTSubscriptionSyncProcessor *)self _addedSubscriptions];
  [(MTSubscriptionSyncProcessor *)self setAddedSubscriptions:_addedSubscriptions];

  [(MTSubscriptionSyncProcessor *)self setInitialSubscribedPodcastsCount:[(MTSubscriptionSyncProcessor *)self _subscribedPodcastsCount]];
  if (!_podcastSubscriptions)
  {
LABEL_21:
    value = 0;
    goto LABEL_22;
  }

  v30 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix3 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v32 = *version;
    v33 = [NSNumber numberWithUnsignedInteger:[_podcastSubscriptions count]];
    v34 = [_podcastSubscriptions description];
    v49 = 138544387;
    v50 = logPrefix3;
    v51 = 2114;
    v52 = v32;
    v53 = 2114;
    v54 = keyCopy;
    v55 = 2114;
    v56 = v33;
    v57 = 2113;
    v58 = v34;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing data for SET transaction [%{public}@] key: %{public}@ : count %{public}@, data: %{private}@", &v49, 0x34u);
  }

  storageProvider8 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  syncVersion4 = [storageProvider8 syncVersion];
  integerValue = [syncVersion4 integerValue];

  if (![_podcastSubscriptions count]&& *version && integerValue >= 11)
  {
    cloudSyncBugReporter2 = [(MTSubscriptionSyncProcessor *)self cloudSyncBugReporter];
    storageProvider9 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncType2 = [storageProvider9 syncType];
    storageProvider10 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncVersion5 = [storageProvider10 syncVersion];
    [cloudSyncBugReporter2 reportSubscriptionsSyncIssue:0 subscriptionSyncType:syncType2 version:syncVersion5 userInfo:0];
  }

  v43 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v43 setArrayValue:_podcastSubscriptions];
  value = [(MZKeyValueStoreNode *)v43 value];

LABEL_22:
  v45 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix4 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v49 = 138543362;
    v50 = logPrefix4;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting subscriptions sync dirty = NO", &v49, 0xCu);
  }

  storageProvider11 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [storageProvider11 setSyncDirtyFlag:0];

  return value;
}

- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version
{
  versionCopy = version;
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [storageProvider setPodcastsDomainVersion:versionCopy];
}

- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  dataCopy = data;
  v15 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v18 = 138543874;
    v19 = logPrefix;
    v20 = 2114;
    v21 = keyCopy;
    v22 = 2114;
    v23 = versionCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Successful GET transaction for key: %{public}@, new version: [%{public}@]", &v18, 0x20u);
  }

  v17 = [(MTSubscriptionSyncProcessor *)self mergeData:dataCopy forKey:keyCopy version:versionCopy mismatch:0];
  [(MTSubscriptionSyncProcessor *)self completeTransactionWithNewVersion:versionCopy mismatch:v17 finishedBlock:blockCopy];
}

- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v15 = 138543874;
    v16 = logPrefix;
    v17 = 2114;
    v18 = keyCopy;
    v19 = 2114;
    v20 = versionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Successful SET transaction for key: %{public}@, new version: [%{public}@]", &v15, 0x20u);
  }

  [(MTSubscriptionSyncProcessor *)self markAddedSubscriptionsAsSynced];
  [(MTSubscriptionSyncProcessor *)self completeTransactionWithNewVersion:versionCopy mismatch:0 finishedBlock:blockCopy];
}

- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  dataCopy = data;
  v15 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v18 = 138543874;
    v19 = logPrefix;
    v20 = 2114;
    v21 = keyCopy;
    v22 = 2114;
    v23 = versionCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Conflict on SET transaction for key: %{public}@, new version: [%{public}@]", &v18, 0x20u);
  }

  v17 = [(MTSubscriptionSyncProcessor *)self mergeData:dataCopy forKey:keyCopy version:versionCopy mismatch:1];
  [(MTSubscriptionSyncProcessor *)self completeTransactionWithNewVersion:versionCopy mismatch:v17 finishedBlock:blockCopy];
}

- (BOOL)mergeData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch
{
  mismatchCopy = mismatch;
  versionCopy = version;
  keyCopy = key;
  dataCopy = data;
  if (+[_TtC18PodcastsFoundation18SyncKeysRepository shouldSyncInReadOnlyMode])
  {
    v13 = [(MTSubscriptionSyncProcessor *)self overrideLocalWithRemoteData:dataCopy forKey:keyCopy version:versionCopy mismatch:mismatchCopy];
  }

  else
  {
    v13 = [(MTSubscriptionSyncProcessor *)self mergeLocalAndRemoteData:dataCopy forKey:keyCopy version:versionCopy mismatch:mismatchCopy];
  }

  v14 = v13;

  return v14;
}

- (BOOL)overrideLocalWithRemoteData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch
{
  mismatchCopy = mismatch;
  dataCopy = data;
  keyCopy = key;
  versionCopy = version;
  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    addedSubscriptions = [(MTSubscriptionSyncProcessor *)self addedSubscriptions];
    *buf = 138543618;
    *&buf[4] = logPrefix;
    *&buf[12] = 2112;
    *&buf[14] = addedSubscriptions;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Read-only sync mode -> Overriding all local data. Local shows that will be overriden: %@; Also, deleting all Hidden podcasts synchronously.", buf, 0x16u);
  }

  context = [(MTSubscriptionSyncProcessor *)self context];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v44 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100156460;
  v33[3] = &unk_1004DDDD8;
  v33[4] = self;
  v37 = buf;
  v16 = dataCopy;
  v34 = v16;
  v17 = keyCopy;
  v35 = v17;
  v31 = versionCopy;
  v36 = v31;
  v38 = mismatchCopy;
  [context performBlockAndWaitWithSave:v33];
  if (*(*&buf[8] + 24) == 1)
  {
    v18 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      logPrefix2 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      *v41 = 138543362;
      v42 = logPrefix2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@ Found a merge conflict on read-only sync mode!", v41, 0xCu);
    }

    v20 = mismatchCopy;
    v21 = objc_alloc_init(MZKeyValueStoreNode);
    [(MZKeyValueStoreNode *)v21 setKey:v17];
    [(MZKeyValueStoreNode *)v21 setValue:v16];
    arrayValue = [(MZKeyValueStoreNode *)v21 arrayValue];
    cloudSyncBugReporter = [(MTSubscriptionSyncProcessor *)self cloudSyncBugReporter];
    storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncType = [storageProvider syncType];
    storageProvider2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncVersion = [storageProvider2 syncVersion];
    v39[0] = @"remoteData";
    v39[1] = @"remoteMismatch";
    v28 = @"false";
    if (v20)
    {
      v28 = @"true";
    }

    v40[0] = arrayValue;
    v40[1] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    [cloudSyncBugReporter reportSubscriptionsSyncIssue:3 subscriptionSyncType:syncType version:syncVersion userInfo:v29];
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

- (BOOL)mergeLocalAndRemoteData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch
{
  mismatchCopy = mismatch;
  dataCopy = data;
  keyCopy = key;
  versionCopy = version;
  v8 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    *buf = 138544130;
    *&buf[4] = logPrefix;
    *&buf[12] = 2114;
    *&buf[14] = keyCopy;
    *&buf[22] = 2114;
    v69 = versionCopy;
    v70 = 1026;
    v71 = mismatchCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Merging data for key: %{public}@; newVersion: [%{public}@]; mismatch: %{public}d", buf, 0x26u);
  }

  v48 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v48 setKey:keyCopy];
  [(MZKeyValueStoreNode *)v48 setValue:dataCopy];
  if ([(MZKeyValueStoreNode *)v48 hasData])
  {
    arrayValue = [(MZKeyValueStoreNode *)v48 arrayValue];
    v11 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix2 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v13 = [arrayValue count];
      *buf = 138543618;
      *&buf[4] = logPrefix2;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Merging %lu remote dictionaries:", buf, 0x16u);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = arrayValue;
    v14 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v14)
    {
      v15 = *v60;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v60 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v59 + 1) + 8 * i);
          v18 = _MTLogCategoryCloudSync();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            logPrefix3 = [(MTSubscriptionSyncProcessor *)self logPrefix];
            *buf = 138543619;
            *&buf[4] = logPrefix3;
            *&buf[12] = 2113;
            *&buf[14] = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ %{private}@", buf, 0x16u);
          }
        }

        v14 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v14);
    }

    if (![obj count])
    {
      v20 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        logPrefix4 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        *buf = 138543362;
        *&buf[4] = logPrefix4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ Nothing to merge: Store node has data, but there are no podcast items.", buf, 0xCu);
      }

      v22 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        logPrefix5 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        v24 = [(MZKeyValueStoreNode *)v48 debugDescription];
        *buf = 138543619;
        *&buf[4] = logPrefix5;
        *&buf[12] = 2113;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Node data: %{private}@", buf, 0x16u);
      }
    }

    v25 = objc_opt_new();
    v26 = objc_opt_new();
    context = [(MTSubscriptionSyncProcessor *)self context];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v69) = mismatchCopy;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100156CC0;
    v51[3] = &unk_1004DDE00;
    v51[4] = self;
    v28 = context;
    v52 = v28;
    v29 = obj;
    v53 = v29;
    v30 = v25;
    v54 = v30;
    v31 = v26;
    v55 = v31;
    v58 = mismatchCopy;
    v32 = versionCopy;
    v56 = v32;
    v57 = buf;
    [v28 performBlockAndWaitWithSave:v51];
    LOBYTE(mismatchCopy) = (*(*&buf[8] + 24) | mismatchCopy) != 0;
    if ([v30 count])
    {
      v33 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        logPrefix6 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        v35 = [v30 count];
        *v63 = 138543618;
        v64 = logPrefix6;
        v65 = 2050;
        v66 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Subscribing to %{public}lu podcasts from cloud sync", v63, 0x16u);
      }

      [(MTSubscriptionSyncProcessor *)self subscribeFromCloudToPodcasts:v30];
    }

    if ([v31 count])
    {
      v36 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        logPrefix7 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        v38 = [v31 count];
        *v63 = 138543618;
        v64 = logPrefix7;
        v65 = 2050;
        v66 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}@ Unsubscribing %{public}lu podcasts from cloud sync (will be also deleted if they need to)", v63, 0x16u);
      }

      storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
      allObjects = [v31 allObjects];
      context2 = [(MTSubscriptionSyncProcessor *)self context];
      [storageProvider disableSubscriptionsWithUuids:allObjects ctx:context2];

      -[MTSubscriptionSyncProcessor checkPotentialLibraryDeletionIssueForPreviouslySubscribedPodcastsCount:podcastsToUnsubscribeCount:newVersion:](self, "checkPotentialLibraryDeletionIssueForPreviouslySubscribedPodcastsCount:podcastsToUnsubscribeCount:newVersion:", -[MTSubscriptionSyncProcessor initialSubscribedPodcastsCount](self, "initialSubscribedPodcastsCount"), [v31 count], v32);
    }

    [(MTSubscriptionSyncProcessor *)self reorderLocalPodcastsToMatchRemote:v29];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(MTSubscriptionSyncProcessor *)self markAddedSubscriptionsAsSynced];
    v29 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix8 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      *buf = 138544130;
      *&buf[4] = logPrefix8;
      *&buf[12] = 2114;
      *&buf[14] = versionCopy;
      *&buf[22] = 2114;
      v69 = keyCopy;
      v70 = 1024;
      v71 = mismatchCopy;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Nothing to merge: No data in the cloud node version: [%{public}@] key: %{public}@ mismatch:%d", buf, 0x26u);
    }
  }

  return mismatchCopy;
}

- (id)podcastCacheInContext:(id)context
{
  contextCopy = context;
  v5 = [MTEntityUpdaterCache alloc];
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v7 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [storageProvider syncType]);
  v8 = kMTPodcastEntityName;
  v12[0] = kPodcastStoreCollectionId;
  v12[1] = kPodcastFeedUrl;
  v12[2] = kPodcastUuid;
  v9 = [NSArray arrayWithObjects:v12 count:3];
  v10 = [(MTEntityUpdaterCache *)v5 initWithPredicate:v7 entityName:v8 ctx:contextCopy properties:v9 fetchProperties:0];

  [(MTEntityUpdaterCache *)v10 setAllowKeyForValue:&stru_1004DDE40];

  return v10;
}

- (void)importRemotePodcastDicts:(id)dicts inContext:(id)context visitingPodcastsInCache:(id)cache updatingPodcastsToAdd:(id)add updatingPodcastsToUnsubscribe:(id)unsubscribe mismatch:(BOOL)mismatch version:(id)version
{
  mismatchCopy = mismatch;
  dictsCopy = dicts;
  contextCopy = context;
  cacheCopy = cache;
  addCopy = add;
  unsubscribeCopy = unsubscribe;
  versionCopy = version;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = dictsCopy;
  v15 = [dictsCopy countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v15)
  {
    v16 = v15;
    v50 = *v54;
    v52 = kPodcastFeedUrl;
    v41 = kPodcastTitle;
    v40 = kPodcastStoreCollectionId;
    v49 = kPodcastUuid;
    selfCopy = self;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v54 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v53 + 1) + 8 * i);
        v19 = [v18 objectForKey:v52];
        v20 = [cacheCopy propertyDictionaryForSearchItem:v18];
        v21 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
          v23 = v16;
          if (v20)
          {
            v24 = @"Found";
          }

          else
          {
            v24 = @"Didn't find";
          }

          v25 = [v18 objectForKey:v41];
          [v18 objectForKey:v52];
          v26 = v48 = v19;
          v27 = [v18 objectForKey:v40];
          unsignedLongLongValue = [v27 unsignedLongLongValue];
          *buf = 138544387;
          v58 = logPrefix;
          v59 = 2114;
          v60 = v24;
          v16 = v23;
          v61 = 2113;
          v62 = v25;
          v63 = 2113;
          v64 = v26;
          v65 = 2049;
          v66 = unsignedLongLongValue;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ local match for podcast %{private}@, %{private}@, %{private}lld", buf, 0x34u);

          self = selfCopy;
          v19 = v48;
        }

        v29 = [v20 objectForKeyedSubscript:v49];
        if (v20)
        {
          v30 = [contextCopy podcastForUuid:v29];
          if (v19)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v30 = 0;
          if (v19)
          {
LABEL_13:
            v31 = v19;
            v32 = [(MTSubscriptionSyncProcessor *)self updatePodcastsToUnsubscribe:unsubscribeCopy remotePodcast:v18 localPodcast:v30];
            v33 = [(MTSubscriptionSyncProcessor *)self updateSettingsIfNeededForLocalPodcast:v30 remotePodcast:v18];
            v34 = [(MTSubscriptionSyncProcessor *)self updatePodcastsToAdd:addCopy addingPodcastIfNeeded:v18 hasLocalPodcast:v30 != 0];
            v35 = v32;
            v19 = v31;
            [(MTSubscriptionSyncProcessor *)self reportImportingRemotePodcast:v18 withLocalPodcast:v30 shouldAddPodcast:v34 shouldUnsubscribeLocalPodcast:v35 shouldUpdateSettings:v33 mismatch:mismatchCopy version:versionCopy];
            goto LABEL_18;
          }
        }

        v36 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [(MTSubscriptionSyncProcessor *)self logPrefix];
          v38 = v37 = v19;
          *buf = 138543362;
          v58 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}@ Found podcast in BK with nil feedURL. Can't follow it. Continuing to next one.", buf, 0xCu);

          v19 = v37;
        }

LABEL_18:
      }

      v16 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v16);
  }
}

- (BOOL)updatePodcastsToUnsubscribe:(id)unsubscribe remotePodcast:(id)podcast localPodcast:(id)localPodcast
{
  unsubscribeCopy = unsubscribe;
  podcastCopy = podcast;
  localPodcastCopy = localPodcast;
  v11 = [podcastCopy objectForKey:kPodcastSubscribed];
  bOOLValue = [v11 BOOLValue];

  if (localPodcastCopy && !(bOOLValue & 1 | (([localPodcastCopy subscribed] & 1) == 0)))
  {
    v14 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
      title = [localPodcastCopy title];
      feedURL = [localPodcastCopy feedURL];
      storeCollectionId = [localPodcastCopy storeCollectionId];
      uuid = [localPodcastCopy uuid];
      v20 = [podcastCopy description];
      v23 = 138544643;
      v24 = logPrefix;
      v25 = 2113;
      v26 = title;
      v27 = 2113;
      v28 = feedURL;
      v29 = 2049;
      v30 = storeCollectionId;
      v31 = 2114;
      v32 = uuid;
      v33 = 2113;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking local podcast for unsubscribe: %{private}@, %{private}@, %{private}lld, %{public}@. Remote dict: %{private}@", &v23, 0x3Eu);
    }

    uuid2 = [localPodcastCopy uuid];
    [unsubscribeCopy addObject:uuid2];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)updateSettingsIfNeededForLocalPodcast:(id)podcast remotePodcast:(id)remotePodcast
{
  podcastCopy = podcast;
  remotePodcastCopy = remotePodcast;
  context = [(MTSubscriptionSyncProcessor *)self context];
  if (podcastCopy)
  {
    [(MTSubscriptionSyncProcessor *)self updateSettingsForLocalPodcast:podcastCopy remotePodcast:remotePodcastCopy ctx:context];
  }

  return podcastCopy != 0;
}

- (BOOL)updatePodcastsToAdd:(id)add addingPodcastIfNeeded:(id)needed hasLocalPodcast:(BOOL)podcast
{
  podcastCopy = podcast;
  addCopy = add;
  neededCopy = needed;
  v10 = [neededCopy objectForKey:kPodcastSubscribed];
  bOOLValue = [v10 BOOLValue];

  v12 = !podcastCopy & bOOLValue;
  if (v12 == 1)
  {
    v13 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v15 = [neededCopy description];
      v17 = 138543619;
      v18 = logPrefix;
      v19 = 2113;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking remote podcast for insertion in local DB [reason: not in local DB and subscribed]: %{private}@", &v17, 0x16u);
    }

    [addCopy addObject:neededCopy];
  }

  return v12;
}

- (void)reportImportingRemotePodcast:(id)podcast withLocalPodcast:(id)localPodcast shouldAddPodcast:(BOOL)addPodcast shouldUnsubscribeLocalPodcast:(BOOL)unsubscribeLocalPodcast shouldUpdateSettings:(BOOL)settings mismatch:(BOOL)mismatch version:(id)version
{
  mismatchCopy = mismatch;
  settingsCopy = settings;
  unsubscribeLocalPodcastCopy = unsubscribeLocalPodcast;
  addPodcastCopy = addPodcast;
  podcastCopy = podcast;
  localPodcastCopy = localPodcast;
  versionCopy = version;
  config = [(MTSubscriptionSyncProcessor *)self config];
  supportsMetrics = [config supportsMetrics];

  if (supportsMetrics)
  {
    v20 = [podcastCopy mutableCopy];
    [v20 setValue:versionCopy forKey:@"version"];
    v21 = [NSNumber numberWithBool:mismatchCopy];
    [v20 setValue:v21 forKey:@"mismatch"];

    v22 = [(MTSubscriptionSyncProcessor *)self syncDictionaryToMetricsDictionary:podcastCopy];
    [v20 setValue:v22 forKey:@"sync_data"];

    if (settingsCopy)
    {
      storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
      [storageProvider recordUserAction:@"cloud_sync_update_podcast" dataSource:localPodcastCopy withData:v20];

      if (!unsubscribeLocalPodcastCopy)
      {
LABEL_4:
        if (!addPodcastCopy)
        {
LABEL_6:

          goto LABEL_7;
        }

LABEL_5:
        storageProvider2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
        [storageProvider2 recordUserAction:@"cloud_sync_add_podcast" dataSource:0 withData:v20];

        goto LABEL_6;
      }
    }

    else if (!unsubscribeLocalPodcastCopy)
    {
      goto LABEL_4;
    }

    storageProvider3 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v28[0] = @"version";
    v28[1] = @"mismatch";
    v29[0] = versionCopy;
    v26 = [NSNumber numberWithBool:mismatchCopy];
    v29[1] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    [storageProvider3 recordUserAction:@"cloud_sync_delete_podcast" dataSource:localPodcastCopy withData:v27];

    if (!addPodcastCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
}

- (id)unvisitedPodcastsToUnsubscribeIn:(id)in mismatch:(BOOL *)mismatch version:(id)version
{
  versionCopy = version;
  inCopy = in;
  [(MTSubscriptionSyncProcessor *)self context];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100157B0C;
  v17 = v16[3] = &unk_1004DDE68;
  selfCopy = self;
  v19 = versionCopy;
  mismatchCopy = mismatch;
  v10 = objc_opt_new();
  v20 = v10;
  v11 = versionCopy;
  v12 = v17;
  [inCopy enumerateUnvisitedItemUuids:v16];

  v13 = v20;
  v14 = v10;

  return v10;
}

- (void)checkPotentialLibraryDeletionIssueForPreviouslySubscribedPodcastsCount:(unint64_t)count podcastsToUnsubscribeCount:(unint64_t)unsubscribeCount newVersion:(id)version
{
  v8 = unsubscribeCount / count;
  cloudSyncBugReporter = _MTLogCategoryCloudSync();
  v10 = os_log_type_enabled(cloudSyncBugReporter, OS_LOG_TYPE_DEFAULT);
  if (count >= 0xA && v8 >= 0.8)
  {
    if (v10)
    {
      logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v20 = 138543874;
      v21 = logPrefix;
      v22 = 2048;
      unsubscribeCountCopy2 = unsubscribeCount;
      v24 = 2048;
      countCopy = *&v8;
      _os_log_impl(&_mh_execute_header, cloudSyncBugReporter, OS_LOG_TYPE_DEFAULT, "%{public}@ Big library unsubscription detected: podcastsToUnsubscribeCount: %lu, unsubscribedRatio: %f", &v20, 0x20u);
    }

    cloudSyncBugReporter = [(MTSubscriptionSyncProcessor *)self cloudSyncBugReporter];
    storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncType = [storageProvider syncType];
    storageProvider2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncVersion = [storageProvider2 syncVersion];
    v28[0] = @"previouslyFollowedShowsCount";
    v16 = [NSNumber numberWithUnsignedInteger:count];
    v29[0] = v16;
    v28[1] = @"showsToUnfollowCount";
    v17 = [NSNumber numberWithUnsignedInteger:unsubscribeCount];
    v29[1] = v17;
    v28[2] = @"unfollowRatio";
    v18 = [NSNumber numberWithDouble:v8];
    v29[2] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
    [cloudSyncBugReporter reportSubscriptionsSyncIssue:1 subscriptionSyncType:syncType version:syncVersion userInfo:v19];

    goto LABEL_8;
  }

  if (v10)
  {
    storageProvider = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v20 = 138544130;
    v21 = storageProvider;
    v22 = 2048;
    unsubscribeCountCopy2 = unsubscribeCount;
    v24 = 2048;
    countCopy = count;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, cloudSyncBugReporter, OS_LOG_TYPE_DEFAULT, "%{public}@ %ld unsubscriptions detected out of %ld total subscribed shows, unsubscriptionRatio: %f", &v20, 0x2Au);
LABEL_8:
  }
}

- (void)completeTransactionWithNewVersion:(id)version mismatch:(BOOL)mismatch finishedBlock:(id)block
{
  mismatchCopy = mismatch;
  versionCopy = version;
  blockCopy = block;
  v10 = _MTLogCategoryCloudSync();
  v11 = v10;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = @"NO";
    if (mismatchCopy)
    {
      v13 = @"YES";
    }

    v28 = 138412290;
    v29 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, signpostID, "MTSubscriptionSyncProcessor.completed", "mismatch %@", &v28, 0xCu);
  }

  v14 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
    syncVersion = [storageProvider syncVersion];
    v28 = 138544130;
    v29 = logPrefix;
    v30 = 2114;
    v31 = versionCopy;
    v32 = 2114;
    v33 = syncVersion;
    v34 = 1024;
    v35 = mismatchCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Transaction complete: Updating sync version to %{public}@ (from %{public}@), mismatch %d", &v28, 0x26u);
  }

  storageProvider2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [storageProvider2 setSyncVersion:versionCopy];

  v19 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix2 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v28 = 138543362;
    v29 = logPrefix2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Cleaning up old hidden podcasts after successful transaction", &v28, 0xCu);
  }

  storageProvider3 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [storageProvider3 cleanUpOldHiddenPodcasts];

  v22 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix3 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v24 = logPrefix3;
    v25 = @"NO";
    if (mismatchCopy)
    {
      v25 = @"YES";
    }

    v28 = 138543618;
    v29 = logPrefix3;
    v30 = 2114;
    v31 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting subscriptions sync dirty = %{public}@", &v28, 0x16u);
  }

  storageProvider4 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [storageProvider4 setSyncDirtyFlag:mismatchCopy];

  if (!mismatchCopy)
  {
    storageProvider5 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    [storageProvider5 updateSubscriptionsLastSyncTimestamp];
  }

  blockCopy[2](blockCopy, mismatchCopy);
}

- (void)reorderLocalPodcastsToMatchRemote:(id)remote
{
  remoteCopy = remote;
  v5 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    *buf = 138543362;
    v14 = logPrefix;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Reordering local podcasts to match remote dictionaries:", buf, 0xCu);
  }

  [(MTSubscriptionSyncProcessor *)self context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100158710;
  v10 = v9[3] = &unk_1004D94C8;
  v11 = remoteCopy;
  selfCopy = self;
  v7 = remoteCopy;
  v8 = v10;
  [v8 performBlockAndWaitWithSave:v9];
}

- (id)syncDictionaryToMetricsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  subscriptionSyncProcessorSyncKeys = [objc_opt_class() subscriptionSyncProcessorSyncKeys];
  v5 = [dictionaryCopy dictionaryWithValuesForKeys:subscriptionSyncProcessorSyncKeys];

  return v5;
}

- (id)_addedSubscriptions
{
  context = [(MTSubscriptionSyncProcessor *)self context];
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v5 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [storageProvider syncType]);
  kPodcastFeedUrl = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastFeedUrl];
  v7 = [v5 AND:kPodcastFeedUrl];
  v8 = [MTPodcast predicateForHasBeenSynced:0];
  v9 = [v7 AND:v8];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100158DA8;
  v16[3] = &unk_1004D8DA8;
  v17 = context;
  v18 = v9;
  selfCopy = self;
  v10 = objc_opt_new();
  v20 = v10;
  v11 = v9;
  v12 = context;
  [v12 performBlockAndWait:v16];
  v13 = v20;
  v14 = v10;

  return v10;
}

- (unint64_t)_subscribedPodcastsCount
{
  context = [(MTSubscriptionSyncProcessor *)self context];
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v5 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [storageProvider syncType]);
  kPodcastFeedUrl = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastFeedUrl];
  v7 = [v5 AND:kPodcastFeedUrl];
  v8 = +[MTPodcast predicateForSubscribedPodcasts];
  v9 = [v7 AND:v8];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100159194;
  v14[3] = &unk_1004D9040;
  v17 = &v18;
  v10 = context;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  [v10 performBlockAndWait:v14];
  v12 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (void)markAddedSubscriptionsAsSynced
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    addedSubscriptions = [(MTSubscriptionSyncProcessor *)self addedSubscriptions];
    v8 = 138543619;
    v9 = logPrefix;
    v10 = 2113;
    v11 = addedSubscriptions;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking new subscriptions as synced: %{private}@", &v8, 0x16u);
  }

  addedSubscriptions2 = [(MTSubscriptionSyncProcessor *)self addedSubscriptions];
  v7 = [MTPodcast predicateForPodcastUuids:addedSubscriptions2];

  [(MTSubscriptionSyncProcessor *)self markShowsAsSyncedForPredicate:v7];
}

- (void)markAllShowsAsSynced
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v7 = 138543362;
    v8 = logPrefix;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking all shows as synced", &v7, 0xCu);
  }

  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v6 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [storageProvider syncType]);

  [(MTSubscriptionSyncProcessor *)self markShowsAsSyncedForPredicate:v6];
}

- (void)markShowsAsSyncedForPredicate:(id)predicate
{
  predicateCopy = predicate;
  [(MTSubscriptionSyncProcessor *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001594B4;
  v8 = v7[3] = &unk_1004D8798;
  v9 = predicateCopy;
  v5 = predicateCopy;
  v6 = v8;
  [v6 performBlockAndWaitWithSave:v7];
}

- (id)_podcastSubscriptions
{
  [(MTSubscriptionSyncProcessor *)self context];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100159728;
  v11 = v10[3] = &unk_1004D94C8;
  selfCopy = self;
  v3 = objc_opt_new();
  v13 = v3;
  v4 = v11;
  [v4 performBlockAndWait:v10];
  if (![v3 count])
  {
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
      *buf = 138543362;
      v15 = logPrefix;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ WARNING: Syncing up an empty podcast library", buf, 0xCu);
    }
  }

  v7 = v13;
  v8 = v3;

  return v3;
}

- (void)subscribeFromCloudToPodcasts:(id)podcasts
{
  podcastsCopy = podcasts;
  context = [(MTSubscriptionSyncProcessor *)self context];
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [storageProvider subscriptionsLastSyncTimestamp];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100159CA0;
  v9[3] = &unk_1004D94C8;
  v10 = podcastsCopy;
  selfCopy = self;
  v12 = context;
  v7 = context;
  v8 = podcastsCopy;
  [v7 performBlockAndWaitWithSave:v9];
}

- (void)updateSettingsForLocalPodcast:(id)podcast remotePodcast:(id)remotePodcast ctx:(id)ctx
{
  podcastCopy = podcast;
  remotePodcastCopy = remotePodcast;
  ctxCopy = ctx;
  v9 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTSubscriptionSyncProcessor *)self logPrefix];
    title = [podcastCopy title];
    feedURL = [podcastCopy feedURL];
    storeCollectionId = [podcastCopy storeCollectionId];
    uuid = [podcastCopy uuid];
    v15 = [remotePodcastCopy description];
    *buf = 138544643;
    v95 = logPrefix;
    v96 = 2113;
    v97 = title;
    v98 = 2113;
    v99 = feedURL;
    v100 = 2049;
    v101 = storeCollectionId;
    v102 = 2114;
    v103 = uuid;
    v104 = 2113;
    v105 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating settings for podcast: %{private}@, %{private}@, %{private}lld, %{public}@. Remote dictionary: %{private}@", buf, 0x3Eu);
  }

  [podcastCopy setHasBeenSynced:1];
  v16 = [remotePodcastCopy objectForKey:kPodcastSubscribed];
  bOOLValue = [v16 BOOLValue];

  subscribed = [podcastCopy subscribed];
  if ((subscribed & 1) == 0 && bOOLValue)
  {
    v19 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix2 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      title2 = [podcastCopy title];
      feedURL2 = [podcastCopy feedURL];
      storeCollectionId2 = [podcastCopy storeCollectionId];
      uuid2 = [podcastCopy uuid];
      *buf = 138544387;
      v95 = logPrefix2;
      v96 = 2113;
      v97 = title2;
      v98 = 2113;
      v99 = feedURL2;
      v100 = 2049;
      v101 = storeCollectionId2;
      v102 = 2114;
      v103 = uuid2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Enabling subscription for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x34u);
    }

    storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
    uuid3 = [podcastCopy uuid];
    [storageProvider enableSubscriptionOnPodcastUuid:uuid3 ctx:ctxCopy];

LABEL_8:
    goto LABEL_10;
  }

  if (!(bOOLValue & 1 | ((subscribed & 1) == 0)))
  {
    storageProvider = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(storageProvider, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix3 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      title3 = [podcastCopy title];
      feedURL3 = [podcastCopy feedURL];
      storeCollectionId3 = [podcastCopy storeCollectionId];
      uuid4 = [podcastCopy uuid];
      *buf = 138544387;
      v95 = logPrefix3;
      v96 = 2113;
      v97 = title3;
      v98 = 2113;
      v99 = feedURL3;
      v100 = 2049;
      v101 = storeCollectionId3;
      v102 = 2114;
      v103 = uuid4;
      _os_log_impl(&_mh_execute_header, storageProvider, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping unsubscription of remotely unsubscribed podcast [reason: all unsubscriptions should be handled in batch later in the process]: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x34u);
    }

    goto LABEL_8;
  }

LABEL_10:
  v27 = [remotePodcastCopy objectForKeyedSubscript:kPodcastShowTypeSetting];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
    longLongValue = [v27 longLongValue];
    v31 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix4 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      title4 = [podcastCopy title];
      feedURL4 = [podcastCopy feedURL];
      storeCollectionId4 = [podcastCopy storeCollectionId];
      uuid5 = [podcastCopy uuid];
      *buf = 138544643;
      v95 = logPrefix4;
      v96 = 2050;
      v97 = longLongValue;
      v98 = 2113;
      v99 = title4;
      v100 = 2113;
      v101 = feedURL4;
      v102 = 2049;
      v103 = storeCollectionId4;
      v104 = 2114;
      v105 = uuid5;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Subscriptions Sync wants to set show type setting to %{public}lld, for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x3Eu);
    }

    [podcastCopy setShowTypeSetting:longLongValue];
    v28 = v29;
  }

  v93 = [remotePodcastCopy objectForKey:kPodcastLastTouchDate];
  v37 = [remotePodcastCopy objectForKey:kPodcastDarkCount];
  if (v37)
  {
    if (v93)
    {
      [podcastCopy lastTouchDate];
      v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v39 = [v38 compare:v93];

      if (v39 == -1)
      {
        isDark = [podcastCopy isDark];
        v41 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          logPrefix5 = [(MTSubscriptionSyncProcessor *)self logPrefix];
          longLongValue2 = [v37 longLongValue];
          [podcastCopy title];
          v43 = v88 = isDark;
          feedURL5 = [podcastCopy feedURL];
          storeCollectionId5 = [podcastCopy storeCollectionId];
          uuid6 = [podcastCopy uuid];
          *buf = 138544643;
          v95 = logPrefix5;
          v96 = 2050;
          v97 = longLongValue2;
          v98 = 2113;
          v99 = v43;
          v100 = 2113;
          v101 = feedURL5;
          v102 = 2049;
          v103 = storeCollectionId5;
          v104 = 2114;
          v105 = uuid6;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting darkCount = %{public}lld for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x3Eu);

          isDark = v88;
        }

        [podcastCopy setDarkCount:{objc_msgSend(v37, "longLongValue")}];
        if (isDark != [podcastCopy isDark])
        {
          v47 = isDark;
          isDark2 = [podcastCopy isDark];
          latestExitFromDarkDownloads = [podcastCopy latestExitFromDarkDownloads];
          if (latestExitFromDarkDownloads)
          {
            v50 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v47 isDark:isDark2 reason:6 previousExit:latestExitFromDarkDownloads];
          }

          else
          {
            v56 = +[NSDate now];
            v50 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v47 isDark:isDark2 reason:6 previousExit:v56];
          }

          v57 = objc_opt_new();
          [v57 sendEvent:v50];
        }
      }
    }
  }

  feedURL6 = [podcastCopy feedURL];
  v59 = kPodcastFeedUrl;
  v60 = [remotePodcastCopy objectForKeyedSubscript:kPodcastFeedUrl];
  v61 = [feedURL6 isEqualToString:v60];

  if ((v61 & 1) == 0)
  {
    v62 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      [(MTSubscriptionSyncProcessor *)self logPrefix];
      v63 = v86 = remotePodcastCopy;
      v64 = [v86 objectForKeyedSubscript:v59];
      title5 = [podcastCopy title];
      feedURL7 = [podcastCopy feedURL];
      v67 = v37;
      storeCollectionId6 = [podcastCopy storeCollectionId];
      [podcastCopy uuid];
      v69 = v89 = v28;
      *buf = 138544643;
      v95 = v63;
      v96 = 2113;
      v97 = v64;
      v98 = 2113;
      v99 = title5;
      v100 = 2113;
      v101 = feedURL7;
      v102 = 2049;
      v103 = storeCollectionId6;
      v37 = v67;
      v104 = 2114;
      v105 = v69;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting feedURL = %{private}@ for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x3Eu);

      v28 = v89;
      remotePodcastCopy = v86;
    }

    v70 = [remotePodcastCopy objectForKeyedSubscript:v59];
    [podcastCopy setFeedURL:v70];
  }

  v71 = [remotePodcastCopy objectForKeyedSubscript:kPodcastAddedDate];
  v72 = v71;
  if (v71)
  {
    [v71 timeIntervalSinceReferenceDate];
    v74 = v73;
    [podcastCopy addedDate];
    if (v74 < v75)
    {
      v76 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        logPrefix6 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        [v72 timeIntervalSinceReferenceDate];
        v79 = v78;
        v80 = [v72 description];
        [podcastCopy title];
        v81 = v90 = v28;
        feedURL8 = [podcastCopy feedURL];
        storeCollectionId7 = [podcastCopy storeCollectionId];
        [podcastCopy uuid];
        v84 = v87 = v37;
        *buf = 138544899;
        v95 = logPrefix6;
        v96 = 2050;
        v97 = v79;
        v98 = 2114;
        v99 = v80;
        v100 = 2113;
        v101 = v81;
        v102 = 2113;
        v103 = feedURL8;
        v104 = 2049;
        v105 = storeCollectionId7;
        v106 = 2114;
        v107 = v84;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting addedDate = %{public}f(%{public}@) for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x48u);

        v37 = v87;
        v28 = v90;
      }

      [v72 timeIntervalSinceReferenceDate];
      [podcastCopy setAddedDate:?];
    }
  }
}

- (id)logPrefix
{
  storageProvider = [(MTSubscriptionSyncProcessor *)self storageProvider];
  syncType = [storageProvider syncType];

  if (syncType == 1)
  {
    return @"[Subscription V3 Sync]";
  }

  else
  {
    return @"[Subscription Sync]";
  }
}

@end