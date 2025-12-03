@interface MTPlayerController
+ (MTPlayerController)defaultInstance;
+ (id)_activityRestorationPath;
+ (id)_loadActivityForRestoration;
+ (void)setDefaultInstance:(id)instance;
- (BOOL)_openExternalItemIfNeededForManifest:(id)manifest;
- (BOOL)_promptToClearUpNextIfNeededForRequest:(id)request;
- (BOOL)_shouldOpenExternalItemForEpisode:(id)episode;
- (BOOL)isLicenseKeyExpiredError:(id)error;
- (BOOL)isLicenseKeyIntegrityError:(id)error;
- (BOOL)isPlayerTargetLocal;
- (BOOL)isPlayingEpisodeUuid:(id)uuid;
- (BOOL)isPlayingLocally;
- (BOOL)isSeekingOrScrubbing;
- (BOOL)pauseLocalPlayerWithInitiator:(unint64_t)initiator;
- (BOOL)playWithContext:(id)context;
- (BOOL)playWithReason:(unint64_t)reason interruptEvent:(BOOL)event;
- (BOOL)shouldPresentNowPlayingForItem:(id)item presentationType:(unint64_t)type;
- (BOOL)updateEpisode:(id)episode andPlayerItem:(id)item withElapsedTime:(double)time andDuration:(double)duration onMediaItemWillChange:(BOOL)change;
- (MTPlayerController)initWithPlayer:(id)player;
- (MTPlayerFailureDialogProxy)dialogProxy;
- (double)currentTime;
- (id)_alertControllerForClearingOrKeepingUpNextWithRequest:(id)request;
- (id)_currentEpisodeForManifest:(id)manifest;
- (id)currentItem;
- (id)playingEpisodeUuid;
- (int64_t)_validatePlaybackRequest:(id)request;
- (void)_currentActivityBecomeCurrent;
- (void)_invokeRestorationCompletions;
- (void)_localPlayerPath;
- (void)_onQueueRestorePlayerManifestWithCompletion:(id)completion;
- (void)_performAfterPlay:(id)play playbackStarted:(BOOL)started;
- (void)_performMediaRemoteCommand:(unsigned int)command options:(id)options;
- (void)_recordMetricsForItemDidChange;
- (void)_restoreManifestIfNeededWithCompletion:(id)completion useEmptyManifest:(BOOL)manifest;
- (void)_saveActivityForRestoration;
- (void)_sendMediaRemoteCommand:(unsigned int)command toPlayer:(void *)player options:(id)options;
- (void)_setLocalPlaybackQueue:(id)queue;
- (void)_setPlaybackQueue:(id)queue;
- (void)_showGenericPromptToClearUpNextWithRequest:(id)request;
- (void)_updateCurrentActivityForPlayState;
- (void)attemptToRecoverFromKeyError:(id)error;
- (void)beginObservingTranscriptIdentifierChangesForCurrentItem:(id)item;
- (void)clearPlayerManifestWithCompletion:(id)completion;
- (void)currentItemDidChange;
- (void)currentItemWillChange:(id)change;
- (void)dealloc;
- (void)openExternalEpisode:(id)episode;
- (void)pauseLocalPlayer;
- (void)pausePlayerTarget;
- (void)pausePlayerTargetWithInitiator:(unint64_t)initiator;
- (void)playItemAtIndex:(unint64_t)index;
- (void)playLocalPlayer;
- (void)playManifest:(id)manifest reason:(unint64_t)reason;
- (void)playManifest:(id)manifest reason:(unint64_t)reason interactive:(BOOL)interactive presentationType:(unint64_t)type completion:(id)completion;
- (void)playPlayerTarget;
- (void)playWithContext:(id)context completion:(id)completion;
- (void)playbackStateDidChange:(id)change;
- (void)player:(id)player didStopWithReason:(unint64_t)reason initiator:(unint64_t)initiator;
- (void)player:(id)player failedToStopWithReason:(unint64_t)reason initiator:(unint64_t)initiator;
- (void)player:(id)player willStopWithReason:(unint64_t)reason initiator:(unint64_t)initiator;
- (void)playerErrorDidOccur:(id)occur;
- (void)playerFailedToPlayToEndTime:(id)time;
- (void)playerFailure:(id)failure shouldShowDialog:(BOOL)dialog;
- (void)playerHeadWillChange:(id)change;
- (void)playerPeriodicUpdate;
- (void)presentNowPlayingAnimated:(BOOL)animated;
- (void)recordMTPlayerMetricsForCurrentItemWithCurrentTime:(double)time;
- (void)recordMetricsEventForAccessLog:(id)log playerItem:(id)item;
- (void)recordMetricsEventForErrorLog:(id)log withEpisode:(id)episode;
- (void)recordMetricsForCurrentItem;
- (void)reportStopReason:(unint64_t)reason withInitiator:(unint64_t)initiator;
- (void)resolveActivePlayerPathWithCompletion:(id)completion;
- (void)restoreFromUserActivity:(id)activity startPlayback:(BOOL)playback reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)completion;
- (void)restoreFromUserActivity:(id)activity withManifest:(id)manifest startPlayback:(BOOL)playback reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)completion;
- (void)restorePlayerManifestWithCompletion:(id)completion;
- (void)seekToTime:(double)time;
- (void)setArtworkProvider:(id)provider;
- (void)setCurrentActivity:(id)activity;
- (void)setCurrentTime:(double)time;
- (void)setManifest:(id)manifest startPlayback:(BOOL)playback destination:(unint64_t)destination context:(id)context completion:(id)completion;
- (void)setManifest:(id)manifest startPlayback:(BOOL)playback forceLocal:(BOOL)local context:(id)context completion:(id)completion;
- (void)setManifest:(id)manifest startPlayback:(BOOL)playback forceLocal:(BOOL)local reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)completion;
- (void)setManifestAsDryRun:(id)run reason:(unint64_t)reason completion:(id)completion;
- (void)setPlaybackQueue:(id)queue;
- (void)setupPlayerNotifications;
- (void)stopLocalPlayer;
- (void)stopLocalPlayerWithReason:(unint64_t)reason initiator:(unint64_t)initiator;
- (void)stopPlayerTarget;
- (void)stopPlayerTargetWithReason:(unint64_t)reason initiator:(unint64_t)initiator;
- (void)stopWithReason:(unint64_t)reason initiator:(unint64_t)initiator;
- (void)tearDownPlayerNotifications;
- (void)updateEpisodeForPlayerUpdateForceSave:(BOOL)save;
- (void)updateUPPEpisodeUuid:(id)uuid bookmarkTime:(double)time;
- (void)userActivity:(id)activity didReceiveInputStream:(id)stream outputStream:(id)outputStream;
@end

@implementation MTPlayerController

+ (MTPlayerController)defaultInstance
{
  if (+[PFClientUtil isRunningOnHomepod])
  {
    v2 = +[MRSharedSettings currentSettings];
    isMultiplayerHost = [v2 isMultiplayerHost];

    if (isMultiplayerHost)
    {
      v4 = +[IMLogCategory player];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "HomePod attempted to access the shared player controller", v7, 2u);
      }
    }
  }

  v5 = qword_100583D40;

  return v5;
}

+ (void)setDefaultInstance:(id)instance
{
  instanceCopy = instance;
  objc_storeStrong(&qword_100583D40, instance);
  v4 = +[MTHandoffController sharedInstance];
  v5 = +[MTProcessorManager sharedInstance];
}

- (MTPlayerController)initWithPlayer:(id)player
{
  playerCopy = player;
  v27.receiver = self;
  v27.super_class = MTPlayerController;
  v5 = [(MTPlayerController *)&v27 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_updateCurrentActivityForPlayState" name:MTApplicationDidEnterBackgroundNotification object:0];
    [v6 addObserver:v5 selector:"_updateCurrentActivityForPlayState" name:MTApplicationDidBecomeActiveNotification object:0];
    v7 = +[NSMutableSet set];
    [(MTPlayerController *)v5 setRecordedPlayEventsForCurrentItem:v7];

    [IMPlayerManifest registerManifestForRestoration:objc_opt_class()];
    [IMPlayerManifest registerManifestForRestoration:objc_opt_class()];
    [IMPlayerManifest registerManifestForRestoration:objc_opt_class()];
    [IMPlayerManifest registerManifestForRestoration:objc_opt_class()];
    [IMPlayerManifest registerManifestForRestoration:objc_opt_class()];
    [IMPlayerManifest registerManifestForRestoration:objc_opt_class()];
    [IMPlayerManifest registerManifestForRestoration:objc_opt_class()];
    [IMPlayerManifest registerManifestForRestoration:objc_opt_class()];
    if (playerCopy)
    {
      [(MTPlayerController *)v5 setPlayer:playerCopy];
    }

    else
    {
      v8 = +[IMAVPlayer sharedPlayer];
      [(MTPlayerController *)v5 setPlayer:v8];
    }

    player = [(MTPlayerController *)v5 player];
    [player setCausalityObserver:v5];

    v10 = [[MTUpNextController alloc] initWithPlayerController:v5];
    [(MTPlayerController *)v5 setUpNextController:v10];

    v11 = [[MTUpNextManifest alloc] initWithPlayerController:v5];
    [(MTPlayerController *)v5 setUpNextManifest:v11];

    v12 = [[MTPlaybackQueueController alloc] initWithPlayerController:v5];
    [(MTPlayerController *)v5 setPlaybackQueueController:v12];

    if (+[PFClientUtil isRunningOnHomepod])
    {
      v13 = objc_alloc_init(MTPlaybackPositionController);
      [(MTPlayerController *)v5 setPlaybackPositionController:v13];
    }

    [(MTPlayerController *)v5 setLastPlaybackSaveTime:CFAbsoluteTimeGetCurrent()];
    [(MTPlayerController *)v5 setupPlayerNotifications];
    v14 = +[NSMutableArray array];
    [(MTPlayerController *)v5 setRestorationCompletions:v14];

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v16 = dispatch_queue_create("MTPlayerController-RestorePlayerManifest", v15);
    [(MTPlayerController *)v5 setRestorationQueue:v16];

    v17 = dispatch_queue_create("com.apple.podcasts.MTPlayerController.dataAccessQueue", &_dispatch_queue_attr_concurrent);
    [(MTPlayerController *)v5 setDataAccessQueue:v17];

    v18 = dispatch_queue_create("com.apple.podcasts.compositeManifest.loadingQueue", 0);
    [(MTPlayerController *)v5 setLoadQueue:v18];

    [(MTPlayerController *)v5 setIsManifestRestorationOngoing:0];
    v19 = objc_opt_new();
    [(MTPlayerController *)v5 setKeyStorage:v19];

    v20 = +[MTLibrary sharedInstance];
    secureDownloadRenewalManager = [v20 secureDownloadRenewalManager];
    [(MTPlayerController *)v5 setSecureDownloadRenewalManager:secureDownloadRenewalManager];

    v22 = [PFFairPlayValidationManager alloc];
    v23 = +[MTLibrary sharedInstance];
    v24 = [v22 initWithEpisodeRemovalManager:v23];
    [(MTPlayerController *)v5 setValidationManager:v24];

    v25 = objc_opt_new();
    [(MTPlayerController *)v5 setInvalidationManager:v25];

    v5->_shouldFindSomethingToPlay = 1;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(MTPlayerController *)self tearDownPlayerNotifications];
  [(MTPropertyChangeQueryObserver *)self->_transcriptIdentifierObserver stop];
  v4.receiver = self;
  v4.super_class = MTPlayerController;
  [(MTPlayerController *)&v4 dealloc];
}

- (void)setupPlayerNotifications
{
  v17 = +[NSNotificationCenter defaultCenter];
  v3 = IMAVPlayerNotification_MediaItemWillChange;
  player = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"currentItemWillChange:" name:v3 object:player];

  v5 = IMAVPlayerNotification_MediaItemDidChange;
  player2 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"currentItemDidChange" name:v5 object:player2];

  v7 = IMAVPlayerNotification_StateDidChange;
  player3 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playbackStateDidChange:" name:v7 object:player3];

  v9 = IMAVPlayerNotification_PeriodicUpdate;
  player4 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playerPeriodicUpdate" name:v9 object:player4];

  v11 = IMAVPlayerNotification_ErrorDidOccur;
  player5 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playerErrorDidOccur:" name:v11 object:player5];

  v13 = IMAVPlayerNotification_FailedToPlayToEndTime;
  player6 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playerFailedToPlayToEndTime:" name:v13 object:player6];

  v15 = IMAVPlayerNotification_PlayerHeadWillChange;
  player7 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playerHeadWillChange:" name:v15 object:player7];
}

- (void)tearDownPlayerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)playerErrorDidOccur:(id)occur
{
  occurCopy = occur;
  [(MTPlayerController *)self playerFailure:occurCopy shouldShowDialog:1];
  userInfo = [occurCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:IMAVPlayerNotificationKey_Error];

  player = [(MTPlayerController *)self player];
  currentItem = [player currentItem];

  if ([(MTPlayerController *)self isLicenseKeyIntegrityError:v6])
  {
    [(MTPlayerController *)self attemptToRecoverFromKeyError:occurCopy];
  }

  if (-[MTPlayerController isLicenseKeyExpiredError:](self, "isLicenseKeyExpiredError:", v6) && [currentItem isLocal])
  {
    episodeUuid = [currentItem episodeUuid];
    if ([episodeUuid length])
    {
      episodeStoreId = [currentItem episodeStoreId];

      if (episodeStoreId >= 1)
      {
        objc_initWeak(&location, self);
        dataAccessQueue = [(MTPlayerController *)self dataAccessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100135470;
        block[3] = &unk_1004DB990;
        v13 = currentItem;
        objc_copyWeak(&v14, &location);
        dispatch_async(dataAccessQueue, block);

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }
}

- (void)attemptToRecoverFromKeyError:(id)error
{
  errorCopy = error;
  +[_TtC18PodcastsFoundation19PFBugReporterBridge reportKeyIntegrityError];
  player = [(MTPlayerController *)self player];
  currentItem = [player currentItem];

  v7 = +[PFFairPlayRolloutController sharedInstance];
  isEnabled = [v7 isEnabled];

  if (isEnabled)
  {
    v9 = [PFFairPlayAsset alloc];
    episodeStoreId = [currentItem episodeStoreId];
    asset = [currentItem asset];
    v12 = [v9 initWithAdamID:episodeStoreId avAsset:asset];

    invalidationManager = [(MTPlayerController *)self invalidationManager];
    v14 = [invalidationManager removeKeyFor:v12];

    objc_initWeak(&location, self);
    invalidationManager2 = [(MTPlayerController *)self invalidationManager];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100135ACC;
    v20[3] = &unk_1004DD758;
    objc_copyWeak(&v21, &location);
    [invalidationManager2 removalAllFairPlayKeysWithCompletion:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    keyStorage = [(MTPlayerController *)self keyStorage];
    [keyStorage removeKeyDataForStoreTrackID:{objc_msgSend(currentItem, "episodeStoreId")}];

    objc_initWeak(&location, self);
    keyStorage2 = [(MTPlayerController *)self keyStorage];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100135BC8;
    v18[3] = &unk_1004DCFE0;
    objc_copyWeak(&v19, &location);
    [keyStorage2 removeAllKeyDataWithCompletion:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)playerFailedToPlayToEndTime:(id)time
{
  timeCopy = time;
  userInfo = [timeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:IMAVPlayerNotificationKey_Error];

  -[MTPlayerController playerFailure:shouldShowDialog:](self, "playerFailure:shouldShowDialog:", timeCopy, [v6 code] == -11870);
}

- (BOOL)isLicenseKeyExpiredError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == -42800)
  {
    domain = [errorCopy domain];
    v5 = [domain isEqualToString:@"CoreMediaErrorDomain"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isLicenseKeyIntegrityError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == -42803)
  {
    domain = [errorCopy domain];
    v5 = [domain isEqualToString:@"CoreMediaErrorDomain"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)playerFailure:(id)failure shouldShowDialog:(BOOL)dialog
{
  dialogCopy = dialog;
  failureCopy = failure;
  userInfo = [failureCopy userInfo];
  v41 = [userInfo objectForKeyedSubscript:IMAVPlayerNotificationKey_Error];

  [v41 recordMetrics];
  player = [(MTPlayerController *)self player];
  [(MTPlayerController *)self player:player willStopWithReason:10 initiator:2];

  player2 = [(MTPlayerController *)self player];
  [(MTPlayerController *)self player:player2 didStopWithReason:10 initiator:2];

  v8 = v41;
  if ([v41 code] != -11819)
  {
    player3 = [(MTPlayerController *)self player];
    currentItem = [player3 currentItem];

    v10 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      episode = [currentItem episode];
      uuid = [episode uuid];
      *buf = 138412546;
      v51 = uuid;
      v52 = 2112;
      v53 = v41;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Player failure for episode with uuid %@ with error %@", buf, 0x16u);
    }

    userInfo2 = [failureCopy userInfo];
    v14 = [userInfo2 objectForKeyedSubscript:IMAVPlayerNotificationKey_PlaybackInterrupted];
    bOOLValue = [v14 BOOLValue];

    if ((dialogCopy & bOOLValue) == 1)
    {
      episode2 = [currentItem episode];
      reasonForNotPlayable = [episode2 reasonForNotPlayable];

      v18 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        episode3 = [currentItem episode];
        uuid2 = [episode3 uuid];
        *buf = 134218242;
        v51 = reasonForNotPlayable;
        v52 = 2112;
        v53 = uuid2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Reason for player failure: %lu for episode with uuid %@", buf, 0x16u);
      }

      player4 = [(MTPlayerController *)self player];
      playerItem = [player4 playerItem];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      errorLog = [playerItem errorLog];
      events = [errorLog events];

      v24 = [events countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v24)
      {
        v25 = *v46;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(events);
            }

            v27 = *(*(&v45 + 1) + 8 * i);
            errorDomain = [v27 errorDomain];
            v29 = +[MTStandardKeyRequestHandler keyRequestLicenseErrorDomain];
            v30 = [errorDomain isEqualToString:v29];

            if (v30)
            {
              if ([v27 errorStatusCode] == -1002)
              {
                reasonForNotPlayable = 7;
              }

              else if ([v27 errorStatusCode] == -1004)
              {
                reasonForNotPlayable = 8;
              }

              else if ([v27 errorStatusCode] == -1014)
              {
                reasonForNotPlayable = 9;
              }
            }
          }

          v24 = [events countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v24);
      }

      if ([(MTPlayerController *)self isLicenseKeyIntegrityError:v41])
      {
        reasonForNotPlayable = 13;
      }

      if (!reasonForNotPlayable)
      {
        if ([v41 code] == -11870)
        {
          reasonForNotPlayable = 6;
        }

        else if ([(MTPlayerController *)self isLicenseKeyExpiredError:v41])
        {
          reasonForNotPlayable = 7;
        }

        else if ([v41 code] == -1009 || objc_msgSend(v41, "code") == -1005)
        {
          reasonForNotPlayable = 2;
        }

        else
        {
          domain = [v41 domain];
          if (domain == NSURLErrorDomain)
          {
            reasonForNotPlayable = 4;
          }

          else
          {
            reasonForNotPlayable = 5;
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_dialogProxy);
      v33 = WeakRetained == 0;

      if (v33)
      {
        objc_initWeak(buf, self);
        v36 = +[MTEpisodeUnavailableUtil sharedInstance];
        author = [currentItem author];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1001363BC;
        v43[3] = &unk_1004DD780;
        v43[4] = self;
        objc_copyWeak(&v44, buf);
        [v36 showDialogForReason:reasonForNotPlayable podcastTitle:author completion:v43];

        objc_destroyWeak(&v44);
        objc_destroyWeak(buf);
      }

      else
      {
        v34 = objc_loadWeakRetained(&self->_dialogProxy);
        author2 = [currentItem author];
        [v34 proxyShouldShowDialogForReason:reasonForNotPlayable podcastTitle:author2];
      }
    }

    v8 = v41;
  }
}

- (void)currentItemWillChange:(id)change
{
  changeCopy = change;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "currentItemWillChange", buf, 2u);
  }

  userInfo = [changeCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:IMAVPlayerNotificationKey_OldMediaItem];

  userManifest = [(MTPlayerController *)self userManifest];
  userInfo2 = [changeCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:IMAVPlayerNotificationKey_NewMediaItem];

  if (v7)
  {
    [v7 playhead];
    v12 = v11;
    [v7 duration];
    v14 = v13;
    v15 = +[MTDB sharedInstance];
    mainQueueContext = [v15 mainQueueContext];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001368E4;
    v48[3] = &unk_1004DD7A8;
    v49 = mainQueueContext;
    v17 = v7;
    v50 = v17;
    selfCopy = self;
    v52 = v12;
    v53 = v14;
    v18 = mainQueueContext;
    [v18 performBlockAndWaitWithSave:v48];
    v19 = +[MTDB sharedInstance];
    privateQueueContext = [v19 privateQueueContext];

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100136A94;
    v45[3] = &unk_1004D8798;
    v46 = privateQueueContext;
    v47 = v17;
    v21 = privateQueueContext;
    [v21 performBlock:v45];
  }

  v22 = [v7 url];
  v23 = [v10 url];
  if ([v22 isEqual:v23])
  {
    enqueuedByAnotherUser = [v10 enqueuedByAnotherUser];

    if ((enqueuedByAnotherUser & 1) == 0)
    {
      [v7 playhead];
      [v10 setPlayhead:?];
    }
  }

  else
  {
  }

  player = [(MTPlayerController *)self player];
  isPlaybackRequested = [player isPlaybackRequested];

  if (isPlaybackRequested)
  {
    [(MTPlayerController *)self recordMetricsForCurrentItem];
    userInfo3 = [changeCopy userInfo];
    v28 = [userInfo3 objectForKeyedSubscript:IMAVPlayerNotificationKey_CurrentPlayheadTime];
    [v28 floatValue];
    v30 = v29;

    [(MTPlayerController *)self recordMTPlayerMetricsForCurrentItemWithCurrentTime:v30];
  }

  v31 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v32 = [v31 BOOLForKey:kMTContinuousPlaybackEnabledKey];

  userInfo4 = [changeCopy userInfo];
  v34 = [userInfo4 objectForKey:IMAVPlayerNotificationKey_DidSleepAtAssetEnd];
  bOOLValue = [v34 BOOLValue];

  isPlaybackRequested2 = 0;
  if (v32 && (bOOLValue & 1) == 0)
  {
    player2 = [(MTPlayerController *)self player];
    isPlaybackRequested2 = [player2 isPlaybackRequested];
  }

  if (v10)
  {
    if ([v10 upgradeToAlternatePaidVersionIfNeeded])
    {
      v38 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "We are upgrading the next item going into the player", buf, 2u);
      }

      [v10 invalidateAsset];
    }
  }

  else
  {
    shouldFindSomethingToPlay = [(MTPlayerController *)self shouldFindSomethingToPlay];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100136B14;
    v40[3] = &unk_1004DD7F8;
    v41 = userManifest;
    selfCopy2 = self;
    v43 = isPlaybackRequested2;
    v44 = shouldFindSomethingToPlay;
    dispatch_async(&_dispatch_main_q, v40);
  }
}

- (BOOL)updateEpisode:(id)episode andPlayerItem:(id)item withElapsedTime:(double)time andDuration:(double)duration onMediaItemWillChange:(BOOL)change
{
  changeCopy = change;
  episodeCopy = episode;
  itemCopy = item;
  if (([itemCopy isPlaceholder] & 1) == 0 && (!+[MTApplication localLibraryUpdatesDisabled](MTApplication, "localLibraryUpdatesDisabled") || +[PFClientUtil isRunningOnHomepod](PFClientUtil, "isRunningOnHomepod")))
  {
    [episodeCopy endOfTrack];
    v15 = v14;
    v16 = +[MTAccountController sharedInstance];
    activeAccount = [v16 activeAccount];

    if (v15 > time || !changeCopy)
    {
      if ([itemCopy enqueuedByAnotherUser])
      {
        LOBYTE(v13) = 0;
LABEL_47:

        goto LABEL_48;
      }

      v27 = kMTEpisodePlayheadCutoffForPartiallyPlayed;
      if (kMTEpisodePlayheadCutoffForPartiallyPlayed >= time)
      {
        v13 = 0;
      }

      else
      {
        if (([episodeCopy isUnplayed] & 1) != 0 || objc_msgSend(episodeCopy, "backCatalog"))
        {
          v28 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
          [v28 unsafeEpisodePlayedBeyondThresholdForFirstTime:episodeCopy from:3];

          v13 = 1;
          [episodeCopy setPlayState:1 manually:objc_msgSend(episodeCopy source:{"playStateManuallySet"), 9}];
          +[NSDate timeIntervalSinceReferenceDate];
          v30 = v29;
          podcast = [episodeCopy podcast];
          [podcast lastRemovedFromUpNextDate];
          v33 = v30 - v32;

          if (v33 > v27)
          {
            podcast2 = [episodeCopy podcast];
            [podcast2 setLastRemovedFromUpNextDate:0.0];

            v13 = 1;
          }
        }

        else
        {
          v13 = 0;
        }

        if (!episodeCopy && (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", [itemCopy episodeStoreId]) & 1) == 0 && (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", objc_msgSend(itemCopy, "podcastStoreId")) & 1) == 0 && (+[PFClientUtil isRunningOnHomepod](PFClientUtil, "isRunningOnHomepod") & 1) == 0)
        {
          v35 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1001373B4;
          v57[3] = &unk_1004DD840;
          v58 = itemCopy;
          selfCopy = self;
          [v35 insertNewImplicitFollowIfNeededForPlayerItem:v58 from:3 completion:v57];
        }
      }

      [episodeCopy playhead];
      if (vabdd_f64(time, v36) > 0.2)
      {
        v37 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          uuid = [episodeCopy uuid];
          v39 = uuid;
          v40 = @"unknown";
          if (uuid)
          {
            v40 = uuid;
          }

          *buf = 138412290;
          v61 = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Episode %@: Updating episode playhead and last date played", buf, 0xCu);
        }

        *&v41 = time;
        [episodeCopy setPlayhead:v41];
        +[NSDate timeIntervalSinceReferenceDate];
        [episodeCopy setLastDatePlayed:?];
      }

      if (+[PFClientUtil isRunningOnHomepod])
      {
        compositeManifest = [(MTPlayerController *)self compositeManifest];
        networkUPPEnabled = [compositeManifest networkUPPEnabled];

        if (networkUPPEnabled)
        {
          Current = CFAbsoluteTimeGetCurrent();
          [(MTPlayerController *)self lastPlaybackPositionSaveTime];
          v46 = Current - v45;
          v47 = +[IMURLBag sharedInstance];
          v48 = [v47 syncValueForKey:kBagKeyUPPSyncInterval];
          [v48 doubleValue];
          v50 = v46 <= v49;

          if (!v50 || !~v13)
          {
            playbackPositionController = [(MTPlayerController *)self playbackPositionController];
            episodeStoreId = [itemCopy episodeStoreId];
            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_100137688;
            v55[3] = &unk_1004D8C08;
            v56 = itemCopy;
            [playbackPositionController updatePlaybackPositionWithEpisodeStoreId:episodeStoreId completed:0 position:activeAccount account:v55 completion:time];

            [(MTPlayerController *)self setLastPlaybackPositionSaveTime:CFAbsoluteTimeGetCurrent()];
          }
        }
      }

      platformSyncPlayheadChangeObserverBlock = self->_platformSyncPlayheadChangeObserverBlock;
      if (!platformSyncPlayheadChangeObserverBlock)
      {
        goto LABEL_47;
      }

      uuid2 = [episodeCopy uuid];
      platformSyncPlayheadChangeObserverBlock[2](platformSyncPlayheadChangeObserverBlock, uuid2, v13);
LABEL_46:

      goto LABEL_47;
    }

    v18 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      title = [episodeCopy title];
      *buf = 138412802;
      v61 = title;
      v62 = 2048;
      timeCopy = time;
      v64 = 2048;
      v65 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Marking episode %@ as played with elapsed time %f and endOfTrack time %f", buf, 0x20u);
    }

    v20 = [NSMutableDictionary dictionaryWithCapacity:1];
    uuid2 = v20;
    if (itemCopy)
    {
      [v20 setObject:itemCopy forKey:@"MTPlayerControllerEpisodeKey"];
    }

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 postNotificationName:@"MTPlayerControllerNotification_EpisodeMarkedAsPlayed" object:self userInfo:uuid2];

    [episodeCopy setPlayhead:0.0];
    [itemCopy setPlayhead:0.0];
    contentItem = [itemCopy contentItem];
    [contentItem setElapsedTime:0.0 playbackRate:0.0];

    if (([itemCopy enqueuedByAnotherUser] & 1) == 0)
    {
      if (episodeCopy && (+[PFClientUtil isRunningOnHomepod]& 1) == 0)
      {
        [episodeCopy setPlayed:1 manually:0 source:9];
        podcast3 = [episodeCopy podcast];
        [podcast3 updateCursorPosition:0];
      }

      else
      {
        if (!+[PFClientUtil isRunningOnHomepod])
        {
          goto LABEL_27;
        }

        compositeManifest2 = [(MTPlayerController *)self compositeManifest];
        networkUPPEnabled2 = [compositeManifest2 networkUPPEnabled];

        if (!networkUPPEnabled2)
        {
          goto LABEL_27;
        }

        podcast3 = [(MTPlayerController *)self playbackPositionController];
        [podcast3 updatePlaybackPositionWithEpisodeStoreId:objc_msgSend(itemCopy completed:"episodeStoreId") position:1 account:activeAccount completion:{&stru_1004DD818, 0.0}];
      }
    }

LABEL_27:
    LOBYTE(v13) = 1;
    goto LABEL_46;
  }

  LOBYTE(v13) = 0;
LABEL_48:

  return v13;
}

- (void)beginObservingTranscriptIdentifierChangesForCurrentItem:(id)item
{
  itemCopy = item;
  [(MTPropertyChangeQueryObserver *)self->_transcriptIdentifierObserver stop];
  episodeUuid = [itemCopy episodeUuid];
  if ([episodeUuid length])
  {
    isPlaceholder = [itemCopy isPlaceholder];

    if ((isPlaceholder & 1) == 0)
    {
      v7 = [MTPropertyChangeQueryObserver alloc];
      v8 = kMTEpisodeEntityName;
      episodeUuid2 = [itemCopy episodeUuid];
      v10 = [MTEpisode predicateForEpisodeUuid:episodeUuid2];
      v11 = [v7 initWithEntityName:v8 predicate:v10];
      transcriptIdentifierObserver = self->_transcriptIdentifierObserver;
      self->_transcriptIdentifierObserver = v11;

      v18 = kEpisodeTranscriptIdentifier;
      v13 = [NSArray arrayWithObjects:&v18 count:1];
      [(MTPropertyChangeQueryObserver *)self->_transcriptIdentifierObserver setPropertyKeys:v13];

      v14 = self->_transcriptIdentifierObserver;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100137950;
      v16[3] = &unk_1004DAFB0;
      v17 = itemCopy;
      v15 = [(MTPropertyChangeQueryObserver *)v14 addResultsChangedHandler:v16];
      [(MTPropertyChangeQueryObserver *)self->_transcriptIdentifierObserver startObserving];
    }
  }

  else
  {
  }
}

- (void)player:(id)player willStopWithReason:(unint64_t)reason initiator:(unint64_t)initiator
{
  v8 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSPersistentStringFromMTStopReason();
    v10 = NSPersistentStringFromMTPlaybackAdjustmentInitiator();
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will stop player (reason: %@, initiator: %@)", &v14, 0x16u);
  }

  v11 = +[_TtC8ShelfKit15MetricsActivity shared];
  stopType = [v11 stopType];

  if (stopType)
  {
    v13 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Notification is _during_ an existing stop cause. Assuming first-receiver was the trigger and ignoring this event.", &v14, 2u);
    }
  }

  else
  {
    [(MTPlayerController *)self reportStopReason:reason withInitiator:initiator];
  }
}

- (void)player:(id)player didStopWithReason:(unint64_t)reason initiator:(unint64_t)initiator
{
  v6 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSPersistentStringFromMTStopReason();
    v8 = NSPersistentStringFromMTPlaybackAdjustmentInitiator();
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did stop player (reason: %@, initiator: %@)", &v12, 0x16u);
  }

  v9 = +[_TtC8ShelfKit15MetricsActivity shared];
  stopType = [v9 stopType];

  if (stopType)
  {
    player = [(MTPlayerController *)self player];
    [player currentTime];
    [(MTPlayerController *)self recordMTPlayerMetricsForCurrentItemWithCurrentTime:?];
  }

  else
  {
    player = _MTLogCategoryPlayback();
    if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, player, OS_LOG_TYPE_INFO, "Playback stop was already recorded, skipping reporting", &v12, 2u);
    }
  }
}

- (void)player:(id)player failedToStopWithReason:(unint64_t)reason initiator:(unint64_t)initiator
{
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSPersistentStringFromMTStopReason();
    v7 = NSPersistentStringFromMTPlaybackAdjustmentInitiator();
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed to stop player (reason: %@, initiator: %@)", &v8, 0x16u);
  }
}

- (void)currentItemDidChange
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100137FB4;
  v7[3] = &unk_1004D8358;
  v7[4] = self;
  [IMAVPlayer performOnMainQueue:v7];
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  [(MTPlayerController *)self setMetricsPlayStartTime:(v4 * 1000.0)];

  player = [(MTPlayerController *)self player];
  [player currentTime];
  [(MTPlayerController *)self setMetricsPlayStartPosition:?];

  [(MTPlayerController *)self _recordMetricsForItemDidChange];
  currentItem = [(MTPlayerController *)self currentItem];
  [(MTPlayerController *)self beginObservingTranscriptIdentifierChangesForCurrentItem:currentItem];

  [(MTPlayerController *)self setHasReportedThisEpisode:0];
}

- (void)playerHeadWillChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = [userInfo objectForKey:IMAVPlayerNotificationKey_FromMediaRemote];
  bOOLValue = [v5 BOOLValue];

  player = [(MTPlayerController *)self player];
  LODWORD(v5) = [player isPlaybackActive];

  if (v5 && bOOLValue)
  {
    userInfo2 = [changeCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:IMAVPlayerNotificationKey_NewPlayheadTime];
    [v9 floatValue];
    v11 = v10;

    userInfo3 = [changeCopy userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:IMAVPlayerNotificationKey_OldPlayheadTime];
    [v13 floatValue];
    v15 = v14;

    [(MTPlayerController *)self recordMTPlayerMetricsForCurrentItemWithCurrentTime:v15];
    [(MTPlayerController *)self setMetricsPlayStartPosition:v11];
    v16 = +[NSDate date];
    [v16 timeIntervalSince1970];
    [(MTPlayerController *)self setMetricsPlayStartTime:(v17 * 1000.0)];
  }
}

- (void)playerPeriodicUpdate
{
  v3 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "playerPeriodicUpdate", v4, 2u);
  }

  [(MTPlayerController *)self updateEpisodeForPlayerUpdateForceSave:[(MTPlayerController *)self isPlayingLocally]^ 1];
}

- (void)updateEpisodeForPlayerUpdateForceSave:(BOOL)save
{
  currentItem = [(MTPlayerController *)self currentItem];
  if (([currentItem isPlaceholder] & 1) == 0)
  {
    isPlayingLocally = [(MTPlayerController *)self isPlayingLocally];
    isSeekingOrScrubbing = [(MTPlayerController *)self isSeekingOrScrubbing];
    [(MTPlayerController *)self currentTime];
    v9 = v8;
    [currentItem duration];
    if (currentItem)
    {
      if ((isSeekingOrScrubbing & 1) == 0)
      {
        v11 = v10;
        if (isPlayingLocally)
        {
          if (![(MTPlayerController *)self hasReportedThisEpisode])
          {
            storeReportingParams = [currentItem storeReportingParams];

            if (storeReportingParams)
            {
              [(MTPlayerController *)self setHasReportedThisEpisode:1];
              v13 = +[MTStoreReportingController sharedInstance];
              storeReportingParams2 = [currentItem storeReportingParams];
              userManifest = [(MTPlayerController *)self userManifest];
              [v13 reportPlaybackFromStore:storeReportingParams2 reason:{objc_msgSend(userManifest, "playReason")}];
            }
          }
        }

        episodeUuid = [currentItem episodeUuid];
        if ([episodeUuid length])
        {
          v17 = +[MTDB sharedInstance];
          mainOrPrivateContext = [v17 mainOrPrivateContext];

          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100138430;
          v20[3] = &unk_1004DC850;
          saveCopy = save;
          v21 = mainOrPrivateContext;
          v22 = currentItem;
          v28 = isPlayingLocally;
          v23 = episodeUuid;
          selfCopy = self;
          v25 = v9;
          v26 = v11;
          v19 = mainOrPrivateContext;
          [v19 performBlockAndWait:v20];
        }

        else
        {
          [(MTPlayerController *)self updateEpisode:0 andPlayerItem:currentItem withElapsedTime:0 andDuration:v9 onMediaItemWillChange:v11];
        }
      }
    }
  }
}

- (void)playbackStateDidChange:(id)change
{
  changeCopy = change;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "playbackStateDidChange", buf, 2u);
  }

  if (![(MTPlayerController *)self isPlayingLocally])
  {
    userManifest = [(MTPlayerController *)self userManifest];
    userActivityContainsPlayhead = [userManifest userActivityContainsPlayhead];

    if (userActivityContainsPlayhead)
    {
      [(MTPlayerController *)self _saveActivityForRestoration];
    }

    v8 = +[(MTBaseProcessor *)MTUPPSyncProcessor];
    [v8 playerPaused];

    currentItem = [(MTPlayerController *)self currentItem];

    if (currentItem)
    {
      userInfo = [changeCopy userInfo];
      v11 = [userInfo objectForKeyedSubscript:IMAVPlayerNotificationKey_OldPlayheadTime];
      [v11 floatValue];
      v13 = v12;

      userInfo2 = [changeCopy userInfo];
      v15 = [userInfo2 objectForKeyedSubscript:IMAVPlayerNotificationKey_CurrentPlayheadTime];
      [v15 floatValue];
      v17 = v16;

      player = [(MTPlayerController *)self player];
      if ([player state] == 2)
      {
        v19 = v13;
      }

      else
      {
        v19 = v17;
      }

      v20 = v19;

      [(MTPlayerController *)self recordMTPlayerMetricsForCurrentItemWithCurrentTime:v20];
      [(MTPlayerController *)self recordMetricsForCurrentItem];
    }
  }

  [(MTPlayerController *)self _updateCurrentActivityForPlayState];
  v21 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v21 mainOrPrivateContext];

  currentItem2 = [(MTPlayerController *)self currentItem];
  [(MTPlayerController *)self updateEpisodeForPlayerUpdateForceSave:1];
  isPlayingLocally = [(MTPlayerController *)self isPlayingLocally];
  if (currentItem2)
  {
    if (isPlayingLocally)
    {
      player2 = [(MTPlayerController *)self player];
      [player2 currentTime];
      [(MTPlayerController *)self setMetricsPlayStartPosition:?];

      v26 = +[NSDate date];
      [v26 timeIntervalSince1970];
      [(MTPlayerController *)self setMetricsPlayStartTime:(v27 * 1000.0)];

      v28 = v33;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v29 = sub_100138A44;
    }

    else
    {
      v28 = v34;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v29 = sub_1001389C8;
    }

    v28[2] = v29;
    v28[3] = &unk_1004D8798;
    v30 = mainOrPrivateContext;
    v28[4] = v30;
    v31 = currentItem2;
    v28[5] = v31;
    [v30 performBlock:v28];

    if ([(MTPlayerController *)self isPlayingLocally])
    {
      if ([v31 upgradeToAlternatePaidVersionIfNeeded])
      {
        v32 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "We are upgrading the currently playing item after a pause/play", buf, 2u);
        }

        [(MTPlayerController *)self pauseLocalPlayer];
        [v31 invalidateAsset];
        [v31 setPlayhead:0.0];
        [(MTPlayerController *)self playLocalPlayer];
      }
    }
  }
}

- (BOOL)shouldPresentNowPlayingForItem:(id)item presentationType:(unint64_t)type
{
  if (type == 2)
  {
    return 1;
  }

  if (type == 1)
  {
    return [item isVideo];
  }

  return 0;
}

- (void)openExternalEpisode:(id)episode
{
  episodeCopy = episode;
  player = [(MTPlayerController *)self player];
  v6 = objc_opt_class();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100138BC0;
  v8[3] = &unk_1004D8358;
  v9 = episodeCopy;
  v7 = episodeCopy;
  [v6 performOnMainQueue:v8];
}

- (BOOL)playWithReason:(unint64_t)reason interruptEvent:(BOOL)event
{
  eventCopy = event;
  v6 = [MTPlaybackContext contextWithReason:reason];
  [v6 setPresentationType:0];
  [v6 setInterruptEvent:eventCopy];
  LOBYTE(eventCopy) = [(MTPlayerController *)self playWithContext:v6];

  return eventCopy;
}

- (BOOL)playWithContext:(id)context
{
  contextCopy = context;
  player = [(MTPlayerController *)self player];
  play = [player play];

  [(MTPlayerController *)self _performAfterPlay:contextCopy playbackStarted:play];
  return play;
}

- (void)stopWithReason:(unint64_t)reason initiator:(unint64_t)initiator
{
  player = [(MTPlayerController *)self player];
  [player stopWithReason:reason initiator:initiator];
}

- (void)playWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  player = [(MTPlayerController *)self player];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100138E4C;
  v11[3] = &unk_1004DD868;
  v11[4] = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = contextCopy;
  [player play:v11 interruptionEvent:{objc_msgSend(v10, "interruptEvent")}];
}

- (void)_performAfterPlay:(id)play playbackStarted:(BOOL)started
{
  startedCopy = started;
  playCopy = play;
  source = [playCopy source];
  userManifest = [(MTPlayerController *)self userManifest];
  v17[0] = @"interactive";
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [playCopy isInteractive]);
  v17[1] = @"play_source";
  v18[0] = v9;
  v10 = [MTStoreReportingController reportingStringForPlayReason:source];
  v18[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [IMMetrics recordUserAction:@"play" dataSource:userManifest withData:v11];

  v12 = +[_TtC8ShelfKit15MetricsActivity shared];
  [v12 setPlayReason:source];

  if (startedCopy)
  {
    currentItem = [(MTPlayerController *)self currentItem];
    v14 = -[MTPlayerController shouldPresentNowPlayingForItem:presentationType:](self, "shouldPresentNowPlayingForItem:presentationType:", currentItem, [playCopy presentationType]);

    if (v14)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1001390BC;
      v15[3] = &unk_1004D8798;
      v15[4] = self;
      v16 = playCopy;
      [IMAVPlayer performOnMainQueue:v15];
    }
  }
}

- (void)playItemAtIndex:(unint64_t)index
{
  compositeManifest = [(MTPlayerController *)self compositeManifest];
  [compositeManifest setCurrentIndex:index];
}

- (BOOL)pauseLocalPlayerWithInitiator:(unint64_t)initiator
{
  player = [(MTPlayerController *)self player];
  LOBYTE(initiator) = [player pauseWithInitiator:initiator];

  return initiator;
}

- (void)pauseLocalPlayer
{
  player = [(MTPlayerController *)self player];
  [player pause];
}

- (void)pausePlayerTarget
{
  if ([(MTPlayerController *)self isPlayerTargetLocal])
  {

    [(MTPlayerController *)self pauseLocalPlayer];
  }

  else
  {

    [(MTPlayerController *)self _performMediaRemoteCommand:1];
  }
}

- (void)seekToTime:(double)time
{
  if ([(MTPlayerController *)self isPlayerTargetLocal])
  {
    player = [(MTPlayerController *)self player];
    [player setCurrentTime:time];
  }

  else
  {
    v8 = kMRMediaRemoteOptionPlaybackPosition;
    v5 = [NSNumber numberWithDouble:time];
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

    [(MTPlayerController *)self _performMediaRemoteCommand:24 options:v6];
  }
}

- (void)pausePlayerTargetWithInitiator:(unint64_t)initiator
{
  if ([(MTPlayerController *)self isPlayerTargetLocal])
  {
    player = [(MTPlayerController *)self player];
    [player pauseWithInitiator:initiator];
  }

  else
  {

    [(MTPlayerController *)self _performMediaRemoteCommand:1];
  }
}

- (void)playLocalPlayer
{
  player = [(MTPlayerController *)self player];
  [player play];
}

- (void)playPlayerTarget
{
  if ([(MTPlayerController *)self isPlayerTargetLocal])
  {

    [(MTPlayerController *)self playLocalPlayer];
  }

  else
  {

    [(MTPlayerController *)self _performMediaRemoteCommand:0];
  }
}

- (void)stopLocalPlayer
{
  player = [(MTPlayerController *)self player];
  [player stop];
}

- (void)stopLocalPlayerWithReason:(unint64_t)reason initiator:(unint64_t)initiator
{
  player = [(MTPlayerController *)self player];
  [player stopWithReason:reason initiator:initiator];
}

- (void)stopPlayerTarget
{
  if ([(MTPlayerController *)self isPlayerTargetLocal])
  {

    [(MTPlayerController *)self stopLocalPlayer];
  }

  else
  {

    [(MTPlayerController *)self _performMediaRemoteCommand:3];
  }
}

- (void)stopPlayerTargetWithReason:(unint64_t)reason initiator:(unint64_t)initiator
{
  [(MTPlayerController *)self reportStopReason:reason withInitiator:initiator];

  [(MTPlayerController *)self stopLocalPlayer];
}

- (BOOL)isPlayingLocally
{
  player = [(MTPlayerController *)self player];
  isPlaybackRequested = [player isPlaybackRequested];

  return isPlaybackRequested;
}

- (double)currentTime
{
  player = [(MTPlayerController *)self player];
  [player currentTime];
  v4 = v3;

  return v4;
}

- (void)setCurrentTime:(double)time
{
  player = [(MTPlayerController *)self player];
  [player setCurrentTime:time];
}

- (BOOL)isSeekingOrScrubbing
{
  player = [(MTPlayerController *)self player];
  scrubbing = [player scrubbing];

  return scrubbing;
}

- (void)resolveActivePlayerPathWithCompletion:(id)completion
{
  completionCopy = completion;
  playerPath = [(MTPlayerController *)self playerPath];
  if (playerPath)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100139818;
    v8[3] = &unk_1004DD890;
    v9 = completionCopy;
    [playerPath resolveWithCompletion:v8];
    v6 = v9;
LABEL_5:

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = @"No PlayerPath to resolve.";
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v6 = [NSError errorWithDomain:@"MTPlayerControllerErrorDomain" code:-1 userInfo:v7];

    (*(completionCopy + 2))(completionCopy, 0, v6);
    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)isPlayerTargetLocal
{
  playerPath = [(MTPlayerController *)self playerPath];
  v3 = playerPath;
  if (playerPath)
  {
    route = [playerPath route];
    isDeviceRoute = [route isDeviceRoute];
  }

  else
  {
    isDeviceRoute = 1;
  }

  return isDeviceRoute;
}

- (id)currentItem
{
  player = [(MTPlayerController *)self player];
  currentItem = [player currentItem];

  return currentItem;
}

- (id)playingEpisodeUuid
{
  currentItem = [(MTPlayerController *)self currentItem];
  episodeUuid = [currentItem episodeUuid];

  return episodeUuid;
}

- (BOOL)isPlayingEpisodeUuid:(id)uuid
{
  uuidCopy = uuid;
  playingEpisodeUuid = [(MTPlayerController *)self playingEpisodeUuid];
  v6 = [uuidCopy isEqualToString:playingEpisodeUuid];

  return v6;
}

- (void)presentNowPlayingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = +[MTApplication sharedApplication];
  delegate = [v6 delegate];
  appController = [delegate appController];
  [appController presentNowPlayingAnimated:animatedCopy];
}

- (void)setManifest:(id)manifest startPlayback:(BOOL)playback forceLocal:(BOOL)local context:(id)context completion:(id)completion
{
  localCopy = local;
  playbackCopy = playback;
  manifestCopy = manifest;
  completionCopy = completion;
  v13 = [MTSetPlaybackQueueRequest requestWithContext:context];
  [v13 setManifest:manifestCopy];
  if (playbackCopy)
  {
    v14 = [manifestCopy isPlaceholder] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  [v13 setStartPlayback:v14];
  [v13 setSuppressMetrics:{objc_msgSend(manifestCopy, "isPlaceholder")}];
  [v13 setPlaybackDestination:!localCopy];
  [v13 setCompletion:completionCopy];

  [(MTPlayerController *)self setPlaybackQueue:v13];
}

- (void)setManifestAsDryRun:(id)run reason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  runCopy = run;
  v11 = [MTPlaybackContext contextWithReason:reason];
  v10 = [MTSetPlaybackQueueRequest requestWithContext:v11];
  [v10 setManifest:runCopy];

  [v10 setDryRun:1];
  [v10 setStartPlayback:1];
  [v10 setCompletion:completionCopy];

  [(MTPlayerController *)self setPlaybackQueue:v10];
}

- (void)setManifest:(id)manifest startPlayback:(BOOL)playback destination:(unint64_t)destination context:(id)context completion:(id)completion
{
  playbackCopy = playback;
  completionCopy = completion;
  manifestCopy = manifest;
  v14 = [MTSetPlaybackQueueRequest requestWithContext:context];
  [v14 setManifest:manifestCopy];

  [v14 setStartPlayback:playbackCopy];
  [v14 setPlaybackDestination:destination];
  [v14 setCompletion:completionCopy];

  [(MTPlayerController *)self setPlaybackQueue:v14];
}

- (void)setPlaybackQueue:(id)queue
{
  queueCopy = queue;
  if ([queueCopy validate])
  {
    manifest = [queueCopy manifest];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100139E14;
    v6[3] = &unk_1004D8798;
    v7 = queueCopy;
    selfCopy = self;
    [manifest load:v6];
  }

  else
  {
    [queueCopy finishWithStatus:3];
  }
}

- (void)setManifest:(id)manifest startPlayback:(BOOL)playback forceLocal:(BOOL)local reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)completion
{
  interactiveCopy = interactive;
  localCopy = local;
  playbackCopy = playback;
  completionCopy = completion;
  manifestCopy = manifest;
  v16 = [MTPlaybackContext contextWithReason:reason];
  [v16 setInteractive:interactiveCopy];
  [(MTPlayerController *)self setManifest:manifestCopy startPlayback:playbackCopy forceLocal:localCopy context:v16 completion:completionCopy];
}

- (void)playManifest:(id)manifest reason:(unint64_t)reason interactive:(BOOL)interactive presentationType:(unint64_t)type completion:(id)completion
{
  interactiveCopy = interactive;
  completionCopy = completion;
  manifestCopy = manifest;
  v14 = [MTPlaybackContext contextWithReason:reason];
  [v14 setPresentationType:type];
  [v14 setInteractive:interactiveCopy];
  [(MTPlayerController *)self setManifest:manifestCopy startPlayback:1 context:v14 completion:completionCopy];
}

- (void)playManifest:(id)manifest reason:(unint64_t)reason
{
  manifestCopy = manifest;
  v7 = [MTPlaybackContext contextWithReason:reason];
  [(MTPlayerController *)self setManifest:manifestCopy startPlayback:1 context:v7 completion:0];
}

- (void)_setPlaybackQueue:(id)queue
{
  queueCopy = queue;
  if ([queueCopy playbackDestination] == 1 && !-[MTPlayerController isPlayerTargetLocal](self, "isPlayerTargetLocal"))
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10013A2D4;
    v5[3] = &unk_1004DAA00;
    v6 = queueCopy;
    selfCopy = self;
    [MTRemoteSetPlaybackQueueUtil setRemotePlaybackQueue:v6 completion:v5];
  }

  else
  {
    [(MTPlayerController *)self _setLocalPlaybackQueue:queueCopy];
  }
}

- (void)_setLocalPlaybackQueue:(id)queue
{
  queueCopy = queue;
  kdebug_trace();
  objc_initWeak(&location, self);
  manifest = [queueCopy manifest];
  context = [queueCopy context];
  startPlayback = [queueCopy startPlayback];
  [(MTPlayerController *)self setUserManifest:manifest];
  v8 = [[MTCompositeManifest alloc] initWithUpNextManifest:self->_upNextManifest userManifest:manifest loadQueue:self->_loadQueue];
  [(MTPlayerController *)self setCompositeManifest:v8];

  source = [context source];
  compositeManifest = [(MTPlayerController *)self compositeManifest];
  [compositeManifest setPlayReason:source];

  userManifest = [(MTPlayerController *)self userManifest];
  [userManifest setPlayReason:source];

  v12 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    startPlayback2 = [queueCopy startPlayback];
    *buf = 67109376;
    v28 = startPlayback2;
    v29 = 2048;
    v30 = source;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Performing local SetPlaybackQueue with startPlaying %d reason %lu", buf, 0x12u);
  }

  player = [(MTPlayerController *)self player];
  compositeManifest2 = [(MTPlayerController *)self compositeManifest];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013A674;
  v19[3] = &unk_1004DD8E0;
  v16 = queueCopy;
  v20 = v16;
  v17 = manifest;
  v21 = v17;
  v18 = context;
  v25 = startPlayback;
  v24[1] = source;
  v22 = v18;
  selfCopy = self;
  objc_copyWeak(v24, &location);
  [player setManifest:compositeManifest2 completion:v19];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (id)_currentEpisodeForManifest:(id)manifest
{
  manifestCopy = manifest;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100008BBC;
  v20 = sub_10003B5B4;
  currentItem = [manifestCopy currentItem];
  episode = [currentItem episode];

  if (!v17[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      initialEpisodeUuid = [manifestCopy initialEpisodeUuid];
      v6 = +[MTDB sharedInstance];
      mainOrPrivateContext = [v6 mainOrPrivateContext];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10013AC84;
      v12[3] = &unk_1004D9040;
      v15 = &v16;
      v8 = mainOrPrivateContext;
      v13 = v8;
      v9 = initialEpisodeUuid;
      v14 = v9;
      [v8 performBlockAndWait:v12];
    }
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (int64_t)_validatePlaybackRequest:(id)request
{
  requestCopy = request;
  manifest = [requestCopy manifest];
  context = [requestCopy context];
  isInteractive = [context isInteractive];

  if ([manifest count])
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([manifest hasOnlyPaidEpisodesWithoutSubscription])
      {
        v8 = 9;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 3;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([manifest loadStatus] == 2)
    {
      v8 = 4;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    currentItem = [manifest currentItem];
    if ([currentItem isExplicit])
    {
      v12 = +[PFRestrictionsController isExplicitContentAllowed];

      if (!v12)
      {
        v8 = 4;
      }
    }

    else
    {
    }
  }

  if (((v8 == 4) & isInteractive) == 1)
  {
    player = [(MTPlayerController *)self player];
    [objc_opt_class() performOnMainQueue:&stru_1004DD900];

    v10 = 0;
    v8 = 4;
    goto LABEL_19;
  }

LABEL_18:
  v10 = 1;
LABEL_19:
  v13 = [(MTPlayerController *)self _currentEpisodeForManifest:manifest];
  if (v13)
  {
    currentItem2 = [manifest currentItem];
    if (currentItem2)
    {
    }

    else if (([v13 isExternalType] & 1) == 0)
    {
      if ([v13 isRestricted])
      {
        v8 = 4;
      }

      else
      {
        v15 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = [v13 reasonForNotPlayable];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Playback request failed with status notPlayable, MTEpisodeUnavailableReason %lu", &buf, 0xCu);
        }

        v8 = 5;
      }
    }
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = sub_100008BBC;
  v49 = sub_10003B5B4;
  v50 = 0;
  if (v13 || (+[MTReachability sharedInstance](MTReachability, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isReachable], v16, (v17 & 1) != 0))
  {
    managedObjectContext = [v13 managedObjectContext];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10013B364;
    v36[3] = &unk_1004D91F8;
    v38 = &v40;
    v37 = v13;
    p_buf = &buf;
    [managedObjectContext performBlockAndWait:v36];

    v19 = v41[3];
    if (!v19)
    {
      if (v8 == 1)
      {
        v20 = [manifest objectAtIndex:0];
        priceType = [v20 priceType];
        if (MTEpisodePriceTypeFromPersistentString() == 2)
        {
          paidSubscriptionActive = [v20 paidSubscriptionActive];

          if (paidSubscriptionActive)
          {
            v8 = 1;
          }

          else
          {
            v8 = 9;
          }
        }

        else
        {

          v8 = 1;
        }
      }

      goto LABEL_54;
    }
  }

  else
  {
    v19 = 2;
    v41[3] = 2;
  }

  if (v19 == 1)
  {
    v23 = v10;
  }

  else
  {
    v23 = 1;
  }

  if ((isInteractive & v23) == 1)
  {
    player2 = [(MTPlayerController *)self player];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10013B3E0;
    v35[3] = &unk_1004DD928;
    v35[4] = &v40;
    v35[5] = &buf;
    [objc_opt_class() performOnMainQueue:v35];
  }

  if ([v13 isRestricted])
  {
    v8 = 4;
  }

  else
  {
    v25 = v41[3];
    if (v25 == 12)
    {
      v8 = 9;
    }

    else if (v25 == 2)
    {
      v8 = 11;
    }

    else
    {
      v26 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        reasonForNotPlayable = [v13 reasonForNotPlayable];
        *v44 = 134217984;
        v45 = reasonForNotPlayable;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Playback request failed with status notPlayable, MTEpisodeUnavailableReason %lu", v44, 0xCu);
      }

      v8 = 5;
    }
  }

LABEL_54:
  v28 = +[MTAccountController sharedInstance];
  activeDsid = [v28 activeDsid];

  currentItem3 = [manifest currentItem];
  priceType2 = [currentItem3 priceType];
  v32 = MTEpisodePriceTypeFromPersistentString();

  if ((v32 & 0xFFFFFFFFFFFFFFFELL) == 2 && !activeDsid)
  {
    v33 = +[MTAccountController sharedInstance];
    [v33 promptAccountAuthenticationWithDebugReason:@"MTPlayerController authentication request" forced:1];

    v8 = 10;
  }

  if (v41[3] == 2 && ([requestCopy startPlayback] & 1) == 0)
  {
    v8 = 1;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v40, 8);

  return v8;
}

- (BOOL)_openExternalItemIfNeededForManifest:(id)manifest
{
  v4 = [(MTPlayerController *)self _currentEpisodeForManifest:manifest];
  v5 = [(MTPlayerController *)self _shouldOpenExternalItemForEpisode:v4];
  if (v5)
  {
    [(MTPlayerController *)self openExternalEpisode:v4];
  }

  return v5;
}

- (BOOL)_shouldOpenExternalItemForEpisode:(id)episode
{
  episodeCopy = episode;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  managedObjectContext = [episodeCopy managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013B5A0;
  v7[3] = &unk_1004D9068;
  v9 = &v10;
  v5 = episodeCopy;
  v8 = v5;
  [managedObjectContext performBlockAndWait:v7];

  LOBYTE(managedObjectContext) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return managedObjectContext;
}

- (BOOL)_promptToClearUpNextIfNeededForRequest:(id)request
{
  requestCopy = request;
  upNextController = [(MTPlayerController *)self upNextController];
  v6 = [upNextController count];

  upNextController2 = [(MTPlayerController *)self upNextController];
  upNextOffset = [upNextController2 upNextOffset];

  if ([requestCopy playbackDestination])
  {
    isPlayerTargetLocal = [(MTPlayerController *)self isPlayerTargetLocal];
  }

  else
  {
    isPlayerTargetLocal = 1;
  }

  if (v6 == upNextOffset)
  {
    goto LABEL_9;
  }

  context = [requestCopy context];
  if (([context isInteractive] & 1) == 0)
  {
    goto LABEL_8;
  }

  context2 = [requestCopy context];
  if ([context2 upNextQueueIntent])
  {

LABEL_8:
    goto LABEL_9;
  }

  v14 = ([requestCopy playbackDestination] == 1) & isPlayerTargetLocal;

  if (v14 == 1)
  {
    v15 = v6 - upNextOffset;
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"CLEAR_QUEUE_PROMPT_TITLE" value:&stru_1004F3018 table:0];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"CLEAR_QUEUE_PROMPT_MESSAGE" value:&stru_1004F3018 table:0];
    v20 = [NSString localizedStringWithFormat:v19, v15];

    player = [(MTPlayerController *)self player];
    v22 = objc_opt_class();
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10013B82C;
    v25[3] = &unk_1004D8DA8;
    v25[4] = self;
    v26 = requestCopy;
    v27 = v17;
    v28 = v20;
    v23 = v20;
    v24 = v17;
    [v22 performOnMainQueue:v25];

    v12 = 1;
    goto LABEL_10;
  }

LABEL_9:
  v12 = 0;
LABEL_10:

  return v12;
}

- (void)_showGenericPromptToClearUpNextWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLEAR_QUEUE_PROMPT_TITLE" value:&stru_1004F3018 table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CLEAR_QUEUE_PROMPT_MESSAGE" value:&stru_1004F3018 table:0];
  v9 = [NSString localizedStringWithFormat:v8, 1];

  player = [(MTPlayerController *)self player];
  v11 = objc_opt_class();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013BA3C;
  v15[3] = &unk_1004D8DA8;
  v15[4] = self;
  v16 = requestCopy;
  v17 = v6;
  v18 = v9;
  v12 = v9;
  v13 = v6;
  v14 = requestCopy;
  [v11 performOnMainQueue:v15];
}

- (id)_alertControllerForClearingOrKeepingUpNextWithRequest:(id)request
{
  requestCopy = request;
  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"QUEUE_KEEP_CONFIRM" value:&stru_1004F3018 table:0];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10013BD8C;
  v24[3] = &unk_1004D9E58;
  v8 = requestCopy;
  v25 = v8;
  selfCopy = self;
  v9 = [UIAlertAction actionWithTitle:v7 style:0 handler:v24];

  [v5 addAction:v9];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"QUEUE_CLEAR_CONFIRM" value:&stru_1004F3018 table:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10013BE58;
  v21[3] = &unk_1004D9E58;
  v12 = v8;
  v22 = v12;
  selfCopy2 = self;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v21];

  [v5 addAction:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Cancel" value:&stru_1004F3018 table:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013BF24;
  v19[3] = &unk_1004DB420;
  v20 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:1 handler:v19];

  [v5 addAction:v17];

  return v5;
}

- (void)clearPlayerManifestWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_shouldFindSomethingToPlay = 0;
  player = [(MTPlayerController *)self player];
  [player setManifest:0 completion:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013BFF8;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MTPlayerController *)self _restoreManifestIfNeededWithCompletion:v7 useEmptyManifest:1];
}

- (void)restorePlayerManifestWithCompletion:(id)completion
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10013C118;
  v10 = &unk_1004D8520;
  selfCopy = self;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, &v7);
  v6 = [(MTPlayerController *)self restorationQueue:v7];
  dispatch_async(v6, v5);
}

- (void)_onQueueRestorePlayerManifestWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    restorationCompletions = [(MTPlayerController *)self restorationCompletions];
    v6 = [completionCopy copy];
    v7 = objc_retainBlock(v6);
    [restorationCompletions addObject:v7];

    v8 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      restorationCompletions2 = [(MTPlayerController *)self restorationCompletions];
      *buf = 134217984;
      v14 = [restorationCompletions2 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Added manifest restoration completion. Count = %lu", buf, 0xCu);
    }
  }

  if (![(MTPlayerController *)self isManifestRestorationOngoing])
  {
    [(MTPlayerController *)self setIsManifestRestorationOngoing:1];
    if ([(MTPlayerController *)self isPlayerManifestRestored])
    {
      [(MTPlayerController *)self _invokeRestorationCompletions];
    }

    else
    {
      [objc_opt_class() _loadActivityForRestoration];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10013C2EC;
      v11[3] = &unk_1004D8798;
      v12 = v11[4] = self;
      v10 = v12;
      [IMAVPlayer performOnMainQueue:v11];
    }
  }
}

- (void)_invokeRestorationCompletions
{
  restorationQueue = [(MTPlayerController *)self restorationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C698;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(restorationQueue, block);
}

- (void)_restoreManifestIfNeededWithCompletion:(id)completion useEmptyManifest:(BOOL)manifest
{
  completionCopy = completion;
  player = [(MTPlayerController *)self player];
  manifest = [player manifest];

  if (manifest)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (manifest || ([MTPlaybackQueueFactory playMyPodcastsWithOrder:0], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [[MTItemListManifest alloc] initWithItems:&__NSArray0__struct];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013CA7C;
    v10[3] = &unk_1004D9870;
    v11 = completionCopy;
    [(MTPlayerController *)self setManifest:v9 startPlayback:0 forceLocal:1 reason:1 interactive:0 completion:v10];
  }
}

- (void)restoreFromUserActivity:(id)activity startPlayback:(BOOL)playback reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10013CC1C;
  v16[3] = &unk_1004DD978;
  objc_copyWeak(v19, &location);
  v14 = activityCopy;
  playbackCopy = playback;
  v17 = v14;
  v19[1] = reason;
  interactiveCopy = interactive;
  v15 = completionCopy;
  v18 = v15;
  [MTPlayerManifest restoreActivity:v14 completion:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)restoreFromUserActivity:(id)activity withManifest:(id)manifest startPlayback:(BOOL)playback reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)completion
{
  activityCopy = activity;
  manifestCopy = manifest;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013CDEC;
  v20[3] = &unk_1004DDA08;
  v17 = manifestCopy;
  v21 = v17;
  v18 = completionCopy;
  v23 = v18;
  v24[1] = reason;
  v19 = activityCopy;
  v22 = v19;
  objc_copyWeak(v24, &location);
  playbackCopy = playback;
  interactiveCopy = interactive;
  [IMAVPlayer performOnMainQueue:v20];
  objc_destroyWeak(v24);

  objc_destroyWeak(&location);
}

- (void)setCurrentActivity:(id)activity
{
  objc_storeStrong(&self->_currentActivity, activity);
  [(MTPlayerController *)self _updateCurrentActivityForPlayState];

  [(MTPlayerController *)self _saveActivityForRestoration];
}

- (void)_updateCurrentActivityForPlayState
{
  player = [(MTPlayerController *)self player];
  isPlaybackRequested = [player isPlaybackRequested];

  if (isPlaybackRequested)
  {

    [(MTPlayerController *)self _currentActivityBecomeCurrent];
  }
}

- (void)_currentActivityBecomeCurrent
{
  currentActivity = [(MTPlayerController *)self currentActivity];

  if (currentActivity)
  {
    currentActivity2 = [(MTPlayerController *)self currentActivity];
    [currentActivity2 setDelegate:self];

    currentActivity3 = [(MTPlayerController *)self currentActivity];
    [currentActivity3 setSupportsContinuationStreams:1];

    currentActivity4 = [(MTPlayerController *)self currentActivity];
    [currentActivity4 becomeCurrent];
  }
}

- (void)_saveActivityForRestoration
{
  currentActivity = [(MTPlayerController *)self currentActivity];
  v4 = [NSMutableDictionary dictionaryWithCapacity:5];
  activityType = [currentActivity activityType];
  [v4 setObject:activityType forKeyedSubscript:@"type"];

  title = [currentActivity title];
  [v4 setObject:title forKeyedSubscript:@"title"];

  userInfo = [currentActivity userInfo];
  [v4 setObject:userInfo forKeyedSubscript:@"userInfo"];

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [currentActivity _suggestedActionType]);
  [v4 setObject:v8 forKeyedSubscript:@"suggestedActionType"];

  _options = [currentActivity _options];
  [v4 setObject:_options forKeyedSubscript:@"options"];

  restorationQueue = [(MTPlayerController *)self restorationQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013D344;
  v12[3] = &unk_1004D8798;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  dispatch_async(restorationQueue, v12);
}

+ (id)_loadActivityForRestoration
{
  _activityRestorationPath = [objc_opt_class() _activityRestorationPath];
  v3 = [NSData dataWithContentsOfURL:_activityRestorationPath];
  if (v3)
  {
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v20[6] = objc_opt_class();
    v20[7] = objc_opt_class();
    v20[8] = objc_opt_class();
    v20[9] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v20 count:10];
    v5 = [NSSet setWithArray:v4];

    v16 = v5;
    v17 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v3 error:&v17];
    v7 = v17;
    if (v7)
    {
      v8 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to restore activity with error %@", buf, 0xCu);
      }
    }

    v9 = [v6 objectForKey:@"type"];
    v10 = [v6 objectForKey:@"title"];
    v11 = [v6 objectForKey:@"userInfo"];
    v12 = [v6 objectForKey:@"suggestedActionType"];
    v13 = [v6 objectForKey:@"options"];
    if (v9)
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v9 = 0;
      }
    }

    if (v10)
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v10 = 0;
      }
    }

    if (v11)
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v11 = 0;
      }
    }

    if (v12)
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v12 = 0;
      }
    }

    if (v13)
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v13 = 0;
      }
    }

    if (v9)
    {
      v14 = [[NSUserActivity alloc] _initWithTypeIdentifier:v9 suggestedActionType:objc_msgSend(v12 options:{"integerValue"), v13}];
      [v14 setTitle:v10];
      [v14 setUserInfo:v11];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_activityRestorationPath
{
  v2 = +[MTConstants sharedDocumentsDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"play_queue_restoration.data"];

  return v3;
}

- (void)_localPlayerPath
{
  v2 = MRNowPlayingClientCreate();
  v3 = MRNowPlayingPlayerCreate();
  v4 = MRNowPlayingPlayerPathCreate();
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (void)_performMediaRemoteCommand:(unsigned int)command options:(id)options
{
  v4 = *&command;
  optionsCopy = options;
  if ([(MTPlayerController *)self isPlayerTargetLocal])
  {
    [(MTPlayerController *)self _sendMediaRemoteCommand:v4 toPlayer:[(MTPlayerController *)self _localPlayerPath]];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013DA24;
    v7[3] = &unk_1004DDA30;
    v7[4] = self;
    v9 = v4;
    v8 = optionsCopy;
    [(MTPlayerController *)self resolveActivePlayerPathWithCompletion:v7];
  }
}

- (void)_sendMediaRemoteCommand:(unsigned int)command toPlayer:(void *)player options:(id)options
{
  optionsCopy = options;
  v9 = kMRMediaRemoteOptionDirectUserInteraction;
  v10 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [v6 mutableCopy];

  if (optionsCopy)
  {
    [v7 addEntriesFromDictionary:optionsCopy];
  }

  v8 = dispatch_get_global_queue(0, 0);
  MRMediaRemoteSendCommandToPlayer();
}

- (void)recordMTPlayerMetricsForCurrentItemWithCurrentTime:(double)time
{
  if (+[MTPrivacyUtil allowReporting])
  {
    currentItem = [(MTPlayerController *)self currentItem];
    v6 = currentItem;
    if (!currentItem || ![currentItem podcastStoreId] || (-[MTPlayerController metricsPlayStartPosition](self, "metricsPlayStartPosition"), v8 = time - v7, v8 < 0.5))
    {
LABEL_40:

      return;
    }

    v9 = +[MTReachability sharedInstance];
    isReachable = [v9 isReachable];

    v11 = +[MTAccountController sharedInstance];
    activeAccount = [v11 activeAccount];
    v13 = activeAccount != 0;

    v76[0] = @"com.apple.podcasts";
    v75[0] = @"app";
    v75[1] = @"playStartTime";
    v60 = [NSNumber numberWithLongLong:[(MTPlayerController *)self metricsPlayStartTime]];
    v76[1] = v60;
    v75[2] = @"playStartPosition";
    [(MTPlayerController *)self metricsPlayStartPosition];
    v59 = [NSNumber numberWithDouble:?];
    v76[2] = v59;
    v75[3] = @"playDuration";
    v14 = [NSNumber numberWithDouble:v8];
    v76[3] = v14;
    v75[4] = @"playbackSpeed";
    player = [(MTPlayerController *)self player];
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [player playbackSpeed]);
    v76[4] = v16;
    v75[5] = @"contentType";
    priceType = [v6 priceType];
    v18 = priceType;
    v19 = &stru_1004F3018;
    if (priceType)
    {
      v19 = priceType;
    }

    v76[5] = v19;
    v75[6] = @"isOffline";
    v20 = [NSNumber numberWithBool:isReachable ^ 1];
    v76[6] = v20;
    v75[7] = @"isSignedIn";
    v21 = [NSNumber numberWithBool:v13];
    v76[7] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:8];
    v23 = [v22 mutableCopy];

    v24 = +[_TtC8ShelfKit15MetricsActivity shared];
    playContext = [v24 playContext];
    v26 = playContext;
    if (playContext)
    {
      v27 = playContext;
    }

    else
    {
      v27 = &stru_1004F3018;
    }

    [v23 setObject:v27 forKeyedSubscript:@"playContext"];

    v28 = +[_TtC8ShelfKit15MetricsActivity shared];
    stopContext = [v28 stopContext];
    v30 = stopContext;
    if (stopContext)
    {
      v31 = stopContext;
    }

    else
    {
      v31 = &stru_1004F3018;
    }

    [v23 setObject:v31 forKeyedSubscript:@"stopReason"];

    v32 = +[_TtC8ShelfKit15MetricsActivity shared];
    stopType = [v32 stopType];
    v34 = stopType;
    if (stopType)
    {
      v35 = stopType;
    }

    else
    {
      v35 = &stru_1004F3018;
    }

    [v23 setObject:v35 forKeyedSubscript:@"stopType"];

    NSLog(@"!!! Clearing stopInfo");
    v36 = +[_TtC8ShelfKit15MetricsActivity shared];
    [v36 clearStopInfo];

    v37 = +[NSUserDefaults standardUserDefaults];
    v38 = [v37 stringForKey:@"canary"];

    if ([v38 length])
    {
      [v23 setObject:v38 forKeyedSubscript:@"canary"];
    }

    highlightsProvider = [(MTPlayerController *)self highlightsProvider];
    if (([highlightsProvider isSharedContentWithContentAdamId:{objc_msgSend(v6, "episodeStoreId")}] & 1) == 0)
    {
      highlightsProvider2 = [(MTPlayerController *)self highlightsProvider];
      if (![highlightsProvider2 isSharedContentWithContentAdamId:{objc_msgSend(v6, "podcastStoreId")}])
      {
        highlightsProvider3 = [(MTPlayerController *)self highlightsProvider];
        v47 = [highlightsProvider3 isSharedContentWithContentAdamId:{objc_msgSend(v6, "channelStoreId")}];

        if ((v47 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    v41 = [NSNumber numberWithBool:1];
    [v23 setObject:v41 forKeyedSubscript:@"sharedContent"];

LABEL_23:
    if ([v6 isAppleMusicEpisode])
    {
      v64 = 0;
      v42 = [MTMusicSubscriptionInfoLoader loadIfNeededAndReturnError:&v64];
      v43 = v64;
      if (v43)
      {
        v44 = _MTLogCategoryMetrics();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v66 = v43;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Unable to get Music Subscription Info with error: %@", buf, 0xCu);
        }
      }

      else
      {
        [v23 setObject:v42 forKeyedSubscript:@"musicSubscriptionData"];
      }
    }

    else if ([v6 isAppleNewsEpisode])
    {
      if ([v6 paidSubscriptionActive])
      {
        v45 = @"news+";
      }

      else
      {
        v45 = @"none";
      }

      [v23 setObject:v45 forKeyedSubscript:@"newsSubscriptionData"];
    }

    v48 = [NSDate dateWithTimeIntervalSince1970:[(MTPlayerController *)self metricsPlayStartTime]/ 1000.0];
    v49 = _MTLogCategoryMetrics();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = +[AMSDefaults metricsCanaryIdentifier];
      [(MTPlayerController *)self metricsPlayStartPosition];
      v52 = v51;
      title = [v6 title];
      *buf = 138413314;
      v66 = v50;
      v67 = 2112;
      v68 = v48;
      v69 = 2048;
      v70 = v52;
      v71 = 2048;
      v72 = v8;
      v73 = 2112;
      v74 = title;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "canary: %@, playStartTime: %@, playStartPosition: %f, playDuration: %f, item: %@", buf, 0x34u);
    }

    v54 = [[MTEpisodeMetricDataSource alloc] initWithPlayerItem:v6];
    v55 = +[_TtC18PodcastsFoundation26AnalyticsIdentifierManager sharedInstance];
    identifierPromise = [v55 identifierPromise];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10013E3F0;
    v61[3] = &unk_1004D89D0;
    v62 = v23;
    v63 = v54;
    v57 = v54;
    v58 = v23;
    [identifierPromise addFinishBlock:v61];

    goto LABEL_40;
  }
}

- (void)recordMetricsForCurrentItem
{
  currentItem = [(MTPlayerController *)self currentItem];
  v4 = currentItem;
  if (currentItem && ([currentItem isPlaceholder] & 1) == 0)
  {
    player = [(MTPlayerController *)self player];
    playerItem = [player playerItem];

    recordedPlayEventsForCurrentItem = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
    objc_sync_enter(recordedPlayEventsForCurrentItem);
    v8 = [v4 url];
    lastRecordedItemURL = [(MTPlayerController *)self lastRecordedItemURL];
    v10 = [lastRecordedItemURL isEqual:v8];

    if ((v10 & 1) == 0)
    {
      recordedPlayEventsForCurrentItem2 = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
      [recordedPlayEventsForCurrentItem2 removeAllObjects];

      [(MTPlayerController *)self setLastRecordedItemURL:v8];
    }

    objc_sync_exit(recordedPlayEventsForCurrentItem);
    if (playerItem)
    {
      v12 = +[MTDB sharedInstance];
      privateQueueContext = [v12 privateQueueContext];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10013E714;
      v15[3] = &unk_1004D8DA8;
      v16 = playerItem;
      v17 = privateQueueContext;
      v18 = v4;
      selfCopy = self;
      v14 = privateQueueContext;
      [v14 performBlock:v15];
    }
  }
}

- (void)recordMetricsEventForAccessLog:(id)log playerItem:(id)item
{
  logCopy = log;
  itemCopy = item;
  if (([itemCopy isPlaceholder] & 1) == 0)
  {
    v7 = [[MTEpisodeMetricDataSource alloc] initWithPlayerItem:itemCopy];
    v8 = [MTPlayMetricsEvent eventWithAccessLog:logCopy dataSource:v7];
    recordedPlayEventsForCurrentItem = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
    objc_sync_enter(recordedPlayEventsForCurrentItem);
    recordedPlayEventsForCurrentItem2 = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
    v11 = [recordedPlayEventsForCurrentItem2 containsObject:v8];

    if ((v11 & 1) == 0)
    {
      [v8 record];
      recordedPlayEventsForCurrentItem3 = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
      [recordedPlayEventsForCurrentItem3 addObject:v8];
    }

    objc_sync_exit(recordedPlayEventsForCurrentItem);
  }
}

- (void)recordMetricsEventForErrorLog:(id)log withEpisode:(id)episode
{
  logCopy = log;
  v30[0] = @"date";
  episodeCopy = episode;
  date = [logCopy date];
  objc_opt_class();
  objc_opt_class();
  v29 = date;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    date2 = [logCopy date];
    [date2 timeIntervalSinceReferenceDate];
    v9 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v9 = &off_100501120;
  }

  v28 = v9;
  v31[0] = v9;
  v30[1] = @"uri";
  v10 = [logCopy URI];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1004F3018;
  }

  v31[1] = v12;
  v30[2] = @"server_address";
  serverAddress = [logCopy serverAddress];
  v14 = serverAddress;
  if (serverAddress)
  {
    v15 = serverAddress;
  }

  else
  {
    v15 = &stru_1004F3018;
  }

  v31[2] = v15;
  v30[3] = @"playback_session_id";
  playbackSessionID = [logCopy playbackSessionID];
  v17 = playbackSessionID;
  if (playbackSessionID)
  {
    v18 = playbackSessionID;
  }

  else
  {
    v18 = &stru_1004F3018;
  }

  v31[3] = v18;
  v30[4] = @"error_status_code";
  v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [logCopy errorStatusCode]);
  v31[4] = v19;
  v30[5] = @"error_domain";
  errorDomain = [logCopy errorDomain];
  v21 = errorDomain;
  if (errorDomain)
  {
    v22 = errorDomain;
  }

  else
  {
    v22 = &stru_1004F3018;
  }

  v31[5] = v22;
  v30[6] = @"error_comment";
  errorComment = [logCopy errorComment];
  v24 = errorComment;
  if (errorComment)
  {
    v25 = errorComment;
  }

  else
  {
    v25 = &stru_1004F3018;
  }

  v31[6] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:7];
  [IMMetrics recordUserAction:@"play_error" dataSource:episodeCopy withData:v26];

  if (isKindOfClass)
  {
  }
}

- (void)_recordMetricsForItemDidChange
{
  if (+[MTPrivacyUtil allowReporting])
  {
    currentItem = [(MTPlayerController *)self currentItem];
    v4 = currentItem;
    if (currentItem && ([currentItem isPlaceholder] & 1) == 0)
    {
      compositeManifest = [(MTPlayerController *)self compositeManifest];
      metricsContentIdentifier = [compositeManifest metricsContentIdentifier];

      if (metricsContentIdentifier)
      {
        v7 = +[MTDB sharedInstance];
        privateQueueContext = [v7 privateQueueContext];

        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_10013EDF8;
        v10[3] = &unk_1004D8DA8;
        v11 = privateQueueContext;
        v12 = v4;
        selfCopy = self;
        v14 = metricsContentIdentifier;
        v9 = privateQueueContext;
        [v9 performBlock:v10];
      }
    }
  }
}

- (void)userActivity:(id)activity didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  outputStreamCopy = outputStream;
  [(MTPlayerController *)self reportStopReason:6 withInitiator:2];
  player = [(MTPlayerController *)self player];
  [player pause];

  [outputStreamCopy close];
}

- (void)reportStopReason:(unint64_t)reason withInitiator:(unint64_t)initiator
{
  v6 = +[_TtC8ShelfKit15MetricsActivity shared];
  [v6 setStopReason:reason];

  v7 = +[_TtC8ShelfKit15MetricsActivity shared];
  [v7 setInitiator:initiator];
}

- (void)updateUPPEpisodeUuid:(id)uuid bookmarkTime:(double)time
{
  uuidCopy = uuid;
  currentItem = [(MTPlayerController *)self currentItem];
  if (currentItem)
  {
    if (![(MTPlayerController *)self isPlayingLocally])
    {
      episodeUuid = [currentItem episodeUuid];
      v8 = [uuidCopy isEqualToString:episodeUuid];

      if (v8)
      {
        [(MTPlayerController *)self setCurrentTime:time];
      }
    }
  }
}

- (void)setArtworkProvider:(id)provider
{
  providerCopy = provider;
  playbackQueueController = [(MTPlayerController *)self playbackQueueController];
  [playbackQueueController setArtworkProvider:providerCopy];
}

- (MTPlayerFailureDialogProxy)dialogProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogProxy);

  return WeakRetained;
}

@end