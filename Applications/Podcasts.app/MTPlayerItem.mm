@interface MTPlayerItem
+ (id)subtitleStringForArtist:(id)a3 album:(id)a4;
+ (id)subtitleStringForEpisode:(id)a3;
- (BOOL)isPlayable;
- (BOOL)needsNetworkToPlayButNoNetwork;
- (BOOL)notifyUserIsNotPlayable;
- (BOOL)supportsChapterArtwork;
- (BOOL)supportsEpisodeArtwork;
- (BOOL)upgradeToAlternatePaidVersionIfNeeded;
- (MTPlayerItem)init;
- (MTPlayerItem)initWithPodcastEpisode:(id)a3 podcast:(id)a4;
- (id)_episodeArtworkIdentifier;
- (id)_podcastArtworkIdentifier;
- (id)artworkIdentifier;
- (id)assetForLocalFile:(id)a3;
- (id)assetForRemoteFile:(id)a3;
- (id)contentItemIdentifier;
- (id)createAssetForUrl:(id)a3;
- (id)defaultAssetOptions;
- (id)episode;
- (id)externalMetadata;
- (id)fetchArtworkItemProviderForSize:(CGSize)a3;
- (id)metricsContentIdentifier;
- (id)podcastShareUrl;
- (id)subtitle;
- (int64_t)mpItemType;
- (void)addServiceIdentifier:(id)a3;
- (void)addUserAgent:(id)a3;
- (void)cleanupItem;
- (void)contentKeyRequestDidFailWithError:(id)a3;
- (void)dealloc;
- (void)invalidateAsset;
- (void)prepareAssetForFairPlayPlayback:(id)a3;
- (void)prepareAssetForFairPlayPlayback_legacy:(id)a3;
- (void)reportIfLocalAssetHasiPodLibraryURL:(id)a3;
- (void)retrieveArtwork:(id)a3 withSize:(CGSize)a4;
- (void)setAreChaptersLoaded:(BOOL)a3;
- (void)setAsset:(id)a3;
- (void)setManifestIndex:(unint64_t)a3;
- (void)updateActivity:(id)a3;
- (void)upgradeToLocalEpisodeBackedItemWithEpisodeUUID:(id)a3 podcastUUID:(id)a4;
@end

@implementation MTPlayerItem

- (MTPlayerItem)init
{
  v9.receiver = self;
  v9.super_class = MTPlayerItem;
  v2 = [(MTPlayerItem *)&v9 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"cleanupItem" name:MTApplicationWillTerminateNotification object:0];

    v4 = objc_alloc_init(_TtC10PodcastsUI23UIStoreResponseDelegate);
    [(MTPlayerItem *)v2 setStoreResponseDelegate:v4];

    v5 = objc_alloc_init(PFCoreAnalyticsChannel);
    [(MTPlayerItem *)v2 setAnalyticsChannel:v5];

    v6 = objc_opt_new();
    v7 = [PFDispatchingFairPlayKeyLoader receiveOn:&_dispatch_main_q loader:v6];
    [(MTPlayerItem *)v2 setFairPlayKeyLoader:v7];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(MTPlayerItem *)self streamCacheObserverToken];

  if (v3)
  {
    v4 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MTPlayerItem *)self streamCacheObserverToken];
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing observer for token: %@", buf, 0xCu);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(MTPlayerItem *)self streamCacheObserverToken];
    [v6 removeObserver:v7];

    [(MTPlayerItem *)self setStreamCacheObserverToken:0];
  }

  [(MTPlayerItem *)self cleanupItem];
  v8.receiver = self;
  v8.super_class = MTPlayerItem;
  [(MTPlayerItem *)&v8 dealloc];
}

- (void)cleanupItem
{
  v3 = +[PFFairPlayRolloutController sharedInstance];
  v4 = [v3 isEnabled];

  if (v4)
  {
    v5 = [(MTPlayerItem *)self fairPlayKeySession];

    if (v5)
    {
      v6 = [(MTPlayerItem *)self fairPlayKeySession];
      [v6 deregister];

      v7 = [(MTPlayerItem *)self fairPlayKeySession];
      v8 = [v7 asset];
      v9 = [v8 isOfflineAsset];

      if ((v9 & 1) == 0)
      {
        v10 = _MTLogCategoryDRM();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MTPlayerItem/cleanupItem]: Stopping existing session.", buf, 2u);
        }

        v11 = [(MTPlayerItem *)self fairPlayKeyLoader];
        v12 = [(MTPlayerItem *)self fairPlayKeySession];
        [v11 stopKeyRequestWithSession:v12 completion:0];
      }

      [(MTPlayerItem *)self setFairPlayKeySession:0];
    }
  }

  else
  {
    v13 = [(MTPlayerItem *)self secureKeyLoader];
    [v13 sendStopRequestForStreamingLicenseIfNecessary];
  }
}

- (void)addUserAgent:(id)a3
{
  v3 = a3;
  v4 = _CFNetworkCopyDefaultUserAgentString();
  v5 = v4;
  if (v4 && [v4 length])
  {
    [v3 setObject:v5 forKey:AVURLAssetHTTPUserAgentKey];
  }

  else
  {
    v6 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No or empty user agent received from CFNetwork", v7, 2u);
    }
  }
}

- (void)addServiceIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v10 = objc_alloc_init(NSMutableDictionary);
    v5 = [(MTPlayerItem *)self priceType];
    v6 = MTEpisodePriceTypeFromPersistentString();

    v7 = @".external";
    if (v6 == 3)
    {
      v7 = @".hosted";
    }

    if (v6 == 2)
    {
      v8 = @".hosted.subscription";
    }

    else
    {
      v8 = v7;
    }

    v9 = [@"app.podcasts.episode" stringByAppendingString:v8];
    [v10 setObject:v9 forKey:AVURLAssetAlternativeConfigurationServiceIdentifierKey];
    [v4 setObject:v10 forKey:AVURLAssetAlternativeConfigurationOptionsKey];
  }
}

- (id)defaultAssetOptions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[MTAVAssetCache sharedInstance];
  v5 = [v4 assetCache];
  [v3 setObject:v5 forKey:AVURLAssetCacheKey];

  [(MTPlayerItem *)self addServiceIdentifier:v3];
  [(MTPlayerItem *)self addUserAgent:v3];

  return v3;
}

- (void)setAsset:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MTPlayerItem;
  [(MTPlayerItem *)&v18 setAsset:v4];
  [(MTPlayerItem *)self cleanupItem];
  if (v4)
  {
    v5 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MTPlayerItem *)self asset];
      v7 = [v6 URL];
      v8 = [v7 absoluteString];
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set asset URL to: %@", buf, 0xCu);
    }

    if ([MTStoreIdentifier isNotEmpty:[(MTPlayerItem *)self episodeStoreId]])
    {
      v9 = [(MTPlayerItem *)self asset];
      v10 = [v9 URL];
      if ([v10 isHLSPlaylist])
      {
      }

      else
      {
        v11 = [(MTPlayerItem *)self asset];
        v12 = [v11 URL];
        v13 = [v12 isPackagedMedia];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v14 = +[PFFairPlayRolloutController sharedInstance];
      v15 = [v14 isEnabled];

      v16 = _MTLogCategoryDRM();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching keys using ICContentKeySession", buf, 2u);
        }

        [(MTPlayerItem *)self prepareAssetForFairPlayPlayback:v4];
      }

      else
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching keys using IMAVSecureKeyLoader", buf, 2u);
        }

        [(MTPlayerItem *)self prepareAssetForFairPlayPlayback_legacy:v4];
      }
    }
  }

LABEL_15:
}

- (void)prepareAssetForFairPlayPlayback:(id)a3
{
  v4 = a3;
  v5 = [[PFFairPlayAsset alloc] initWithAdamID:-[MTPlayerItem episodeStoreId](self avAsset:{"episodeStoreId"), v4}];
  objc_initWeak(&location, self);
  v6 = [(MTPlayerItem *)self fairPlayKeyLoader];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000693D8;
  v8[3] = &unk_1004D8FF0;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v6 createSessionWithAsset:v5 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)prepareAssetForFairPlayPlayback_legacy:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTPlayerItem *)self episodeStoreId];
    v7 = [(MTPlayerItem *)self asset];
    v8 = [v7 URL];
    v9 = [v8 absoluteString];
    *buf = 134218242;
    v24 = v6;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating secure key loader for episode %lld asset URL: %@", buf, 0x16u);
  }

  v10 = [IMAVSecureKeyLoader alloc];
  v11 = +[MTAccountController sharedInstance];
  v12 = [v11 activeAccount];
  v13 = [(MTPlayerItem *)self storeResponseDelegate];
  v14 = [v10 initWithRecipient:v4 useCase:0 account:v12 urlProtocolDelegate:v13];

  [(MTPlayerItem *)self setSecureKeyLoader:v14];
  v15 = [(MTPlayerItem *)self secureKeyLoader];
  [v15 setDelegate:self];

  v16 = [NSString stringWithFormat:@"%lld", [(MTPlayerItem *)self episodeStoreId]];
  v17 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(MTPlayerItem *)self episodeStoreId];
    v19 = [(MTPlayerItem *)self asset];
    v20 = [v19 URL];
    v21 = [v20 absoluteString];
    *buf = 134218242;
    v24 = v18;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Key Loading] Starting from MTPlayerItem for episode adam id %lld, asset URL: %@", buf, 0x16u);
  }

  v22 = [(MTPlayerItem *)self secureKeyLoader];
  [v22 startKeyLoadingProcessWithKeyIdentifier:0 contentAdamId:v16 isRenewal:0 completion:0];
}

- (id)createAssetForUrl:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Creating asset for url: %@", &v8, 0xCu);
  }

  if (v4)
  {
    if ([v4 isFileURL])
    {
      [(MTPlayerItem *)self assetForLocalFile:v4];
    }

    else
    {
      [(MTPlayerItem *)self assetForRemoteFile:v4];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)assetForLocalFile:(id)a3
{
  v4 = a3;
  v5 = [AVURLAsset alloc];
  v6 = [(MTPlayerItem *)self defaultAssetOptions];
  v7 = [v5 initWithURL:v4 options:v6];

  return v7;
}

- (id)assetForRemoteFile:(id)a3
{
  v4 = a3;
  v5 = [(MTPlayerItem *)self defaultAssetOptions];
  v6 = [v5 mutableCopy];

  v7 = [[PFMediaStreamedAssetCache alloc] initWithSourceURL:v4];
  v8 = [v7 cachedAssetURL];
  if (v8)
  {
    v9 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Found media in stream cache", buf, 2u);
    }

    v10 = [(MTPlayerItem *)self assetForLocalFile:v8];
    v11 = 0;
  }

  else
  {
    v23 = 0;
    v12 = [v7 streamCacheURLAndReturnError:&v23];
    v11 = v23;
    v13 = _MTLogCategoryPlayback();
    v14 = v13;
    v20 = v12;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Setting stream cache location to %@", buf, 0xCu);
      }

      [v6 setObject:v12 forKey:AVURLAssetDownloadDestinationURLKey];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error retrieving file url for stream cache: %@", buf, 0xCu);
      }
    }

    v10 = [[AVURLAsset alloc] initWithURL:v4 options:v6];
    v15 = +[NSNotificationCenter defaultCenter];
    v16 = AVURLAssetDownloadCompleteSuccessNotification;
    v17 = +[NSOperationQueue mainQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100069CE8;
    v21[3] = &unk_1004D9018;
    v22 = v7;
    v18 = [v15 addObserverForName:v16 object:v10 queue:v17 usingBlock:v21];
    [(MTPlayerItem *)self setStreamCacheObserverToken:v18];
  }

  return v10;
}

- (id)episode
{
  v3 = [(MTPlayerItem *)self episodeUuid];
  if ([v3 length])
  {

LABEL_4:
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100008900;
    v18 = sub_10003B464;
    v19 = 0;
    v5 = +[MTDB sharedInstance];
    v6 = [v5 mainOrPrivateContext];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100069F7C;
    v10[3] = &unk_1004D9040;
    v13 = &v14;
    v7 = v6;
    v11 = v7;
    v12 = self;
    [v7 performBlockAndWait:v10];
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
    goto LABEL_5;
  }

  v4 = [(MTPlayerItem *)self episodeObjectID];

  if (v4)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)isPlayable
{
  v3 = [(MTPlayerItem *)self episode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 assetURL];
    [(MTPlayerItem *)self reportIfLocalAssetHasiPodLibraryURL:v5];

    v6 = [v4 reasonForNotPlayable];
    if (v6)
    {
      v7 = v6;
      v8 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v4 title];
        v10 = [v4 uuid];
        v15 = 138413058;
        v16 = v9;
        v17 = 2114;
        v18 = v10;
        v19 = 2048;
        v20 = [v4 storeTrackId];
        v21 = 2050;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MTPlayerItem not playable %@ - %{public}@ - %lld with reason %{public}lu", &v15, 0x2Au);
      }

LABEL_9:

      v13 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = +[MTReachability sharedInstance];
    v12 = [v11 isReachable];

    if ((v12 & 1) == 0)
    {
      v8 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MTPlayerItem not playable. No episode found and network isn't reachable", &v15, 2u);
      }

      goto LABEL_9;
    }
  }

  v13 = 1;
LABEL_10:

  return v13;
}

- (void)reportIfLocalAssetHasiPodLibraryURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = v4;
    v6 = [v4 hasPrefix:@"ipod-library"];
    v5 = v9;
    if (v6)
    {
      v7 = [PFAnalyticsEvent downloadedFileHasiPodLibraryURLWithDiscoveryPoint:@"PlaybackValidation" path:v9 source:0];
      v8 = [(MTPlayerItem *)self analyticsChannel];
      [v8 sendEvent:v7];

      v5 = v9;
    }
  }
}

- (BOOL)needsNetworkToPlayButNoNetwork
{
  v2 = [(MTPlayerItem *)self episode];
  v3 = v2;
  if (v2 && [v2 reasonForNotPlayable] != 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = +[MTReachability sharedInstance];
    v5 = [v4 isReachable] ^ 1;
  }

  return v5;
}

- (id)podcastShareUrl
{
  v16.receiver = self;
  v16.super_class = MTPlayerItem;
  v3 = [(MTPlayerItem *)&v16 podcastShareUrl];

  if (v3)
  {
    v15.receiver = self;
    v15.super_class = MTPlayerItem;
    v4 = [(MTPlayerItem *)&v15 podcastShareUrl];
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100008900;
    v13 = sub_10003B464;
    v14 = 0;
    v5 = [(MTPlayerItem *)self episode];
    v6 = [v5 managedObjectContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006A430;
    v8[3] = &unk_1004D9068;
    v8[4] = self;
    v8[5] = &v9;
    [v6 performBlockAndWait:v8];

    v4 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v4;
}

- (void)setManifestIndex:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = MTPlayerItem;
  [(MTPlayerItem *)&v3 setManifestIndex:a3];
}

- (BOOL)notifyUserIsNotPlayable
{
  v2 = [(MTPlayerItem *)self episode];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 reasonForNotPlayable];
    v5 = +[MTEpisodeUnavailableUtil sharedInstance];
    v6 = [v3 podcast];
    v7 = [v6 title];
    v8 = [v5 showDialogForReason:v4 podcastTitle:v7 completion:0];
  }

  else
  {
    v5 = +[MTReachability sharedInstance];
    v8 = [v5 showInternetUnreachableDialog];
  }

  return v8;
}

- (id)subtitle
{
  v3 = objc_opt_class();
  v4 = [(MTPlayerItem *)self author];
  v5 = [(MTPlayerItem *)self album];
  v6 = [v3 subtitleStringForArtist:v4 album:v5];

  return v6;
}

- (void)setAreChaptersLoaded:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MTPlayerItem;
  [(MTPlayerItem *)&v3 setAreChaptersLoaded:a3];
}

- (int64_t)mpItemType
{
  if ([(MTPlayerItem *)self isVideo])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)invalidateAsset
{
  v3 = [(MTPlayerItem *)self asset];
  v4 = [v3 debugDescription];

  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "invalidate asset start: %@", &buf, 0xCu);
  }

  v16.receiver = self;
  v16.super_class = MTPlayerItem;
  [(MTPlayerItem *)&v16 invalidateAsset];
  v6 = [(MTPlayerItem *)self episode];
  v7 = [(MTPlayerItem *)self isLocal];
  v8 = v7;
  if (v7 && [v6 isDownloaded])
  {
    v9 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "invalidate asset is local and still downloaded. invalidate asset finished: %@", &buf, 0xCu);
    }
  }

  else
  {
    v9 = [v6 managedObjectContext];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3032000000;
    v21 = sub_100008900;
    v22 = sub_10003B464;
    v23 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006A978;
    v12[3] = &unk_1004D9090;
    v15 = v8;
    v13 = v6;
    p_buf = &buf;
    [v9 performBlockAndWait:v12];
    if ([*(*(&buf + 1) + 40) length])
    {
      v10 = [NSURL URLWithString:*(*(&buf + 1) + 40)];
      [(MTPlayerItem *)self setUrl:v10];
      v11 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 138412290;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "invalidate asset in theory we invalidated asset: %@.", v17, 0xCu);
      }
    }

    _Block_object_dispose(&buf, 8);
  }
}

- (BOOL)upgradeToAlternatePaidVersionIfNeeded
{
  if (([(MTPlayerItem *)self paidSubscriptionActive]& 1) != 0)
  {
    return 0;
  }

  v3 = [(MTPlayerItem *)self channelStoreId];
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10006ADE0;
  v33[3] = &unk_1004D90B8;
  v7 = v6;
  v34 = v7;
  v35 = &v37;
  v36 = v4;
  [v7 performBlockAndWait:v33];
  if (v38[3])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_100008900;
    v31 = sub_10003B464;
    v32 = 0;
    v8 = [(MTPlayerItem *)self alternatePaidURL];

    if (v8)
    {
      v9 = [(MTPlayerItem *)self alternatePaidURL];
      v10 = v28[5];
      v28[5] = v9;
    }

    if (!v28[5])
    {
      v11 = [(MTPlayerItem *)self episodeUuid];
      v12 = [v11 length];

      if (v12)
      {
        v13 = +[MTDB sharedInstance];
        v14 = [v13 mainOrPrivateContext];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10006AE40;
        v23[3] = &unk_1004D87E8;
        v15 = v14;
        v24 = v15;
        v25 = self;
        v26 = &v27;
        [v15 performBlockAndWait:v23];
      }
    }

    v16 = v28[5];
    if (v16 && (-[MTPlayerItem url](self, "url"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 isEqual:v17], v17, (v18 & 1) == 0))
    {
      v20 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22[0] = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "We have found an alternate paid version and have upgraded the player item", v22, 2u);
      }

      [(MTPlayerItem *)self setUrl:v28[5]];
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v37, 8);
  return v19;
}

- (void)upgradeToLocalEpisodeBackedItemWithEpisodeUUID:(id)a3 podcastUUID:(id)a4
{
  v6 = a3;
  [(MTPlayerItem *)self setPodcastUuid:a4];
  [(MTPlayerItem *)self setEpisodeUuid:v6];

  [(MTPlayerItem *)self updateContentItem];
}

- (id)fetchArtworkItemProviderForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc_init(NSItemProvider);
  v7 = [UTTypePNG identifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006B00C;
  v9[3] = &unk_1004D9130;
  v9[4] = self;
  *&v9[5] = width;
  *&v9[6] = height;
  [v6 registerItemForTypeIdentifier:v7 loadHandler:v9];

  return v6;
}

- (void)retrieveArtwork:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = +[PUIObjCArtworkProvider shared];
  v9 = [(MTPlayerItem *)self podcastUuid];

  if (v9)
  {
    v10 = [(MTPlayerItem *)self podcastUuid];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10006B408;
    v24[3] = &unk_1004D9180;
    v25 = v7;
    [v8 artworkForShow:v10 size:v24 completionHandler:{width, height}];

    v11 = v25;
  }

  else
  {
    v12 = [(MTPlayerItem *)self artworkUrl];

    if (v12)
    {
      v13 = [(MTPlayerItem *)self artworkUrl];
      v14 = [v13 absoluteString];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10006B4C8;
      v22[3] = &unk_1004D9180;
      v23 = v7;
      [v8 artworkForURL:v14 withSize:v22 completionHandler:{width, height}];

      v11 = v23;
    }

    else
    {
      v15 = [(MTPlayerItem *)self artworkCatalog];

      if (!v15)
      {
        v17 = +[UIImage defaultPodcastArtwork];
        (*(v7 + 2))(v7, v17);

        goto LABEL_8;
      }

      v16 = [(MTPlayerItem *)self artworkCatalog];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006B588;
      v18[3] = &unk_1004D91A8;
      v19 = v7;
      v20 = width;
      v21 = height;
      [v16 requestImageWithCompletionHandler:v18];

      v11 = v19;
    }
  }

LABEL_8:
}

- (id)externalMetadata
{
  v38.receiver = self;
  v38.super_class = MTPlayerItem;
  v3 = [(MTPlayerItem *)&v38 externalMetadata];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100008900;
  v36 = sub_10003B464;
  v37 = [(MTPlayerItem *)self itemDescription];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100008900;
  v30 = sub_10003B464;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100008900;
  v24 = sub_10003B464;
  v25 = 0;
  v4 = [(MTPlayerItem *)self episodeUuid];
  v5 = [v4 length];

  if (v5)
  {
    v6 = +[MTDB sharedInstance];
    v7 = [v6 mainOrPrivateContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006B974;
    v14[3] = &unk_1004D91D0;
    v8 = v7;
    v15 = v8;
    v16 = self;
    v17 = &v32;
    v18 = &v26;
    v19 = &v20;
    [v8 performBlockAndWait:v14];
  }

  if ([v33[5] length])
  {
    v9 = objc_alloc_init(AVMutableMetadataItem);
    [v9 setIdentifier:AVMetadataCommonIdentifierDescription];
    [v9 setExtendedLanguageTag:IMAVMetadataItemExtendedLanguageTag];
    [v9 setValue:v33[5]];
    [v3 addObject:v9];
  }

  if (v27[5])
  {
    v10 = objc_alloc_init(AVMutableMetadataItem);
    [v10 setIdentifier:AVMetadataCommonIdentifierCreationDate];
    [v10 setExtendedLanguageTag:IMAVMetadataItemExtendedLanguageTag];
    v11 = [v27[5] verboseDisplayString];
    [v10 setValue:v11];

    [v3 addObject:v10];
  }

  if ([v21[5] length])
  {
    v12 = objc_alloc_init(AVMutableMetadataItem);
    [v12 setIdentifier:AVMetadataIdentifieriTunesMetadataContentRating];
    [v12 setExtendedLanguageTag:IMAVMetadataItemExtendedLanguageTag];
    [v12 setValue:v21[5]];
    [v3 addObject:v12];
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v3;
}

- (id)contentItemIdentifier
{
  v2 = [(MTPlayerItem *)self instanceIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)artworkIdentifier
{
  if ([(MTPlayerItem *)self supportsChapterArtwork]|| [(MTPlayerItem *)self supportsEpisodeArtwork])
  {
    v3 = [(MTPlayerItem *)self _episodeArtworkIdentifier];
  }

  else
  {
    v3 = [(MTPlayerItem *)self _podcastArtworkIdentifier];
  }

  return v3;
}

- (BOOL)supportsChapterArtwork
{
  if (![(MTPlayerItem *)self areChaptersLoaded])
  {
    return 0;
  }

  v3 = [(MTPlayerItem *)self metadataChapters];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)supportsEpisodeArtwork
{
  v2 = [(MTPlayerItem *)self episodeArtworkProperties];
  v3 = v2 != 0;

  return v3;
}

- (id)_podcastArtworkIdentifier
{
  v3 = [(MTPlayerItem *)self podcastUuid];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MTPlayerItem *)self artworkUrl];
    v7 = [v6 absoluteString];
    v8 = v7;
    v9 = kMTLibraryDefaultImageKey;
    if (v7)
    {
      v9 = v7;
    }

    v5 = v9;
  }

  return v5;
}

- (id)_episodeArtworkIdentifier
{
  v3 = [(MTPlayerItem *)self _podcastArtworkIdentifier];
  v4 = [(MTPlayerItem *)self episodeUuid];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(MTPlayerItem *)self episodeGuid];
  }

  v7 = v6;

  if ([v7 length])
  {
    v8 = [NSString stringWithFormat:@"%@-%@", v3, v7];
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  return v9;
}

- (void)updateActivity:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTPlayerItem;
  v4 = a3;
  [(MTPlayerItem *)&v7 updateActivity:v4];
  v5 = [(MTPlayerItem *)self episodeGuid:v7.receiver];
  [v4 setItemIdentifier:v5];

  v6 = [(MTPlayerItem *)self podcastFeedUrl];
  [v4 setContainerIdentifier:v6];
}

+ (id)subtitleStringForArtist:(id)a3 album:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  v8 = [v6 length];
  if (v7 && v8)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"NOWPLAYING_PODCAST_ARTIST_FORMAT" value:&stru_1004F3018 table:0];
    v11 = [NSString localizedStringWithFormat:v10, v5, v6];

    goto LABEL_9;
  }

  if (v7)
  {
    v12 = v5;
LABEL_8:
    v11 = v12;
    goto LABEL_9;
  }

  if (v8)
  {
    v12 = v6;
    goto LABEL_8;
  }

  v11 = &stru_1004F3018;
LABEL_9:

  return v11;
}

+ (id)subtitleStringForEpisode:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100008900;
  v23 = sub_10003B464;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100008900;
  v17 = sub_10003B464;
  v18 = 0;
  v5 = [v4 managedObjectContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006C06C;
  v9[3] = &unk_1004D91F8;
  v11 = &v19;
  v6 = v4;
  v10 = v6;
  v12 = &v13;
  [v5 performBlockAndWait:v9];
  v7 = [a1 subtitleStringForArtist:v20[5] album:v14[5]];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

- (void)contentKeyRequestDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(MTPlayerItem *)self episodeUuid];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Content Key Request failed for episode %@ with error: %@", &v8, 0x16u);
  }

  v7 = [(MTPlayerItem *)self secureKeyLoader];
  [v7 invalidateAndCancel];

  [(MTPlayerItem *)self setSecureKeyLoader:0];
  [(MTPlayerItem *)self invalidateAsset];
}

- (id)metricsContentIdentifier
{
  v3 = +[NSMutableDictionary dictionary];
  if ([MTStoreIdentifier isNotEmpty:[(MTPlayerItem *)self episodeStoreId]])
  {
    v4 = [NSString stringWithFormat:@"%lld", [(MTPlayerItem *)self episodeStoreId]];
    [v3 setObject:v4 forKeyedSubscript:@"adamId"];
  }

  v5 = [(MTPlayerItem *)self episodeGuid];

  if (v5)
  {
    v6 = [(MTPlayerItem *)self episodeGuid];
    [v3 setObject:v6 forKeyedSubscript:@"guid"];
  }

  v7 = [(MTPlayerItem *)self title];

  if (v7)
  {
    v8 = [(MTPlayerItem *)self title];
    [v3 setObject:v8 forKeyedSubscript:@"title"];
  }

  v9 = [(MTPlayerItem *)self author];

  if (v9)
  {
    v10 = [(MTPlayerItem *)self author];
    [v3 setObject:v10 forKeyedSubscript:@"podcast"];
  }

  return v3;
}

- (MTPlayerItem)initWithPodcastEpisode:(id)a3 podcast:(id)a4
{
  v5 = a3;
  v6 = a4;
  return MTPlayerItem.init(podcastEpisode:podcast:)(v5, a4);
}

@end