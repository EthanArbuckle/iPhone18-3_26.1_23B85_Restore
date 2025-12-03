@interface MTPlayerItem
+ (id)subtitleStringForArtist:(id)artist album:(id)album;
+ (id)subtitleStringForEpisode:(id)episode;
- (BOOL)isPlayable;
- (BOOL)needsNetworkToPlayButNoNetwork;
- (BOOL)notifyUserIsNotPlayable;
- (BOOL)supportsChapterArtwork;
- (BOOL)supportsEpisodeArtwork;
- (BOOL)upgradeToAlternatePaidVersionIfNeeded;
- (MTPlayerItem)init;
- (MTPlayerItem)initWithPodcastEpisode:(id)episode podcast:(id)podcast;
- (id)_episodeArtworkIdentifier;
- (id)_podcastArtworkIdentifier;
- (id)artworkIdentifier;
- (id)assetForLocalFile:(id)file;
- (id)assetForRemoteFile:(id)file;
- (id)contentItemIdentifier;
- (id)createAssetForUrl:(id)url;
- (id)defaultAssetOptions;
- (id)episode;
- (id)externalMetadata;
- (id)fetchArtworkItemProviderForSize:(CGSize)size;
- (id)metricsContentIdentifier;
- (id)podcastShareUrl;
- (id)subtitle;
- (int64_t)mpItemType;
- (void)addServiceIdentifier:(id)identifier;
- (void)addUserAgent:(id)agent;
- (void)cleanupItem;
- (void)contentKeyRequestDidFailWithError:(id)error;
- (void)dealloc;
- (void)invalidateAsset;
- (void)prepareAssetForFairPlayPlayback:(id)playback;
- (void)prepareAssetForFairPlayPlayback_legacy:(id)playback_legacy;
- (void)reportIfLocalAssetHasiPodLibraryURL:(id)l;
- (void)retrieveArtwork:(id)artwork withSize:(CGSize)size;
- (void)setAreChaptersLoaded:(BOOL)loaded;
- (void)setAsset:(id)asset;
- (void)setManifestIndex:(unint64_t)index;
- (void)updateActivity:(id)activity;
- (void)upgradeToLocalEpisodeBackedItemWithEpisodeUUID:(id)d podcastUUID:(id)iD;
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
  streamCacheObserverToken = [(MTPlayerItem *)self streamCacheObserverToken];

  if (streamCacheObserverToken)
  {
    v4 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      streamCacheObserverToken2 = [(MTPlayerItem *)self streamCacheObserverToken];
      *buf = 138412290;
      v10 = streamCacheObserverToken2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing observer for token: %@", buf, 0xCu);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    streamCacheObserverToken3 = [(MTPlayerItem *)self streamCacheObserverToken];
    [v6 removeObserver:streamCacheObserverToken3];

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
  isEnabled = [v3 isEnabled];

  if (isEnabled)
  {
    fairPlayKeySession = [(MTPlayerItem *)self fairPlayKeySession];

    if (fairPlayKeySession)
    {
      fairPlayKeySession2 = [(MTPlayerItem *)self fairPlayKeySession];
      [fairPlayKeySession2 deregister];

      fairPlayKeySession3 = [(MTPlayerItem *)self fairPlayKeySession];
      asset = [fairPlayKeySession3 asset];
      isOfflineAsset = [asset isOfflineAsset];

      if ((isOfflineAsset & 1) == 0)
      {
        v10 = _MTLogCategoryDRM();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MTPlayerItem/cleanupItem]: Stopping existing session.", buf, 2u);
        }

        fairPlayKeyLoader = [(MTPlayerItem *)self fairPlayKeyLoader];
        fairPlayKeySession4 = [(MTPlayerItem *)self fairPlayKeySession];
        [fairPlayKeyLoader stopKeyRequestWithSession:fairPlayKeySession4 completion:0];
      }

      [(MTPlayerItem *)self setFairPlayKeySession:0];
    }
  }

  else
  {
    secureKeyLoader = [(MTPlayerItem *)self secureKeyLoader];
    [secureKeyLoader sendStopRequestForStreamingLicenseIfNecessary];
  }
}

- (void)addUserAgent:(id)agent
{
  agentCopy = agent;
  v4 = _CFNetworkCopyDefaultUserAgentString();
  v5 = v4;
  if (v4 && [v4 length])
  {
    [agentCopy setObject:v5 forKey:AVURLAssetHTTPUserAgentKey];
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

- (void)addServiceIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v10 = objc_alloc_init(NSMutableDictionary);
    priceType = [(MTPlayerItem *)self priceType];
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
    [identifierCopy setObject:v10 forKey:AVURLAssetAlternativeConfigurationOptionsKey];
  }
}

- (id)defaultAssetOptions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[MTAVAssetCache sharedInstance];
  assetCache = [v4 assetCache];
  [v3 setObject:assetCache forKey:AVURLAssetCacheKey];

  [(MTPlayerItem *)self addServiceIdentifier:v3];
  [(MTPlayerItem *)self addUserAgent:v3];

  return v3;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  v18.receiver = self;
  v18.super_class = MTPlayerItem;
  [(MTPlayerItem *)&v18 setAsset:assetCopy];
  [(MTPlayerItem *)self cleanupItem];
  if (assetCopy)
  {
    v5 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      asset = [(MTPlayerItem *)self asset];
      v7 = [asset URL];
      absoluteString = [v7 absoluteString];
      *buf = 138412290;
      v20 = absoluteString;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set asset URL to: %@", buf, 0xCu);
    }

    if ([MTStoreIdentifier isNotEmpty:[(MTPlayerItem *)self episodeStoreId]])
    {
      asset2 = [(MTPlayerItem *)self asset];
      v10 = [asset2 URL];
      if ([v10 isHLSPlaylist])
      {
      }

      else
      {
        asset3 = [(MTPlayerItem *)self asset];
        v12 = [asset3 URL];
        isPackagedMedia = [v12 isPackagedMedia];

        if (!isPackagedMedia)
        {
          goto LABEL_15;
        }
      }

      v14 = +[PFFairPlayRolloutController sharedInstance];
      isEnabled = [v14 isEnabled];

      v16 = _MTLogCategoryDRM();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (isEnabled)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching keys using ICContentKeySession", buf, 2u);
        }

        [(MTPlayerItem *)self prepareAssetForFairPlayPlayback:assetCopy];
      }

      else
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching keys using IMAVSecureKeyLoader", buf, 2u);
        }

        [(MTPlayerItem *)self prepareAssetForFairPlayPlayback_legacy:assetCopy];
      }
    }
  }

LABEL_15:
}

- (void)prepareAssetForFairPlayPlayback:(id)playback
{
  playbackCopy = playback;
  v5 = [[PFFairPlayAsset alloc] initWithAdamID:-[MTPlayerItem episodeStoreId](self avAsset:{"episodeStoreId"), playbackCopy}];
  objc_initWeak(&location, self);
  fairPlayKeyLoader = [(MTPlayerItem *)self fairPlayKeyLoader];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000693D8;
  v8[3] = &unk_1004D8FF0;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = playbackCopy;
  v9 = v7;
  [fairPlayKeyLoader createSessionWithAsset:v5 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)prepareAssetForFairPlayPlayback_legacy:(id)playback_legacy
{
  playback_legacyCopy = playback_legacy;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    episodeStoreId = [(MTPlayerItem *)self episodeStoreId];
    asset = [(MTPlayerItem *)self asset];
    v8 = [asset URL];
    absoluteString = [v8 absoluteString];
    *buf = 134218242;
    v24 = episodeStoreId;
    v25 = 2112;
    v26 = absoluteString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating secure key loader for episode %lld asset URL: %@", buf, 0x16u);
  }

  v10 = [IMAVSecureKeyLoader alloc];
  v11 = +[MTAccountController sharedInstance];
  activeAccount = [v11 activeAccount];
  storeResponseDelegate = [(MTPlayerItem *)self storeResponseDelegate];
  v14 = [v10 initWithRecipient:playback_legacyCopy useCase:0 account:activeAccount urlProtocolDelegate:storeResponseDelegate];

  [(MTPlayerItem *)self setSecureKeyLoader:v14];
  secureKeyLoader = [(MTPlayerItem *)self secureKeyLoader];
  [secureKeyLoader setDelegate:self];

  v16 = [NSString stringWithFormat:@"%lld", [(MTPlayerItem *)self episodeStoreId]];
  v17 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    episodeStoreId2 = [(MTPlayerItem *)self episodeStoreId];
    asset2 = [(MTPlayerItem *)self asset];
    v20 = [asset2 URL];
    absoluteString2 = [v20 absoluteString];
    *buf = 134218242;
    v24 = episodeStoreId2;
    v25 = 2112;
    v26 = absoluteString2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Key Loading] Starting from MTPlayerItem for episode adam id %lld, asset URL: %@", buf, 0x16u);
  }

  secureKeyLoader2 = [(MTPlayerItem *)self secureKeyLoader];
  [secureKeyLoader2 startKeyLoadingProcessWithKeyIdentifier:0 contentAdamId:v16 isRenewal:0 completion:0];
}

- (id)createAssetForUrl:(id)url
{
  urlCopy = url;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = urlCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Creating asset for url: %@", &v8, 0xCu);
  }

  if (urlCopy)
  {
    if ([urlCopy isFileURL])
    {
      [(MTPlayerItem *)self assetForLocalFile:urlCopy];
    }

    else
    {
      [(MTPlayerItem *)self assetForRemoteFile:urlCopy];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)assetForLocalFile:(id)file
{
  fileCopy = file;
  v5 = [AVURLAsset alloc];
  defaultAssetOptions = [(MTPlayerItem *)self defaultAssetOptions];
  v7 = [v5 initWithURL:fileCopy options:defaultAssetOptions];

  return v7;
}

- (id)assetForRemoteFile:(id)file
{
  fileCopy = file;
  defaultAssetOptions = [(MTPlayerItem *)self defaultAssetOptions];
  v6 = [defaultAssetOptions mutableCopy];

  v7 = [[PFMediaStreamedAssetCache alloc] initWithSourceURL:fileCopy];
  cachedAssetURL = [v7 cachedAssetURL];
  if (cachedAssetURL)
  {
    v9 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Found media in stream cache", buf, 2u);
    }

    v10 = [(MTPlayerItem *)self assetForLocalFile:cachedAssetURL];
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

    v10 = [[AVURLAsset alloc] initWithURL:fileCopy options:v6];
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
  episodeUuid = [(MTPlayerItem *)self episodeUuid];
  if ([episodeUuid length])
  {

LABEL_4:
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100008900;
    v18 = sub_10003B464;
    v19 = 0;
    v5 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v5 mainOrPrivateContext];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100069F7C;
    v10[3] = &unk_1004D9040;
    v13 = &v14;
    v7 = mainOrPrivateContext;
    v11 = v7;
    selfCopy = self;
    [v7 performBlockAndWait:v10];
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
    goto LABEL_5;
  }

  episodeObjectID = [(MTPlayerItem *)self episodeObjectID];

  if (episodeObjectID)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)isPlayable
{
  episode = [(MTPlayerItem *)self episode];
  v4 = episode;
  if (episode)
  {
    assetURL = [episode assetURL];
    [(MTPlayerItem *)self reportIfLocalAssetHasiPodLibraryURL:assetURL];

    reasonForNotPlayable = [v4 reasonForNotPlayable];
    if (reasonForNotPlayable)
    {
      v7 = reasonForNotPlayable;
      v8 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        title = [v4 title];
        uuid = [v4 uuid];
        v15 = 138413058;
        v16 = title;
        v17 = 2114;
        v18 = uuid;
        v19 = 2048;
        storeTrackId = [v4 storeTrackId];
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
    isReachable = [v11 isReachable];

    if ((isReachable & 1) == 0)
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

- (void)reportIfLocalAssetHasiPodLibraryURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    v9 = lCopy;
    v6 = [lCopy hasPrefix:@"ipod-library"];
    v5 = v9;
    if (v6)
    {
      v7 = [PFAnalyticsEvent downloadedFileHasiPodLibraryURLWithDiscoveryPoint:@"PlaybackValidation" path:v9 source:0];
      analyticsChannel = [(MTPlayerItem *)self analyticsChannel];
      [analyticsChannel sendEvent:v7];

      v5 = v9;
    }
  }
}

- (BOOL)needsNetworkToPlayButNoNetwork
{
  episode = [(MTPlayerItem *)self episode];
  v3 = episode;
  if (episode && [episode reasonForNotPlayable] != 2)
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
  podcastShareUrl = [(MTPlayerItem *)&v16 podcastShareUrl];

  if (podcastShareUrl)
  {
    v15.receiver = self;
    v15.super_class = MTPlayerItem;
    podcastShareUrl2 = [(MTPlayerItem *)&v15 podcastShareUrl];
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100008900;
    v13 = sub_10003B464;
    v14 = 0;
    episode = [(MTPlayerItem *)self episode];
    managedObjectContext = [episode managedObjectContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006A430;
    v8[3] = &unk_1004D9068;
    v8[4] = self;
    v8[5] = &v9;
    [managedObjectContext performBlockAndWait:v8];

    podcastShareUrl2 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return podcastShareUrl2;
}

- (void)setManifestIndex:(unint64_t)index
{
  v3.receiver = self;
  v3.super_class = MTPlayerItem;
  [(MTPlayerItem *)&v3 setManifestIndex:index];
}

- (BOOL)notifyUserIsNotPlayable
{
  episode = [(MTPlayerItem *)self episode];
  v3 = episode;
  if (episode)
  {
    reasonForNotPlayable = [episode reasonForNotPlayable];
    v5 = +[MTEpisodeUnavailableUtil sharedInstance];
    podcast = [v3 podcast];
    title = [podcast title];
    showInternetUnreachableDialog = [v5 showDialogForReason:reasonForNotPlayable podcastTitle:title completion:0];
  }

  else
  {
    v5 = +[MTReachability sharedInstance];
    showInternetUnreachableDialog = [v5 showInternetUnreachableDialog];
  }

  return showInternetUnreachableDialog;
}

- (id)subtitle
{
  v3 = objc_opt_class();
  author = [(MTPlayerItem *)self author];
  album = [(MTPlayerItem *)self album];
  v6 = [v3 subtitleStringForArtist:author album:album];

  return v6;
}

- (void)setAreChaptersLoaded:(BOOL)loaded
{
  v3.receiver = self;
  v3.super_class = MTPlayerItem;
  [(MTPlayerItem *)&v3 setAreChaptersLoaded:loaded];
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
  asset = [(MTPlayerItem *)self asset];
  v4 = [asset debugDescription];

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
  episode = [(MTPlayerItem *)self episode];
  isLocal = [(MTPlayerItem *)self isLocal];
  v8 = isLocal;
  if (isLocal && [episode isDownloaded])
  {
    managedObjectContext = _MTLogCategoryPlayback();
    if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, managedObjectContext, OS_LOG_TYPE_DEFAULT, "invalidate asset is local and still downloaded. invalidate asset finished: %@", &buf, 0xCu);
    }
  }

  else
  {
    managedObjectContext = [episode managedObjectContext];
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
    v13 = episode;
    p_buf = &buf;
    [managedObjectContext performBlockAndWait:v12];
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

  channelStoreId = [(MTPlayerItem *)self channelStoreId];
  if (channelStoreId < 1)
  {
    return 0;
  }

  v4 = channelStoreId;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10006ADE0;
  v33[3] = &unk_1004D90B8;
  v7 = mainOrPrivateContext;
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
    alternatePaidURL = [(MTPlayerItem *)self alternatePaidURL];

    if (alternatePaidURL)
    {
      alternatePaidURL2 = [(MTPlayerItem *)self alternatePaidURL];
      v10 = v28[5];
      v28[5] = alternatePaidURL2;
    }

    if (!v28[5])
    {
      episodeUuid = [(MTPlayerItem *)self episodeUuid];
      v12 = [episodeUuid length];

      if (v12)
      {
        v13 = +[MTDB sharedInstance];
        mainOrPrivateContext2 = [v13 mainOrPrivateContext];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10006AE40;
        v23[3] = &unk_1004D87E8;
        v15 = mainOrPrivateContext2;
        v24 = v15;
        selfCopy = self;
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

- (void)upgradeToLocalEpisodeBackedItemWithEpisodeUUID:(id)d podcastUUID:(id)iD
{
  dCopy = d;
  [(MTPlayerItem *)self setPodcastUuid:iD];
  [(MTPlayerItem *)self setEpisodeUuid:dCopy];

  [(MTPlayerItem *)self updateContentItem];
}

- (id)fetchArtworkItemProviderForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_alloc_init(NSItemProvider);
  identifier = [UTTypePNG identifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006B00C;
  v9[3] = &unk_1004D9130;
  v9[4] = self;
  *&v9[5] = width;
  *&v9[6] = height;
  [v6 registerItemForTypeIdentifier:identifier loadHandler:v9];

  return v6;
}

- (void)retrieveArtwork:(id)artwork withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  artworkCopy = artwork;
  v8 = +[PUIObjCArtworkProvider shared];
  podcastUuid = [(MTPlayerItem *)self podcastUuid];

  if (podcastUuid)
  {
    podcastUuid2 = [(MTPlayerItem *)self podcastUuid];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10006B408;
    v24[3] = &unk_1004D9180;
    v25 = artworkCopy;
    [v8 artworkForShow:podcastUuid2 size:v24 completionHandler:{width, height}];

    v11 = v25;
  }

  else
  {
    artworkUrl = [(MTPlayerItem *)self artworkUrl];

    if (artworkUrl)
    {
      artworkUrl2 = [(MTPlayerItem *)self artworkUrl];
      absoluteString = [artworkUrl2 absoluteString];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10006B4C8;
      v22[3] = &unk_1004D9180;
      v23 = artworkCopy;
      [v8 artworkForURL:absoluteString withSize:v22 completionHandler:{width, height}];

      v11 = v23;
    }

    else
    {
      artworkCatalog = [(MTPlayerItem *)self artworkCatalog];

      if (!artworkCatalog)
      {
        v17 = +[UIImage defaultPodcastArtwork];
        (*(artworkCopy + 2))(artworkCopy, v17);

        goto LABEL_8;
      }

      artworkCatalog2 = [(MTPlayerItem *)self artworkCatalog];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006B588;
      v18[3] = &unk_1004D91A8;
      v19 = artworkCopy;
      v20 = width;
      v21 = height;
      [artworkCatalog2 requestImageWithCompletionHandler:v18];

      v11 = v19;
    }
  }

LABEL_8:
}

- (id)externalMetadata
{
  v38.receiver = self;
  v38.super_class = MTPlayerItem;
  externalMetadata = [(MTPlayerItem *)&v38 externalMetadata];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100008900;
  v36 = sub_10003B464;
  itemDescription = [(MTPlayerItem *)self itemDescription];
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
  episodeUuid = [(MTPlayerItem *)self episodeUuid];
  v5 = [episodeUuid length];

  if (v5)
  {
    v6 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v6 mainOrPrivateContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006B974;
    v14[3] = &unk_1004D91D0;
    v8 = mainOrPrivateContext;
    v15 = v8;
    selfCopy = self;
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
    [externalMetadata addObject:v9];
  }

  if (v27[5])
  {
    v10 = objc_alloc_init(AVMutableMetadataItem);
    [v10 setIdentifier:AVMetadataCommonIdentifierCreationDate];
    [v10 setExtendedLanguageTag:IMAVMetadataItemExtendedLanguageTag];
    verboseDisplayString = [v27[5] verboseDisplayString];
    [v10 setValue:verboseDisplayString];

    [externalMetadata addObject:v10];
  }

  if ([v21[5] length])
  {
    v12 = objc_alloc_init(AVMutableMetadataItem);
    [v12 setIdentifier:AVMetadataIdentifieriTunesMetadataContentRating];
    [v12 setExtendedLanguageTag:IMAVMetadataItemExtendedLanguageTag];
    [v12 setValue:v21[5]];
    [externalMetadata addObject:v12];
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return externalMetadata;
}

- (id)contentItemIdentifier
{
  instanceIdentifier = [(MTPlayerItem *)self instanceIdentifier];
  uUIDString = [instanceIdentifier UUIDString];

  return uUIDString;
}

- (id)artworkIdentifier
{
  if ([(MTPlayerItem *)self supportsChapterArtwork]|| [(MTPlayerItem *)self supportsEpisodeArtwork])
  {
    _episodeArtworkIdentifier = [(MTPlayerItem *)self _episodeArtworkIdentifier];
  }

  else
  {
    _episodeArtworkIdentifier = [(MTPlayerItem *)self _podcastArtworkIdentifier];
  }

  return _episodeArtworkIdentifier;
}

- (BOOL)supportsChapterArtwork
{
  if (![(MTPlayerItem *)self areChaptersLoaded])
  {
    return 0;
  }

  metadataChapters = [(MTPlayerItem *)self metadataChapters];
  v4 = [metadataChapters count] != 0;

  return v4;
}

- (BOOL)supportsEpisodeArtwork
{
  episodeArtworkProperties = [(MTPlayerItem *)self episodeArtworkProperties];
  v3 = episodeArtworkProperties != 0;

  return v3;
}

- (id)_podcastArtworkIdentifier
{
  podcastUuid = [(MTPlayerItem *)self podcastUuid];
  v4 = podcastUuid;
  if (podcastUuid)
  {
    v5 = podcastUuid;
  }

  else
  {
    artworkUrl = [(MTPlayerItem *)self artworkUrl];
    absoluteString = [artworkUrl absoluteString];
    v8 = absoluteString;
    v9 = kMTLibraryDefaultImageKey;
    if (absoluteString)
    {
      v9 = absoluteString;
    }

    v5 = v9;
  }

  return v5;
}

- (id)_episodeArtworkIdentifier
{
  _podcastArtworkIdentifier = [(MTPlayerItem *)self _podcastArtworkIdentifier];
  episodeUuid = [(MTPlayerItem *)self episodeUuid];
  v5 = episodeUuid;
  if (episodeUuid)
  {
    episodeGuid = episodeUuid;
  }

  else
  {
    episodeGuid = [(MTPlayerItem *)self episodeGuid];
  }

  v7 = episodeGuid;

  if ([v7 length])
  {
    v8 = [NSString stringWithFormat:@"%@-%@", _podcastArtworkIdentifier, v7];
  }

  else
  {
    v8 = _podcastArtworkIdentifier;
  }

  v9 = v8;

  return v9;
}

- (void)updateActivity:(id)activity
{
  v7.receiver = self;
  v7.super_class = MTPlayerItem;
  activityCopy = activity;
  [(MTPlayerItem *)&v7 updateActivity:activityCopy];
  v5 = [(MTPlayerItem *)self episodeGuid:v7.receiver];
  [activityCopy setItemIdentifier:v5];

  podcastFeedUrl = [(MTPlayerItem *)self podcastFeedUrl];
  [activityCopy setContainerIdentifier:podcastFeedUrl];
}

+ (id)subtitleStringForArtist:(id)artist album:(id)album
{
  artistCopy = artist;
  albumCopy = album;
  v7 = [artistCopy length];
  v8 = [albumCopy length];
  if (v7 && v8)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"NOWPLAYING_PODCAST_ARTIST_FORMAT" value:&stru_1004F3018 table:0];
    albumCopy = [NSString localizedStringWithFormat:v10, artistCopy, albumCopy];

    goto LABEL_9;
  }

  if (v7)
  {
    v12 = artistCopy;
LABEL_8:
    albumCopy = v12;
    goto LABEL_9;
  }

  if (v8)
  {
    v12 = albumCopy;
    goto LABEL_8;
  }

  albumCopy = &stru_1004F3018;
LABEL_9:

  return albumCopy;
}

+ (id)subtitleStringForEpisode:(id)episode
{
  episodeCopy = episode;
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
  managedObjectContext = [episodeCopy managedObjectContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006C06C;
  v9[3] = &unk_1004D91F8;
  v11 = &v19;
  v6 = episodeCopy;
  v10 = v6;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v9];
  v7 = [self subtitleStringForArtist:v20[5] album:v14[5]];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

- (void)contentKeyRequestDidFailWithError:(id)error
{
  errorCopy = error;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    episodeUuid = [(MTPlayerItem *)self episodeUuid];
    v8 = 138412546;
    v9 = episodeUuid;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Content Key Request failed for episode %@ with error: %@", &v8, 0x16u);
  }

  secureKeyLoader = [(MTPlayerItem *)self secureKeyLoader];
  [secureKeyLoader invalidateAndCancel];

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

  episodeGuid = [(MTPlayerItem *)self episodeGuid];

  if (episodeGuid)
  {
    episodeGuid2 = [(MTPlayerItem *)self episodeGuid];
    [v3 setObject:episodeGuid2 forKeyedSubscript:@"guid"];
  }

  title = [(MTPlayerItem *)self title];

  if (title)
  {
    title2 = [(MTPlayerItem *)self title];
    [v3 setObject:title2 forKeyedSubscript:@"title"];
  }

  author = [(MTPlayerItem *)self author];

  if (author)
  {
    author2 = [(MTPlayerItem *)self author];
    [v3 setObject:author2 forKeyedSubscript:@"podcast"];
  }

  return v3;
}

- (MTPlayerItem)initWithPodcastEpisode:(id)episode podcast:(id)podcast
{
  episodeCopy = episode;
  podcastCopy = podcast;
  return MTPlayerItem.init(podcastEpisode:podcast:)(episodeCopy, podcast);
}

@end