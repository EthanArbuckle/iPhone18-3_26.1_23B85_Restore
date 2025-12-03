@interface MTEpisodeSyncProcessor
- (MTEpisodeSyncProcessor)initWithStorageProvider:(id)provider;
- (double)_sanitisedTimeIntervalForObject:(id)object;
- (id)_propertiesToFetch;
- (id)_searchDictionaryFromArray:(id)array withKey:(id)key;
- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version;
- (id)predicateForFilteringEpisodesWithEmptyPlayState;
- (id)versionForGetTransaction:(id)transaction key:(id)key;
- (void)completeTransactionWithNewVersion:(id)version key:(id)key finishedBlock:(id)block;
- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)mergeData:(id)data forKey:(id)key;
- (void)recalculateUpNextForShowWithFeedUrl:(id)url;
- (void)rescheduleTransactionWithNewVersion:(id)version key:(id)key finishedBlock:(id)block;
- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version;
- (void)unsafeUpdateEpisode:(id)episode forRemoteEpisodeDictionary:(id)dictionary;
@end

@implementation MTEpisodeSyncProcessor

- (MTEpisodeSyncProcessor)initWithStorageProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = MTEpisodeSyncProcessor;
  v5 = [(MTEpisodeSyncProcessor *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(MTEpisodeSyncProcessor *)v5 setStorageProvider:providerCopy];
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

- (id)versionForGetTransaction:(id)transaction key:(id)key
{
  keyCopy = key;
  v6 = _MTLogCategoryCloudSync();
  v7 = v6;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v13 = 138412290;
    v14 = keyCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTEpisodeSyncProcessor.GET", "key: %@", &v13, 0xCu);
  }

  storageProvider = [(MTEpisodeSyncProcessor *)self storageProvider];
  v10 = [storageProvider versionForKey:keyCopy];

  v11 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = keyCopy;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Episode Sync] key: %{public}@, version: %{public}@", &v13, 0x16u);
  }

  return v10;
}

- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version
{
  transactionCopy = transaction;
  keyCopy = key;
  v10 = _MTLogCategoryCloudSync();
  v11 = v10;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = keyCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTEpisodeSyncProcessor.SET", "key: %@", &buf, 0xCu);
  }

  storageProvider = [(MTEpisodeSyncProcessor *)self storageProvider];
  importContext = [storageProvider importContext];

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
  selfCopy = self;
  v15 = keyCopy;
  v28 = v15;
  v16 = importContext;
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
    storageProvider2 = [(MTEpisodeSyncProcessor *)self storageProvider];
    *version = [storageProvider2 versionForKey:v15];

    v20 = objc_alloc_init(MZKeyValueStoreNode);
    [(MZKeyValueStoreNode *)v20 setArrayValue:*(*(&buf + 1) + 40)];
    value = [(MZKeyValueStoreNode *)v20 value];
  }

  else
  {
    value = 0;
  }

  _Block_object_dispose(&buf, 8);

  return value;
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

- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version
{
  versionCopy = version;
  storageProvider = [(MTEpisodeSyncProcessor *)self storageProvider];
  [storageProvider setPodcastsDomainVersion:versionCopy];
}

- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  dataCopy = data;
  v15 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = versionCopy;
    v18 = 2114;
    v19 = keyCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Successful GET transaction [%{public}@] key: %{public}@", &v16, 0x16u);
  }

  [(MTEpisodeSyncProcessor *)self mergeData:dataCopy forKey:keyCopy];
  [(MTEpisodeSyncProcessor *)self completeTransactionWithNewVersion:versionCopy key:keyCopy finishedBlock:blockCopy];
}

- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  v13 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = versionCopy;
    v16 = 2114;
    v17 = keyCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Successful SET transaction [%{public}@] key: %{public}@ mismatch:NO", &v14, 0x16u);
  }

  [(MTEpisodeSyncProcessor *)self completeTransactionWithNewVersion:versionCopy key:keyCopy finishedBlock:blockCopy];
}

- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  dataCopy = data;
  v15 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = versionCopy;
    v18 = 2114;
    v19 = keyCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Conflict for SET transaction [%{public}@] key: %{public}@", &v16, 0x16u);
  }

  [(MTEpisodeSyncProcessor *)self mergeData:dataCopy forKey:keyCopy];
  [(MTEpisodeSyncProcessor *)self rescheduleTransactionWithNewVersion:versionCopy key:keyCopy finishedBlock:blockCopy];
}

- (void)completeTransactionWithNewVersion:(id)version key:(id)key finishedBlock:(id)block
{
  versionCopy = version;
  keyCopy = key;
  blockCopy = block;
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
    v20 = versionCopy;
    v21 = 2114;
    v22 = keyCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Completing transaction [%{public}@] key: %{public}@", &v19, 0x16u);
  }

  storageProvider = [(MTEpisodeSyncProcessor *)self storageProvider];
  [storageProvider setVersion:versionCopy forKey:keyCopy];

  blockCopy[2](blockCopy, 0);
  v16 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = versionCopy;
    v21 = 2114;
    v22 = keyCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Completing transaction [%{public}@] key: %{public}@, now reculating Up Next", &v19, 0x16u);
  }

  storageProvider2 = [(MTEpisodeSyncProcessor *)self storageProvider];
  v18 = [storageProvider2 feedUrlFromModernKey:keyCopy];

  [(MTEpisodeSyncProcessor *)self recalculateUpNextForShowWithFeedUrl:v18];
}

- (void)rescheduleTransactionWithNewVersion:(id)version key:(id)key finishedBlock:(id)block
{
  versionCopy = version;
  keyCopy = key;
  blockCopy = block;
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
    v17 = versionCopy;
    v18 = 2114;
    v19 = keyCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Rescheduling SET transaction after solving conflict [%{public}@] key: %{public}@", &v16, 0x16u);
  }

  storageProvider = [(MTEpisodeSyncProcessor *)self storageProvider];
  [storageProvider setVersion:versionCopy forKey:keyCopy];

  blockCopy[2](blockCopy, 1);
}

- (void)mergeData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v8 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v8 setKey:keyCopy];
  [(MZKeyValueStoreNode *)v8 setValue:dataCopy];
  if ([(MZKeyValueStoreNode *)v8 hasData])
  {
    v9 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = keyCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Merging data for key %{public}@", buf, 0xCu);
    }

    v10 = objc_autoreleasePoolPush();
    arrayValue = [(MZKeyValueStoreNode *)v8 arrayValue];
    v12 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = arrayValue;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Getting Episodes: %{public}@", buf, 0xCu);
    }

    v13 = [(MTEpisodeSyncProcessor *)self _searchDictionaryFromArray:arrayValue withKey:kEpisodeGuid];
    v14 = [(MTEpisodeSyncProcessor *)self _searchDictionaryFromArray:arrayValue withKey:kEpisodeMetadataIdentifier];

    objc_autoreleasePoolPop(v10);
    storageProvider = [(MTEpisodeSyncProcessor *)self storageProvider];
    importContext = [storageProvider importContext];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10015EB4C;
    v20[3] = &unk_1004DAA70;
    v20[4] = self;
    v21 = keyCopy;
    v22 = importContext;
    v23 = v13;
    v24 = v14;
    v17 = v14;
    v18 = v13;
    v19 = importContext;
    [v19 performBlockAndWait:v20];
  }
}

- (void)unsafeUpdateEpisode:(id)episode forRemoteEpisodeDictionary:(id)dictionary
{
  episodeCopy = episode;
  dictionaryCopy = dictionary;
  [episodeCopy metadataTimestamp];
  v9 = v8;
  v10 = kEpisodePlayStateManuallySet;
  v11 = [dictionaryCopy objectForKey:kEpisodePlayStateManuallySet];

  if (v11)
  {
    v12 = [dictionaryCopy objectForKey:v10];
    bOOLValue = [v12 BOOLValue];

    backCatalog = [episodeCopy backCatalog];
    [episodeCopy setPlayState:objc_msgSend(episodeCopy manually:"playState") source:{bOOLValue, 4}];
    [episodeCopy setBackCatalog:backCatalog];
  }

  v15 = kEpisodeIsNew;
  v16 = [dictionaryCopy objectForKey:kEpisodeIsNew];

  if (v16)
  {
    v17 = [dictionaryCopy objectForKey:v15];
    bOOLValue2 = [v17 BOOLValue];

    if ((bOOLValue2 & 1) == 0)
    {
      [episodeCopy setIsNew:0];
    }
  }

  v19 = kEpisodeLastDatePlayed;
  v20 = [dictionaryCopy objectForKey:kEpisodeLastDatePlayed];

  if (v20)
  {
    v21 = [dictionaryCopy objectForKey:v19];
    [(MTEpisodeSyncProcessor *)self _sanitisedTimeIntervalForObject:v21];
    v23 = v22;

    [episodeCopy lastDatePlayed];
    if (v23 > v24)
    {
      v25 = +[_TtC18PodcastsFoundation17FutureDateChecker sharedInstance];
      v26 = [v25 isFutureWithTimestamp:v23];

      v27 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        title = [episodeCopy title];
        uuid = [episodeCopy uuid];
        storeTrackId = [episodeCopy storeTrackId];
        metadataIdentifier = [episodeCopy metadataIdentifier];
        [episodeCopy lastDatePlayed];
        v33 = v32;
        v34 = [NSNumber numberWithBool:v26];
        v41 = 138544899;
        v42 = title;
        v43 = 2114;
        v44 = uuid;
        v45 = 2049;
        v46 = storeTrackId;
        v47 = 2114;
        v48 = metadataIdentifier;
        v49 = 2050;
        v50 = v33;
        v51 = 2050;
        v52 = v23;
        v53 = 2114;
        v54 = v34;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Changing last date played for %{public}@, %{public}@, %{private}lld, %{public}@, from %{public}lf to %{public}lf. Is future: %{public}@", &v41, 0x48u);
      }

      [episodeCopy setLastDatePlayed:v23];
    }
  }

  v35 = kEpisodeLastUserMarkedAsPlayedDate;
  v36 = [dictionaryCopy objectForKey:kEpisodeLastUserMarkedAsPlayedDate];

  if (v36)
  {
    v37 = [dictionaryCopy objectForKey:v35];
    [v37 doubleValue];
    v39 = v38;

    [episodeCopy lastUserMarkedAsPlayedDate];
    if (v39 > v40)
    {
      [episodeCopy setLastUserMarkedAsPlayedDate:v39];
    }
  }

  [episodeCopy setMetadataTimestamp:v9];
}

- (void)recalculateUpNextForShowWithFeedUrl:(id)url
{
  urlCopy = url;
  v4 = +[MTDB sharedInstance];
  privateQueueContext = [v4 privateQueueContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015F328;
  v8[3] = &unk_1004D8798;
  v9 = privateQueueContext;
  v10 = urlCopy;
  v6 = urlCopy;
  v7 = privateQueueContext;
  [v7 performBlock:v8];
}

- (double)_sanitisedTimeIntervalForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objectCopy doubleValue];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [objectCopy timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

LABEL_6:

  return v5;
}

- (id)_searchDictionaryFromArray:(id)array withKey:(id)key
{
  arrayCopy = array;
  keyCopy = key;
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [arrayCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = arrayCopy;
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
        v14 = [v13 objectForKey:{keyCopy, v16}];
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