@interface MTPlaybackQueueController
- (BOOL)playItemWithContentID:(id)d;
- (BOOL)removeItemWithContentID:(id)d;
- (BOOL)reorderItemWithContentId:(id)id afterItemWithContentID:(id)d;
- (MTCompositeManifest)compositeManifest;
- (MTPlaybackQueueController)initWithPlayerController:(id)controller;
- (MTPlaybackQueueControllerSessionDelegate)sessionDelegate;
- (MTPlayerController)playerController;
- (id)_contentItemForChapter:(id)chapter playerItem:(id)item;
- (id)_playerItemForContentItemId:(id)id infoCenter:(id)center;
- (id)nowPlayingInfoCenter:(id)center artworkForContentItem:(id)item size:(CGSize)size completion:(id)completion;
- (id)nowPlayingInfoCenter:(id)center contentItemForID:(id)d;
- (id)nowPlayingInfoCenter:(id)center contentItemIDForOffset:(int64_t)offset;
- (id)nowPlayingInfoCenter:(id)center infoForContentItem:(id)item completion:(id)completion;
- (id)playbackQueueIdentifierForNowPlayingInfoCenter:(id)center;
- (void)artworkDidChange:(id)change;
- (void)clearUpNextManifest;
- (void)fetchArtworkForPlayerItem:(id)item contentItem:(id)contentItem atTime:(double)time ofSize:(CGSize)size completion:(id)completion;
- (void)legacyFetchArtworkForPlayerItem:(id)item contentItem:(id)contentItem atTime:(double)time ofSize:(CGSize)size completion:(id)completion;
- (void)manifestDidChange;
- (void)nowPlayingInfoCenter:(id)center getTransportablePlaybackSessionRepresentationWithCompletion:(id)completion;
- (void)setMagicMomentPlayerItem:(id)item;
@end

@implementation MTPlaybackQueueController

- (MTPlaybackQueueController)initWithPlayerController:(id)controller
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = MTPlaybackQueueController;
  v5 = [(MTPlaybackQueueController *)&v20 init];
  if (v5)
  {
    player = [controllerCopy player];
    [(MTPlaybackQueueController *)v5 setPlayerController:controllerCopy];
    infoCenter = [player infoCenter];
    [infoCenter setPlaybackQueueDataSource:v5];

    v8 = +[IMAVPlayer sharedPlayer];

    if (player == v8)
    {
      v9 = [MPNowPlayingInfoCenter alloc];
      v10 = [v9 initWithPlayerID:kMTPodcastsMagicMomentsPlayerID];
      [(MTPlaybackQueueController *)v5 setMetadataInfoCenter:v10];

      metadataInfoCenter = [(MTPlaybackQueueController *)v5 metadataInfoCenter];
      [metadataInfoCenter setPlaybackQueueDataSource:v5];

      metadataInfoCenter2 = [(MTPlaybackQueueController *)v5 metadataInfoCenter];
      [metadataInfoCenter2 invalidatePlaybackQueue];
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v5 selector:"manifestDidChange" name:IMAVPlayerNotification_MediaItemDidChange object:player];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v5 selector:"didLoadAdditionalItems" name:IMPlayerManifestDidLoadAdditionalItems object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v5 selector:"artworkDidChange:" name:kMTImageDownloaderArtworkDidLoadNotification object:0];

    v16 = [[MTUpNextResultsController alloc] initWithPlayerController:controllerCopy];
    [(MTPlaybackQueueController *)v5 setUpNextResultsController:v16];

    upNextResultsController = [(MTPlaybackQueueController *)v5 upNextResultsController];
    [upNextResultsController setDelegate:v5];

    v18 = objc_opt_new();
    [(MTPlaybackQueueController *)v5 setArtworkRequests:v18];

    [(MTPlaybackQueueController *)v5 manifestDidChange];
  }

  return v5;
}

- (MTCompositeManifest)compositeManifest
{
  playerController = [(MTPlaybackQueueController *)self playerController];
  player = [playerController player];
  manifest = [player manifest];

  if (manifest && (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    manifest2 = 0;
  }

  else
  {
    playerController2 = [(MTPlaybackQueueController *)self playerController];
    player2 = [playerController2 player];
    manifest2 = [player2 manifest];
  }

  return manifest2;
}

- (void)manifestDidChange
{
  v3 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidating playback queue", v13, 2u);
  }

  playerController = [(MTPlaybackQueueController *)self playerController];
  player = [playerController player];
  infoCenter = [player infoCenter];
  [infoCenter invalidatePlaybackQueue];

  playerController2 = [(MTPlaybackQueueController *)self playerController];
  player2 = [playerController2 player];
  [player2 updateNowPlayingDurationSnapshot];

  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];
  [(MTPlaybackQueueController *)self setSessionIdentifier:uUIDString];

  sessionDelegate = [(MTPlaybackQueueController *)self sessionDelegate];
  LOBYTE(uUIDString) = objc_opt_respondsToSelector();

  if (uUIDString)
  {
    sessionDelegate2 = [(MTPlaybackQueueController *)self sessionDelegate];
    [sessionDelegate2 sessionIdentifierDidChange];
  }
}

- (void)artworkDidChange:(id)change
{
  v14 = MTImageDownloaderArtworkDidLoadCacheKeys();
  compositeManifest = [(MTPlaybackQueueController *)self compositeManifest];
  v5 = [compositeManifest count];

  if (v5)
  {
    v6 = 0;
    do
    {
      compositeManifest2 = [(MTPlaybackQueueController *)self compositeManifest];
      v8 = [compositeManifest2 objectAtIndex:v6];

      artworkIdentifier = [v8 artworkIdentifier];
      v10 = [v14 containsObject:artworkIdentifier];

      if (v10)
      {
        contentItem = [v8 contentItem];
        [contentItem invalidateArtwork];
      }

      ++v6;
      compositeManifest3 = [(MTPlaybackQueueController *)self compositeManifest];
      v13 = [compositeManifest3 count];
    }

    while (v13 > v6);
  }
}

- (BOOL)playItemWithContentID:(id)d
{
  dCopy = d;
  v5 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:dCopy];
  manifest = [v5 manifest];
  if (os_feature_enabled_red_sun())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      compositeManifest = [(MTPlaybackQueueController *)self compositeManifest];
      currentItem = [compositeManifest currentItem];
      contentItemIdentifier = [currentItem contentItemIdentifier];

      [(MTPlaybackQueueController *)self reorderItemWithContentId:dCopy afterItemWithContentID:contentItemIdentifier];
    }
  }

  manifestIndex = [v5 manifestIndex];
  compositeManifest2 = [(MTPlaybackQueueController *)self compositeManifest];
  v12 = [compositeManifest2 determineCompositeIndexWithIndex:manifestIndex fromManifest:manifest];

  compositeManifest3 = [(MTPlaybackQueueController *)self compositeManifest];
  [compositeManifest3 setCurrentIndex:v12];

  playerController = [(MTPlaybackQueueController *)self playerController];
  [playerController playWithReason:7];

  return 1;
}

- (BOOL)removeItemWithContentID:(id)d
{
  v4 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:d];
  manifest = [v4 manifest];
  manifestIndex = [v4 manifestIndex];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    playerController = [(MTPlaybackQueueController *)self playerController];
    upNextController = [playerController upNextController];
    [upNextController removeEpisodeAtIndex:manifestIndex];
  }

  else
  {
    playerController = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(playerController, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, playerController, OS_LOG_TYPE_ERROR, "Can't remove an item that isn't in the up next manifest", v11, 2u);
    }
  }

  return isKindOfClass & 1;
}

- (void)clearUpNextManifest
{
  playerController = [(MTPlaybackQueueController *)self playerController];
  upNextController = [playerController upNextController];
  [upNextController clearQueueItems];
}

- (BOOL)reorderItemWithContentId:(id)id afterItemWithContentID:(id)d
{
  dCopy = d;
  idCopy = id;
  playerController = [(MTPlaybackQueueController *)self playerController];
  upNextController = [playerController upNextController];

  v10 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:idCopy];

  manifest = [v10 manifest];
  manifestIndex = [v10 manifestIndex];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:dCopy];
    manifest2 = [v13 manifest];
    manifestIndex2 = [v13 manifestIndex];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [upNextController moveEpisodeFrom:manifestIndex to:manifestIndex2 + 1];
LABEL_14:

      goto LABEL_15;
    }

    v24 = upNextController;
    compositeManifest = [(MTPlaybackQueueController *)self compositeManifest];
    currentManifest = [compositeManifest currentManifest];
    v19 = currentManifest;
    if (currentManifest == manifest2)
    {
      compositeManifest2 = [(MTPlaybackQueueController *)self compositeManifest];
      currentIndex = [compositeManifest2 currentIndex];

      if (currentIndex == manifestIndex2)
      {
        upNextController = v24;
        [v24 moveEpisodeFrom:manifestIndex to:0];
        v16 = 1;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v21 = _MTLogCategoryMediaRemote();
    upNextController = v24;
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

- (void)setMagicMomentPlayerItem:(id)item
{
  objc_storeStrong(&self->_magicMomentPlayerItem, item);
  metadataInfoCenter = [(MTPlaybackQueueController *)self metadataInfoCenter];
  [metadataInfoCenter invalidatePlaybackQueue];
}

- (id)playbackQueueIdentifierForNowPlayingInfoCenter:(id)center
{
  playerController = [(MTPlaybackQueueController *)self playerController];
  player = [playerController player];
  manifest = [player manifest];
  identifier = [manifest identifier];

  return identifier;
}

- (id)nowPlayingInfoCenter:(id)center contentItemForID:(id)d
{
  dCopy = d;
  centerCopy = center;
  kdebug_trace();
  v8 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138543362;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[InfoCenter] Will fetch content item for ID %{public}@", &v15, 0xCu);
  }

  v9 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:dCopy infoCenter:centerCopy];

  contentItem = [v9 contentItem];

  v11 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    title = [contentItem title];
    albumName = [contentItem albumName];
    v15 = 138543874;
    v16 = dCopy;
    v17 = 2112;
    v18 = title;
    v19 = 2112;
    v20 = albumName;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Did fetch content item for ID %{public}@ - %@ - %@", &v15, 0x20u);
  }

  kdebug_trace();

  return contentItem;
}

- (id)nowPlayingInfoCenter:(id)center contentItemIDForOffset:(int64_t)offset
{
  centerCopy = center;
  kdebug_trace();
  v7 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134217984;
    offsetCopy4 = offset;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[InfoCenter] Will fetch content item ID for offset %ld", &v26, 0xCu);
  }

  playerID = [centerCopy playerID];

  v9 = [playerID isEqualToString:kMTPodcastsMagicMomentsPlayerID];
  if (v9)
  {
    if (offset)
    {
      identifier = 0;
    }

    else
    {
      magicMomentPlayerItem = [(MTPlaybackQueueController *)self magicMomentPlayerItem];
      contentItem = [magicMomentPlayerItem contentItem];
      identifier = [contentItem identifier];
    }

    v24 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218242;
      offsetCopy4 = offset;
      v28 = 2114;
      v29 = identifier;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Did fetch content item ID for Magic Moments player for offset %ld - %{public}@", &v26, 0x16u);
    }

    kdebug_trace();
  }

  else
  {
    compositeManifest = [(MTPlaybackQueueController *)self compositeManifest];
    currentIndex = [compositeManifest currentIndex];

    v13 = &currentIndex[offset];
    compositeManifest2 = [(MTPlaybackQueueController *)self compositeManifest];
    v15 = [compositeManifest2 count];

    if (v13 >= v15)
    {
      v19 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        compositeManifest3 = [(MTPlaybackQueueController *)self compositeManifest];
        v21 = [compositeManifest3 count];
        v26 = 134218240;
        offsetCopy4 = offset;
        v28 = 2048;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[InfoCenter] Attempting to fetch content item ID for offset %ld outside of manifest range %lu", &v26, 0x16u);
      }

      kdebug_trace();
      identifier = 0;
    }

    else
    {
      compositeManifest4 = [(MTPlaybackQueueController *)self compositeManifest];
      v17 = [compositeManifest4 objectAtIndex:v13];

      identifier = [v17 contentItemIdentifier];
      v18 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134218242;
        offsetCopy4 = offset;
        v28 = 2114;
        v29 = identifier;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Did fetch content item ID for offset %ld - %{public}@", &v26, 0x16u);
      }

      kdebug_trace();
    }
  }

  return identifier;
}

- (id)nowPlayingInfoCenter:(id)center artworkForContentItem:(id)item size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  completionCopy = completion;
  centerCopy = center;
  kdebug_trace();
  v14 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    identifier = [itemCopy identifier];
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = identifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[InfoCenter] Will fetch artwork for content item ID %{public}@", &buf, 0xCu);
  }

  playerController = [(MTPlaybackQueueController *)self playerController];
  player = [playerController player];

  identifier2 = [itemCopy identifier];
  v19 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:identifier2 infoCenter:centerCopy];

  if (v19)
  {
    [player currentTime];
    v21 = v20;
    currentChapter = [player currentChapter];

    if (currentChapter)
    {
      currentChapter2 = [player currentChapter];
      v24 = currentChapter2;
      if (currentChapter2)
      {
        [currentChapter2 assetTimeRange];
      }

      else
      {
        memset(&v30, 0, sizeof(v30));
      }

      buf = v30;
      v21 = CMTimeGetSeconds(&buf) + 0.00000011920929;

      [player currentTime];
      if (v28 >= v21)
      {
        v21 = v28;
      }
    }

    if (os_feature_enabled_red_sun())
    {
      [(MTPlaybackQueueController *)self fetchArtworkForPlayerItem:v19 contentItem:itemCopy atTime:completionCopy ofSize:v21 completion:width, height];
    }

    else
    {
      [(MTPlaybackQueueController *)self legacyFetchArtworkForPlayerItem:v19 contentItem:itemCopy atTime:completionCopy ofSize:v21 completion:width, height];
    }
  }

  else
  {
    v25 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [itemCopy identifier];
      title = [itemCopy title];
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = identifier3;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = title;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[InfoCenter] Attempting to fetch artwork for content item %{public}@ - %@ but player item is nil", &buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
    kdebug_trace();
  }

  return 0;
}

- (void)fetchArtworkForPlayerItem:(id)item contentItem:(id)contentItem atTime:(double)time ofSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  contentItemCopy = contentItem;
  completionCopy = completion;
  artworkProvider = [(MTPlaybackQueueController *)self artworkProvider];

  if (artworkProvider)
  {
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = sub_100008ABC;
    v35 = sub_10003B534;
    v36 = 0;
    artworkProvider2 = [(MTPlaybackQueueController *)self artworkProvider];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000E9D14;
    v26 = &unk_1004DBFD0;
    v27 = contentItemCopy;
    selfCopy = self;
    v29 = completionCopy;
    v30 = buf;
    v18 = [artworkProvider2 fetchInfoCenterArtworkWith:itemCopy at:&v23 of:time completion:{width, height}];
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
    (*(completionCopy + 2))(completionCopy, 0, v22);

    kdebug_trace();
  }
}

- (void)legacyFetchArtworkForPlayerItem:(id)item contentItem:(id)contentItem atTime:(double)time ofSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E9F54;
  v14[3] = &unk_1004DBFF8;
  contentItemCopy = contentItem;
  completionCopy = completion;
  v12 = completionCopy;
  v13 = contentItemCopy;
  [item retrieveArtwork:v14 withSize:width atTime:{height, time}];
}

- (id)nowPlayingInfoCenter:(id)center infoForContentItem:(id)item completion:(id)completion
{
  centerCopy = center;
  itemCopy = item;
  completionCopy = completion;
  v11 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    identifier = [itemCopy identifier];
    *buf = 138543362;
    v26 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[InfoCenter] Will fetch info for content item ID %{public}@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v13 = +[MTDB sharedInstance];
    privateQueueContext = [v13 privateQueueContext];

    identifier2 = [itemCopy identifier];
    v16 = [(MTPlaybackQueueController *)self _playerItemForContentItemId:identifier2 infoCenter:centerCopy];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000EA260;
    v20[3] = &unk_1004D8770;
    v21 = privateQueueContext;
    v22 = v16;
    v23 = itemCopy;
    v24 = completionCopy;
    v17 = v16;
    v18 = privateQueueContext;
    [v18 performBlock:v20];
  }

  return 0;
}

- (void)nowPlayingInfoCenter:(id)center getTransportablePlaybackSessionRepresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[MTAccountController sharedInstance];
  activeDsid = [v6 activeDsid];

  v8 = +[MTPlaybackIdentifierUtil sharedInstance];
  compositeManifest = [(MTPlaybackQueueController *)self compositeManifest];
  v10 = [v8 requestIdentifiersForManifest:compositeManifest queueStatus:0];

  v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  if ([v10 count])
  {
    v24 = completionCopy;
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
          v19 = [v18 playbackRequestURLWithDSID:activeDsid baseRequestURLString:v17];

          [v11 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v14);
    }

    v25 = 0;
    v20 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:0 error:&v25];
    v21 = v25;
    completionCopy = v24;
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
    completionCopy[2](completionCopy, 0, v21);
  }
}

- (id)_playerItemForContentItemId:(id)id infoCenter:(id)center
{
  idCopy = id;
  centerCopy = center;
  playerID = [centerCopy playerID];
  v9 = [playerID isEqualToString:kMTPodcastsMagicMomentsPlayerID];

  if (v9)
  {
    magicMomentPlayerItem = [(MTPlaybackQueueController *)self magicMomentPlayerItem];
    contentItem = [magicMomentPlayerItem contentItem];
    identifier = [contentItem identifier];
    if ([identifier isEqualToString:idCopy])
    {
      magicMomentPlayerItem2 = [(MTPlaybackQueueController *)self magicMomentPlayerItem];
    }

    else
    {
      magicMomentPlayerItem2 = 0;
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
    compositeManifest = [(MTPlaybackQueueController *)self compositeManifest];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000EAA44;
    v28[3] = &unk_1004D9970;
    v15 = idCopy;
    v29 = v15;
    v30 = &v31;
    [compositeManifest enumerateObjectsUsingBlock:v28];

    v16 = v32[5];
    if (!v16)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = sub_100008ABC;
      v26 = sub_10003B534;
      v27 = &stru_1004F3018;
      compositeManifest2 = [(MTPlaybackQueueController *)self compositeManifest];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000EAAEC;
      v21[3] = &unk_1004DC020;
      v21[4] = &v22;
      [compositeManifest2 enumerateObjectsUsingBlock:v21];

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

    magicMomentPlayerItem2 = v16;

    _Block_object_dispose(&v31, 8);
  }

  return magicMomentPlayerItem2;
}

- (id)_contentItemForChapter:(id)chapter playerItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  v7 = 0;
  if (chapter && itemCopy)
  {
    chapterCopy = chapter;
    episodeUuid = [v6 episodeUuid];
    v10 = episodeUuid;
    if (episodeUuid)
    {
      stringValue = episodeUuid;
    }

    else
    {
      v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 episodeStoreId]);
      stringValue = [v12 stringValue];
    }

    podcastUuid = [v6 podcastUuid];
    v14 = podcastUuid;
    if (podcastUuid)
    {
      stringValue2 = podcastUuid;
    }

    else
    {
      v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 podcastStoreId]);
      stringValue2 = [v16 stringValue];
    }

    title = [chapterCopy title];
    v18 = [stringValue stringByAppendingFormat:@"-%@", title];
    v7 = [[MPNowPlayingContentItem alloc] initWithIdentifier:v18];
    [v7 setCollectionIdentifier:stringValue2];
    [v7 setContainer:0];
    [v7 setPlayable:1];
    [v7 setTitle:title];
    [chapterCopy duration];
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