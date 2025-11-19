@interface MTSubscriptionSyncProcessor
+ (id)subscriptionSyncProcessorSyncKeys;
- (BOOL)hasLocalChanges;
- (BOOL)mergeData:(id)a3 forKey:(id)a4 version:(id)a5 mismatch:(BOOL)a6;
- (BOOL)mergeLocalAndRemoteData:(id)a3 forKey:(id)a4 version:(id)a5 mismatch:(BOOL)a6;
- (BOOL)overrideLocalWithRemoteData:(id)a3 forKey:(id)a4 version:(id)a5 mismatch:(BOOL)a6;
- (BOOL)updatePodcastsToAdd:(id)a3 addingPodcastIfNeeded:(id)a4 hasLocalPodcast:(BOOL)a5;
- (BOOL)updatePodcastsToUnsubscribe:(id)a3 remotePodcast:(id)a4 localPodcast:(id)a5;
- (BOOL)updateSettingsIfNeededForLocalPodcast:(id)a3 remotePodcast:(id)a4;
- (MTSubscriptionSyncProcessor)initWithStorage:(id)a3 config:(id)a4 cloudSyncBugReporter:(id)a5;
- (id)_addedSubscriptions;
- (id)_podcastSubscriptions;
- (id)context;
- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5;
- (id)logPrefix;
- (id)podcastCacheInContext:(id)a3;
- (id)syncDictionaryToMetricsDictionary:(id)a3;
- (id)unvisitedPodcastsToUnsubscribeIn:(id)a3 mismatch:(BOOL *)a4 version:(id)a5;
- (id)versionForGetTransaction:(id)a3 key:(id)a4;
- (int64_t)operationTypeForSET;
- (unint64_t)_subscribedPodcastsCount;
- (void)checkPotentialLibraryDeletionIssueForPreviouslySubscribedPodcastsCount:(unint64_t)a3 podcastsToUnsubscribeCount:(unint64_t)a4 newVersion:(id)a5;
- (void)completeTransactionWithNewVersion:(id)a3 mismatch:(BOOL)a4 finishedBlock:(id)a5;
- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)importRemotePodcastDicts:(id)a3 inContext:(id)a4 visitingPodcastsInCache:(id)a5 updatingPodcastsToAdd:(id)a6 updatingPodcastsToUnsubscribe:(id)a7 mismatch:(BOOL)a8 version:(id)a9;
- (void)markAddedSubscriptionsAsSynced;
- (void)markAllShowsAsSynced;
- (void)markShowsAsSyncedForPredicate:(id)a3;
- (void)reorderLocalPodcastsToMatchRemote:(id)a3;
- (void)reportImportingRemotePodcast:(id)a3 withLocalPodcast:(id)a4 shouldAddPodcast:(BOOL)a5 shouldUnsubscribeLocalPodcast:(BOOL)a6 shouldUpdateSettings:(BOOL)a7 mismatch:(BOOL)a8 version:(id)a9;
- (void)subscribeFromCloudToPodcasts:(id)a3;
- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4;
- (void)updateSettingsForLocalPodcast:(id)a3 remotePodcast:(id)a4 ctx:(id)a5;
@end

@implementation MTSubscriptionSyncProcessor

- (MTSubscriptionSyncProcessor)initWithStorage:(id)a3 config:(id)a4 cloudSyncBugReporter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = MTSubscriptionSyncProcessor;
  v11 = [(MTSubscriptionSyncProcessor *)&v20 init];
  v12 = v11;
  if (v11)
  {
    [(MTSubscriptionSyncProcessor *)v11 setConfig:v9];
    [(MTSubscriptionSyncProcessor *)v12 setStorageProvider:v8];
    [(MTSubscriptionSyncProcessor *)v12 setCloudSyncBugReporter:v10];
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
  v2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v3 = [v2 importContext];

  return v3;
}

- (int64_t)operationTypeForSET
{
  v2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v3 = [v2 syncType];

  if (v3 == 1)
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
  v2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v3 = [v2 syncDirtyFlag];

  return v3;
}

- (id)versionForGetTransaction:(id)a3 key:(id)a4
{
  v5 = a4;
  v6 = _MTLogCategoryCloudSync();
  v7 = v6;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v17 = 138412290;
    v18 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTSubscriptionSyncProcessor.GET", "key: %@", &v17, 0xCu);
  }

  v9 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v10 = [v9 syncVersion];

  v11 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v17 = 138543874;
    v18 = v12;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Version for GET transaction [%{public}@] key: %{public}@", &v17, 0x20u);
  }

  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v17 = 138543874;
    v18 = v14;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Gathering addedSubscriptions for GET transaction [%{public}@] key: %{public}@", &v17, 0x20u);
  }

  v15 = [(MTSubscriptionSyncProcessor *)self _addedSubscriptions];
  [(MTSubscriptionSyncProcessor *)self setAddedSubscriptions:v15];

  [(MTSubscriptionSyncProcessor *)self setInitialSubscribedPodcastsCount:[(MTSubscriptionSyncProcessor *)self _subscribedPodcastsCount]];

  return v10;
}

- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5
{
  v7 = a4;
  if (+[_TtC18PodcastsFoundation18SyncKeysRepository shouldSyncInReadOnlyMode])
  {
    v8 = [(MTSubscriptionSyncProcessor *)self cloudSyncBugReporter];
    v9 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v10 = [v9 syncType];
    v11 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v12 = [v11 syncVersion];
    [v8 reportSubscriptionsSyncIssue:4 subscriptionSyncType:v10 version:v12 userInfo:0];
  }

  v13 = _MTLogCategoryCloudSync();
  v14 = v13;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v49 = 138412290;
    v50 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTSubscriptionSyncProcessor.SET", "key: %@", &v49, 0xCu);
  }

  v16 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  if ([v16 syncDirtyFlag])
  {
  }

  else
  {
    v17 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v18 = [v17 syncVersion];

    if (v18)
    {
      v19 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        v21 = [(MTSubscriptionSyncProcessor *)self storageProvider];
        v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v21 syncDirtyFlag]);
        v23 = [(MTSubscriptionSyncProcessor *)self storageProvider];
        v24 = [v23 syncVersion];
        v49 = 138544130;
        v50 = v20;
        v51 = 2114;
        v52 = v22;
        v53 = 2114;
        v54 = v24;
        v55 = 2114;
        v56 = v7;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ No data for SET transaction. syncDirtyFlag: %{public}@, podcastSyncVersion: %{public}@, key: %{public}@", &v49, 0x2Au);
      }

      goto LABEL_21;
    }
  }

  v25 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  *a5 = [v25 syncVersion];

  v26 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v28 = *a5;
    v49 = 138543874;
    v50 = v27;
    v51 = 2114;
    v52 = v28;
    v53 = 2114;
    v54 = v7;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Gathering data for SET transaction [%{public}@] key: %{public}@", &v49, 0x20u);
  }

  v19 = [(MTSubscriptionSyncProcessor *)self _podcastSubscriptions];
  v29 = [(MTSubscriptionSyncProcessor *)self _addedSubscriptions];
  [(MTSubscriptionSyncProcessor *)self setAddedSubscriptions:v29];

  [(MTSubscriptionSyncProcessor *)self setInitialSubscribedPodcastsCount:[(MTSubscriptionSyncProcessor *)self _subscribedPodcastsCount]];
  if (!v19)
  {
LABEL_21:
    v44 = 0;
    goto LABEL_22;
  }

  v30 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v32 = *a5;
    v33 = [NSNumber numberWithUnsignedInteger:[v19 count]];
    v34 = [v19 description];
    v49 = 138544387;
    v50 = v31;
    v51 = 2114;
    v52 = v32;
    v53 = 2114;
    v54 = v7;
    v55 = 2114;
    v56 = v33;
    v57 = 2113;
    v58 = v34;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Providing data for SET transaction [%{public}@] key: %{public}@ : count %{public}@, data: %{private}@", &v49, 0x34u);
  }

  v35 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v36 = [v35 syncVersion];
  v37 = [v36 integerValue];

  if (![v19 count]&& *a5 && v37 >= 11)
  {
    v38 = [(MTSubscriptionSyncProcessor *)self cloudSyncBugReporter];
    v39 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v40 = [v39 syncType];
    v41 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v42 = [v41 syncVersion];
    [v38 reportSubscriptionsSyncIssue:0 subscriptionSyncType:v40 version:v42 userInfo:0];
  }

  v43 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v43 setArrayValue:v19];
  v44 = [(MZKeyValueStoreNode *)v43 value];

LABEL_22:
  v45 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v49 = 138543362;
    v50 = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting subscriptions sync dirty = NO", &v49, 0xCu);
  }

  v47 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [v47 setSyncDirtyFlag:0];

  return v44;
}

- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4
{
  v5 = a4;
  v6 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [v6 setPodcastsDomainVersion:v5];
}

- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a4;
  v15 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v18 = 138543874;
    v19 = v16;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Successful GET transaction for key: %{public}@, new version: [%{public}@]", &v18, 0x20u);
  }

  v17 = [(MTSubscriptionSyncProcessor *)self mergeData:v14 forKey:v11 version:v12 mismatch:0];
  [(MTSubscriptionSyncProcessor *)self completeTransactionWithNewVersion:v12 mismatch:v17 finishedBlock:v13];
}

- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v15 = 138543874;
    v16 = v14;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Successful SET transaction for key: %{public}@, new version: [%{public}@]", &v15, 0x20u);
  }

  [(MTSubscriptionSyncProcessor *)self markAddedSubscriptionsAsSynced];
  [(MTSubscriptionSyncProcessor *)self completeTransactionWithNewVersion:v11 mismatch:0 finishedBlock:v12];
}

- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a4;
  v15 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v18 = 138543874;
    v19 = v16;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Conflict on SET transaction for key: %{public}@, new version: [%{public}@]", &v18, 0x20u);
  }

  v17 = [(MTSubscriptionSyncProcessor *)self mergeData:v14 forKey:v11 version:v12 mismatch:1];
  [(MTSubscriptionSyncProcessor *)self completeTransactionWithNewVersion:v12 mismatch:v17 finishedBlock:v13];
}

- (BOOL)mergeData:(id)a3 forKey:(id)a4 version:(id)a5 mismatch:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (+[_TtC18PodcastsFoundation18SyncKeysRepository shouldSyncInReadOnlyMode])
  {
    v13 = [(MTSubscriptionSyncProcessor *)self overrideLocalWithRemoteData:v12 forKey:v11 version:v10 mismatch:v6];
  }

  else
  {
    v13 = [(MTSubscriptionSyncProcessor *)self mergeLocalAndRemoteData:v12 forKey:v11 version:v10 mismatch:v6];
  }

  v14 = v13;

  return v14;
}

- (BOOL)overrideLocalWithRemoteData:(id)a3 forKey:(id)a4 version:(id)a5 mismatch:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v15 = [(MTSubscriptionSyncProcessor *)self addedSubscriptions];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Read-only sync mode -> Overriding all local data. Local shows that will be overriden: %@; Also, deleting all Hidden podcasts synchronously.", buf, 0x16u);
  }

  v32 = [(MTSubscriptionSyncProcessor *)self context];
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
  v16 = v10;
  v34 = v16;
  v17 = v11;
  v35 = v17;
  v31 = v12;
  v36 = v31;
  v38 = v6;
  [v32 performBlockAndWaitWithSave:v33];
  if (*(*&buf[8] + 24) == 1)
  {
    v18 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      *v41 = 138543362;
      v42 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@ Found a merge conflict on read-only sync mode!", v41, 0xCu);
    }

    v20 = v6;
    v21 = objc_alloc_init(MZKeyValueStoreNode);
    [(MZKeyValueStoreNode *)v21 setKey:v17];
    [(MZKeyValueStoreNode *)v21 setValue:v16];
    v22 = [(MZKeyValueStoreNode *)v21 arrayValue];
    v23 = [(MTSubscriptionSyncProcessor *)self cloudSyncBugReporter];
    v24 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v25 = [v24 syncType];
    v26 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v27 = [v26 syncVersion];
    v39[0] = @"remoteData";
    v39[1] = @"remoteMismatch";
    v28 = @"false";
    if (v20)
    {
      v28 = @"true";
    }

    v40[0] = v22;
    v40[1] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v23 reportSubscriptionsSyncIssue:3 subscriptionSyncType:v25 version:v27 userInfo:v29];
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

- (BOOL)mergeLocalAndRemoteData:(id)a3 forKey:(id)a4 version:(id)a5 mismatch:(BOOL)a6
{
  v47 = a6;
  v44 = a3;
  v46 = a4;
  v45 = a5;
  v8 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    *buf = 138544130;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v46;
    *&buf[22] = 2114;
    v69 = v45;
    v70 = 1026;
    v71 = v47;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Merging data for key: %{public}@; newVersion: [%{public}@]; mismatch: %{public}d", buf, 0x26u);
  }

  v48 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v48 setKey:v46];
  [(MZKeyValueStoreNode *)v48 setValue:v44];
  if ([(MZKeyValueStoreNode *)v48 hasData])
  {
    v10 = [(MZKeyValueStoreNode *)v48 arrayValue];
    v11 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v13 = [v10 count];
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Merging %lu remote dictionaries:", buf, 0x16u);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v10;
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
            v19 = [(MTSubscriptionSyncProcessor *)self logPrefix];
            *buf = 138543619;
            *&buf[4] = v19;
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
        v21 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ Nothing to merge: Store node has data, but there are no podcast items.", buf, 0xCu);
      }

      v22 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        v24 = [(MZKeyValueStoreNode *)v48 debugDescription];
        *buf = 138543619;
        *&buf[4] = v23;
        *&buf[12] = 2113;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Node data: %{private}@", buf, 0x16u);
      }
    }

    v25 = objc_opt_new();
    v26 = objc_opt_new();
    v27 = [(MTSubscriptionSyncProcessor *)self context];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v69) = v47;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100156CC0;
    v51[3] = &unk_1004DDE00;
    v51[4] = self;
    v28 = v27;
    v52 = v28;
    v29 = obj;
    v53 = v29;
    v30 = v25;
    v54 = v30;
    v31 = v26;
    v55 = v31;
    v58 = v47;
    v32 = v45;
    v56 = v32;
    v57 = buf;
    [v28 performBlockAndWaitWithSave:v51];
    LOBYTE(v47) = (*(*&buf[8] + 24) | v47) != 0;
    if ([v30 count])
    {
      v33 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        v35 = [v30 count];
        *v63 = 138543618;
        v64 = v34;
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
        v37 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        v38 = [v31 count];
        *v63 = 138543618;
        v64 = v37;
        v65 = 2050;
        v66 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}@ Unsubscribing %{public}lu podcasts from cloud sync (will be also deleted if they need to)", v63, 0x16u);
      }

      v39 = [(MTSubscriptionSyncProcessor *)self storageProvider];
      v40 = [v31 allObjects];
      v41 = [(MTSubscriptionSyncProcessor *)self context];
      [v39 disableSubscriptionsWithUuids:v40 ctx:v41];

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
      v42 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      *buf = 138544130;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = v45;
      *&buf[22] = 2114;
      v69 = v46;
      v70 = 1024;
      v71 = v47;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Nothing to merge: No data in the cloud node version: [%{public}@] key: %{public}@ mismatch:%d", buf, 0x26u);
    }
  }

  return v47;
}

- (id)podcastCacheInContext:(id)a3
{
  v4 = a3;
  v5 = [MTEntityUpdaterCache alloc];
  v6 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v7 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [v6 syncType]);
  v8 = kMTPodcastEntityName;
  v12[0] = kPodcastStoreCollectionId;
  v12[1] = kPodcastFeedUrl;
  v12[2] = kPodcastUuid;
  v9 = [NSArray arrayWithObjects:v12 count:3];
  v10 = [(MTEntityUpdaterCache *)v5 initWithPredicate:v7 entityName:v8 ctx:v4 properties:v9 fetchProperties:0];

  [(MTEntityUpdaterCache *)v10 setAllowKeyForValue:&stru_1004DDE40];

  return v10;
}

- (void)importRemotePodcastDicts:(id)a3 inContext:(id)a4 visitingPodcastsInCache:(id)a5 updatingPodcastsToAdd:(id)a6 updatingPodcastsToUnsubscribe:(id)a7 mismatch:(BOOL)a8 version:(id)a9
{
  v43 = a8;
  v14 = a3;
  v47 = a4;
  v51 = a5;
  v46 = a6;
  v45 = a7;
  v44 = a9;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v15)
  {
    v16 = v15;
    v50 = *v54;
    v52 = kPodcastFeedUrl;
    v41 = kPodcastTitle;
    v40 = kPodcastStoreCollectionId;
    v49 = kPodcastUuid;
    v39 = self;
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
        v20 = [v51 propertyDictionaryForSearchItem:v18];
        v21 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [(MTSubscriptionSyncProcessor *)self logPrefix];
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
          v28 = [v27 unsignedLongLongValue];
          *buf = 138544387;
          v58 = v22;
          v59 = 2114;
          v60 = v24;
          v16 = v23;
          v61 = 2113;
          v62 = v25;
          v63 = 2113;
          v64 = v26;
          v65 = 2049;
          v66 = v28;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ local match for podcast %{private}@, %{private}@, %{private}lld", buf, 0x34u);

          self = v39;
          v19 = v48;
        }

        v29 = [v20 objectForKeyedSubscript:v49];
        if (v20)
        {
          v30 = [v47 podcastForUuid:v29];
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
            v32 = [(MTSubscriptionSyncProcessor *)self updatePodcastsToUnsubscribe:v45 remotePodcast:v18 localPodcast:v30];
            v33 = [(MTSubscriptionSyncProcessor *)self updateSettingsIfNeededForLocalPodcast:v30 remotePodcast:v18];
            v34 = [(MTSubscriptionSyncProcessor *)self updatePodcastsToAdd:v46 addingPodcastIfNeeded:v18 hasLocalPodcast:v30 != 0];
            v35 = v32;
            v19 = v31;
            [(MTSubscriptionSyncProcessor *)self reportImportingRemotePodcast:v18 withLocalPodcast:v30 shouldAddPodcast:v34 shouldUnsubscribeLocalPodcast:v35 shouldUpdateSettings:v33 mismatch:v43 version:v44];
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

- (BOOL)updatePodcastsToUnsubscribe:(id)a3 remotePodcast:(id)a4 localPodcast:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKey:kPodcastSubscribed];
  v12 = [v11 BOOLValue];

  if (v10 && !(v12 & 1 | (([v10 subscribed] & 1) == 0)))
  {
    v14 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v16 = [v10 title];
      v17 = [v10 feedURL];
      v18 = [v10 storeCollectionId];
      v19 = [v10 uuid];
      v20 = [v9 description];
      v23 = 138544643;
      v24 = v15;
      v25 = 2113;
      v26 = v16;
      v27 = 2113;
      v28 = v17;
      v29 = 2049;
      v30 = v18;
      v31 = 2114;
      v32 = v19;
      v33 = 2113;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking local podcast for unsubscribe: %{private}@, %{private}@, %{private}lld, %{public}@. Remote dict: %{private}@", &v23, 0x3Eu);
    }

    v21 = [v10 uuid];
    [v8 addObject:v21];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)updateSettingsIfNeededForLocalPodcast:(id)a3 remotePodcast:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTSubscriptionSyncProcessor *)self context];
  if (v6)
  {
    [(MTSubscriptionSyncProcessor *)self updateSettingsForLocalPodcast:v6 remotePodcast:v7 ctx:v8];
  }

  return v6 != 0;
}

- (BOOL)updatePodcastsToAdd:(id)a3 addingPodcastIfNeeded:(id)a4 hasLocalPodcast:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 objectForKey:kPodcastSubscribed];
  v11 = [v10 BOOLValue];

  v12 = !v5 & v11;
  if (v12 == 1)
  {
    v13 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v15 = [v9 description];
      v17 = 138543619;
      v18 = v14;
      v19 = 2113;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking remote podcast for insertion in local DB [reason: not in local DB and subscribed]: %{private}@", &v17, 0x16u);
    }

    [v8 addObject:v9];
  }

  return v12;
}

- (void)reportImportingRemotePodcast:(id)a3 withLocalPodcast:(id)a4 shouldAddPodcast:(BOOL)a5 shouldUnsubscribeLocalPodcast:(BOOL)a6 shouldUpdateSettings:(BOOL)a7 mismatch:(BOOL)a8 version:(id)a9
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v18 = [(MTSubscriptionSyncProcessor *)self config];
  v19 = [v18 supportsMetrics];

  if (v19)
  {
    v20 = [v15 mutableCopy];
    [v20 setValue:v17 forKey:@"version"];
    v21 = [NSNumber numberWithBool:v9];
    [v20 setValue:v21 forKey:@"mismatch"];

    v22 = [(MTSubscriptionSyncProcessor *)self syncDictionaryToMetricsDictionary:v15];
    [v20 setValue:v22 forKey:@"sync_data"];

    if (v10)
    {
      v24 = [(MTSubscriptionSyncProcessor *)self storageProvider];
      [v24 recordUserAction:@"cloud_sync_update_podcast" dataSource:v16 withData:v20];

      if (!v11)
      {
LABEL_4:
        if (!v12)
        {
LABEL_6:

          goto LABEL_7;
        }

LABEL_5:
        v23 = [(MTSubscriptionSyncProcessor *)self storageProvider];
        [v23 recordUserAction:@"cloud_sync_add_podcast" dataSource:0 withData:v20];

        goto LABEL_6;
      }
    }

    else if (!v11)
    {
      goto LABEL_4;
    }

    v25 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v28[0] = @"version";
    v28[1] = @"mismatch";
    v29[0] = v17;
    v26 = [NSNumber numberWithBool:v9];
    v29[1] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v25 recordUserAction:@"cloud_sync_delete_podcast" dataSource:v16 withData:v27];

    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
}

- (id)unvisitedPodcastsToUnsubscribeIn:(id)a3 mismatch:(BOOL *)a4 version:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(MTSubscriptionSyncProcessor *)self context];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100157B0C;
  v17 = v16[3] = &unk_1004DDE68;
  v18 = self;
  v19 = v8;
  v21 = a4;
  v10 = objc_opt_new();
  v20 = v10;
  v11 = v8;
  v12 = v17;
  [v9 enumerateUnvisitedItemUuids:v16];

  v13 = v20;
  v14 = v10;

  return v10;
}

- (void)checkPotentialLibraryDeletionIssueForPreviouslySubscribedPodcastsCount:(unint64_t)a3 podcastsToUnsubscribeCount:(unint64_t)a4 newVersion:(id)a5
{
  v8 = a4 / a3;
  v9 = _MTLogCategoryCloudSync();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a3 >= 0xA && v8 >= 0.8)
  {
    if (v10)
    {
      v11 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v20 = 138543874;
      v21 = v11;
      v22 = 2048;
      v23 = a4;
      v24 = 2048;
      v25 = *&v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Big library unsubscription detected: podcastsToUnsubscribeCount: %lu, unsubscribedRatio: %f", &v20, 0x20u);
    }

    v9 = [(MTSubscriptionSyncProcessor *)self cloudSyncBugReporter];
    v12 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v13 = [v12 syncType];
    v14 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v15 = [v14 syncVersion];
    v28[0] = @"previouslyFollowedShowsCount";
    v16 = [NSNumber numberWithUnsignedInteger:a3];
    v29[0] = v16;
    v28[1] = @"showsToUnfollowCount";
    v17 = [NSNumber numberWithUnsignedInteger:a4];
    v29[1] = v17;
    v28[2] = @"unfollowRatio";
    v18 = [NSNumber numberWithDouble:v8];
    v29[2] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
    [v9 reportSubscriptionsSyncIssue:1 subscriptionSyncType:v13 version:v15 userInfo:v19];

    goto LABEL_8;
  }

  if (v10)
  {
    v12 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v20 = 138544130;
    v21 = v12;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = a3;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %ld unsubscriptions detected out of %ld total subscribed shows, unsubscriptionRatio: %f", &v20, 0x2Au);
LABEL_8:
  }
}

- (void)completeTransactionWithNewVersion:(id)a3 mismatch:(BOOL)a4 finishedBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = _MTLogCategoryCloudSync();
  v11 = v10;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = @"NO";
    if (v6)
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
    v15 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v16 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v17 = [v16 syncVersion];
    v28 = 138544130;
    v29 = v15;
    v30 = 2114;
    v31 = v8;
    v32 = 2114;
    v33 = v17;
    v34 = 1024;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Transaction complete: Updating sync version to %{public}@ (from %{public}@), mismatch %d", &v28, 0x26u);
  }

  v18 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [v18 setSyncVersion:v8];

  v19 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v28 = 138543362;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Cleaning up old hidden podcasts after successful transaction", &v28, 0xCu);
  }

  v21 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [v21 cleanUpOldHiddenPodcasts];

  v22 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v24 = v23;
    v25 = @"NO";
    if (v6)
    {
      v25 = @"YES";
    }

    v28 = 138543618;
    v29 = v23;
    v30 = 2114;
    v31 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting subscriptions sync dirty = %{public}@", &v28, 0x16u);
  }

  v26 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [v26 setSyncDirtyFlag:v6];

  if (!v6)
  {
    v27 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    [v27 updateSubscriptionsLastSyncTimestamp];
  }

  v9[2](v9, v6);
}

- (void)reorderLocalPodcastsToMatchRemote:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Reordering local podcasts to match remote dictionaries:", buf, 0xCu);
  }

  [(MTSubscriptionSyncProcessor *)self context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100158710;
  v10 = v9[3] = &unk_1004D94C8;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v10;
  [v8 performBlockAndWaitWithSave:v9];
}

- (id)syncDictionaryToMetricsDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() subscriptionSyncProcessorSyncKeys];
  v5 = [v3 dictionaryWithValuesForKeys:v4];

  return v5;
}

- (id)_addedSubscriptions
{
  v3 = [(MTSubscriptionSyncProcessor *)self context];
  v4 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v5 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [v4 syncType]);
  v6 = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastFeedUrl];
  v7 = [v5 AND:v6];
  v8 = [MTPodcast predicateForHasBeenSynced:0];
  v9 = [v7 AND:v8];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100158DA8;
  v16[3] = &unk_1004D8DA8;
  v17 = v3;
  v18 = v9;
  v19 = self;
  v10 = objc_opt_new();
  v20 = v10;
  v11 = v9;
  v12 = v3;
  [v12 performBlockAndWait:v16];
  v13 = v20;
  v14 = v10;

  return v10;
}

- (unint64_t)_subscribedPodcastsCount
{
  v3 = [(MTSubscriptionSyncProcessor *)self context];
  v4 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v5 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [v4 syncType]);
  v6 = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastFeedUrl];
  v7 = [v5 AND:v6];
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
  v10 = v3;
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
    v4 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v5 = [(MTSubscriptionSyncProcessor *)self addedSubscriptions];
    v8 = 138543619;
    v9 = v4;
    v10 = 2113;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking new subscriptions as synced: %{private}@", &v8, 0x16u);
  }

  v6 = [(MTSubscriptionSyncProcessor *)self addedSubscriptions];
  v7 = [MTPodcast predicateForPodcastUuids:v6];

  [(MTSubscriptionSyncProcessor *)self markShowsAsSyncedForPredicate:v7];
}

- (void)markAllShowsAsSynced
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking all shows as synced", &v7, 0xCu);
  }

  v5 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v6 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [v5 syncType]);

  [(MTSubscriptionSyncProcessor *)self markShowsAsSyncedForPredicate:v6];
}

- (void)markShowsAsSyncedForPredicate:(id)a3
{
  v4 = a3;
  [(MTSubscriptionSyncProcessor *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001594B4;
  v8 = v7[3] = &unk_1004D8798;
  v9 = v4;
  v5 = v4;
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
  v12 = self;
  v3 = objc_opt_new();
  v13 = v3;
  v4 = v11;
  [v4 performBlockAndWait:v10];
  if (![v3 count])
  {
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ WARNING: Syncing up an empty podcast library", buf, 0xCu);
    }
  }

  v7 = v13;
  v8 = v3;

  return v3;
}

- (void)subscribeFromCloudToPodcasts:(id)a3
{
  v4 = a3;
  v5 = [(MTSubscriptionSyncProcessor *)self context];
  v6 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  [v6 subscriptionsLastSyncTimestamp];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100159CA0;
  v9[3] = &unk_1004D94C8;
  v10 = v4;
  v11 = self;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  [v7 performBlockAndWaitWithSave:v9];
}

- (void)updateSettingsForLocalPodcast:(id)a3 remotePodcast:(id)a4 ctx:(id)a5
{
  v7 = a3;
  v8 = a4;
  v91 = a5;
  v9 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MTSubscriptionSyncProcessor *)self logPrefix];
    v11 = [v7 title];
    v12 = [v7 feedURL];
    v13 = [v7 storeCollectionId];
    v14 = [v7 uuid];
    v15 = [v8 description];
    *buf = 138544643;
    v95 = v10;
    v96 = 2113;
    v97 = v11;
    v98 = 2113;
    v99 = v12;
    v100 = 2049;
    v101 = v13;
    v102 = 2114;
    v103 = v14;
    v104 = 2113;
    v105 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating settings for podcast: %{private}@, %{private}@, %{private}lld, %{public}@. Remote dictionary: %{private}@", buf, 0x3Eu);
  }

  [v7 setHasBeenSynced:1];
  v16 = [v8 objectForKey:kPodcastSubscribed];
  v17 = [v16 BOOLValue];

  v18 = [v7 subscribed];
  if ((v18 & 1) == 0 && v17)
  {
    v19 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v21 = [v7 title];
      v22 = [v7 feedURL];
      v23 = [v7 storeCollectionId];
      v24 = [v7 uuid];
      *buf = 138544387;
      v95 = v20;
      v96 = 2113;
      v97 = v21;
      v98 = 2113;
      v99 = v22;
      v100 = 2049;
      v101 = v23;
      v102 = 2114;
      v103 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Enabling subscription for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x34u);
    }

    v25 = [(MTSubscriptionSyncProcessor *)self storageProvider];
    v26 = [v7 uuid];
    [v25 enableSubscriptionOnPodcastUuid:v26 ctx:v91];

LABEL_8:
    goto LABEL_10;
  }

  if (!(v17 & 1 | ((v18 & 1) == 0)))
  {
    v25 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v52 = [v7 title];
      v53 = [v7 feedURL];
      v54 = [v7 storeCollectionId];
      v55 = [v7 uuid];
      *buf = 138544387;
      v95 = v51;
      v96 = 2113;
      v97 = v52;
      v98 = 2113;
      v99 = v53;
      v100 = 2049;
      v101 = v54;
      v102 = 2114;
      v103 = v55;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping unsubscription of remotely unsubscribed podcast [reason: all unsubscriptions should be handled in batch later in the process]: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x34u);
    }

    goto LABEL_8;
  }

LABEL_10:
  v27 = [v8 objectForKeyedSubscript:kPodcastShowTypeSetting];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
    v30 = [v27 longLongValue];
    v31 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(MTSubscriptionSyncProcessor *)self logPrefix];
      v33 = [v7 title];
      v34 = [v7 feedURL];
      v35 = [v7 storeCollectionId];
      v36 = [v7 uuid];
      *buf = 138544643;
      v95 = v32;
      v96 = 2050;
      v97 = v30;
      v98 = 2113;
      v99 = v33;
      v100 = 2113;
      v101 = v34;
      v102 = 2049;
      v103 = v35;
      v104 = 2114;
      v105 = v36;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Subscriptions Sync wants to set show type setting to %{public}lld, for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x3Eu);
    }

    [v7 setShowTypeSetting:v30];
    v28 = v29;
  }

  v93 = [v8 objectForKey:kPodcastLastTouchDate];
  v37 = [v8 objectForKey:kPodcastDarkCount];
  if (v37)
  {
    if (v93)
    {
      [v7 lastTouchDate];
      v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v39 = [v38 compare:v93];

      if (v39 == -1)
      {
        v40 = [v7 isDark];
        v41 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [(MTSubscriptionSyncProcessor *)self logPrefix];
          v85 = [v37 longLongValue];
          [v7 title];
          v43 = v88 = v40;
          v44 = [v7 feedURL];
          v45 = [v7 storeCollectionId];
          v46 = [v7 uuid];
          *buf = 138544643;
          v95 = v42;
          v96 = 2050;
          v97 = v85;
          v98 = 2113;
          v99 = v43;
          v100 = 2113;
          v101 = v44;
          v102 = 2049;
          v103 = v45;
          v104 = 2114;
          v105 = v46;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting darkCount = %{public}lld for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x3Eu);

          v40 = v88;
        }

        [v7 setDarkCount:{objc_msgSend(v37, "longLongValue")}];
        if (v40 != [v7 isDark])
        {
          v47 = v40;
          v48 = [v7 isDark];
          v49 = [v7 latestExitFromDarkDownloads];
          if (v49)
          {
            v50 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v47 isDark:v48 reason:6 previousExit:v49];
          }

          else
          {
            v56 = +[NSDate now];
            v50 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v47 isDark:v48 reason:6 previousExit:v56];
          }

          v57 = objc_opt_new();
          [v57 sendEvent:v50];
        }
      }
    }
  }

  v58 = [v7 feedURL];
  v59 = kPodcastFeedUrl;
  v60 = [v8 objectForKeyedSubscript:kPodcastFeedUrl];
  v61 = [v58 isEqualToString:v60];

  if ((v61 & 1) == 0)
  {
    v62 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      [(MTSubscriptionSyncProcessor *)self logPrefix];
      v63 = v86 = v8;
      v64 = [v86 objectForKeyedSubscript:v59];
      v65 = [v7 title];
      v66 = [v7 feedURL];
      v67 = v37;
      v68 = [v7 storeCollectionId];
      [v7 uuid];
      v69 = v89 = v28;
      *buf = 138544643;
      v95 = v63;
      v96 = 2113;
      v97 = v64;
      v98 = 2113;
      v99 = v65;
      v100 = 2113;
      v101 = v66;
      v102 = 2049;
      v103 = v68;
      v37 = v67;
      v104 = 2114;
      v105 = v69;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting feedURL = %{private}@ for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x3Eu);

      v28 = v89;
      v8 = v86;
    }

    v70 = [v8 objectForKeyedSubscript:v59];
    [v7 setFeedURL:v70];
  }

  v71 = [v8 objectForKeyedSubscript:kPodcastAddedDate];
  v72 = v71;
  if (v71)
  {
    [v71 timeIntervalSinceReferenceDate];
    v74 = v73;
    [v7 addedDate];
    if (v74 < v75)
    {
      v76 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = [(MTSubscriptionSyncProcessor *)self logPrefix];
        [v72 timeIntervalSinceReferenceDate];
        v79 = v78;
        v80 = [v72 description];
        [v7 title];
        v81 = v90 = v28;
        v82 = [v7 feedURL];
        v83 = [v7 storeCollectionId];
        [v7 uuid];
        v84 = v87 = v37;
        *buf = 138544899;
        v95 = v77;
        v96 = 2050;
        v97 = v79;
        v98 = 2114;
        v99 = v80;
        v100 = 2113;
        v101 = v81;
        v102 = 2113;
        v103 = v82;
        v104 = 2049;
        v105 = v83;
        v106 = 2114;
        v107 = v84;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting addedDate = %{public}f(%{public}@) for podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x48u);

        v37 = v87;
        v28 = v90;
      }

      [v72 timeIntervalSinceReferenceDate];
      [v7 setAddedDate:?];
    }
  }
}

- (id)logPrefix
{
  v2 = [(MTSubscriptionSyncProcessor *)self storageProvider];
  v3 = [v2 syncType];

  if (v3 == 1)
  {
    return @"[Subscription V3 Sync]";
  }

  else
  {
    return @"[Subscription Sync]";
  }
}

@end