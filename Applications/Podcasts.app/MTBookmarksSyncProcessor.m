@interface MTBookmarksSyncProcessor
- (BOOL)hasLocalChanges;
- (MTBookmarksSyncProcessor)initWithStorageProvider:(id)a3 cloudSyncBugReporter:(id)a4;
- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5;
- (id)findEpisodeByFeedURL:(id)a3 guid:(id)a4 inContext:(id)a5;
- (id)findEpisodeByStoreID:(int64_t)a3 inContext:(id)a4;
- (id)logPrefix;
- (id)predicateForBookmarksOnlyInLocalAndBeforeLastSyncWithRemoteBookmarksUUIDs:(id)a3;
- (id)predicateForBookmarksSyncType;
- (id)versionForGetTransaction:(id)a3 key:(id)a4;
- (void)bumpBookmarksSyncVersionToVersion:(id)a3;
- (void)checkPotentialLibraryDeletionIssueForRemoteBookmarksCount:(unint64_t)a3 episodesToUnbookmarkCount:(unint64_t)a4 newVersion:(id)a5;
- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)finishSuccessfulTransactionWithNewVersion:(id)a3 finishedBlock:(id)a4;
- (void)markEverythingAsSyncedWithVersion:(id)a3;
- (void)rescheduleTransactionWithFinishedBlock:(id)a3;
- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4;
- (void)updateLocalCacheIfNeededWithData:(id)a3 version:(id)a4;
@end

@implementation MTBookmarksSyncProcessor

- (MTBookmarksSyncProcessor)initWithStorageProvider:(id)a3 cloudSyncBugReporter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = MTBookmarksSyncProcessor;
  v8 = [(MTBookmarksSyncProcessor *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(MTBookmarksSyncProcessor *)v8 setStorageProvider:v6];
    [(MTBookmarksSyncProcessor *)v9 setCloudSyncBugReporter:v7];
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
  v2 = [(MTBookmarksSyncProcessor *)self storageProvider];
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
    v14 = 138412290;
    v15 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTBookmarksSyncProcessor.GET", "key: %@", &v14, 0xCu);
  }

  v9 = [(MTBookmarksSyncProcessor *)self storageProvider];
  v10 = [v9 syncVersion];

  v11 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MTBookmarksSyncProcessor *)self logPrefix];
    v14 = 138412802;
    v15 = v12;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Version for GET transaction key: %@, vers: %@", &v14, 0x20u);
  }

  return v10;
}

- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5
{
  v7 = a4;
  v8 = _MTLogCategoryCloudSync();
  v9 = v8;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v51 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTBookmarksSyncProcessor.SET", "key: %@", buf, 0xCu);
  }

  v11 = [(MTBookmarksSyncProcessor *)self storageProvider];
  if ([v11 syncDirtyFlag])
  {

LABEL_10:
    v21 = [(MTBookmarksSyncProcessor *)self storageProvider];
    v22 = [v21 importContext];

    v23 = objc_opt_new();
    v24 = +[MTEpisode predicateForAllBookmarkedEpisodes];
    v25 = [(MTBookmarksSyncProcessor *)self predicateForBookmarksSyncType];
    v26 = [v24 AND:v25];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000A2C70;
    v46[3] = &unk_1004D94C8;
    v14 = v22;
    v47 = v14;
    v27 = v26;
    v48 = v27;
    v28 = v23;
    v49 = v28;
    [v14 performBlockAndWait:v46];
    v29 = [(MTBookmarksSyncProcessor *)self storageProvider];
    *a5 = [v29 syncVersion];

    v30 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(MTBookmarksSyncProcessor *)self logPrefix];
      v32 = v7;
      v33 = *a5;
      v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v28 count]);
      [v28 description];
      v45 = v14;
      v35 = v27;
      v37 = v36 = a5;
      *buf = 138413314;
      v51 = v31;
      v52 = 2112;
      v53 = v33;
      v7 = v32;
      v54 = 2112;
      v55 = v32;
      v56 = 2112;
      v57 = v34;
      v58 = 2112;
      v59 = v37;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ Providing data for SET transaction [%@] key: %@ : count %@, data: %@", buf, 0x34u);

      a5 = v36;
      v27 = v35;
      v14 = v45;
    }

    v38 = [(MTBookmarksSyncProcessor *)self storageProvider];
    v39 = [v38 syncVersion];
    v40 = [v39 integerValue];

    if (![v28 count] && *a5 && v40 >= 11)
    {
      v41 = [(MTBookmarksSyncProcessor *)self cloudSyncBugReporter];
      v42 = [(MTBookmarksSyncProcessor *)self storageProvider];
      [v41 reportBookmarksSyncIssue:0 bookmarksSyncType:objc_msgSend(v42 version:"syncType") userInfo:{*a5, 0}];
    }

    v43 = objc_alloc_init(MZKeyValueStoreNode);
    [(MZKeyValueStoreNode *)v43 setArrayValue:v28];
    v20 = [(MZKeyValueStoreNode *)v43 value];

    goto LABEL_17;
  }

  v12 = [(MTBookmarksSyncProcessor *)self storageProvider];
  v13 = [v12 syncVersion];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(MTBookmarksSyncProcessor *)self logPrefix];
    v16 = [(MTBookmarksSyncProcessor *)self storageProvider];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 syncDirtyFlag]);
    v18 = [(MTBookmarksSyncProcessor *)self storageProvider];
    v19 = [v18 syncVersion];
    *buf = 138413058;
    v51 = v15;
    v52 = 2112;
    v53 = v17;
    v54 = 2112;
    v55 = v19;
    v56 = 2112;
    v57 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ No data for SET transaction. bookmarksSyncDirtyFlag: %@, bookmarksSyncVersion: %@, key: %@", buf, 0x2Au);
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4
{
  v5 = a4;
  v6 = [(MTBookmarksSyncProcessor *)self storageProvider];
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
    v16 = [(MTBookmarksSyncProcessor *)self logPrefix];
    v17 = 138412802;
    v18 = v16;
    v19 = 2112;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Updating local cache after GET transaction for key %@, new version: [%{public}@]", &v17, 0x20u);
  }

  [(MTBookmarksSyncProcessor *)self updateLocalCacheIfNeededWithData:v14 version:v12];
  [(MTBookmarksSyncProcessor *)self finishSuccessfulTransactionWithNewVersion:v12 finishedBlock:v13];
}

- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v10 = a5;
  v11 = a7;
  v12 = a6;
  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(MTBookmarksSyncProcessor *)self logPrefix];
    v15 = 138412546;
    v16 = v14;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Successful SET transaction for key %@, marking everything as synced and finishing normally", &v15, 0x16u);
  }

  [(MTBookmarksSyncProcessor *)self finishSuccessfulTransactionWithNewVersion:v12 finishedBlock:v11];
}

- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MTBookmarksSyncProcessor *)self logPrefix];
    v17 = 138412546;
    v18 = v16;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Failure on SET transaction for key %@. Bookkeeper copy has diverged from local copy, we must merge both", &v17, 0x16u);
  }

  [(MTBookmarksSyncProcessor *)self updateLocalCacheIfNeededWithData:v14 version:v13];
  [(MTBookmarksSyncProcessor *)self bumpBookmarksSyncVersionToVersion:v13];

  [(MTBookmarksSyncProcessor *)self rescheduleTransactionWithFinishedBlock:v12];
}

- (void)updateLocalCacheIfNeededWithData:(id)a3 version:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MTBookmarksSyncProcessor *)self logPrefix];
    *buf = 138543618;
    v32 = v9;
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Merging data for newVersion: [%{public}@];", buf, 0x16u);
  }

  v10 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v10 setValue:v7];

  if ([(MZKeyValueStoreNode *)v10 hasData])
  {
    v11 = [(MZKeyValueStoreNode *)v10 arrayValue];
    v12 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MTBookmarksSyncProcessor *)self logPrefix];
      v14 = [v11 count];
      *buf = 138543618;
      v32 = v13;
      v33 = 2048;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Merging %lu remote dictionaries:", buf, 0x16u);
    }

    if (![v11 count])
    {
      v15 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [(MTBookmarksSyncProcessor *)self logPrefix];
        *buf = 138543362;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ Nothing to merge: Store node has data, but there are no bookmark items.", buf, 0xCu);
      }

      v17 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [(MTBookmarksSyncProcessor *)self logPrefix];
        v19 = [(MZKeyValueStoreNode *)v10 debugDescription];
        *buf = 138543619;
        v32 = v18;
        v33 = 2113;
        v34 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ Node data: %{private}@", buf, 0x16u);
      }
    }

    v20 = +[PFNotificationSettings canSendNotification];
    v21 = [(MTBookmarksSyncProcessor *)self storageProvider];
    v22 = [v21 importContext];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000A365C;
    v25[3] = &unk_1004DAAC0;
    v26 = v11;
    v27 = self;
    v28 = v22;
    v30 = v20;
    v29 = v6;
    v23 = v22;
    v24 = v11;
    [v23 performBlockAndWaitWithSave:v25];

    goto LABEL_15;
  }

  v24 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(MTBookmarksSyncProcessor *)self logPrefix];
    *buf = 138543618;
    v32 = v23;
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Nothing to merge: No data in the cloud node version: [%{public}@]", buf, 0x16u);
LABEL_15:
  }
}

- (void)checkPotentialLibraryDeletionIssueForRemoteBookmarksCount:(unint64_t)a3 episodesToUnbookmarkCount:(unint64_t)a4 newVersion:(id)a5
{
  v8 = _MTLogCategoryCloudSync();
  v9 = v8;
  if (a3 || a4 < 0xA)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(MTBookmarksSyncProcessor *)self logPrefix];
      *buf = 138543874;
      v22 = v18;
      v23 = 2048;
      v24 = a4;
      v25 = 2048;
      v26 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %lu local bookmarks removed, and %lu new bookmarks added", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(MTBookmarksSyncProcessor *)self logPrefix];
      *buf = 138543874;
      v22 = v10;
      v23 = 2048;
      v24 = 0;
      v25 = 2048;
      v26 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ Big library unbookmarking detected: remoteBookmarksCount: %lu, episodesToUnbookmarkCount: %lu", buf, 0x20u);
    }

    v9 = [(MTBookmarksSyncProcessor *)self cloudSyncBugReporter];
    v11 = [(MTBookmarksSyncProcessor *)self storageProvider];
    v12 = [v11 syncType];
    v13 = [(MTBookmarksSyncProcessor *)self storageProvider];
    v14 = [v13 syncVersion];
    v15 = [NSNumber numberWithUnsignedInteger:0, @"remoteBookmarksCount"];
    v19[1] = @"episodesToUnbookmarkCount";
    v20[0] = v15;
    v16 = [NSNumber numberWithUnsignedInteger:a4];
    v20[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v9 reportBookmarksSyncIssue:1 bookmarksSyncType:v12 version:v14 userInfo:v17];
  }
}

- (id)findEpisodeByStoreID:(int64_t)a3 inContext:(id)a4
{
  v6 = a4;
  v7 = [(MTBookmarksSyncProcessor *)self predicateForBookmarksSyncType];
  v8 = kMTEpisodeEntityName;
  v9 = [MTEpisode predicateForEpisodeStoreTrackId:a3];
  v10 = [v9 AND:v7];
  v11 = [v6 objectInEntity:v8 predicate:v10];

  return v11;
}

- (id)findEpisodeByFeedURL:(id)a3 guid:(id)a4 inContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTBookmarksSyncProcessor *)self predicateForBookmarksSyncType];
  v12 = [MTEpisode predicateForEpisodeGuid:v9 onFeedURL:v10];

  v13 = [v12 AND:v11];

  v14 = [v8 objectInEntity:kMTEpisodeEntityName predicate:v13];

  return v14;
}

- (void)markEverythingAsSyncedWithVersion:(id)a3
{
  [(MTBookmarksSyncProcessor *)self bumpBookmarksSyncVersionToVersion:a3];
  v4 = [(MTBookmarksSyncProcessor *)self storageProvider];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setLastSyncTimestamp:?];

  v5 = [(MTBookmarksSyncProcessor *)self storageProvider];
  [v5 setSyncDirtyFlag:0];
}

- (void)bumpBookmarksSyncVersionToVersion:(id)a3
{
  v4 = a3;
  v5 = [(MTBookmarksSyncProcessor *)self storageProvider];
  [v5 setSyncVersion:v4];
}

- (id)predicateForBookmarksOnlyInLocalAndBeforeLastSyncWithRemoteBookmarksUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(MTBookmarksSyncProcessor *)self storageProvider];
  [v5 lastSyncTimestamp];
  v7 = v6;

  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
  v9 = [(MTBookmarksSyncProcessor *)self predicateForBookmarksSyncType];
  v10 = [NSPredicate predicateForDateKey:kEpisodeLastBookmarkedDate isLessThanDate:v8];
  v11 = [v10 AND:v9];

  v12 = [MTEpisode predicateForBookmarkedEpisodesExcludingUUIDs:v4];

  v13 = [v12 AND:v11];

  return v13;
}

- (id)predicateForBookmarksSyncType
{
  v3 = +[MTEpisode predicateForRSSEpisodes];
  v4 = [(MTBookmarksSyncProcessor *)self storageProvider];
  v5 = [v4 syncType];

  if (v5 == 1)
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

- (void)finishSuccessfulTransactionWithNewVersion:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _MTLogCategoryCloudSync();
  v9 = v8;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, signpostID, "MTSubscriptionSyncProcessor.completed", "", v11, 2u);
  }

  [(MTBookmarksSyncProcessor *)self markEverythingAsSyncedWithVersion:v7];
  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)rescheduleTransactionWithFinishedBlock:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryCloudSync();
  v6 = v5;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, signpostID, "MTSubscriptionSyncProcessor.mismatch", "", v8, 2u);
  }

  if (v4)
  {
    v4[2](v4, 1);
  }
}

- (id)logPrefix
{
  v2 = [(MTBookmarksSyncProcessor *)self storageProvider];
  v3 = [v2 logPrefix];

  return v3;
}

@end