@interface MTUniversalPlaybackPositionDataSource
+ (double)uppLastSyncTime;
+ (id)mediaItemIdentifierForEpisode:(id)episode;
+ (void)resetUppLastSyncTimeAndDomainVersion;
+ (void)setUppLastSyncTime:(double)time;
+ (void)updateEpisode:(id)episode withUPPMetadata:(id)metadata;
- (id)_metricsDateFormatter;
- (id)beginTransactionWithItemsToSyncEnumerationBlock:(id)block;
- (void)addEpisodeObserver:(id)observer;
- (void)commitUniversalPlaybackPositionTransaction:(id)transaction domainVersion:(id)version metadataEnumerationBlock:(id)block;
- (void)performBlockAndWait:(id)wait;
- (void)removeEpisodeObserver:(id)observer;
@end

@implementation MTUniversalPlaybackPositionDataSource

+ (double)uppLastSyncTime
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:kMTLibraryUppLastSyncTimeKey];
  v4 = v3;

  return v4;
}

+ (id)mediaItemIdentifierForEpisode:(id)episode
{
  episodeCopy = episode;
  v4 = objc_alloc_init(MTUniversalPlaybackPositionMediaItem);
  [(MTUniversalPlaybackPositionMediaItem *)v4 setEpisode:episodeCopy];

  v5 = [MZUniversalPlaybackPositionMetadata keyValueStoreItemIdentifierForItem:v4];

  return v5;
}

- (void)performBlockAndWait:(id)wait
{
  if (wait)
  {
    waitCopy = wait;
    v4 = +[MTDB sharedInstance];
    importContext = [v4 importContext];

    [importContext performBlockAndWait:waitCopy];
  }
}

- (id)beginTransactionWithItemsToSyncEnumerationBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(MTUniversalPlaybackPositionTransactionContext);
  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  [(MTUniversalPlaybackPositionTransactionContext *)v4 setSyncStartTime:?];

  if (blockCopy)
  {
    v6 = +[MTDB sharedInstance];
    importContext = [v6 importContext];

    v8 = +[(MTBaseProcessor *)MTUPPSyncProcessor];
    predicate = [v8 predicate];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C80E8;
    v13[3] = &unk_1004DB618;
    v14 = importContext;
    v15 = predicate;
    v17 = blockCopy;
    v16 = v4;
    v10 = predicate;
    v11 = importContext;
    [v11 performBlockAndWaitWithSave:v13];
  }

  return v4;
}

- (id)_metricsDateFormatter
{
  if (qword_100583BF0 != -1)
  {
    sub_1003B2C38();
  }

  v3 = qword_100583BE8;

  return v3;
}

- (void)commitUniversalPlaybackPositionTransaction:(id)transaction domainVersion:(id)version metadataEnumerationBlock:(id)block
{
  transactionCopy = transaction;
  versionCopy = version;
  blockCopy = block;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v34 = versionCopy;
    v11 = +[MTUniversalPlaybackPositionTransactionContext UPPDomainVersion];
    v32 = [v11 length] != 0;

    +[NSDate timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = transactionCopy;
    v15 = +[MTDB sharedInstance];
    importContext = [v15 importContext];

    v16 = objc_alloc_init(NSMutableArray);
    v17 = objc_alloc_init(NSMutableSet);
    v18 = blockCopy[2](blockCopy);
    if (v18)
    {
      v19 = v18;
      do
      {
        [v16 addObject:{v19, importContext}];
        mediaItems = [v14 mediaItems];
        itemIdentifier = [v19 itemIdentifier];
        v22 = [mediaItems objectForKey:itemIdentifier];

        if (!v22)
        {
          itemIdentifier2 = [v19 itemIdentifier];
          [v17 addObject:itemIdentifier2];
        }

        v24 = blockCopy[2](blockCopy);

        v19 = v24;
      }

      while (v24);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000C8A30;
    v37[3] = &unk_1004DB660;
    v25 = importContext;
    v38 = v25;
    v39 = v17;
    v40 = v16;
    v41 = v14;
    v42 = selfCopy;
    v44 = v32;
    v43 = v13;
    v26 = v14;
    v27 = v16;
    v28 = v17;
    [v25 performBlockAndWaitWithSave:v37];
    v29 = objc_opt_class();
    [v26 syncStartTime];
    [v29 setUppLastSyncTime:?];
    versionCopy = v34;
    [objc_opt_class() setUPPDomainVersion:v34];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000C9794;
    v35[3] = &unk_1004D8358;
    v36 = v25;
    v30 = v25;
    [v30 performBlockAndWait:v35];
  }

  else
  {
    v28 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v46 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Ran into unexpected transaction {%{public}@} -- BailingOut", buf, 0xCu);
    }
  }
}

- (void)addEpisodeObserver:(id)observer
{
  observerCopy = observer;
  episodeObservers = [(MTUniversalPlaybackPositionDataSource *)self episodeObservers];

  if (!episodeObservers)
  {
    v6 = +[NSMutableArray array];
    [(MTUniversalPlaybackPositionDataSource *)self setEpisodeObservers:v6];
  }

  episodeObservers2 = [(MTUniversalPlaybackPositionDataSource *)self episodeObservers];
  [episodeObservers2 addObject:observerCopy];
}

- (void)removeEpisodeObserver:(id)observer
{
  observerCopy = observer;
  episodeObservers = [(MTUniversalPlaybackPositionDataSource *)self episodeObservers];
  [episodeObservers removeObject:observerCopy];
}

+ (void)updateEpisode:(id)episode withUPPMetadata:(id)metadata
{
  episodeCopy = episode;
  metadataCopy = metadata;
  v7 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    title = [episodeCopy title];
    uuid = [episodeCopy uuid];
    storeTrackId = [episodeCopy storeTrackId];
    metadataIdentifier = [episodeCopy metadataIdentifier];
    *v25 = 138479107;
    *&v25[4] = title;
    v26 = 2114;
    v27 = uuid;
    v28 = 2049;
    v29 = storeTrackId;
    v30 = 2114;
    v31 = metadataIdentifier;
    v32 = 2050;
    playState = [episodeCopy playState];
    v34 = 2114;
    v35 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating episode %{private}@, %{public}@, %{private}lld, %{public}@, current playState: %{public}lld\nwith UPP metadata: %{public}@", v25, 0x3Eu);
  }

  playCount = [metadataCopy playCount];
  v13 = +[MTLibraryLegacyUtil playStateFromHasBeenPlayed:andPlayCount:](MTLibraryLegacyUtil, "playStateFromHasBeenPlayed:andPlayCount:", [metadataCopy hasBeenPlayed], playCount);
  playState2 = [episodeCopy playState];
  isBackCatalogItem = [episodeCopy isBackCatalogItem];
  if (playCount > 0)
  {
    v16 = isBackCatalogItem;
  }

  else
  {
    v16 = 0;
  }

  v17 = _MTLogCategoryUPPSync();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v13 != playState2 || v16)
  {
    if (v18)
    {
      playState3 = [episodeCopy playState];
      *v25 = 134349312;
      *&v25[4] = playState3;
      v26 = 2050;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UPP Updating playState from %{public}lld to %{public}lld", v25, 0x16u);
    }

    [episodeCopy setPlayState:v13 manually:0 source:3];
  }

  else
  {
    if (v18)
    {
      playState4 = [episodeCopy playState];
      if ([episodeCopy playStateManuallySet])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      backCatalog = [episodeCopy backCatalog];
      *v25 = 134349826;
      if (backCatalog)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      *&v25[4] = playState4;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v22;
      v30 = 2048;
      v31 = playCount;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UPP NOT Updating playState because it was already %{public}lld, playStateManuallySet: %@, backCatalog: %@. Remote UPP playCount: %lld", v25, 0x2Au);
    }
  }

  [metadataCopy bookmarkTime];
  *&v24 = v24;
  [episodeCopy setPlayhead:v24];
  [episodeCopy setPlayCount:playCount];
  [episodeCopy pubDate];
  [episodeCopy setImportDate:?];
  [metadataCopy timestamp];
  [episodeCopy setMetadataTimestamp:?];
  [episodeCopy setMetadataFirstSyncEligible:0];
}

+ (void)resetUppLastSyncTimeAndDomainVersion
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:kMTLibraryUppLastSyncTimeKey];

  [MTUniversalPlaybackPositionTransactionContext setUPPDomainVersion:0];
  v3 = +[(MTBaseProcessor *)MTUPPSyncProcessor];
  [v3 updatePredicate];
}

+ (void)setUppLastSyncTime:(double)time
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setDouble:kMTLibraryUppLastSyncTimeKey forKey:time];

  v5 = +[(MTBaseProcessor *)MTUPPSyncProcessor];
  [v5 updatePredicate];
}

@end