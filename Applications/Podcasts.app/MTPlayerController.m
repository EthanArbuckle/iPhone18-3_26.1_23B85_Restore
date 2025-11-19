@interface MTPlayerController
+ (MTPlayerController)defaultInstance;
+ (id)_activityRestorationPath;
+ (id)_loadActivityForRestoration;
+ (void)setDefaultInstance:(id)a3;
- (BOOL)_openExternalItemIfNeededForManifest:(id)a3;
- (BOOL)_promptToClearUpNextIfNeededForRequest:(id)a3;
- (BOOL)_shouldOpenExternalItemForEpisode:(id)a3;
- (BOOL)isLicenseKeyExpiredError:(id)a3;
- (BOOL)isLicenseKeyIntegrityError:(id)a3;
- (BOOL)isPlayerTargetLocal;
- (BOOL)isPlayingEpisodeUuid:(id)a3;
- (BOOL)isPlayingLocally;
- (BOOL)isSeekingOrScrubbing;
- (BOOL)pauseLocalPlayerWithInitiator:(unint64_t)a3;
- (BOOL)playWithContext:(id)a3;
- (BOOL)playWithReason:(unint64_t)a3 interruptEvent:(BOOL)a4;
- (BOOL)shouldPresentNowPlayingForItem:(id)a3 presentationType:(unint64_t)a4;
- (BOOL)updateEpisode:(id)a3 andPlayerItem:(id)a4 withElapsedTime:(double)a5 andDuration:(double)a6 onMediaItemWillChange:(BOOL)a7;
- (MTPlayerController)initWithPlayer:(id)a3;
- (MTPlayerFailureDialogProxy)dialogProxy;
- (double)currentTime;
- (id)_alertControllerForClearingOrKeepingUpNextWithRequest:(id)a3;
- (id)_currentEpisodeForManifest:(id)a3;
- (id)currentItem;
- (id)playingEpisodeUuid;
- (int64_t)_validatePlaybackRequest:(id)a3;
- (void)_currentActivityBecomeCurrent;
- (void)_invokeRestorationCompletions;
- (void)_localPlayerPath;
- (void)_onQueueRestorePlayerManifestWithCompletion:(id)a3;
- (void)_performAfterPlay:(id)a3 playbackStarted:(BOOL)a4;
- (void)_performMediaRemoteCommand:(unsigned int)a3 options:(id)a4;
- (void)_recordMetricsForItemDidChange;
- (void)_restoreManifestIfNeededWithCompletion:(id)a3 useEmptyManifest:(BOOL)a4;
- (void)_saveActivityForRestoration;
- (void)_sendMediaRemoteCommand:(unsigned int)a3 toPlayer:(void *)a4 options:(id)a5;
- (void)_setLocalPlaybackQueue:(id)a3;
- (void)_setPlaybackQueue:(id)a3;
- (void)_showGenericPromptToClearUpNextWithRequest:(id)a3;
- (void)_updateCurrentActivityForPlayState;
- (void)attemptToRecoverFromKeyError:(id)a3;
- (void)beginObservingTranscriptIdentifierChangesForCurrentItem:(id)a3;
- (void)clearPlayerManifestWithCompletion:(id)a3;
- (void)currentItemDidChange;
- (void)currentItemWillChange:(id)a3;
- (void)dealloc;
- (void)openExternalEpisode:(id)a3;
- (void)pauseLocalPlayer;
- (void)pausePlayerTarget;
- (void)pausePlayerTargetWithInitiator:(unint64_t)a3;
- (void)playItemAtIndex:(unint64_t)a3;
- (void)playLocalPlayer;
- (void)playManifest:(id)a3 reason:(unint64_t)a4;
- (void)playManifest:(id)a3 reason:(unint64_t)a4 interactive:(BOOL)a5 presentationType:(unint64_t)a6 completion:(id)a7;
- (void)playPlayerTarget;
- (void)playWithContext:(id)a3 completion:(id)a4;
- (void)playbackStateDidChange:(id)a3;
- (void)player:(id)a3 didStopWithReason:(unint64_t)a4 initiator:(unint64_t)a5;
- (void)player:(id)a3 failedToStopWithReason:(unint64_t)a4 initiator:(unint64_t)a5;
- (void)player:(id)a3 willStopWithReason:(unint64_t)a4 initiator:(unint64_t)a5;
- (void)playerErrorDidOccur:(id)a3;
- (void)playerFailedToPlayToEndTime:(id)a3;
- (void)playerFailure:(id)a3 shouldShowDialog:(BOOL)a4;
- (void)playerHeadWillChange:(id)a3;
- (void)playerPeriodicUpdate;
- (void)presentNowPlayingAnimated:(BOOL)a3;
- (void)recordMTPlayerMetricsForCurrentItemWithCurrentTime:(double)a3;
- (void)recordMetricsEventForAccessLog:(id)a3 playerItem:(id)a4;
- (void)recordMetricsEventForErrorLog:(id)a3 withEpisode:(id)a4;
- (void)recordMetricsForCurrentItem;
- (void)reportStopReason:(unint64_t)a3 withInitiator:(unint64_t)a4;
- (void)resolveActivePlayerPathWithCompletion:(id)a3;
- (void)restoreFromUserActivity:(id)a3 startPlayback:(BOOL)a4 reason:(unint64_t)a5 interactive:(BOOL)a6 completion:(id)a7;
- (void)restoreFromUserActivity:(id)a3 withManifest:(id)a4 startPlayback:(BOOL)a5 reason:(unint64_t)a6 interactive:(BOOL)a7 completion:(id)a8;
- (void)restorePlayerManifestWithCompletion:(id)a3;
- (void)seekToTime:(double)a3;
- (void)setArtworkProvider:(id)a3;
- (void)setCurrentActivity:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setManifest:(id)a3 startPlayback:(BOOL)a4 destination:(unint64_t)a5 context:(id)a6 completion:(id)a7;
- (void)setManifest:(id)a3 startPlayback:(BOOL)a4 forceLocal:(BOOL)a5 context:(id)a6 completion:(id)a7;
- (void)setManifest:(id)a3 startPlayback:(BOOL)a4 forceLocal:(BOOL)a5 reason:(unint64_t)a6 interactive:(BOOL)a7 completion:(id)a8;
- (void)setManifestAsDryRun:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)setPlaybackQueue:(id)a3;
- (void)setupPlayerNotifications;
- (void)stopLocalPlayer;
- (void)stopLocalPlayerWithReason:(unint64_t)a3 initiator:(unint64_t)a4;
- (void)stopPlayerTarget;
- (void)stopPlayerTargetWithReason:(unint64_t)a3 initiator:(unint64_t)a4;
- (void)stopWithReason:(unint64_t)a3 initiator:(unint64_t)a4;
- (void)tearDownPlayerNotifications;
- (void)updateEpisodeForPlayerUpdateForceSave:(BOOL)a3;
- (void)updateUPPEpisodeUuid:(id)a3 bookmarkTime:(double)a4;
- (void)userActivity:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5;
@end

@implementation MTPlayerController

+ (MTPlayerController)defaultInstance
{
  if (+[PFClientUtil isRunningOnHomepod])
  {
    v2 = +[MRSharedSettings currentSettings];
    v3 = [v2 isMultiplayerHost];

    if (v3)
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

+ (void)setDefaultInstance:(id)a3
{
  v6 = a3;
  objc_storeStrong(&qword_100583D40, a3);
  v4 = +[MTHandoffController sharedInstance];
  v5 = +[MTProcessorManager sharedInstance];
}

- (MTPlayerController)initWithPlayer:(id)a3
{
  v4 = a3;
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
    if (v4)
    {
      [(MTPlayerController *)v5 setPlayer:v4];
    }

    else
    {
      v8 = +[IMAVPlayer sharedPlayer];
      [(MTPlayerController *)v5 setPlayer:v8];
    }

    v9 = [(MTPlayerController *)v5 player];
    [v9 setCausalityObserver:v5];

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
    v21 = [v20 secureDownloadRenewalManager];
    [(MTPlayerController *)v5 setSecureDownloadRenewalManager:v21];

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
  v4 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"currentItemWillChange:" name:v3 object:v4];

  v5 = IMAVPlayerNotification_MediaItemDidChange;
  v6 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"currentItemDidChange" name:v5 object:v6];

  v7 = IMAVPlayerNotification_StateDidChange;
  v8 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playbackStateDidChange:" name:v7 object:v8];

  v9 = IMAVPlayerNotification_PeriodicUpdate;
  v10 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playerPeriodicUpdate" name:v9 object:v10];

  v11 = IMAVPlayerNotification_ErrorDidOccur;
  v12 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playerErrorDidOccur:" name:v11 object:v12];

  v13 = IMAVPlayerNotification_FailedToPlayToEndTime;
  v14 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playerFailedToPlayToEndTime:" name:v13 object:v14];

  v15 = IMAVPlayerNotification_PlayerHeadWillChange;
  v16 = [(MTPlayerController *)self player];
  [v17 addObserver:self selector:"playerHeadWillChange:" name:v15 object:v16];
}

- (void)tearDownPlayerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)playerErrorDidOccur:(id)a3
{
  v4 = a3;
  [(MTPlayerController *)self playerFailure:v4 shouldShowDialog:1];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:IMAVPlayerNotificationKey_Error];

  v7 = [(MTPlayerController *)self player];
  v8 = [v7 currentItem];

  if ([(MTPlayerController *)self isLicenseKeyIntegrityError:v6])
  {
    [(MTPlayerController *)self attemptToRecoverFromKeyError:v4];
  }

  if (-[MTPlayerController isLicenseKeyExpiredError:](self, "isLicenseKeyExpiredError:", v6) && [v8 isLocal])
  {
    v9 = [v8 episodeUuid];
    if ([v9 length])
    {
      v10 = [v8 episodeStoreId];

      if (v10 >= 1)
      {
        objc_initWeak(&location, self);
        v11 = [(MTPlayerController *)self dataAccessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100135470;
        block[3] = &unk_1004DB990;
        v13 = v8;
        objc_copyWeak(&v14, &location);
        dispatch_async(v11, block);

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }
}

- (void)attemptToRecoverFromKeyError:(id)a3
{
  v4 = a3;
  +[_TtC18PodcastsFoundation19PFBugReporterBridge reportKeyIntegrityError];
  v5 = [(MTPlayerController *)self player];
  v6 = [v5 currentItem];

  v7 = +[PFFairPlayRolloutController sharedInstance];
  v8 = [v7 isEnabled];

  if (v8)
  {
    v9 = [PFFairPlayAsset alloc];
    v10 = [v6 episodeStoreId];
    v11 = [v6 asset];
    v12 = [v9 initWithAdamID:v10 avAsset:v11];

    v13 = [(MTPlayerController *)self invalidationManager];
    v14 = [v13 removeKeyFor:v12];

    objc_initWeak(&location, self);
    v15 = [(MTPlayerController *)self invalidationManager];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100135ACC;
    v20[3] = &unk_1004DD758;
    objc_copyWeak(&v21, &location);
    [v15 removalAllFairPlayKeysWithCompletion:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = [(MTPlayerController *)self keyStorage];
    [v16 removeKeyDataForStoreTrackID:{objc_msgSend(v6, "episodeStoreId")}];

    objc_initWeak(&location, self);
    v17 = [(MTPlayerController *)self keyStorage];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100135BC8;
    v18[3] = &unk_1004DCFE0;
    objc_copyWeak(&v19, &location);
    [v17 removeAllKeyDataWithCompletion:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)playerFailedToPlayToEndTime:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:IMAVPlayerNotificationKey_Error];

  -[MTPlayerController playerFailure:shouldShowDialog:](self, "playerFailure:shouldShowDialog:", v4, [v6 code] == -11870);
}

- (BOOL)isLicenseKeyExpiredError:(id)a3
{
  v3 = a3;
  if ([v3 code] == -42800)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:@"CoreMediaErrorDomain"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isLicenseKeyIntegrityError:(id)a3
{
  v3 = a3;
  if ([v3 code] == -42803)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:@"CoreMediaErrorDomain"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)playerFailure:(id)a3 shouldShowDialog:(BOOL)a4
{
  v4 = a4;
  v40 = a3;
  v5 = [v40 userInfo];
  v41 = [v5 objectForKeyedSubscript:IMAVPlayerNotificationKey_Error];

  [v41 recordMetrics];
  v6 = [(MTPlayerController *)self player];
  [(MTPlayerController *)self player:v6 willStopWithReason:10 initiator:2];

  v7 = [(MTPlayerController *)self player];
  [(MTPlayerController *)self player:v7 didStopWithReason:10 initiator:2];

  v8 = v41;
  if ([v41 code] != -11819)
  {
    v9 = [(MTPlayerController *)self player];
    v39 = [v9 currentItem];

    v10 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v39 episode];
      v12 = [v11 uuid];
      *buf = 138412546;
      v51 = v12;
      v52 = 2112;
      v53 = v41;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Player failure for episode with uuid %@ with error %@", buf, 0x16u);
    }

    v13 = [v40 userInfo];
    v14 = [v13 objectForKeyedSubscript:IMAVPlayerNotificationKey_PlaybackInterrupted];
    v15 = [v14 BOOLValue];

    if ((v4 & v15) == 1)
    {
      v16 = [v39 episode];
      v17 = [v16 reasonForNotPlayable];

      v18 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v39 episode];
        v20 = [v19 uuid];
        *buf = 134218242;
        v51 = v17;
        v52 = 2112;
        v53 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Reason for player failure: %lu for episode with uuid %@", buf, 0x16u);
      }

      v21 = [(MTPlayerController *)self player];
      v38 = [v21 playerItem];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v22 = [v38 errorLog];
      v23 = [v22 events];

      v24 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v24)
      {
        v25 = *v46;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v45 + 1) + 8 * i);
            v28 = [v27 errorDomain];
            v29 = +[MTStandardKeyRequestHandler keyRequestLicenseErrorDomain];
            v30 = [v28 isEqualToString:v29];

            if (v30)
            {
              if ([v27 errorStatusCode] == -1002)
              {
                v17 = 7;
              }

              else if ([v27 errorStatusCode] == -1004)
              {
                v17 = 8;
              }

              else if ([v27 errorStatusCode] == -1014)
              {
                v17 = 9;
              }
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v24);
      }

      if ([(MTPlayerController *)self isLicenseKeyIntegrityError:v41])
      {
        v17 = 13;
      }

      if (!v17)
      {
        if ([v41 code] == -11870)
        {
          v17 = 6;
        }

        else if ([(MTPlayerController *)self isLicenseKeyExpiredError:v41])
        {
          v17 = 7;
        }

        else if ([v41 code] == -1009 || objc_msgSend(v41, "code") == -1005)
        {
          v17 = 2;
        }

        else
        {
          v31 = [v41 domain];
          if (v31 == NSURLErrorDomain)
          {
            v17 = 4;
          }

          else
          {
            v17 = 5;
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_dialogProxy);
      v33 = WeakRetained == 0;

      if (v33)
      {
        objc_initWeak(buf, self);
        v36 = +[MTEpisodeUnavailableUtil sharedInstance];
        v37 = [v39 author];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1001363BC;
        v43[3] = &unk_1004DD780;
        v43[4] = self;
        objc_copyWeak(&v44, buf);
        [v36 showDialogForReason:v17 podcastTitle:v37 completion:v43];

        objc_destroyWeak(&v44);
        objc_destroyWeak(buf);
      }

      else
      {
        v34 = objc_loadWeakRetained(&self->_dialogProxy);
        v35 = [v39 author];
        [v34 proxyShouldShowDialogForReason:v17 podcastTitle:v35];
      }
    }

    v8 = v41;
  }
}

- (void)currentItemWillChange:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "currentItemWillChange", buf, 2u);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:IMAVPlayerNotificationKey_OldMediaItem];

  v8 = [(MTPlayerController *)self userManifest];
  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:IMAVPlayerNotificationKey_NewMediaItem];

  if (v7)
  {
    [v7 playhead];
    v12 = v11;
    [v7 duration];
    v14 = v13;
    v15 = +[MTDB sharedInstance];
    v16 = [v15 mainQueueContext];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001368E4;
    v48[3] = &unk_1004DD7A8;
    v49 = v16;
    v17 = v7;
    v50 = v17;
    v51 = self;
    v52 = v12;
    v53 = v14;
    v18 = v16;
    [v18 performBlockAndWaitWithSave:v48];
    v19 = +[MTDB sharedInstance];
    v20 = [v19 privateQueueContext];

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100136A94;
    v45[3] = &unk_1004D8798;
    v46 = v20;
    v47 = v17;
    v21 = v20;
    [v21 performBlock:v45];
  }

  v22 = [v7 url];
  v23 = [v10 url];
  if ([v22 isEqual:v23])
  {
    v24 = [v10 enqueuedByAnotherUser];

    if ((v24 & 1) == 0)
    {
      [v7 playhead];
      [v10 setPlayhead:?];
    }
  }

  else
  {
  }

  v25 = [(MTPlayerController *)self player];
  v26 = [v25 isPlaybackRequested];

  if (v26)
  {
    [(MTPlayerController *)self recordMetricsForCurrentItem];
    v27 = [v4 userInfo];
    v28 = [v27 objectForKeyedSubscript:IMAVPlayerNotificationKey_CurrentPlayheadTime];
    [v28 floatValue];
    v30 = v29;

    [(MTPlayerController *)self recordMTPlayerMetricsForCurrentItemWithCurrentTime:v30];
  }

  v31 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v32 = [v31 BOOLForKey:kMTContinuousPlaybackEnabledKey];

  v33 = [v4 userInfo];
  v34 = [v33 objectForKey:IMAVPlayerNotificationKey_DidSleepAtAssetEnd];
  v35 = [v34 BOOLValue];

  v36 = 0;
  if (v32 && (v35 & 1) == 0)
  {
    v37 = [(MTPlayerController *)self player];
    v36 = [v37 isPlaybackRequested];
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
    v39 = [(MTPlayerController *)self shouldFindSomethingToPlay];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100136B14;
    v40[3] = &unk_1004DD7F8;
    v41 = v8;
    v42 = self;
    v43 = v36;
    v44 = v39;
    dispatch_async(&_dispatch_main_q, v40);
  }
}

- (BOOL)updateEpisode:(id)a3 andPlayerItem:(id)a4 withElapsedTime:(double)a5 andDuration:(double)a6 onMediaItemWillChange:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  if (([v12 isPlaceholder] & 1) == 0 && (!+[MTApplication localLibraryUpdatesDisabled](MTApplication, "localLibraryUpdatesDisabled") || +[PFClientUtil isRunningOnHomepod](PFClientUtil, "isRunningOnHomepod")))
  {
    [v11 endOfTrack];
    v15 = v14;
    v16 = +[MTAccountController sharedInstance];
    v17 = [v16 activeAccount];

    if (v15 > a5 || !v7)
    {
      if ([v12 enqueuedByAnotherUser])
      {
        LOBYTE(v13) = 0;
LABEL_47:

        goto LABEL_48;
      }

      v27 = kMTEpisodePlayheadCutoffForPartiallyPlayed;
      if (kMTEpisodePlayheadCutoffForPartiallyPlayed >= a5)
      {
        v13 = 0;
      }

      else
      {
        if (([v11 isUnplayed] & 1) != 0 || objc_msgSend(v11, "backCatalog"))
        {
          v28 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
          [v28 unsafeEpisodePlayedBeyondThresholdForFirstTime:v11 from:3];

          v13 = 1;
          [v11 setPlayState:1 manually:objc_msgSend(v11 source:{"playStateManuallySet"), 9}];
          +[NSDate timeIntervalSinceReferenceDate];
          v30 = v29;
          v31 = [v11 podcast];
          [v31 lastRemovedFromUpNextDate];
          v33 = v30 - v32;

          if (v33 > v27)
          {
            v34 = [v11 podcast];
            [v34 setLastRemovedFromUpNextDate:0.0];

            v13 = 1;
          }
        }

        else
        {
          v13 = 0;
        }

        if (!v11 && (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", [v12 episodeStoreId]) & 1) == 0 && (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", objc_msgSend(v12, "podcastStoreId")) & 1) == 0 && (+[PFClientUtil isRunningOnHomepod](PFClientUtil, "isRunningOnHomepod") & 1) == 0)
        {
          v35 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1001373B4;
          v57[3] = &unk_1004DD840;
          v58 = v12;
          v59 = self;
          [v35 insertNewImplicitFollowIfNeededForPlayerItem:v58 from:3 completion:v57];
        }
      }

      [v11 playhead];
      if (vabdd_f64(a5, v36) > 0.2)
      {
        v37 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [v11 uuid];
          v39 = v38;
          v40 = @"unknown";
          if (v38)
          {
            v40 = v38;
          }

          *buf = 138412290;
          v61 = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Episode %@: Updating episode playhead and last date played", buf, 0xCu);
        }

        *&v41 = a5;
        [v11 setPlayhead:v41];
        +[NSDate timeIntervalSinceReferenceDate];
        [v11 setLastDatePlayed:?];
      }

      if (+[PFClientUtil isRunningOnHomepod])
      {
        v42 = [(MTPlayerController *)self compositeManifest];
        v43 = [v42 networkUPPEnabled];

        if (v43)
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
            v51 = [(MTPlayerController *)self playbackPositionController];
            v52 = [v12 episodeStoreId];
            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_100137688;
            v55[3] = &unk_1004D8C08;
            v56 = v12;
            [v51 updatePlaybackPositionWithEpisodeStoreId:v52 completed:0 position:v17 account:v55 completion:a5];

            [(MTPlayerController *)self setLastPlaybackPositionSaveTime:CFAbsoluteTimeGetCurrent()];
          }
        }
      }

      platformSyncPlayheadChangeObserverBlock = self->_platformSyncPlayheadChangeObserverBlock;
      if (!platformSyncPlayheadChangeObserverBlock)
      {
        goto LABEL_47;
      }

      v21 = [v11 uuid];
      platformSyncPlayheadChangeObserverBlock[2](platformSyncPlayheadChangeObserverBlock, v21, v13);
LABEL_46:

      goto LABEL_47;
    }

    v18 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 title];
      *buf = 138412802;
      v61 = v19;
      v62 = 2048;
      v63 = a5;
      v64 = 2048;
      v65 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Marking episode %@ as played with elapsed time %f and endOfTrack time %f", buf, 0x20u);
    }

    v20 = [NSMutableDictionary dictionaryWithCapacity:1];
    v21 = v20;
    if (v12)
    {
      [v20 setObject:v12 forKey:@"MTPlayerControllerEpisodeKey"];
    }

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 postNotificationName:@"MTPlayerControllerNotification_EpisodeMarkedAsPlayed" object:self userInfo:v21];

    [v11 setPlayhead:0.0];
    [v12 setPlayhead:0.0];
    v23 = [v12 contentItem];
    [v23 setElapsedTime:0.0 playbackRate:0.0];

    if (([v12 enqueuedByAnotherUser] & 1) == 0)
    {
      if (v11 && (+[PFClientUtil isRunningOnHomepod]& 1) == 0)
      {
        [v11 setPlayed:1 manually:0 source:9];
        v26 = [v11 podcast];
        [v26 updateCursorPosition:0];
      }

      else
      {
        if (!+[PFClientUtil isRunningOnHomepod])
        {
          goto LABEL_27;
        }

        v24 = [(MTPlayerController *)self compositeManifest];
        v25 = [v24 networkUPPEnabled];

        if (!v25)
        {
          goto LABEL_27;
        }

        v26 = [(MTPlayerController *)self playbackPositionController];
        [v26 updatePlaybackPositionWithEpisodeStoreId:objc_msgSend(v12 completed:"episodeStoreId") position:1 account:v17 completion:{&stru_1004DD818, 0.0}];
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

- (void)beginObservingTranscriptIdentifierChangesForCurrentItem:(id)a3
{
  v4 = a3;
  [(MTPropertyChangeQueryObserver *)self->_transcriptIdentifierObserver stop];
  v5 = [v4 episodeUuid];
  if ([v5 length])
  {
    v6 = [v4 isPlaceholder];

    if ((v6 & 1) == 0)
    {
      v7 = [MTPropertyChangeQueryObserver alloc];
      v8 = kMTEpisodeEntityName;
      v9 = [v4 episodeUuid];
      v10 = [MTEpisode predicateForEpisodeUuid:v9];
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
      v17 = v4;
      v15 = [(MTPropertyChangeQueryObserver *)v14 addResultsChangedHandler:v16];
      [(MTPropertyChangeQueryObserver *)self->_transcriptIdentifierObserver startObserving];
    }
  }

  else
  {
  }
}

- (void)player:(id)a3 willStopWithReason:(unint64_t)a4 initiator:(unint64_t)a5
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
  v12 = [v11 stopType];

  if (v12)
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
    [(MTPlayerController *)self reportStopReason:a4 withInitiator:a5];
  }
}

- (void)player:(id)a3 didStopWithReason:(unint64_t)a4 initiator:(unint64_t)a5
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
  v10 = [v9 stopType];

  if (v10)
  {
    v11 = [(MTPlayerController *)self player];
    [v11 currentTime];
    [(MTPlayerController *)self recordMTPlayerMetricsForCurrentItemWithCurrentTime:?];
  }

  else
  {
    v11 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Playback stop was already recorded, skipping reporting", &v12, 2u);
    }
  }
}

- (void)player:(id)a3 failedToStopWithReason:(unint64_t)a4 initiator:(unint64_t)a5
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

  v5 = [(MTPlayerController *)self player];
  [v5 currentTime];
  [(MTPlayerController *)self setMetricsPlayStartPosition:?];

  [(MTPlayerController *)self _recordMetricsForItemDidChange];
  v6 = [(MTPlayerController *)self currentItem];
  [(MTPlayerController *)self beginObservingTranscriptIdentifierChangesForCurrentItem:v6];

  [(MTPlayerController *)self setHasReportedThisEpisode:0];
}

- (void)playerHeadWillChange:(id)a3
{
  v18 = a3;
  v4 = [v18 userInfo];
  v5 = [v4 objectForKey:IMAVPlayerNotificationKey_FromMediaRemote];
  v6 = [v5 BOOLValue];

  v7 = [(MTPlayerController *)self player];
  LODWORD(v5) = [v7 isPlaybackActive];

  if (v5 && v6)
  {
    v8 = [v18 userInfo];
    v9 = [v8 objectForKeyedSubscript:IMAVPlayerNotificationKey_NewPlayheadTime];
    [v9 floatValue];
    v11 = v10;

    v12 = [v18 userInfo];
    v13 = [v12 objectForKeyedSubscript:IMAVPlayerNotificationKey_OldPlayheadTime];
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

- (void)updateEpisodeForPlayerUpdateForceSave:(BOOL)a3
{
  v5 = [(MTPlayerController *)self currentItem];
  if (([v5 isPlaceholder] & 1) == 0)
  {
    v6 = [(MTPlayerController *)self isPlayingLocally];
    v7 = [(MTPlayerController *)self isSeekingOrScrubbing];
    [(MTPlayerController *)self currentTime];
    v9 = v8;
    [v5 duration];
    if (v5)
    {
      if ((v7 & 1) == 0)
      {
        v11 = v10;
        if (v6)
        {
          if (![(MTPlayerController *)self hasReportedThisEpisode])
          {
            v12 = [v5 storeReportingParams];

            if (v12)
            {
              [(MTPlayerController *)self setHasReportedThisEpisode:1];
              v13 = +[MTStoreReportingController sharedInstance];
              v14 = [v5 storeReportingParams];
              v15 = [(MTPlayerController *)self userManifest];
              [v13 reportPlaybackFromStore:v14 reason:{objc_msgSend(v15, "playReason")}];
            }
          }
        }

        v16 = [v5 episodeUuid];
        if ([v16 length])
        {
          v17 = +[MTDB sharedInstance];
          v18 = [v17 mainOrPrivateContext];

          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100138430;
          v20[3] = &unk_1004DC850;
          v27 = a3;
          v21 = v18;
          v22 = v5;
          v28 = v6;
          v23 = v16;
          v24 = self;
          v25 = v9;
          v26 = v11;
          v19 = v18;
          [v19 performBlockAndWait:v20];
        }

        else
        {
          [(MTPlayerController *)self updateEpisode:0 andPlayerItem:v5 withElapsedTime:0 andDuration:v9 onMediaItemWillChange:v11];
        }
      }
    }
  }
}

- (void)playbackStateDidChange:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "playbackStateDidChange", buf, 2u);
  }

  if (![(MTPlayerController *)self isPlayingLocally])
  {
    v6 = [(MTPlayerController *)self userManifest];
    v7 = [v6 userActivityContainsPlayhead];

    if (v7)
    {
      [(MTPlayerController *)self _saveActivityForRestoration];
    }

    v8 = +[(MTBaseProcessor *)MTUPPSyncProcessor];
    [v8 playerPaused];

    v9 = [(MTPlayerController *)self currentItem];

    if (v9)
    {
      v10 = [v4 userInfo];
      v11 = [v10 objectForKeyedSubscript:IMAVPlayerNotificationKey_OldPlayheadTime];
      [v11 floatValue];
      v13 = v12;

      v14 = [v4 userInfo];
      v15 = [v14 objectForKeyedSubscript:IMAVPlayerNotificationKey_CurrentPlayheadTime];
      [v15 floatValue];
      v17 = v16;

      v18 = [(MTPlayerController *)self player];
      if ([v18 state] == 2)
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
  v22 = [v21 mainOrPrivateContext];

  v23 = [(MTPlayerController *)self currentItem];
  [(MTPlayerController *)self updateEpisodeForPlayerUpdateForceSave:1];
  v24 = [(MTPlayerController *)self isPlayingLocally];
  if (v23)
  {
    if (v24)
    {
      v25 = [(MTPlayerController *)self player];
      [v25 currentTime];
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
    v30 = v22;
    v28[4] = v30;
    v31 = v23;
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

- (BOOL)shouldPresentNowPlayingForItem:(id)a3 presentationType:(unint64_t)a4
{
  if (a4 == 2)
  {
    return 1;
  }

  if (a4 == 1)
  {
    return [a3 isVideo];
  }

  return 0;
}

- (void)openExternalEpisode:(id)a3
{
  v4 = a3;
  v5 = [(MTPlayerController *)self player];
  v6 = objc_opt_class();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100138BC0;
  v8[3] = &unk_1004D8358;
  v9 = v4;
  v7 = v4;
  [v6 performOnMainQueue:v8];
}

- (BOOL)playWithReason:(unint64_t)a3 interruptEvent:(BOOL)a4
{
  v4 = a4;
  v6 = [MTPlaybackContext contextWithReason:a3];
  [v6 setPresentationType:0];
  [v6 setInterruptEvent:v4];
  LOBYTE(v4) = [(MTPlayerController *)self playWithContext:v6];

  return v4;
}

- (BOOL)playWithContext:(id)a3
{
  v4 = a3;
  v5 = [(MTPlayerController *)self player];
  v6 = [v5 play];

  [(MTPlayerController *)self _performAfterPlay:v4 playbackStarted:v6];
  return v6;
}

- (void)stopWithReason:(unint64_t)a3 initiator:(unint64_t)a4
{
  v6 = [(MTPlayerController *)self player];
  [v6 stopWithReason:a3 initiator:a4];
}

- (void)playWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTPlayerController *)self player];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100138E4C;
  v11[3] = &unk_1004DD868;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 play:v11 interruptionEvent:{objc_msgSend(v10, "interruptEvent")}];
}

- (void)_performAfterPlay:(id)a3 playbackStarted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 source];
  v8 = [(MTPlayerController *)self userManifest];
  v17[0] = @"interactive";
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isInteractive]);
  v17[1] = @"play_source";
  v18[0] = v9;
  v10 = [MTStoreReportingController reportingStringForPlayReason:v7];
  v18[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [IMMetrics recordUserAction:@"play" dataSource:v8 withData:v11];

  v12 = +[_TtC8ShelfKit15MetricsActivity shared];
  [v12 setPlayReason:v7];

  if (v4)
  {
    v13 = [(MTPlayerController *)self currentItem];
    v14 = -[MTPlayerController shouldPresentNowPlayingForItem:presentationType:](self, "shouldPresentNowPlayingForItem:presentationType:", v13, [v6 presentationType]);

    if (v14)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1001390BC;
      v15[3] = &unk_1004D8798;
      v15[4] = self;
      v16 = v6;
      [IMAVPlayer performOnMainQueue:v15];
    }
  }
}

- (void)playItemAtIndex:(unint64_t)a3
{
  v4 = [(MTPlayerController *)self compositeManifest];
  [v4 setCurrentIndex:a3];
}

- (BOOL)pauseLocalPlayerWithInitiator:(unint64_t)a3
{
  v4 = [(MTPlayerController *)self player];
  LOBYTE(a3) = [v4 pauseWithInitiator:a3];

  return a3;
}

- (void)pauseLocalPlayer
{
  v2 = [(MTPlayerController *)self player];
  [v2 pause];
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

- (void)seekToTime:(double)a3
{
  if ([(MTPlayerController *)self isPlayerTargetLocal])
  {
    v7 = [(MTPlayerController *)self player];
    [v7 setCurrentTime:a3];
  }

  else
  {
    v8 = kMRMediaRemoteOptionPlaybackPosition;
    v5 = [NSNumber numberWithDouble:a3];
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

    [(MTPlayerController *)self _performMediaRemoteCommand:24 options:v6];
  }
}

- (void)pausePlayerTargetWithInitiator:(unint64_t)a3
{
  if ([(MTPlayerController *)self isPlayerTargetLocal])
  {
    v5 = [(MTPlayerController *)self player];
    [v5 pauseWithInitiator:a3];
  }

  else
  {

    [(MTPlayerController *)self _performMediaRemoteCommand:1];
  }
}

- (void)playLocalPlayer
{
  v2 = [(MTPlayerController *)self player];
  [v2 play];
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
  v2 = [(MTPlayerController *)self player];
  [v2 stop];
}

- (void)stopLocalPlayerWithReason:(unint64_t)a3 initiator:(unint64_t)a4
{
  v6 = [(MTPlayerController *)self player];
  [v6 stopWithReason:a3 initiator:a4];
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

- (void)stopPlayerTargetWithReason:(unint64_t)a3 initiator:(unint64_t)a4
{
  [(MTPlayerController *)self reportStopReason:a3 withInitiator:a4];

  [(MTPlayerController *)self stopLocalPlayer];
}

- (BOOL)isPlayingLocally
{
  v2 = [(MTPlayerController *)self player];
  v3 = [v2 isPlaybackRequested];

  return v3;
}

- (double)currentTime
{
  v2 = [(MTPlayerController *)self player];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (void)setCurrentTime:(double)a3
{
  v4 = [(MTPlayerController *)self player];
  [v4 setCurrentTime:a3];
}

- (BOOL)isSeekingOrScrubbing
{
  v2 = [(MTPlayerController *)self player];
  v3 = [v2 scrubbing];

  return v3;
}

- (void)resolveActivePlayerPathWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MTPlayerController *)self playerPath];
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100139818;
    v8[3] = &unk_1004DD890;
    v9 = v4;
    [v5 resolveWithCompletion:v8];
    v6 = v9;
LABEL_5:

    goto LABEL_6;
  }

  if (v4)
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = @"No PlayerPath to resolve.";
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v6 = [NSError errorWithDomain:@"MTPlayerControllerErrorDomain" code:-1 userInfo:v7];

    (*(v4 + 2))(v4, 0, v6);
    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)isPlayerTargetLocal
{
  v2 = [(MTPlayerController *)self playerPath];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 route];
    v5 = [v4 isDeviceRoute];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)currentItem
{
  v2 = [(MTPlayerController *)self player];
  v3 = [v2 currentItem];

  return v3;
}

- (id)playingEpisodeUuid
{
  v2 = [(MTPlayerController *)self currentItem];
  v3 = [v2 episodeUuid];

  return v3;
}

- (BOOL)isPlayingEpisodeUuid:(id)a3
{
  v4 = a3;
  v5 = [(MTPlayerController *)self playingEpisodeUuid];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (void)presentNowPlayingAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = +[MTApplication sharedApplication];
  v4 = [v6 delegate];
  v5 = [v4 appController];
  [v5 presentNowPlayingAnimated:v3];
}

- (void)setManifest:(id)a3 startPlayback:(BOOL)a4 forceLocal:(BOOL)a5 context:(id)a6 completion:(id)a7
{
  v9 = a5;
  v10 = a4;
  v15 = a3;
  v12 = a7;
  v13 = [MTSetPlaybackQueueRequest requestWithContext:a6];
  [v13 setManifest:v15];
  if (v10)
  {
    v14 = [v15 isPlaceholder] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  [v13 setStartPlayback:v14];
  [v13 setSuppressMetrics:{objc_msgSend(v15, "isPlaceholder")}];
  [v13 setPlaybackDestination:!v9];
  [v13 setCompletion:v12];

  [(MTPlayerController *)self setPlaybackQueue:v13];
}

- (void)setManifestAsDryRun:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [MTPlaybackContext contextWithReason:a4];
  v10 = [MTSetPlaybackQueueRequest requestWithContext:v11];
  [v10 setManifest:v9];

  [v10 setDryRun:1];
  [v10 setStartPlayback:1];
  [v10 setCompletion:v8];

  [(MTPlayerController *)self setPlaybackQueue:v10];
}

- (void)setManifest:(id)a3 startPlayback:(BOOL)a4 destination:(unint64_t)a5 context:(id)a6 completion:(id)a7
{
  v9 = a4;
  v12 = a7;
  v13 = a3;
  v14 = [MTSetPlaybackQueueRequest requestWithContext:a6];
  [v14 setManifest:v13];

  [v14 setStartPlayback:v9];
  [v14 setPlaybackDestination:a5];
  [v14 setCompletion:v12];

  [(MTPlayerController *)self setPlaybackQueue:v14];
}

- (void)setPlaybackQueue:(id)a3
{
  v4 = a3;
  if ([v4 validate])
  {
    v5 = [v4 manifest];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100139E14;
    v6[3] = &unk_1004D8798;
    v7 = v4;
    v8 = self;
    [v5 load:v6];
  }

  else
  {
    [v4 finishWithStatus:3];
  }
}

- (void)setManifest:(id)a3 startPlayback:(BOOL)a4 forceLocal:(BOOL)a5 reason:(unint64_t)a6 interactive:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  v10 = a5;
  v11 = a4;
  v14 = a8;
  v15 = a3;
  v16 = [MTPlaybackContext contextWithReason:a6];
  [v16 setInteractive:v8];
  [(MTPlayerController *)self setManifest:v15 startPlayback:v11 forceLocal:v10 context:v16 completion:v14];
}

- (void)playManifest:(id)a3 reason:(unint64_t)a4 interactive:(BOOL)a5 presentationType:(unint64_t)a6 completion:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a3;
  v14 = [MTPlaybackContext contextWithReason:a4];
  [v14 setPresentationType:a6];
  [v14 setInteractive:v8];
  [(MTPlayerController *)self setManifest:v13 startPlayback:1 context:v14 completion:v12];
}

- (void)playManifest:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v7 = [MTPlaybackContext contextWithReason:a4];
  [(MTPlayerController *)self setManifest:v6 startPlayback:1 context:v7 completion:0];
}

- (void)_setPlaybackQueue:(id)a3
{
  v4 = a3;
  if ([v4 playbackDestination] == 1 && !-[MTPlayerController isPlayerTargetLocal](self, "isPlayerTargetLocal"))
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10013A2D4;
    v5[3] = &unk_1004DAA00;
    v6 = v4;
    v7 = self;
    [MTRemoteSetPlaybackQueueUtil setRemotePlaybackQueue:v6 completion:v5];
  }

  else
  {
    [(MTPlayerController *)self _setLocalPlaybackQueue:v4];
  }
}

- (void)_setLocalPlaybackQueue:(id)a3
{
  v4 = a3;
  kdebug_trace();
  objc_initWeak(&location, self);
  v5 = [v4 manifest];
  v6 = [v4 context];
  v7 = [v4 startPlayback];
  [(MTPlayerController *)self setUserManifest:v5];
  v8 = [[MTCompositeManifest alloc] initWithUpNextManifest:self->_upNextManifest userManifest:v5 loadQueue:self->_loadQueue];
  [(MTPlayerController *)self setCompositeManifest:v8];

  v9 = [v6 source];
  v10 = [(MTPlayerController *)self compositeManifest];
  [v10 setPlayReason:v9];

  v11 = [(MTPlayerController *)self userManifest];
  [v11 setPlayReason:v9];

  v12 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v4 startPlayback];
    *buf = 67109376;
    v28 = v13;
    v29 = 2048;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Performing local SetPlaybackQueue with startPlaying %d reason %lu", buf, 0x12u);
  }

  v14 = [(MTPlayerController *)self player];
  v15 = [(MTPlayerController *)self compositeManifest];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013A674;
  v19[3] = &unk_1004DD8E0;
  v16 = v4;
  v20 = v16;
  v17 = v5;
  v21 = v17;
  v18 = v6;
  v25 = v7;
  v24[1] = v9;
  v22 = v18;
  v23 = self;
  objc_copyWeak(v24, &location);
  [v14 setManifest:v15 completion:v19];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (id)_currentEpisodeForManifest:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100008BBC;
  v20 = sub_10003B5B4;
  v4 = [v3 currentItem];
  v21 = [v4 episode];

  if (!v17[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 initialEpisodeUuid];
      v6 = +[MTDB sharedInstance];
      v7 = [v6 mainOrPrivateContext];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10013AC84;
      v12[3] = &unk_1004D9040;
      v15 = &v16;
      v8 = v7;
      v13 = v8;
      v9 = v5;
      v14 = v9;
      [v8 performBlockAndWait:v12];
    }
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (int64_t)_validatePlaybackRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 manifest];
  v6 = [v4 context];
  v7 = [v6 isInteractive];

  if ([v5 count])
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 hasOnlyPaidEpisodesWithoutSubscription])
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
    if ([v5 loadStatus] == 2)
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

    v11 = [v5 currentItem];
    if ([v11 isExplicit])
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

  if (((v8 == 4) & v7) == 1)
  {
    v9 = [(MTPlayerController *)self player];
    [objc_opt_class() performOnMainQueue:&stru_1004DD900];

    v10 = 0;
    v8 = 4;
    goto LABEL_19;
  }

LABEL_18:
  v10 = 1;
LABEL_19:
  v13 = [(MTPlayerController *)self _currentEpisodeForManifest:v5];
  if (v13)
  {
    v14 = [v5 currentItem];
    if (v14)
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
    v18 = [v13 managedObjectContext];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10013B364;
    v36[3] = &unk_1004D91F8;
    v38 = &v40;
    v37 = v13;
    p_buf = &buf;
    [v18 performBlockAndWait:v36];

    v19 = v41[3];
    if (!v19)
    {
      if (v8 == 1)
      {
        v20 = [v5 objectAtIndex:0];
        v21 = [v20 priceType];
        if (MTEpisodePriceTypeFromPersistentString() == 2)
        {
          v22 = [v20 paidSubscriptionActive];

          if (v22)
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

  if ((v7 & v23) == 1)
  {
    v24 = [(MTPlayerController *)self player];
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
        v27 = [v13 reasonForNotPlayable];
        *v44 = 134217984;
        v45 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Playback request failed with status notPlayable, MTEpisodeUnavailableReason %lu", v44, 0xCu);
      }

      v8 = 5;
    }
  }

LABEL_54:
  v28 = +[MTAccountController sharedInstance];
  v29 = [v28 activeDsid];

  v30 = [v5 currentItem];
  v31 = [v30 priceType];
  v32 = MTEpisodePriceTypeFromPersistentString();

  if ((v32 & 0xFFFFFFFFFFFFFFFELL) == 2 && !v29)
  {
    v33 = +[MTAccountController sharedInstance];
    [v33 promptAccountAuthenticationWithDebugReason:@"MTPlayerController authentication request" forced:1];

    v8 = 10;
  }

  if (v41[3] == 2 && ([v4 startPlayback] & 1) == 0)
  {
    v8 = 1;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v40, 8);

  return v8;
}

- (BOOL)_openExternalItemIfNeededForManifest:(id)a3
{
  v4 = [(MTPlayerController *)self _currentEpisodeForManifest:a3];
  v5 = [(MTPlayerController *)self _shouldOpenExternalItemForEpisode:v4];
  if (v5)
  {
    [(MTPlayerController *)self openExternalEpisode:v4];
  }

  return v5;
}

- (BOOL)_shouldOpenExternalItemForEpisode:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [v3 managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013B5A0;
  v7[3] = &unk_1004D9068;
  v9 = &v10;
  v5 = v3;
  v8 = v5;
  [v4 performBlockAndWait:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (BOOL)_promptToClearUpNextIfNeededForRequest:(id)a3
{
  v4 = a3;
  v5 = [(MTPlayerController *)self upNextController];
  v6 = [v5 count];

  v7 = [(MTPlayerController *)self upNextController];
  v8 = [v7 upNextOffset];

  if ([v4 playbackDestination])
  {
    v9 = [(MTPlayerController *)self isPlayerTargetLocal];
  }

  else
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    goto LABEL_9;
  }

  v10 = [v4 context];
  if (([v10 isInteractive] & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = [v4 context];
  if ([v11 upNextQueueIntent])
  {

LABEL_8:
    goto LABEL_9;
  }

  v14 = ([v4 playbackDestination] == 1) & v9;

  if (v14 == 1)
  {
    v15 = v6 - v8;
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"CLEAR_QUEUE_PROMPT_TITLE" value:&stru_1004F3018 table:0];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"CLEAR_QUEUE_PROMPT_MESSAGE" value:&stru_1004F3018 table:0];
    v20 = [NSString localizedStringWithFormat:v19, v15];

    v21 = [(MTPlayerController *)self player];
    v22 = objc_opt_class();
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10013B82C;
    v25[3] = &unk_1004D8DA8;
    v25[4] = self;
    v26 = v4;
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

- (void)_showGenericPromptToClearUpNextWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLEAR_QUEUE_PROMPT_TITLE" value:&stru_1004F3018 table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CLEAR_QUEUE_PROMPT_MESSAGE" value:&stru_1004F3018 table:0];
  v9 = [NSString localizedStringWithFormat:v8, 1];

  v10 = [(MTPlayerController *)self player];
  v11 = objc_opt_class();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013BA3C;
  v15[3] = &unk_1004D8DA8;
  v15[4] = self;
  v16 = v4;
  v17 = v6;
  v18 = v9;
  v12 = v9;
  v13 = v6;
  v14 = v4;
  [v11 performOnMainQueue:v15];
}

- (id)_alertControllerForClearingOrKeepingUpNextWithRequest:(id)a3
{
  v4 = a3;
  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"QUEUE_KEEP_CONFIRM" value:&stru_1004F3018 table:0];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10013BD8C;
  v24[3] = &unk_1004D9E58;
  v8 = v4;
  v25 = v8;
  v26 = self;
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
  v23 = self;
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

- (void)clearPlayerManifestWithCompletion:(id)a3
{
  v4 = a3;
  self->_shouldFindSomethingToPlay = 0;
  v5 = [(MTPlayerController *)self player];
  [v5 setManifest:0 completion:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013BFF8;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MTPlayerController *)self _restoreManifestIfNeededWithCompletion:v7 useEmptyManifest:1];
}

- (void)restorePlayerManifestWithCompletion:(id)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10013C118;
  v10 = &unk_1004D8520;
  v11 = self;
  v12 = a3;
  v4 = v12;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, &v7);
  v6 = [(MTPlayerController *)self restorationQueue:v7];
  dispatch_async(v6, v5);
}

- (void)_onQueueRestorePlayerManifestWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MTPlayerController *)self restorationCompletions];
    v6 = [v4 copy];
    v7 = objc_retainBlock(v6);
    [v5 addObject:v7];

    v8 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(MTPlayerController *)self restorationCompletions];
      *buf = 134217984;
      v14 = [v9 count];
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
  v3 = [(MTPlayerController *)self restorationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C698;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_restoreManifestIfNeededWithCompletion:(id)a3 useEmptyManifest:(BOOL)a4
{
  v6 = a3;
  v7 = [(MTPlayerController *)self player];
  v8 = [v7 manifest];

  if (v8)
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    if (a4 || ([MTPlaybackQueueFactory playMyPodcastsWithOrder:0], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [[MTItemListManifest alloc] initWithItems:&__NSArray0__struct];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013CA7C;
    v10[3] = &unk_1004D9870;
    v11 = v6;
    [(MTPlayerController *)self setManifest:v9 startPlayback:0 forceLocal:1 reason:1 interactive:0 completion:v10];
  }
}

- (void)restoreFromUserActivity:(id)a3 startPlayback:(BOOL)a4 reason:(unint64_t)a5 interactive:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a7;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10013CC1C;
  v16[3] = &unk_1004DD978;
  objc_copyWeak(v19, &location);
  v14 = v12;
  v20 = a4;
  v17 = v14;
  v19[1] = a5;
  v21 = a6;
  v15 = v13;
  v18 = v15;
  [MTPlayerManifest restoreActivity:v14 completion:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)restoreFromUserActivity:(id)a3 withManifest:(id)a4 startPlayback:(BOOL)a5 reason:(unint64_t)a6 interactive:(BOOL)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013CDEC;
  v20[3] = &unk_1004DDA08;
  v17 = v15;
  v21 = v17;
  v18 = v16;
  v23 = v18;
  v24[1] = a6;
  v19 = v14;
  v22 = v19;
  objc_copyWeak(v24, &location);
  v25 = a5;
  v26 = a7;
  [IMAVPlayer performOnMainQueue:v20];
  objc_destroyWeak(v24);

  objc_destroyWeak(&location);
}

- (void)setCurrentActivity:(id)a3
{
  objc_storeStrong(&self->_currentActivity, a3);
  [(MTPlayerController *)self _updateCurrentActivityForPlayState];

  [(MTPlayerController *)self _saveActivityForRestoration];
}

- (void)_updateCurrentActivityForPlayState
{
  v3 = [(MTPlayerController *)self player];
  v4 = [v3 isPlaybackRequested];

  if (v4)
  {

    [(MTPlayerController *)self _currentActivityBecomeCurrent];
  }
}

- (void)_currentActivityBecomeCurrent
{
  v3 = [(MTPlayerController *)self currentActivity];

  if (v3)
  {
    v4 = [(MTPlayerController *)self currentActivity];
    [v4 setDelegate:self];

    v5 = [(MTPlayerController *)self currentActivity];
    [v5 setSupportsContinuationStreams:1];

    v6 = [(MTPlayerController *)self currentActivity];
    [v6 becomeCurrent];
  }
}

- (void)_saveActivityForRestoration
{
  v3 = [(MTPlayerController *)self currentActivity];
  v4 = [NSMutableDictionary dictionaryWithCapacity:5];
  v5 = [v3 activityType];
  [v4 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [v3 title];
  [v4 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [v3 userInfo];
  [v4 setObject:v7 forKeyedSubscript:@"userInfo"];

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 _suggestedActionType]);
  [v4 setObject:v8 forKeyedSubscript:@"suggestedActionType"];

  v9 = [v3 _options];
  [v4 setObject:v9 forKeyedSubscript:@"options"];

  v10 = [(MTPlayerController *)self restorationQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013D344;
  v12[3] = &unk_1004D8798;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  dispatch_async(v10, v12);
}

+ (id)_loadActivityForRestoration
{
  v2 = [objc_opt_class() _activityRestorationPath];
  v3 = [NSData dataWithContentsOfURL:v2];
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

- (void)_performMediaRemoteCommand:(unsigned int)a3 options:(id)a4
{
  v4 = *&a3;
  v6 = a4;
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
    v8 = v6;
    [(MTPlayerController *)self resolveActivePlayerPathWithCompletion:v7];
  }
}

- (void)_sendMediaRemoteCommand:(unsigned int)a3 toPlayer:(void *)a4 options:(id)a5
{
  v5 = a5;
  v9 = kMRMediaRemoteOptionDirectUserInteraction;
  v10 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [v6 mutableCopy];

  if (v5)
  {
    [v7 addEntriesFromDictionary:v5];
  }

  v8 = dispatch_get_global_queue(0, 0);
  MRMediaRemoteSendCommandToPlayer();
}

- (void)recordMTPlayerMetricsForCurrentItemWithCurrentTime:(double)a3
{
  if (+[MTPrivacyUtil allowReporting])
  {
    v5 = [(MTPlayerController *)self currentItem];
    v6 = v5;
    if (!v5 || ![v5 podcastStoreId] || (-[MTPlayerController metricsPlayStartPosition](self, "metricsPlayStartPosition"), v8 = a3 - v7, v8 < 0.5))
    {
LABEL_40:

      return;
    }

    v9 = +[MTReachability sharedInstance];
    v10 = [v9 isReachable];

    v11 = +[MTAccountController sharedInstance];
    v12 = [v11 activeAccount];
    v13 = v12 != 0;

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
    v15 = [(MTPlayerController *)self player];
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 playbackSpeed]);
    v76[4] = v16;
    v75[5] = @"contentType";
    v17 = [v6 priceType];
    v18 = v17;
    v19 = &stru_1004F3018;
    if (v17)
    {
      v19 = v17;
    }

    v76[5] = v19;
    v75[6] = @"isOffline";
    v20 = [NSNumber numberWithBool:v10 ^ 1];
    v76[6] = v20;
    v75[7] = @"isSignedIn";
    v21 = [NSNumber numberWithBool:v13];
    v76[7] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:8];
    v23 = [v22 mutableCopy];

    v24 = +[_TtC8ShelfKit15MetricsActivity shared];
    v25 = [v24 playContext];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_1004F3018;
    }

    [v23 setObject:v27 forKeyedSubscript:@"playContext"];

    v28 = +[_TtC8ShelfKit15MetricsActivity shared];
    v29 = [v28 stopContext];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = &stru_1004F3018;
    }

    [v23 setObject:v31 forKeyedSubscript:@"stopReason"];

    v32 = +[_TtC8ShelfKit15MetricsActivity shared];
    v33 = [v32 stopType];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
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

    v39 = [(MTPlayerController *)self highlightsProvider];
    if (([v39 isSharedContentWithContentAdamId:{objc_msgSend(v6, "episodeStoreId")}] & 1) == 0)
    {
      v40 = [(MTPlayerController *)self highlightsProvider];
      if (![v40 isSharedContentWithContentAdamId:{objc_msgSend(v6, "podcastStoreId")}])
      {
        v46 = [(MTPlayerController *)self highlightsProvider];
        v47 = [v46 isSharedContentWithContentAdamId:{objc_msgSend(v6, "channelStoreId")}];

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
      v53 = [v6 title];
      *buf = 138413314;
      v66 = v50;
      v67 = 2112;
      v68 = v48;
      v69 = 2048;
      v70 = v52;
      v71 = 2048;
      v72 = v8;
      v73 = 2112;
      v74 = v53;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "canary: %@, playStartTime: %@, playStartPosition: %f, playDuration: %f, item: %@", buf, 0x34u);
    }

    v54 = [[MTEpisodeMetricDataSource alloc] initWithPlayerItem:v6];
    v55 = +[_TtC18PodcastsFoundation26AnalyticsIdentifierManager sharedInstance];
    v56 = [v55 identifierPromise];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10013E3F0;
    v61[3] = &unk_1004D89D0;
    v62 = v23;
    v63 = v54;
    v57 = v54;
    v58 = v23;
    [v56 addFinishBlock:v61];

    goto LABEL_40;
  }
}

- (void)recordMetricsForCurrentItem
{
  v3 = [(MTPlayerController *)self currentItem];
  v4 = v3;
  if (v3 && ([v3 isPlaceholder] & 1) == 0)
  {
    v5 = [(MTPlayerController *)self player];
    v6 = [v5 playerItem];

    v7 = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
    objc_sync_enter(v7);
    v8 = [v4 url];
    v9 = [(MTPlayerController *)self lastRecordedItemURL];
    v10 = [v9 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
      [v11 removeAllObjects];

      [(MTPlayerController *)self setLastRecordedItemURL:v8];
    }

    objc_sync_exit(v7);
    if (v6)
    {
      v12 = +[MTDB sharedInstance];
      v13 = [v12 privateQueueContext];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10013E714;
      v15[3] = &unk_1004D8DA8;
      v16 = v6;
      v17 = v13;
      v18 = v4;
      v19 = self;
      v14 = v13;
      [v14 performBlock:v15];
    }
  }
}

- (void)recordMetricsEventForAccessLog:(id)a3 playerItem:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (([v6 isPlaceholder] & 1) == 0)
  {
    v7 = [[MTEpisodeMetricDataSource alloc] initWithPlayerItem:v6];
    v8 = [MTPlayMetricsEvent eventWithAccessLog:v13 dataSource:v7];
    v9 = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
    objc_sync_enter(v9);
    v10 = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
    v11 = [v10 containsObject:v8];

    if ((v11 & 1) == 0)
    {
      [v8 record];
      v12 = [(MTPlayerController *)self recordedPlayEventsForCurrentItem];
      [v12 addObject:v8];
    }

    objc_sync_exit(v9);
  }
}

- (void)recordMetricsEventForErrorLog:(id)a3 withEpisode:(id)a4
{
  v5 = a3;
  v30[0] = @"date";
  v6 = a4;
  v7 = [v5 date];
  objc_opt_class();
  objc_opt_class();
  v29 = v7;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v27 = [v5 date];
    [v27 timeIntervalSinceReferenceDate];
    v9 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v9 = &off_100501120;
  }

  v28 = v9;
  v31[0] = v9;
  v30[1] = @"uri";
  v10 = [v5 URI];
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
  v13 = [v5 serverAddress];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1004F3018;
  }

  v31[2] = v15;
  v30[3] = @"playback_session_id";
  v16 = [v5 playbackSessionID];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1004F3018;
  }

  v31[3] = v18;
  v30[4] = @"error_status_code";
  v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 errorStatusCode]);
  v31[4] = v19;
  v30[5] = @"error_domain";
  v20 = [v5 errorDomain];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_1004F3018;
  }

  v31[5] = v22;
  v30[6] = @"error_comment";
  v23 = [v5 errorComment];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1004F3018;
  }

  v31[6] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:7];
  [IMMetrics recordUserAction:@"play_error" dataSource:v6 withData:v26];

  if (isKindOfClass)
  {
  }
}

- (void)_recordMetricsForItemDidChange
{
  if (+[MTPrivacyUtil allowReporting])
  {
    v3 = [(MTPlayerController *)self currentItem];
    v4 = v3;
    if (v3 && ([v3 isPlaceholder] & 1) == 0)
    {
      v5 = [(MTPlayerController *)self compositeManifest];
      v6 = [v5 metricsContentIdentifier];

      if (v6)
      {
        v7 = +[MTDB sharedInstance];
        v8 = [v7 privateQueueContext];

        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_10013EDF8;
        v10[3] = &unk_1004D8DA8;
        v11 = v8;
        v12 = v4;
        v13 = self;
        v14 = v6;
        v9 = v8;
        [v9 performBlock:v10];
      }
    }
  }
}

- (void)userActivity:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5
{
  v7 = a5;
  [(MTPlayerController *)self reportStopReason:6 withInitiator:2];
  v6 = [(MTPlayerController *)self player];
  [v6 pause];

  [v7 close];
}

- (void)reportStopReason:(unint64_t)a3 withInitiator:(unint64_t)a4
{
  v6 = +[_TtC8ShelfKit15MetricsActivity shared];
  [v6 setStopReason:a3];

  v7 = +[_TtC8ShelfKit15MetricsActivity shared];
  [v7 setInitiator:a4];
}

- (void)updateUPPEpisodeUuid:(id)a3 bookmarkTime:(double)a4
{
  v9 = a3;
  v6 = [(MTPlayerController *)self currentItem];
  if (v6)
  {
    if (![(MTPlayerController *)self isPlayingLocally])
    {
      v7 = [v6 episodeUuid];
      v8 = [v9 isEqualToString:v7];

      if (v8)
      {
        [(MTPlayerController *)self setCurrentTime:a4];
      }
    }
  }
}

- (void)setArtworkProvider:(id)a3
{
  v4 = a3;
  v5 = [(MTPlayerController *)self playbackQueueController];
  [v5 setArtworkProvider:v4];
}

- (MTPlayerFailureDialogProxy)dialogProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogProxy);

  return WeakRetained;
}

@end