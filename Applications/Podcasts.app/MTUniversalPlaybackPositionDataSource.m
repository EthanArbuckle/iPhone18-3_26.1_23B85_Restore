@interface MTUniversalPlaybackPositionDataSource
+ (double)uppLastSyncTime;
+ (id)mediaItemIdentifierForEpisode:(id)a3;
+ (void)resetUppLastSyncTimeAndDomainVersion;
+ (void)setUppLastSyncTime:(double)a3;
+ (void)updateEpisode:(id)a3 withUPPMetadata:(id)a4;
- (id)_metricsDateFormatter;
- (id)beginTransactionWithItemsToSyncEnumerationBlock:(id)a3;
- (void)addEpisodeObserver:(id)a3;
- (void)commitUniversalPlaybackPositionTransaction:(id)a3 domainVersion:(id)a4 metadataEnumerationBlock:(id)a5;
- (void)performBlockAndWait:(id)a3;
- (void)removeEpisodeObserver:(id)a3;
@end

@implementation MTUniversalPlaybackPositionDataSource

+ (double)uppLastSyncTime
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:kMTLibraryUppLastSyncTimeKey];
  v4 = v3;

  return v4;
}

+ (id)mediaItemIdentifierForEpisode:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTUniversalPlaybackPositionMediaItem);
  [(MTUniversalPlaybackPositionMediaItem *)v4 setEpisode:v3];

  v5 = [MZUniversalPlaybackPositionMetadata keyValueStoreItemIdentifierForItem:v4];

  return v5;
}

- (void)performBlockAndWait:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[MTDB sharedInstance];
    v5 = [v4 importContext];

    [v5 performBlockAndWait:v3];
  }
}

- (id)beginTransactionWithItemsToSyncEnumerationBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTUniversalPlaybackPositionTransactionContext);
  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  [(MTUniversalPlaybackPositionTransactionContext *)v4 setSyncStartTime:?];

  if (v3)
  {
    v6 = +[MTDB sharedInstance];
    v7 = [v6 importContext];

    v8 = +[(MTBaseProcessor *)MTUPPSyncProcessor];
    v9 = [v8 predicate];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C80E8;
    v13[3] = &unk_1004DB618;
    v14 = v7;
    v15 = v9;
    v17 = v3;
    v16 = v4;
    v10 = v9;
    v11 = v7;
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

- (void)commitUniversalPlaybackPositionTransaction:(id)a3 domainVersion:(id)a4 metadataEnumerationBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = self;
    v34 = v9;
    v11 = +[MTUniversalPlaybackPositionTransactionContext UPPDomainVersion];
    v32 = [v11 length] != 0;

    +[NSDate timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = v8;
    v15 = +[MTDB sharedInstance];
    v31 = [v15 importContext];

    v16 = objc_alloc_init(NSMutableArray);
    v17 = objc_alloc_init(NSMutableSet);
    v18 = v10[2](v10);
    if (v18)
    {
      v19 = v18;
      do
      {
        [v16 addObject:{v19, v31}];
        v20 = [v14 mediaItems];
        v21 = [v19 itemIdentifier];
        v22 = [v20 objectForKey:v21];

        if (!v22)
        {
          v23 = [v19 itemIdentifier];
          [v17 addObject:v23];
        }

        v24 = v10[2](v10);

        v19 = v24;
      }

      while (v24);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000C8A30;
    v37[3] = &unk_1004DB660;
    v25 = v31;
    v38 = v25;
    v39 = v17;
    v40 = v16;
    v41 = v14;
    v42 = v33;
    v44 = v32;
    v43 = v13;
    v26 = v14;
    v27 = v16;
    v28 = v17;
    [v25 performBlockAndWaitWithSave:v37];
    v29 = objc_opt_class();
    [v26 syncStartTime];
    [v29 setUppLastSyncTime:?];
    v9 = v34;
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
      v46 = v8;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Ran into unexpected transaction {%{public}@} -- BailingOut", buf, 0xCu);
    }
  }
}

- (void)addEpisodeObserver:(id)a3
{
  v4 = a3;
  v5 = [(MTUniversalPlaybackPositionDataSource *)self episodeObservers];

  if (!v5)
  {
    v6 = +[NSMutableArray array];
    [(MTUniversalPlaybackPositionDataSource *)self setEpisodeObservers:v6];
  }

  v7 = [(MTUniversalPlaybackPositionDataSource *)self episodeObservers];
  [v7 addObject:v4];
}

- (void)removeEpisodeObserver:(id)a3
{
  v4 = a3;
  v5 = [(MTUniversalPlaybackPositionDataSource *)self episodeObservers];
  [v5 removeObject:v4];
}

+ (void)updateEpisode:(id)a3 withUPPMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 title];
    v9 = [v5 uuid];
    v10 = [v5 storeTrackId];
    v11 = [v5 metadataIdentifier];
    *v25 = 138479107;
    *&v25[4] = v8;
    v26 = 2114;
    v27 = v9;
    v28 = 2049;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2050;
    v33 = [v5 playState];
    v34 = 2114;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating episode %{private}@, %{public}@, %{private}lld, %{public}@, current playState: %{public}lld\nwith UPP metadata: %{public}@", v25, 0x3Eu);
  }

  v12 = [v6 playCount];
  v13 = +[MTLibraryLegacyUtil playStateFromHasBeenPlayed:andPlayCount:](MTLibraryLegacyUtil, "playStateFromHasBeenPlayed:andPlayCount:", [v6 hasBeenPlayed], v12);
  v14 = [v5 playState];
  v15 = [v5 isBackCatalogItem];
  if (v12 > 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = _MTLogCategoryUPPSync();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v13 != v14 || v16)
  {
    if (v18)
    {
      v23 = [v5 playState];
      *v25 = 134349312;
      *&v25[4] = v23;
      v26 = 2050;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UPP Updating playState from %{public}lld to %{public}lld", v25, 0x16u);
    }

    [v5 setPlayState:v13 manually:0 source:3];
  }

  else
  {
    if (v18)
    {
      v19 = [v5 playState];
      if ([v5 playStateManuallySet])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = [v5 backCatalog];
      *v25 = 134349826;
      if (v21)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      *&v25[4] = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v22;
      v30 = 2048;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UPP NOT Updating playState because it was already %{public}lld, playStateManuallySet: %@, backCatalog: %@. Remote UPP playCount: %lld", v25, 0x2Au);
    }
  }

  [v6 bookmarkTime];
  *&v24 = v24;
  [v5 setPlayhead:v24];
  [v5 setPlayCount:v12];
  [v5 pubDate];
  [v5 setImportDate:?];
  [v6 timestamp];
  [v5 setMetadataTimestamp:?];
  [v5 setMetadataFirstSyncEligible:0];
}

+ (void)resetUppLastSyncTimeAndDomainVersion
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:kMTLibraryUppLastSyncTimeKey];

  [MTUniversalPlaybackPositionTransactionContext setUPPDomainVersion:0];
  v3 = +[(MTBaseProcessor *)MTUPPSyncProcessor];
  [v3 updatePredicate];
}

+ (void)setUppLastSyncTime:(double)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setDouble:kMTLibraryUppLastSyncTimeKey forKey:a3];

  v5 = +[(MTBaseProcessor *)MTUPPSyncProcessor];
  [v5 updatePredicate];
}

@end