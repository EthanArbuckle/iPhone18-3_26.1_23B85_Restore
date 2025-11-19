@interface MTUPPSyncProcessor
- (BOOL)shouldSync:(id)a3;
- (id)controller;
- (id)predicate;
- (void)playerPaused;
- (void)processResults;
- (void)updatePredicate;
@end

@implementation MTUPPSyncProcessor

- (id)predicate
{
  v2 = kEpisodeMetadataTimestamp;
  +[MTUniversalPlaybackPositionDataSource uppLastSyncTime];
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v4 = [NSPredicate predicateForDateKey:v2 isGreaterThanDate:v3];

  return v4;
}

- (void)updatePredicate
{
  v5.receiver = self;
  v5.super_class = MTUPPSyncProcessor;
  [(MTBaseProcessor *)&v5 updatePredicate];
  v3 = [(MTBaseProcessor *)self queryObserver];
  v4 = [v3 isObserving];

  if (v4)
  {
    [(MTUPPSyncProcessor *)self processResults];
  }
}

- (void)processResults
{
  v2 = self;
  objc_sync_enter(v2);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100008BCC;
  v11 = sub_10003B5BC;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001421D0;
  v6[3] = &unk_1004DB750;
  v6[4] = &v7;
  [(MTBaseProcessor *)v2 results:v6];
  if ([(MTUPPSyncProcessor *)v2 shouldSync:v8[5]])
  {
    v3 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v8[5] count];
      *buf = 134217984;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MTUPPSyncProcessor - Episodes to sync: %ld", buf, 0xCu);
    }

    v5 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
    [v5 performUniversalPlaybackPositionSync];
  }

  else
  {
    v5 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MTUPPSyncProcessor - skipping sync", buf, 2u);
    }
  }

  _Block_object_dispose(&v7, 8);
  objc_sync_exit(v2);
}

- (BOOL)shouldSync:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v6 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "MTUPPSyncProcessor - skipping sync because no items to sync.", buf, 2u);
    }

    v5 = 0;
    goto LABEL_14;
  }

  if ([v4 count] <= 1)
  {
    v6 = [v4 firstObject];
    v7 = [(MTUPPSyncProcessor *)self controller];
    [v7 reloadIfNeeded];

    v8 = [(MTUPPSyncProcessor *)self controller];
    v9 = [v8 response];

    if ([v9 state] == 2 && (objc_msgSend(v9, "tracklist"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "playingItem"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "metadataObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "identifiers"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "library"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "databaseID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", v6), v15, v14, v13, v12, v11, v10, v16))
    {
      v17 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "MTUPPSyncProcessor - Trying to sync the currently playing item. Skipping UPP sync.", v19, 2u);
      }

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

LABEL_14:
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:

  return v5;
}

- (void)playerPaused
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100142478;
  v2[3] = &unk_1004D8358;
  v2[4] = self;
  [(MTBaseProcessor *)self enqueueWorkBlock:v2];
}

- (id)controller
{
  controller = self->_controller;
  if (!controller)
  {
    v4 = objc_alloc_init(MPCPlayerRequest);
    [v4 setLabel:@"com.apple.podcasts.MTUPPSyncProcessor"];
    v5 = +[MPAVRoutingController systemRoute];
    v6 = [MPCPlayerPath pathWithRoute:v5 bundleID:kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier playerID:kPodcastsPlayerID];
    [v4 setPlayerPath:v6];

    v13 = MPModelRelationshipGenericPodcastEpisode;
    v7 = +[MPPropertySet emptyPropertySet];
    v14 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [MPPropertySet propertySetWithRelationships:v8];
    [v4 setPlayingItemProperties:v9];

    v10 = objc_alloc_init(MPRequestResponseController);
    v11 = self->_controller;
    self->_controller = v10;

    [(MPRequestResponseController *)self->_controller setRequest:v4];
    [(MPRequestResponseController *)self->_controller beginAutomaticResponseLoading];

    controller = self->_controller;
  }

  return controller;
}

@end