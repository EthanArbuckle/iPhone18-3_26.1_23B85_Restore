@interface MTEpisodeSyncProcessor
- (MTEpisodeSyncProcessor)initWithStorageProvider:(id)a3;
- (double)_sanitisedTimeIntervalForObject:(id)a3;
- (id)_propertiesToFetch;
- (id)_searchDictionaryFromArray:(id)a3 withKey:(id)a4;
- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5;
- (id)predicateForFilteringEpisodesWithEmptyPlayState;
- (id)versionForGetTransaction:(id)a3 key:(id)a4;
- (void)completeTransactionWithNewVersion:(id)a3 key:(id)a4 finishedBlock:(id)a5;
- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)mergeData:(id)a3 forKey:(id)a4;
- (void)recalculateUpNextForShowWithFeedUrl:(id)a3;
- (void)rescheduleTransactionWithNewVersion:(id)a3 key:(id)a4 finishedBlock:(id)a5;
- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4;
- (void)unsafeUpdateEpisode:(id)a3 forRemoteEpisodeDictionary:(id)a4;
@end

@implementation MTEpisodeSyncProcessor

- (MTEpisodeSyncProcessor)initWithStorageProvider:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MTEpisodeSyncProcessor;
  v5 = [(MTEpisodeSyncProcessor *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(MTEpisodeSyncProcessor *)v5 setStorageProvider:v4];
    v7 = _MTLogCategoryCloudSync();
    v6->_signpostID = os_signpost_id_generate(v7);

    v8 = _MTLogCategoryCloudSync();
    v9 = v8;
    signpostID = v6->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, signpostID, "MTEpisodeSyncProcessor.created", "", v12, 2u);
    }
  }

  return v6;
}

- (id)versionForGetTransaction:(id)a3 key:(id)a4
{
  v5 = a4;
  v6 = _MTLogCategoryCloudSync();
  v7 = v6;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v13 = 138412290;
    v14 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTEpisodeSyncProcessor.GET", "key: %@", &v13, 0xCu);
  }

  v9 = [(MTEpisodeSyncProcessor *)self storageProvider];
  v10 = [v9 versionForKey:v5];

  v11 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Episode Sync] key: %{public}@, version: %{public}@", &v13, 0x16u);
  }

  return v10;
}

- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _MTLogCategoryCloudSync();
  v11 = v10;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTEpisodeSyncProcessor.SET", "key: %@", &buf, 0xCu);
  }

  v13 = [(MTEpisodeSyncProcessor *)self storageProvider];
  v14 = [v13 importContext];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = sub_100008BFC;
  v36 = sub_10003B5D4;
  v37 = +[NSMutableArray array];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10015DB6C;
  v26 = &unk_1004D8E40;
  v27 = self;
  v15 = v9;
  v28 = v15;
  v16 = v14;
  v29 = v16;
  p_buf = &buf;
  [v16 performBlockAndWait:&v23];
  v17 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(*(&buf + 1) + 40);
    *v31 = 138543362;
    v32 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Syncing Episodes: %{public}@", v31, 0xCu);
  }

  if ([*(*(&buf + 1) + 40) count])
  {
    v19 = [(MTEpisodeSyncProcessor *)self storageProvider];
    *a5 = [v19 versionForKey:v15];

    v20 = objc_alloc_init(MZKeyValueStoreNode);
    [(MZKeyValueStoreNode *)v20 setArrayValue:*(*(&buf + 1) + 40)];
    v21 = [(MZKeyValueStoreNode *)v20 value];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&buf, 8);

  return v21;
}

- (id)predicateForFilteringEpisodesWithEmptyPlayState
{
  v2 = [MTEpisode predicateForPlayStateManuallySet:1];
  v3 = [MTEpisode predicateForBacklog:0];
  v4 = [v2 AND:v3];
  v5 = +[MTEpisode predicateForNilLastDatePlayed];
  v6 = [v4 AND:v5];
  v7 = +[MTEpisode predicateForNilLastUserMarkedAsPlayedDate];
  v8 = [v6 AND:v7];

  v9 = +[MTEpisode predicateForNonNilLastDatePlayed];
  v10 = +[MTEpisode predicateForNonNilLastUserMarkedAsPlayedDate];
  v11 = [v9 OR:v10];
  v12 = [v11 OR:v8];

  return v12;
}

- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4
{
  v5 = a4;
  v6 = [(MTEpisodeSyncProcessor *)self storageProvider];
  [v6 setPodcastsDomainVersion:v5];
}

- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a4;
  v15 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Successful GET transaction [%{public}@] key: %{public}@", &v16, 0x16u);
  }

  [(MTEpisodeSyncProcessor *)self mergeData:v14 forKey:v11];
  [(MTEpisodeSyncProcessor *)self completeTransactionWithNewVersion:v12 key:v11 finishedBlock:v13];
}

- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Successful SET transaction [%{public}@] key: %{public}@ mismatch:NO", &v14, 0x16u);
  }

  [(MTEpisodeSyncProcessor *)self completeTransactionWithNewVersion:v11 key:v10 finishedBlock:v12];
}

- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a4;
  v15 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Conflict for SET transaction [%{public}@] key: %{public}@", &v16, 0x16u);
  }

  [(MTEpisodeSyncProcessor *)self mergeData:v14 forKey:v11];
  [(MTEpisodeSyncProcessor *)self rescheduleTransactionWithNewVersion:v12 key:v11 finishedBlock:v13];
}

- (void)completeTransactionWithNewVersion:(id)a3 key:(id)a4 finishedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryCloudSync();
  v12 = v11;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, signpostID, "MTSubscriptionSyncProcessor.completed", "", &v19, 2u);
  }

  v14 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Completing transaction [%{public}@] key: %{public}@", &v19, 0x16u);
  }

  v15 = [(MTEpisodeSyncProcessor *)self storageProvider];
  [v15 setVersion:v8 forKey:v9];

  v10[2](v10, 0);
  v16 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Completing transaction [%{public}@] key: %{public}@, now reculating Up Next", &v19, 0x16u);
  }

  v17 = [(MTEpisodeSyncProcessor *)self storageProvider];
  v18 = [v17 feedUrlFromModernKey:v9];

  [(MTEpisodeSyncProcessor *)self recalculateUpNextForShowWithFeedUrl:v18];
}

- (void)rescheduleTransactionWithNewVersion:(id)a3 key:(id)a4 finishedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryCloudSync();
  v12 = v11;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, signpostID, "MTSubscriptionSyncProcessor.mismatch", "", &v16, 2u);
  }

  v14 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Rescheduling SET transaction after solving conflict [%{public}@] key: %{public}@", &v16, 0x16u);
  }

  v15 = [(MTEpisodeSyncProcessor *)self storageProvider];
  [v15 setVersion:v8 forKey:v9];

  v10[2](v10, 1);
}

- (void)mergeData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v8 setKey:v7];
  [(MZKeyValueStoreNode *)v8 setValue:v6];
  if ([(MZKeyValueStoreNode *)v8 hasData])
  {
    v9 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Merging data for key %{public}@", buf, 0xCu);
    }

    v10 = objc_autoreleasePoolPush();
    v11 = [(MZKeyValueStoreNode *)v8 arrayValue];
    v12 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Getting Episodes: %{public}@", buf, 0xCu);
    }

    v13 = [(MTEpisodeSyncProcessor *)self _searchDictionaryFromArray:v11 withKey:kEpisodeGuid];
    v14 = [(MTEpisodeSyncProcessor *)self _searchDictionaryFromArray:v11 withKey:kEpisodeMetadataIdentifier];

    objc_autoreleasePoolPop(v10);
    v15 = [(MTEpisodeSyncProcessor *)self storageProvider];
    v16 = [v15 importContext];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10015EB4C;
    v20[3] = &unk_1004DAA70;
    v20[4] = self;
    v21 = v7;
    v22 = v16;
    v23 = v13;
    v24 = v14;
    v17 = v14;
    v18 = v13;
    v19 = v16;
    [v19 performBlockAndWait:v20];
  }
}

- (void)unsafeUpdateEpisode:(id)a3 forRemoteEpisodeDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 metadataTimestamp];
  v9 = v8;
  v10 = kEpisodePlayStateManuallySet;
  v11 = [v7 objectForKey:kEpisodePlayStateManuallySet];

  if (v11)
  {
    v12 = [v7 objectForKey:v10];
    v13 = [v12 BOOLValue];

    v14 = [v6 backCatalog];
    [v6 setPlayState:objc_msgSend(v6 manually:"playState") source:{v13, 4}];
    [v6 setBackCatalog:v14];
  }

  v15 = kEpisodeIsNew;
  v16 = [v7 objectForKey:kEpisodeIsNew];

  if (v16)
  {
    v17 = [v7 objectForKey:v15];
    v18 = [v17 BOOLValue];

    if ((v18 & 1) == 0)
    {
      [v6 setIsNew:0];
    }
  }

  v19 = kEpisodeLastDatePlayed;
  v20 = [v7 objectForKey:kEpisodeLastDatePlayed];

  if (v20)
  {
    v21 = [v7 objectForKey:v19];
    [(MTEpisodeSyncProcessor *)self _sanitisedTimeIntervalForObject:v21];
    v23 = v22;

    [v6 lastDatePlayed];
    if (v23 > v24)
    {
      v25 = +[_TtC18PodcastsFoundation17FutureDateChecker sharedInstance];
      v26 = [v25 isFutureWithTimestamp:v23];

      v27 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v6 title];
        v29 = [v6 uuid];
        v30 = [v6 storeTrackId];
        v31 = [v6 metadataIdentifier];
        [v6 lastDatePlayed];
        v33 = v32;
        v34 = [NSNumber numberWithBool:v26];
        v41 = 138544899;
        v42 = v28;
        v43 = 2114;
        v44 = v29;
        v45 = 2049;
        v46 = v30;
        v47 = 2114;
        v48 = v31;
        v49 = 2050;
        v50 = v33;
        v51 = 2050;
        v52 = v23;
        v53 = 2114;
        v54 = v34;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Changing last date played for %{public}@, %{public}@, %{private}lld, %{public}@, from %{public}lf to %{public}lf. Is future: %{public}@", &v41, 0x48u);
      }

      [v6 setLastDatePlayed:v23];
    }
  }

  v35 = kEpisodeLastUserMarkedAsPlayedDate;
  v36 = [v7 objectForKey:kEpisodeLastUserMarkedAsPlayedDate];

  if (v36)
  {
    v37 = [v7 objectForKey:v35];
    [v37 doubleValue];
    v39 = v38;

    [v6 lastUserMarkedAsPlayedDate];
    if (v39 > v40)
    {
      [v6 setLastUserMarkedAsPlayedDate:v39];
    }
  }

  [v6 setMetadataTimestamp:v9];
}

- (void)recalculateUpNextForShowWithFeedUrl:(id)a3
{
  v3 = a3;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 privateQueueContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015F328;
  v8[3] = &unk_1004D8798;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  v7 = v5;
  [v7 performBlock:v8];
}

- (double)_sanitisedTimeIntervalForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

LABEL_6:

  return v5;
}

- (id)_searchDictionaryFromArray:(id)a3 withKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v13 objectForKey:{v6, v16}];
        if (v14)
        {
          [v7 setObject:v13 forKey:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_propertiesToFetch
{
  v4[0] = kEpisodeGuid;
  v4[1] = kEpisodeMetadataIdentifier;
  v4[2] = kEpisodeMetadataTimestamp;
  v4[3] = kEpisodeBackCatalog;
  v4[4] = kEpisodePlayState;
  v4[5] = kEpisodeDownloadBehavior;
  v4[6] = kEpisodeIsNew;
  v4[7] = kEpisodePlayhead;
  v4[8] = kEpisodePlayStateManuallySet;
  v4[9] = kEpisodeLastUserMarkedAsPlayedDate;
  v4[10] = kEpisodePodcast;
  v4[11] = kEpisodeLastDatePlayed;
  v2 = [NSArray arrayWithObjects:v4 count:12];

  return v2;
}

@end