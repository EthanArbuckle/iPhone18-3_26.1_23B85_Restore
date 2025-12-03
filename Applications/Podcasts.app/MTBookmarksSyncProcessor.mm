@interface MTBookmarksSyncProcessor
- (BOOL)hasLocalChanges;
- (MTBookmarksSyncProcessor)initWithStorageProvider:(id)provider cloudSyncBugReporter:(id)reporter;
- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version;
- (id)findEpisodeByFeedURL:(id)l guid:(id)guid inContext:(id)context;
- (id)findEpisodeByStoreID:(int64_t)d inContext:(id)context;
- (id)logPrefix;
- (id)predicateForBookmarksOnlyInLocalAndBeforeLastSyncWithRemoteBookmarksUUIDs:(id)ds;
- (id)predicateForBookmarksSyncType;
- (id)versionForGetTransaction:(id)transaction key:(id)key;
- (void)bumpBookmarksSyncVersionToVersion:(id)version;
- (void)checkPotentialLibraryDeletionIssueForRemoteBookmarksCount:(unint64_t)count episodesToUnbookmarkCount:(unint64_t)unbookmarkCount newVersion:(id)version;
- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)finishSuccessfulTransactionWithNewVersion:(id)version finishedBlock:(id)block;
- (void)markEverythingAsSyncedWithVersion:(id)version;
- (void)rescheduleTransactionWithFinishedBlock:(id)block;
- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version;
- (void)updateLocalCacheIfNeededWithData:(id)data version:(id)version;
@end

@implementation MTBookmarksSyncProcessor

- (MTBookmarksSyncProcessor)initWithStorageProvider:(id)provider cloudSyncBugReporter:(id)reporter
{
  providerCopy = provider;
  reporterCopy = reporter;
  v16.receiver = self;
  v16.super_class = MTBookmarksSyncProcessor;
  v8 = [(MTBookmarksSyncProcessor *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(MTBookmarksSyncProcessor *)v8 setStorageProvider:providerCopy];
    [(MTBookmarksSyncProcessor *)v9 setCloudSyncBugReporter:reporterCopy];
    v10 = _MTLogCategoryCloudSync();
    v9->_signpostID = os_signpost_id_generate(v10);

    v11 = _MTLogCategoryCloudSync();
    v12 = v11;
    signpostID = v9->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, signpostID, "MTBookmarksSyncProcessor.created", "", v15, 2u);
    }
  }

  return v9;
}

- (BOOL)hasLocalChanges
{
  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
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
    v14 = 138412290;
    v15 = keyCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTBookmarksSyncProcessor.GET", "key: %@", &v14, 0xCu);
  }

  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
  syncVersion = [storageProvider syncVersion];

  v11 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTBookmarksSyncProcessor *)self logPrefix];
    v14 = 138412802;
    v15 = logPrefix;
    v16 = 2112;
    v17 = keyCopy;
    v18 = 2112;
    v19 = syncVersion;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Version for GET transaction key: %@, vers: %@", &v14, 0x20u);
  }

  return syncVersion;
}

- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version
{
  keyCopy = key;
  v8 = _MTLogCategoryCloudSync();
  v9 = v8;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v51 = keyCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTBookmarksSyncProcessor.SET", "key: %@", buf, 0xCu);
  }

  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
  if ([storageProvider syncDirtyFlag])
  {

LABEL_10:
    storageProvider2 = [(MTBookmarksSyncProcessor *)self storageProvider];
    importContext = [storageProvider2 importContext];

    v23 = objc_opt_new();
    v24 = +[MTEpisode predicateForAllBookmarkedEpisodes];
    predicateForBookmarksSyncType = [(MTBookmarksSyncProcessor *)self predicateForBookmarksSyncType];
    v26 = [v24 AND:predicateForBookmarksSyncType];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000A2C70;
    v46[3] = &unk_1004D94C8;
    v14 = importContext;
    v47 = v14;
    v27 = v26;
    v48 = v27;
    v28 = v23;
    v49 = v28;
    [v14 performBlockAndWait:v46];
    storageProvider3 = [(MTBookmarksSyncProcessor *)self storageProvider];
    *version = [storageProvider3 syncVersion];

    v30 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix = [(MTBookmarksSyncProcessor *)self logPrefix];
      v32 = keyCopy;
      v33 = *version;
      v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v28 count]);
      [v28 description];
      v45 = v14;
      v35 = v27;
      v37 = v36 = version;
      *buf = 138413314;
      v51 = logPrefix;
      v52 = 2112;
      v53 = v33;
      keyCopy = v32;
      v54 = 2112;
      v55 = v32;
      v56 = 2112;
      v57 = v34;
      v58 = 2112;
      v59 = v37;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ Providing data for SET transaction [%@] key: %@ : count %@, data: %@", buf, 0x34u);

      version = v36;
      v27 = v35;
      v14 = v45;
    }

    storageProvider4 = [(MTBookmarksSyncProcessor *)self storageProvider];
    syncVersion = [storageProvider4 syncVersion];
    integerValue = [syncVersion integerValue];

    if (![v28 count] && *version && integerValue >= 11)
    {
      cloudSyncBugReporter = [(MTBookmarksSyncProcessor *)self cloudSyncBugReporter];
      storageProvider5 = [(MTBookmarksSyncProcessor *)self storageProvider];
      [cloudSyncBugReporter reportBookmarksSyncIssue:0 bookmarksSyncType:objc_msgSend(storageProvider5 version:"syncType") userInfo:{*version, 0}];
    }

    v43 = objc_alloc_init(MZKeyValueStoreNode);
    [(MZKeyValueStoreNode *)v43 setArrayValue:v28];
    value = [(MZKeyValueStoreNode *)v43 value];

    goto LABEL_17;
  }

  storageProvider6 = [(MTBookmarksSyncProcessor *)self storageProvider];
  syncVersion2 = [storageProvider6 syncVersion];

  if (!syncVersion2)
  {
    goto LABEL_10;
  }

  v14 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    logPrefix2 = [(MTBookmarksSyncProcessor *)self logPrefix];
    storageProvider7 = [(MTBookmarksSyncProcessor *)self storageProvider];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [storageProvider7 syncDirtyFlag]);
    storageProvider8 = [(MTBookmarksSyncProcessor *)self storageProvider];
    syncVersion3 = [storageProvider8 syncVersion];
    *buf = 138413058;
    v51 = logPrefix2;
    v52 = 2112;
    v53 = v17;
    v54 = 2112;
    v55 = syncVersion3;
    v56 = 2112;
    v57 = keyCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ No data for SET transaction. bookmarksSyncDirtyFlag: %@, bookmarksSyncVersion: %@, key: %@", buf, 0x2Au);
  }

  value = 0;
LABEL_17:

  return value;
}

- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version
{
  versionCopy = version;
  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
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
    logPrefix = [(MTBookmarksSyncProcessor *)self logPrefix];
    v17 = 138412802;
    v18 = logPrefix;
    v19 = 2112;
    v20 = keyCopy;
    v21 = 2114;
    v22 = versionCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Updating local cache after GET transaction for key %@, new version: [%{public}@]", &v17, 0x20u);
  }

  [(MTBookmarksSyncProcessor *)self updateLocalCacheIfNeededWithData:dataCopy version:versionCopy];
  [(MTBookmarksSyncProcessor *)self finishSuccessfulTransactionWithNewVersion:versionCopy finishedBlock:blockCopy];
}

- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  versionCopy = version;
  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTBookmarksSyncProcessor *)self logPrefix];
    v15 = 138412546;
    v16 = logPrefix;
    v17 = 2112;
    v18 = keyCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Successful SET transaction for key %@, marking everything as synced and finishing normally", &v15, 0x16u);
  }

  [(MTBookmarksSyncProcessor *)self finishSuccessfulTransactionWithNewVersion:versionCopy finishedBlock:blockCopy];
}

- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  versionCopy = version;
  dataCopy = data;
  v15 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTBookmarksSyncProcessor *)self logPrefix];
    v17 = 138412546;
    v18 = logPrefix;
    v19 = 2112;
    v20 = keyCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Failure on SET transaction for key %@. Bookkeeper copy has diverged from local copy, we must merge both", &v17, 0x16u);
  }

  [(MTBookmarksSyncProcessor *)self updateLocalCacheIfNeededWithData:dataCopy version:versionCopy];
  [(MTBookmarksSyncProcessor *)self bumpBookmarksSyncVersionToVersion:versionCopy];

  [(MTBookmarksSyncProcessor *)self rescheduleTransactionWithFinishedBlock:blockCopy];
}

- (void)updateLocalCacheIfNeededWithData:(id)data version:(id)version
{
  versionCopy = version;
  dataCopy = data;
  v8 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(MTBookmarksSyncProcessor *)self logPrefix];
    *buf = 138543618;
    v32 = logPrefix;
    v33 = 2114;
    v34 = versionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Merging data for newVersion: [%{public}@];", buf, 0x16u);
  }

  v10 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v10 setValue:dataCopy];

  if ([(MZKeyValueStoreNode *)v10 hasData])
  {
    arrayValue = [(MZKeyValueStoreNode *)v10 arrayValue];
    v12 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix2 = [(MTBookmarksSyncProcessor *)self logPrefix];
      v14 = [arrayValue count];
      *buf = 138543618;
      v32 = logPrefix2;
      v33 = 2048;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Merging %lu remote dictionaries:", buf, 0x16u);
    }

    if (![arrayValue count])
    {
      v15 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        logPrefix3 = [(MTBookmarksSyncProcessor *)self logPrefix];
        *buf = 138543362;
        v32 = logPrefix3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ Nothing to merge: Store node has data, but there are no bookmark items.", buf, 0xCu);
      }

      v17 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        logPrefix4 = [(MTBookmarksSyncProcessor *)self logPrefix];
        v19 = [(MZKeyValueStoreNode *)v10 debugDescription];
        *buf = 138543619;
        v32 = logPrefix4;
        v33 = 2113;
        v34 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ Node data: %{private}@", buf, 0x16u);
      }
    }

    v20 = +[PFNotificationSettings canSendNotification];
    storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
    importContext = [storageProvider importContext];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000A365C;
    v25[3] = &unk_1004DAAC0;
    v26 = arrayValue;
    selfCopy = self;
    v28 = importContext;
    v30 = v20;
    v29 = versionCopy;
    logPrefix5 = importContext;
    v24 = arrayValue;
    [logPrefix5 performBlockAndWaitWithSave:v25];

    goto LABEL_15;
  }

  v24 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix5 = [(MTBookmarksSyncProcessor *)self logPrefix];
    *buf = 138543618;
    v32 = logPrefix5;
    v33 = 2114;
    v34 = versionCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Nothing to merge: No data in the cloud node version: [%{public}@]", buf, 0x16u);
LABEL_15:
  }
}

- (void)checkPotentialLibraryDeletionIssueForRemoteBookmarksCount:(unint64_t)count episodesToUnbookmarkCount:(unint64_t)unbookmarkCount newVersion:(id)version
{
  v8 = _MTLogCategoryCloudSync();
  cloudSyncBugReporter = v8;
  if (count || unbookmarkCount < 0xA)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      logPrefix = [(MTBookmarksSyncProcessor *)self logPrefix];
      *buf = 138543874;
      v22 = logPrefix;
      v23 = 2048;
      unbookmarkCountCopy = unbookmarkCount;
      v25 = 2048;
      unbookmarkCountCopy2 = count;
      _os_log_impl(&_mh_execute_header, cloudSyncBugReporter, OS_LOG_TYPE_DEFAULT, "%{public}@ %lu local bookmarks removed, and %lu new bookmarks added", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      logPrefix2 = [(MTBookmarksSyncProcessor *)self logPrefix];
      *buf = 138543874;
      v22 = logPrefix2;
      v23 = 2048;
      unbookmarkCountCopy = 0;
      v25 = 2048;
      unbookmarkCountCopy2 = unbookmarkCount;
      _os_log_impl(&_mh_execute_header, cloudSyncBugReporter, OS_LOG_TYPE_ERROR, "%{public}@ Big library unbookmarking detected: remoteBookmarksCount: %lu, episodesToUnbookmarkCount: %lu", buf, 0x20u);
    }

    cloudSyncBugReporter = [(MTBookmarksSyncProcessor *)self cloudSyncBugReporter];
    storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
    syncType = [storageProvider syncType];
    storageProvider2 = [(MTBookmarksSyncProcessor *)self storageProvider];
    syncVersion = [storageProvider2 syncVersion];
    v15 = [NSNumber numberWithUnsignedInteger:0, @"remoteBookmarksCount"];
    v19[1] = @"episodesToUnbookmarkCount";
    v20[0] = v15;
    v16 = [NSNumber numberWithUnsignedInteger:unbookmarkCount];
    v20[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    [cloudSyncBugReporter reportBookmarksSyncIssue:1 bookmarksSyncType:syncType version:syncVersion userInfo:v17];
  }
}

- (id)findEpisodeByStoreID:(int64_t)d inContext:(id)context
{
  contextCopy = context;
  predicateForBookmarksSyncType = [(MTBookmarksSyncProcessor *)self predicateForBookmarksSyncType];
  v8 = kMTEpisodeEntityName;
  v9 = [MTEpisode predicateForEpisodeStoreTrackId:d];
  v10 = [v9 AND:predicateForBookmarksSyncType];
  v11 = [contextCopy objectInEntity:v8 predicate:v10];

  return v11;
}

- (id)findEpisodeByFeedURL:(id)l guid:(id)guid inContext:(id)context
{
  contextCopy = context;
  guidCopy = guid;
  lCopy = l;
  predicateForBookmarksSyncType = [(MTBookmarksSyncProcessor *)self predicateForBookmarksSyncType];
  v12 = [MTEpisode predicateForEpisodeGuid:guidCopy onFeedURL:lCopy];

  v13 = [v12 AND:predicateForBookmarksSyncType];

  v14 = [contextCopy objectInEntity:kMTEpisodeEntityName predicate:v13];

  return v14;
}

- (void)markEverythingAsSyncedWithVersion:(id)version
{
  [(MTBookmarksSyncProcessor *)self bumpBookmarksSyncVersionToVersion:version];
  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
  +[NSDate timeIntervalSinceReferenceDate];
  [storageProvider setLastSyncTimestamp:?];

  storageProvider2 = [(MTBookmarksSyncProcessor *)self storageProvider];
  [storageProvider2 setSyncDirtyFlag:0];
}

- (void)bumpBookmarksSyncVersionToVersion:(id)version
{
  versionCopy = version;
  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
  [storageProvider setSyncVersion:versionCopy];
}

- (id)predicateForBookmarksOnlyInLocalAndBeforeLastSyncWithRemoteBookmarksUUIDs:(id)ds
{
  dsCopy = ds;
  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
  [storageProvider lastSyncTimestamp];
  v7 = v6;

  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
  predicateForBookmarksSyncType = [(MTBookmarksSyncProcessor *)self predicateForBookmarksSyncType];
  v10 = [NSPredicate predicateForDateKey:kEpisodeLastBookmarkedDate isLessThanDate:v8];
  v11 = [v10 AND:predicateForBookmarksSyncType];

  v12 = [MTEpisode predicateForBookmarkedEpisodesExcludingUUIDs:dsCopy];

  v13 = [v12 AND:v11];

  return v13;
}

- (id)predicateForBookmarksSyncType
{
  v3 = +[MTEpisode predicateForRSSEpisodes];
  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
  syncType = [storageProvider syncType];

  if (syncType == 1)
  {
    v6 = kEpisodePriceType;
    v7 = NSPersistentStringForMTEpisodePriceType();
    v13 = v7;
    v8 = NSPersistentStringForMTEpisodePriceType();
    v14 = v8;
    v9 = NSPersistentStringForMTEpisodePriceType();
    v15 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:3];
    v11 = [NSPredicate predicateWithFormat:@"(%K IN %@)", v6, v10, v13, v14];
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

- (void)finishSuccessfulTransactionWithNewVersion:(id)version finishedBlock:(id)block
{
  blockCopy = block;
  versionCopy = version;
  v8 = _MTLogCategoryCloudSync();
  v9 = v8;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, signpostID, "MTSubscriptionSyncProcessor.completed", "", v11, 2u);
  }

  [(MTBookmarksSyncProcessor *)self markEverythingAsSyncedWithVersion:versionCopy];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)rescheduleTransactionWithFinishedBlock:(id)block
{
  blockCopy = block;
  v5 = _MTLogCategoryCloudSync();
  v6 = v5;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, signpostID, "MTSubscriptionSyncProcessor.mismatch", "", v8, 2u);
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1);
  }
}

- (id)logPrefix
{
  storageProvider = [(MTBookmarksSyncProcessor *)self storageProvider];
  logPrefix = [storageProvider logPrefix];

  return logPrefix;
}

@end