@interface MTPlaybackQueueController
- (BOOL)playItemWithContentID:(id)a3;
- (BOOL)removeItemWithContentID:(id)a3;
- (BOOL)reorderItemWithContentId:(id)a3 afterItemWithContentID:(id)a4;
- (MTCompositeManifest)compositeManifest;
- (MTPlaybackQueueController)initWithPlayerController:(id)a3;
- (MTPlaybackQueueControllerSessionDelegate)sessionDelegate;
- (MTPlayerController)playerController;
- (id)_contentItemForChapter:(id)a3 playerItem:(id)a4;
- (id)_playerItemForContentItemId:(id)a3 infoCenter:(id)a4;
- (id)nowPlayingInfoCenter:(id)a3 artworkForContentItem:(id)a4 size:(CGSize)a5 completion:(id)a6;
- (id)nowPlayingInfoCenter:(id)a3 contentItemForID:(id)a4;
- (id)nowPlayingInfoCenter:(id)a3 contentItemIDForOffset:(int64_t)a4;
- (id)nowPlayingInfoCenter:(id)a3 infoForContentItem:(id)a4 completion:(id)a5;
- (id)playbackQueueIdentifierForNowPlayingInfoCenter:(id)a3;
- (void)artworkDidChange:(id)a3;
- (void)clearUpNextManifest;
- (void)fetchArtworkForPlayerItem:(id)a3 contentItem:(id)a4 atTime:(double)a5 ofSize:(CGSize)a6 completion:(id)a7;
- (void)legacyFetchArtworkForPlayerItem:(id)a3 contentItem:(id)a4 atTime:(double)a5 ofSize:(CGSize)a6 completion:(id)a7;
- (void)manifestDidChange;
- (void)nowPlayingInfoCenter:(id)a3 getTransportablePlaybackSessionRepresentationWithCompletion:(id)a4;
- (void)setMagicMomentPlayerItem:(id)a3;
@end

@implementation MTPlaybackQueueController

- (MTPlaybackQueueController)initWithPlayerController:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MTPlaybackQueueController;
  v5 = [(MTPlaybackQueueController *)&v20 init];
  if (v5)
  {
    v6 = [v4 player];
    [(MTPlaybackQueueController *)v5 setPlayerController:v4];
    v7 = [v6 infoCenter];
    [v7 setPlaybackQueueDataSource:v5];

    v8 = +[IMAVPlayer sharedPlayer];

    if (v6 == v8)
    {
      v9 = [MPNowPlayingInfoCenter alloc];
      v10 = [v9 initWithPlayerID:kMTPodcastsMagicMomentsPlayerID];
      [(MTPlaybackQueueController *)v5 setMetadataInfoCenter:v10];

      v11 = [(MTPlaybackQueueController *)v5 metadataInfoCenter];
      [v11 setPlaybackQueueDataSource:v5];

      v12 = [(MTPlaybackQueueController *)v5 metadataInfoCenter];
      [v12 invalidatePlaybackQueue];
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v5 selector:"manifestDidChange" name:IMAVPlayerNotification_MediaItemDidChange object:v6];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v5 selector:"didLoadAdditionalItems" name:IMPlayerManifestDidLoadAdditionalItems object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v5 selector:"artworkDidChange:" name:kMTImageDownloaderArtworkDidLoadNotification object:0];

    v16 = [[MTUpNextResultsController alloc] initWithPlayerController:v4];
    [(MTPlaybackQueueController *)v5 setUpNextResultsController:v16];

    v17 = [(MTPlaybackQueueController *)v5 upNextResultsController];
    [v17 setDelegate:v5];

    v18 = objc_opt_new();
    [(MTPlaybackQueueController *)v5 setArtworkRequests:v18];

    [(MTPlaybackQueueController *)v5 manifestDidChange];
  }

  return v5;
}

- (MTCompositeManifest)compositeManifest
{
  v3 = [(MTPlaybackQueueController *)self playerController];
  v4 = [v3 player];
  v5 = [v4 manifest];

  if (v5 && (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
  }

  else
  {
    v6 = [(MTPlaybackQueueController *)self playerController];
    v7 = [v6 player];
    v8 = [v7 manifest];
  }

  return v8;
}

- (void)manifestDidChange
{
  v3 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidating playback queue", v13, 2u);
  }

  v4 = [(MTPlaybackQueueController *)self playerController];
  v5 = [v4 player];
  v6 = [v5 infoCenter];
  [v6 invalidatePlaybackQueue];

  v7 = [(MTPlaybackQueueController *)self playerController];
  v8 = [v7 player];
  [v8 updateNowPlayingDurationSnapshot];

  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  [(MTPlaybackQueueController *)self setSessionIdentifier:v10];

  v11 = [(MTPlaybackQueueController *)self sessionDelegate];
  LOBYTE(v10) = objc_opt_respondsToSelector();

  if (v10)
  {
    v12 = [(MTPlaybackQueueController *)self sessionDelegate];
    [v12 sessionIdentifierDidChange];
  }
}

- (void)artworkDidChange:(id)a3
{
  v14 = MTImageDownloaderArtworkDidLoadCacheKeys();
  v4 = [(MTPlaybackQueueController *)self compositeManifest];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(MTPlaybackQueueController *)self compositeManifest];
      v8 = [v7 objectAtIndex:v6];

      v9 = [v8 artworkIdentifier];
      v10 = [v14 containsObject:v9];

      if (v10)
      {
        v11 = [v8 contentItem];
        [v11 invalidateArtwork];
      }

      ++v6;
      v12 = [(MTPlaybackQueueController *)self compositeManifest];
      v13 = [v12 count];
    }

    while (v13 > v6);
  }
}

- (BOOL)playItemWithContentID:(id)a3
{
  v4 = a3;
  v5 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:v4];
  v6 = [v5 manifest];
  if (os_feature_enabled_red_sun())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(MTPlaybackQueueController *)self compositeManifest];
      v8 = [v7 currentItem];
      v9 = [v8 contentItemIdentifier];

      [(MTPlaybackQueueController *)self reorderItemWithContentId:v4 afterItemWithContentID:v9];
    }
  }

  v10 = [v5 manifestIndex];
  v11 = [(MTPlaybackQueueController *)self compositeManifest];
  v12 = [v11 determineCompositeIndexWithIndex:v10 fromManifest:v6];

  v13 = [(MTPlaybackQueueController *)self compositeManifest];
  [v13 setCurrentIndex:v12];

  v14 = [(MTPlaybackQueueController *)self playerController];
  [v14 playWithReason:7];

  return 1;
}

- (BOOL)removeItemWithContentID:(id)a3
{
  v4 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:a3];
  v5 = [v4 manifest];
  v6 = [v4 manifestIndex];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [(MTPlaybackQueueController *)self playerController];
    v9 = [v8 upNextController];
    [v9 removeEpisodeAtIndex:v6];
  }

  else
  {
    v8 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Can't remove an item that isn't in the up next manifest", v11, 2u);
    }
  }

  return isKindOfClass & 1;
}

- (void)clearUpNextManifest
{
  v3 = [(MTPlaybackQueueController *)self playerController];
  v2 = [v3 upNextController];
  [v2 clearQueueItems];
}

- (BOOL)reorderItemWithContentId:(id)a3 afterItemWithContentID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTPlaybackQueueController *)self playerController];
  v9 = [v8 upNextController];

  v10 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:v7];

  v11 = [v10 manifest];
  v12 = [v10 manifestIndex];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:v6];
    v14 = [v13 manifest];
    v15 = [v13 manifestIndex];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v9 moveEpisodeFrom:v12 to:v15 + 1];
LABEL_14:

      goto LABEL_15;
    }

    v24 = v9;
    v17 = [(MTPlaybackQueueController *)self compositeManifest];
    v18 = [v17 currentManifest];
    v19 = v18;
    if (v18 == v14)
    {
      v20 = [(MTPlaybackQueueController *)self compositeManifest];
      v23 = [v20 currentIndex];

      if (v23 == v15)
      {
        v9 = v24;
        [v24 moveEpisodeFrom:v12 to:0];
        v16 = 1;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v21 = _MTLogCategoryMediaRemote();
    v9 = v24;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Can't reorder an item to a destination outside of the up next queue", v25, 2u);
    }

    v16 = 0;
    goto LABEL_14;
  }

  v13 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Can't reorder an item that isn't in the up next manifest", buf, 2u);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)setMagicMomentPlayerItem:(id)a3
{
  objc_storeStrong(&self->_magicMomentPlayerItem, a3);
  v4 = [(MTPlaybackQueueController *)self metadataInfoCenter];
  [v4 invalidatePlaybackQueue];
}

- (id)playbackQueueIdentifierForNowPlayingInfoCenter:(id)a3
{
  v3 = [(MTPlaybackQueueController *)self playerController];
  v4 = [v3 player];
  v5 = [v4 manifest];
  v6 = [v5 identifier];

  return v6;
}

- (id)nowPlayingInfoCenter:(id)a3 contentItemForID:(id)a4
{
  v6 = a4;
  v7 = a3;
  kdebug_trace();
  v8 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[InfoCenter] Will fetch content item for ID %{public}@", &v15, 0xCu);
  }

  v9 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:v6 infoCenter:v7];

  v10 = [v9 contentItem];

  v11 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 title];
    v13 = [v10 albumName];
    v15 = 138543874;
    v16 = v6;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Did fetch content item for ID %{public}@ - %@ - %@", &v15, 0x20u);
  }

  kdebug_trace();

  return v10;
}

- (id)nowPlayingInfoCenter:(id)a3 contentItemIDForOffset:(int64_t)a4
{
  v6 = a3;
  kdebug_trace();
  v7 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134217984;
    v27 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[InfoCenter] Will fetch content item ID for offset %ld", &v26, 0xCu);
  }

  v8 = [v6 playerID];

  v9 = [v8 isEqualToString:kMTPodcastsMagicMomentsPlayerID];
  if (v9)
  {
    if (a4)
    {
      v10 = 0;
    }

    else
    {
      v22 = [(MTPlaybackQueueController *)self magicMomentPlayerItem];
      v23 = [v22 contentItem];
      v10 = [v23 identifier];
    }

    v24 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218242;
      v27 = a4;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Did fetch content item ID for Magic Moments player for offset %ld - %{public}@", &v26, 0x16u);
    }

    kdebug_trace();
  }

  else
  {
    v11 = [(MTPlaybackQueueController *)self compositeManifest];
    v12 = [v11 currentIndex];

    v13 = &v12[a4];
    v14 = [(MTPlaybackQueueController *)self compositeManifest];
    v15 = [v14 count];

    if (v13 >= v15)
    {
      v19 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [(MTPlaybackQueueController *)self compositeManifest];
        v21 = [v20 count];
        v26 = 134218240;
        v27 = a4;
        v28 = 2048;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[InfoCenter] Attempting to fetch content item ID for offset %ld outside of manifest range %lu", &v26, 0x16u);
      }

      kdebug_trace();
      v10 = 0;
    }

    else
    {
      v16 = [(MTPlaybackQueueController *)self compositeManifest];
      v17 = [v16 objectAtIndex:v13];

      v10 = [v17 contentItemIdentifier];
      v18 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134218242;
        v27 = a4;
        v28 = 2114;
        v29 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Did fetch content item ID for offset %ld - %{public}@", &v26, 0x16u);
      }

      kdebug_trace();
    }
  }

  return v10;
}

- (id)nowPlayingInfoCenter:(id)a3 artworkForContentItem:(id)a4 size:(CGSize)a5 completion:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a4;
  v12 = a6;
  v13 = a3;
  kdebug_trace();
  v14 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v11 identifier];
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[InfoCenter] Will fetch artwork for content item ID %{public}@", &buf, 0xCu);
  }

  v16 = [(MTPlaybackQueueController *)self playerController];
  v17 = [v16 player];

  v18 = [v11 identifier];
  v19 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:v18 infoCenter:v13];

  if (v19)
  {
    [v17 currentTime];
    v21 = v20;
    v22 = [v17 currentChapter];

    if (v22)
    {
      v23 = [v17 currentChapter];
      v24 = v23;
      if (v23)
      {
        [v23 assetTimeRange];
      }

      else
      {
        memset(&v30, 0, sizeof(v30));
      }

      buf = v30;
      v21 = CMTimeGetSeconds(&buf) + 0.00000011920929;

      [v17 currentTime];
      if (v28 >= v21)
      {
        v21 = v28;
      }
    }

    if (os_feature_enabled_red_sun())
    {
      [(MTPlaybackQueueController *)self fetchArtworkForPlayerItem:v19 contentItem:v11 atTime:v12 ofSize:v21 completion:width, height];
    }

    else
    {
      [(MTPlaybackQueueController *)self legacyFetchArtworkForPlayerItem:v19 contentItem:v11 atTime:v12 ofSize:v21 completion:width, height];
    }
  }

  else
  {
    v25 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v11 identifier];
      v27 = [v11 title];
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = v26;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[InfoCenter] Attempting to fetch artwork for content item %{public}@ - %@ but player item is nil", &buf, 0x16u);
    }

    (*(v12 + 2))(v12, 0, 0);
    kdebug_trace();
  }

  return 0;
}

- (void)fetchArtworkForPlayerItem:(id)a3 contentItem:(id)a4 atTime:(double)a5 ofSize:(CGSize)a6 completion:(id)a7
{
  height = a6.height;
  width = a6.width;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [(MTPlaybackQueueController *)self artworkProvider];

  if (v16)
  {
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = sub_100008ABC;
    v35 = sub_10003B534;
    v36 = 0;
    v17 = [(MTPlaybackQueueController *)self artworkProvider];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000E9D14;
    v26 = &unk_1004DBFD0;
    v27 = v14;
    v28 = self;
    v29 = v15;
    v30 = buf;
    v18 = [v17 fetchInfoCenterArtworkWith:v13 at:&v23 of:a5 completion:{width, height}];
    v19 = *(v32 + 5);
    *(v32 + 5) = v18;

    v20 = [(MTPlaybackQueueController *)self artworkRequests:v23];
    [v20 addObject:*(v32 + 5)];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v22 = [NSError errorWithDomain:@"MTPlaybackQueueControllerErrorDomain" code:2 userInfo:0];
    (*(v15 + 2))(v15, 0, v22);

    kdebug_trace();
  }
}

- (void)legacyFetchArtworkForPlayerItem:(id)a3 contentItem:(id)a4 atTime:(double)a5 ofSize:(CGSize)a6 completion:(id)a7
{
  height = a6.height;
  width = a6.width;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E9F54;
  v14[3] = &unk_1004DBFF8;
  v15 = a4;
  v16 = a7;
  v12 = v16;
  v13 = v15;
  [a3 retrieveArtwork:v14 withSize:width atTime:{height, a5}];
}

- (id)nowPlayingInfoCenter:(id)a3 infoForContentItem:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v9 identifier];
    *buf = 138543362;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[InfoCenter] Will fetch info for content item ID %{public}@", buf, 0xCu);
  }

  if (v10)
  {
    v13 = +[MTDB sharedInstance];
    v14 = [v13 privateQueueContext];

    v15 = [v9 identifier];
    v16 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:v15 infoCenter:v8];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000EA260;
    v20[3] = &unk_1004D8770;
    v21 = v14;
    v22 = v16;
    v23 = v9;
    v24 = v10;
    v17 = v16;
    v18 = v14;
    [v18 performBlock:v20];
  }

  return 0;
}

- (void)nowPlayingInfoCenter:(id)a3 getTransportablePlaybackSessionRepresentationWithCompletion:(id)a4
{
  v5 = a4;
  v6 = +[MTAccountController sharedInstance];
  v7 = [v6 activeDsid];

  v8 = +[MTPlaybackIdentifierUtil sharedInstance];
  v9 = [(MTPlaybackQueueController *)self compositeManifest];
  v10 = [v8 requestIdentifiersForManifest:v9 queueStatus:0];

  v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  if ([v10 count])
  {
    v24 = v5;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = +[MTPlaybackIdentifierUtil sharedInstance];
          v19 = [v18 playbackRequestURLWithDSID:v7 baseRequestURLString:v17];

          [v11 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v14);
    }

    v25 = 0;
    v20 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:0 error:&v25];
    v21 = v25;
    v5 = v24;
    if (v21)
    {
      v22 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not archive playback session: %@", buf, 0xCu);
      }
    }

    if (v24)
    {
      (v24)[2](v24, v20, v21);
    }
  }

  else
  {
    v23 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "No playback identifiers found in current manifest", buf, 2u);
    }

    v21 = [NSError errorWithDomain:@"MTPlaybackQueueControllerErrorDomain" code:1 userInfo:0];
    v5[2](v5, 0, v21);
  }
}

- (id)_playerItemForContentItemId:(id)a3 infoCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 playerID];
  v9 = [v8 isEqualToString:kMTPodcastsMagicMomentsPlayerID];

  if (v9)
  {
    v10 = [(MTPlaybackQueueController *)self magicMomentPlayerItem];
    v11 = [v10 contentItem];
    v12 = [v11 identifier];
    if ([v12 isEqualToString:v6])
    {
      v13 = [(MTPlaybackQueueController *)self magicMomentPlayerItem];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_100008ABC;
    v35 = sub_10003B534;
    v36 = 0;
    v14 = [(MTPlaybackQueueController *)self compositeManifest];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000EAA44;
    v28[3] = &unk_1004D9970;
    v15 = v6;
    v29 = v15;
    v30 = &v31;
    [v14 enumerateObjectsUsingBlock:v28];

    v16 = v32[5];
    if (!v16)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = sub_100008ABC;
      v26 = sub_10003B534;
      v27 = &stru_1004F3018;
      v17 = [(MTPlaybackQueueController *)self compositeManifest];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000EAAEC;
      v21[3] = &unk_1004DC020;
      v21[4] = &v22;
      [v17 enumerateObjectsUsingBlock:v21];

      v18 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = v23[5];
        *buf = 138543618;
        v38 = v15;
        v39 = 2114;
        v40 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "We couldn't find a player item for content item %{public}@.  All player items in the queue %{public}@", buf, 0x16u);
      }

      _Block_object_dispose(&v22, 8);
      v16 = v32[5];
    }

    v13 = v16;

    _Block_object_dispose(&v31, 8);
  }

  return v13;
}

- (id)_contentItemForChapter:(id)a3 playerItem:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = a3;
    v9 = [v6 episodeUuid];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 episodeStoreId]);
      v11 = [v12 stringValue];
    }

    v13 = [v6 podcastUuid];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 podcastStoreId]);
      v15 = [v16 stringValue];
    }

    v17 = [v8 title];
    v18 = [v11 stringByAppendingFormat:@"-%@", v17];
    v7 = [[MPNowPlayingContentItem alloc] initWithIdentifier:v18];
    [v7 setCollectionIdentifier:v15];
    [v7 setContainer:0];
    [v7 setPlayable:1];
    [v7 setTitle:v17];
    [v8 duration];
    v20 = v19;

    [v7 setDuration:v20];
  }

  return v7;
}

- (MTPlaybackQueueControllerSessionDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

- (MTPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

@end