@interface ANTrackPlayer
- (ANTrackPlayer)initWithOptions:(unint64_t)a3 endpointUUID:(id)a4;
- (ANTrackPlayerDelegate)delegate;
- (BOOL)_add:(id)a3 announcementID:(id)a4 trackType:(int64_t)a5;
- (BOOL)_addURL:(id)a3 announcementID:(id)a4 trackType:(int64_t)a5;
- (BOOL)_insertAudioBetween;
- (BOOL)add:(id)a3 announcementID:(id)a4;
- (NSString)activelyPlayingAnnouncementID;
- (OS_dispatch_queue)delegateQueue;
- (id)_playerInfoForAVPlayerItem:(id)a3;
- (id)_stringForPlayerItemStatus:(int64_t)a3;
- (id)_stringForPlayerStatus:(int64_t)a3;
- (id)_stringForTimeControlStatus:(int64_t)a3;
- (id)prepareToPlay;
- (int)numberActiveTracks;
- (void)_addObserverForPlayer:(id)a3;
- (void)_callDelegateWithBlock:(id)a3;
- (void)_configureAudioSession;
- (void)_deregisterForNotificationsWithAudioSession:(id)a3;
- (void)_handleInterruptionEndedAndShouldResume:(BOOL)a3;
- (void)_handleReadyToPlayWithCompletionHandler:(id)a3;
- (void)_playWithCompletionHandler:(id)a3;
- (void)_registerForNotificationsWithAudioSession:(id)a3;
- (void)_removeItemObserverForPlayer:(id)a3;
- (void)_removeObserverForPlayer:(id)a3;
- (void)_resumePlaybackAfterInterruptionAtTimeInterval:(double)a3;
- (void)_stopAndUpdatePlaybackState:(unint64_t)a3;
- (void)_stopPlaybackAndFailWithItem:(id)a3 error:(id)a4;
- (void)audioSessionInterruptionHandler:(id)a3;
- (void)audioSessionMediaServicesLostHandler:(id)a3;
- (void)audioSessionMediaServicesResetHandler:(id)a3;
- (void)dealloc;
- (void)end;
- (void)nextInternalSync;
- (void)nextWithCompletionHandler:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playWithCompletionHandler:(id)a3;
- (void)playerItemPlayedToEndHandler:(id)a3;
- (void)playerRateChangedHandler:(id)a3;
- (void)previousInternalSync;
- (void)previousWithCompletionHandler:(id)a3;
- (void)setPlaybackState:(unint64_t)a3;
- (void)stopInternalSync;
- (void)stopWithCompletionHandler:(id)a3;
@end

@implementation ANTrackPlayer

- (ANTrackPlayer)initWithOptions:(unint64_t)a3 endpointUUID:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v32.receiver = self;
  v32.super_class = ANTrackPlayer;
  v8 = [(ANTrackPlayer *)&v32 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mainQueue, MEMORY[0x277D85CD0]);
    v10 = objc_opt_new();
    playerItems = v9->_playerItems;
    v9->_playerItems = v10;

    v9->_silenceBetweenEachTrack = 0.1;
    v9->_previousSkipGoesToPreviousTrackDelta = 3.0;
    v9->_options = a3;
    v9->_playbackState = 3;
    v9->_readyToPlay = 0;
    v12 = objc_alloc_init(MEMORY[0x277CE65F8]);
    queuePlayer = v9->_queuePlayer;
    v9->_queuePlayer = v12;

    objc_storeStrong(&v9->_endpointUUID, a4);
    ANLogBuildCategoryName();
    v14 = ANLogWithCategory();
    log = v9->_log;
    v9->_log = v14;

    v16 = [MEMORY[0x277CEABD8] timerWithLabel:@"AudioInterruption" identifier:v7];
    interruptionTimer = v9->_interruptionTimer;
    v9->_interruptionTimer = v16;

    v18 = [MEMORY[0x277CEABD8] timerWithLabel:@"AudioPlayer" identifier:v7];
    playerTimer = v9->_playerTimer;
    v9->_playerTimer = v18;

    v9->_someOtherSidekickSessionAudioIsPlaying = 0;
    v20 = [MEMORY[0x277CB83F8] sharedInstance];
    audioSession = v9->_audioSession;
    v9->_audioSession = v20;

    v22 = [(ANTrackPlayer *)v9 log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v9->_audioSession;
      *buf = 138412290;
      v34 = v23;
      _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "Using Shared Audio Session for local playback: %@", buf, 0xCu);
    }

    [(ANTrackPlayer *)v9 _configureAudioSession];
    v24 = [ANAudioSessionManager alloc];
    v25 = v9->_audioSession;
    mainQueue = v9->_mainQueue;
    v27 = [(ANTrackPlayer *)v9 endpointUUID];
    v28 = [(ANAudioSessionManager *)v24 initWithAudioSession:v25 queue:mainQueue endpointID:v27];
    audioSessionManager = v9->_audioSessionManager;
    v9->_audioSessionManager = v28;

    [(AVQueuePlayer *)v9->_queuePlayer setAudioSession:v9->_audioSession];
    [(ANTrackPlayer *)v9 _registerForNotificationsWithAudioSession:v9->_audioSession];
    [(ANTrackPlayer *)v9 _addObserverForPlayer:v9->_queuePlayer];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  [(ANTrackPlayer *)self _deregisterForNotificationsWithAudioSession:self->_audioSession];
  v3 = [(ANTrackPlayer *)self queuePlayer];
  [(ANTrackPlayer *)self _removeObserverForPlayer:v3];

  v4 = [(ANTrackPlayer *)self queuePlayer];
  [(ANTrackPlayer *)self _removeItemObserverForPlayer:v4];

  v5.receiver = self;
  v5.super_class = ANTrackPlayer;
  [(ANTrackPlayer *)&v5 dealloc];
}

- (void)setPlaybackState:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a3;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Setting Playback State to %lu", buf, 0xCu);
  }

  self->_playbackState = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ANTrackPlayer_setPlaybackState___block_invoke;
  v7[3] = &unk_278C87050;
  v7[4] = self;
  v7[5] = a3;
  [(ANTrackPlayer *)self _callDelegateWithBlock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

void __34__ANTrackPlayer_setPlaybackState___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 activelyPlayingAnnouncementID];
  [v5 trackPlayer:v3 didUpdatePlaybackState:v2 announcementID:v4];
}

- (BOOL)add:(id)a3 announcementID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ANTrackPlayer add:announcementID:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%s: track %@", &v12, 0x16u);
  }

  if ([(ANTrackPlayer *)self _insertAudioBetween])
  {
    v9 = [(ANTrackPlayer *)self _add:v6 announcementID:v7 trackType:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_add:(id)a3 announcementID:(id)a4 trackType:(int64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[ANTrackPlayer _add:announcementID:trackType:]";
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%s: track %@", &v15, 0x16u);
  }

  v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v8];
  v12 = [(ANTrackPlayer *)self _addURL:v11 announcementID:v9 trackType:a5];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_addURL:(id)a3 announcementID:(id)a4 trackType:(int64_t)a5
{
  v8 = MEMORY[0x277CE65B0];
  v9 = a4;
  v10 = [v8 playerItemWithURL:a3];
  v11 = [(ANTrackPlayer *)self queuePlayer];
  [v11 insertItem:v10 afterItem:0];

  [v10 addObserver:self forKeyPath:@"status" options:1 context:0];
  v12 = [[ANTrackPlayerInfo alloc] initWithPlayerItem:v10 announcementID:v9 trackType:a5];

  v13 = [(ANTrackPlayer *)self playerItems];
  [v13 addObject:v12];

  return 1;
}

- (BOOL)_insertAudioBetween
{
  v3 = [(ANTrackPlayer *)self audioFileAtStart];
  v4 = [(ANTrackPlayer *)self playerItems];
  v5 = [v4 count];

  if (!v5)
  {
    v7 = 1;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  v6 = [(ANTrackPlayer *)self audioFileTransition];

  v7 = 2;
  v3 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [(ANTrackPlayer *)self _addURL:v3 announcementID:0 trackType:v7];
LABEL_6:

  return v8;
}

- (id)prepareToPlay
{
  v3 = [(ANTrackPlayer *)self audioSessionManager];
  v6 = 0;
  [v3 activateAudioSessionWithError:&v6];
  v4 = v6;

  if (!v4)
  {
    [(ANTrackPlayer *)self setReadyToPlay:1];
  }

  return v4;
}

- (void)playWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ANTrackPlayer_playWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86A80;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__ANTrackPlayer_playWithCompletionHandler___block_invoke(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained playbackState] == 1 || objc_msgSend(WeakRetained, "playbackState") == 2)
  {
    v3 = [a1[4] log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = [WeakRetained playbackState];
      _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Already playing or interrupted. PlaybackState: %ld", buf, 0xCu);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__ANTrackPlayer_playWithCompletionHandler___block_invoke_26;
    v5[3] = &unk_278C86530;
    v5[4] = WeakRetained;
    v6 = a1[5];
    [WeakRetained _playWithCompletionHandler:v5];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __43__ANTrackPlayer_playWithCompletionHandler___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2 == 0;
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setPlaybackState:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)_playWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  if ([(ANTrackPlayer *)self readyToPlay])
  {
    [(ANTrackPlayer *)self _handleReadyToPlayWithCompletionHandler:v4];
  }

  else
  {
    v6 = [(ANTrackPlayer *)self audioSessionManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__ANTrackPlayer__playWithCompletionHandler___block_invoke;
    v7[3] = &unk_278C86530;
    v7[4] = self;
    v8 = v4;
    [v6 activateAudioSessionWithCompletionHandler:v7];
  }
}

void __44__ANTrackPlayer__playWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__ANTrackPlayer__playWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [v4 setReadyToPlay:1];
    [*(a1 + 32) _handleReadyToPlayWithCompletionHandler:*(a1 + 40)];
  }
}

- (void)_handleReadyToPlayWithCompletionHandler:(id)a3
{
  *&v37[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  if ([(ANTrackPlayer *)self readyToPlay])
  {
    v6 = [(ANTrackPlayer *)self queuePlayer];
    v7 = [v6 error];

    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ANTrackPlayer *)self _handleReadyToPlayWithCompletionHandler:v8];
    }

    v9 = [(ANTrackPlayer *)self queuePlayer];
    v10 = [v9 error];

    if (v10)
    {
      v4[2](v4, v10);
    }

    else
    {
LABEL_8:
      v12 = [(ANTrackPlayer *)self queuePlayer];
      v13 = [v12 status];

      v14 = [(ANTrackPlayer *)self queuePlayer];
      v15 = [v14 currentItem];
      v16 = [v15 status];

      v17 = [(ANTrackPlayer *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(ANTrackPlayer *)self queuePlayer];
        v19 = [v18 currentItem];
        *buf = 138412290;
        *v37 = v19;
        _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "Current Item = %@", buf, 0xCu);
      }

      v20 = [(ANTrackPlayer *)self log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v37[0] = v13 == 1;
        LOWORD(v37[1]) = 1024;
        *(&v37[1] + 2) = v16 == 1;
        _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_DEFAULT, "QueuePlayerReady = %d, PlayerItemReady = %d", buf, 0xEu);
      }

      if (v13 == 1 && v16 == 1)
      {
        v21 = [(ANTrackPlayer *)self playerTimer];
        [v21 cancel];

        [(ANTrackPlayer *)self setPlaybackPending:0];
        [(ANTrackPlayer *)self setHandler:0];
        [(ANTrackPlayer *)self setReadyToPlay:0];
        v22 = [(ANTrackPlayer *)self log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *v37 = "[ANTrackPlayer _handleReadyToPlayWithCompletionHandler:]";
          _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke_31;
        v31[3] = &unk_278C87078;
        objc_copyWeak(&v33, buf);
        v32 = v4;
        [(ANTrackPlayer *)self playInternalWithCompletionHandler:v31];

        objc_destroyWeak(&v33);
        objc_destroyWeak(buf);
      }

      else
      {
        v23 = [(ANTrackPlayer *)self log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23F525000, v23, OS_LOG_TYPE_DEFAULT, "NOT ready to play.", buf, 2u);
        }

        [(ANTrackPlayer *)self setPlaybackPending:1];
        [(ANTrackPlayer *)self setHandler:v4];
        v24 = [MEMORY[0x277CEAB80] sharedInstance];
        v25 = [v24 numberForDefault:*MEMORY[0x277CEA960]];
        [v25 doubleValue];
        v27 = v26;

        objc_initWeak(buf, self);
        v28 = [(ANTrackPlayer *)self playerTimer];
        v29 = [(ANTrackPlayer *)self mainQueue];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke;
        v34[3] = &unk_278C86580;
        objc_copyWeak(&v35, buf);
        [v28 startWithValue:v29 queue:v34 handler:v27];

        objc_destroyWeak(&v35);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] an_errorWithCode:1018];
    v4[2](v4, v11);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke_cold_1(WeakRetained);
  }

  [WeakRetained _stopAndUpdatePlaybackState:0];
  [WeakRetained setPlaybackPending:0];
  v3 = [MEMORY[0x277CCA9B8] an_errorWithCode:1018 component:*MEMORY[0x277CEA9A0]];
  v4 = [WeakRetained handler];
  (v4)[2](v4, v3);

  [WeakRetained setHandler:0];
}

void __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke_31(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained audioSessionManager];
    [v4 deactivateAudioSessionAfterDelay:0.0];
  }

  (*(*(a1 + 32) + 16))();
}

- (NSString)activelyPlayingAnnouncementID
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v3 = [(ANTrackPlayer *)self playerItems];
  v4 = [v3 lastObject];
  v18 = [v4 announcementID];

  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [(ANTrackPlayer *)self mainQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke;
  block[3] = &unk_278C870C0;
  v11 = v5;
  v12 = &v13;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playerItems];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_20];

  v4 = [*(a1 + 32) log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke_cold_1();
    }

    v6 = [v3 announcementID];
    v7 = *(*(a1 + 48) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Did not find currently playing info. Using last item.", v8, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

BOOL __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 completed] & 1) == 0 && objc_msgSend(v2, "trackType") == 0;

  return v3;
}

- (void)stopWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ANTrackPlayer stopWithCompletionHandler:]";
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(ANTrackPlayer *)self mainQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__ANTrackPlayer_stopWithCompletionHandler___block_invoke;
  v9[3] = &unk_278C86840;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __43__ANTrackPlayer_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopAndUpdatePlaybackState:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_stopAndUpdatePlaybackState:(unint64_t)a3
{
  v5 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ANTrackPlayer *)self interruptionTimer];
  [v6 cancel];

  v7 = [(ANTrackPlayer *)self playerTimer];
  [v7 cancel];

  [(ANTrackPlayer *)self stopInternalSync];

  [(ANTrackPlayer *)self setPlaybackState:a3];
}

- (void)end
{
  v3 = [(ANTrackPlayer *)self mainQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__ANTrackPlayer_end__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(v3, block);
}

void __20__ANTrackPlayer_end__block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (([*(a1 + 32) options] & 0x200) == 0)
  {
    v3 = [MEMORY[0x277CEAB80] sharedInstance];
    v4 = [v3 numberForDefault:*MEMORY[0x277CEA888]];
    [v4 doubleValue];
    v2 = v5;
  }

  v6 = [*(a1 + 32) audioSessionManager];
  [v6 deactivateAudioSessionAfterDelay:v2];
}

- (void)nextWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ANTrackPlayer_nextWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86A80;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__ANTrackPlayer_nextWithCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ANTrackPlayer nextWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if ([WeakRetained playbackState] == 1)
  {
    [WeakRetained stopInternalSync];
    [WeakRetained nextInternalSync];
    [WeakRetained _playWithCompletionHandler:*(a1 + 40)];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)previousWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ANTrackPlayer_previousWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86A80;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__ANTrackPlayer_previousWithCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ANTrackPlayer previousWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if ([WeakRetained playbackState] == 1)
  {
    [WeakRetained stopInternalSync];
    [WeakRetained previousInternalSync];
    [WeakRetained _playWithCompletionHandler:*(a1 + 40)];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (int)numberActiveTracks
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(ANTrackPlayer *)self mainQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ANTrackPlayer_numberActiveTracks__block_invoke;
  block[3] = &unk_278C870C0;
  v8 = v3;
  v9 = &v10;
  block[4] = self;
  v5 = v3;
  dispatch_async(v4, block);

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LODWORD(v4) = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __35__ANTrackPlayer_numberActiveTracks__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__ANTrackPlayer_numberActiveTracks__block_invoke_cold_1(v2);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) playerItems];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 completed] & 1) == 0 && !objc_msgSend(v8, "trackType"))
        {
          ++*(*(*(a1 + 48) + 8) + 24);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotificationsWithAudioSession:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel_audioSessionInterruptionHandler_ name:*MEMORY[0x277CB8068] object:v5];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_audioSessionMediaServicesLostHandler_ name:*MEMORY[0x277CB8098] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_audioSessionMediaServicesResetHandler_ name:*MEMORY[0x277CB80A0] object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_playerItemPlayedToEndHandler_ name:*MEMORY[0x277CE60C0] object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_playerItemPlayedToEndHandler_ name:*MEMORY[0x277CE60D0] object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel_playerRateChangedHandler_ name:*MEMORY[0x277CE6158] object:0];
}

- (void)_deregisterForNotificationsWithAudioSession:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277CB8068] object:v5];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x277CB8098] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self name:*MEMORY[0x277CB80A0] object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:self name:*MEMORY[0x277CE60C0] object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:self name:*MEMORY[0x277CE60D0] object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 removeObserver:self name:*MEMORY[0x277CE6158] object:0];
}

- (void)_configureAudioSession
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_callDelegateWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(ANTrackPlayer *)self delegateQueue];

  if (v5)
  {
    v6 = [(ANTrackPlayer *)self delegateQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__ANTrackPlayer__callDelegateWithBlock___block_invoke;
    v8[3] = &unk_278C86C60;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = [(ANTrackPlayer *)self delegate];
    (*(v4 + 2))(v4, v7);
  }
}

void __40__ANTrackPlayer__callDelegateWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) delegate];
  (*(v1 + 16))(v1, v2);
}

- (id)_playerInfoForAVPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(ANTrackPlayer *)self playerItems];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__ANTrackPlayer__playerInfoForAVPlayerItem___block_invoke;
    v9[3] = &unk_278C870E8;
    v10 = v4;
    v7 = [v6 na_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __44__ANTrackPlayer__playerInfoForAVPlayerItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 playerItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_addObserverForPlayer:(id)a3
{
  v4 = a3;
  [v4 addObserver:self forKeyPath:@"status" options:1 context:0];
  [v4 addObserver:self forKeyPath:@"rate" options:1 context:0];
  [v4 addObserver:self forKeyPath:@"timeControlStatus" options:1 context:0];
}

- (void)_removeObserverForPlayer:(id)a3
{
  v4 = a3;
  [v4 removeObserver:self forKeyPath:@"status"];
  [v4 removeObserver:self forKeyPath:@"rate"];
  [v4 removeObserver:self forKeyPath:@"timeControlStatus"];
}

- (void)_removeItemObserverForPlayer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 items];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * i) removeObserver:self forKeyPath:@"status" context:0];
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_stringForTimeControlStatus:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278C871A8[a3];
  }
}

- (id)_stringForPlayerStatus:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"Failed";
  }

  if (a3 == 1)
  {
    return @"Ready to Play";
  }

  else
  {
    return v3;
  }
}

- (id)_stringForPlayerItemStatus:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"Failed";
  }

  if (a3 == 1)
  {
    return @"Ready to Play";
  }

  else
  {
    return v3;
  }
}

- (void)_stopPlaybackAndFailWithItem:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v8);

  [(ANTrackPlayer *)self _stopAndUpdatePlaybackState:0];
  if (v6)
  {
    v9 = [(ANTrackPlayer *)self _playerInfoForAVPlayerItem:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 trackType];
      v12 = [v10 announcementID];
    }

    else
    {
      v12 = 0;
      v11 = -1;
    }
  }

  else
  {
    v12 = 0;
    v11 = -1;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__ANTrackPlayer__stopPlaybackAndFailWithItem_error___block_invoke;
  v15[3] = &unk_278C87110;
  v15[4] = self;
  v16 = v12;
  v17 = v7;
  v18 = v11;
  v13 = v7;
  v14 = v12;
  [(ANTrackPlayer *)self _callDelegateWithBlock:v15];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_initWeak(&location, self);
  v12 = [(ANTrackPlayer *)self mainQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v15[3] = &unk_278C86B70;
  objc_copyWeak(&v18, &location);
  v16 = v10;
  v17 = v9;
  v13 = v9;
  v14 = v10;
  dispatch_async(v12, v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v66 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained queuePlayer];
  [v3 rate];
  v5 = v4;

  v6 = [WeakRetained queuePlayer];
  *&v7 = COERCE_DOUBLE([v6 timeControlStatus]);

  v8 = [WeakRetained _stringForTimeControlStatus:v7];
  v9 = [WeakRetained queuePlayer];
  v10 = [v9 currentItem];

  v11 = [WeakRetained queuePlayer];
  v12 = [v11 reasonForWaitingToPlay];

  v13 = [WeakRetained queuePlayer];
  v14 = [WeakRetained _stringForPlayerStatus:{objc_msgSend(v13, "status")}];

  v15 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [WeakRetained log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v14;
      v18 = v12;
      v19 = v10;
      v20 = v8;
      v21 = a1[5];
      v47 = [WeakRetained queuePlayer];
      v22 = [v47 error];
      *buf = 138414082;
      v51 = v21;
      v8 = v20;
      v10 = v19;
      v12 = v18;
      v14 = v17;
      v52 = 2048;
      v53 = v5;
      v54 = 2048;
      v55 = *&v7;
      v56 = 2112;
      v57 = v8;
      v58 = 2112;
      v59 = v10;
      v60 = 2112;
      v61 = v12;
      v62 = 2112;
      v63 = v17;
      v64 = 2112;
      v65 = v22;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "|> KeyPath (%@) changed                    \n    Queue Player Rate = %f                    \n    Time Control Status = (%ld) %@                    \n    Current Item = %@                    \n    Reason For Waiting To Play = %@                    \n    Player Status = %@                    \n    Error = %@", buf, 0x52u);
    }

    if ([a1[5] isEqualToString:@"status"])
    {
      v23 = a1[4];
      if (!v23)
      {
        goto LABEL_37;
      }

      v24 = [WeakRetained queuePlayer];

      if (v23 != v24)
      {
        goto LABEL_37;
      }

      v25 = [v23 status];
      if (v25 != 2)
      {
        if (v25 == 1)
        {
          v26 = [WeakRetained log];
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          *buf = 136315138;
          v51 = "[ANTrackPlayer observeValueForKeyPath:ofObject:change:context:]_block_invoke";
          v27 = "%s: Queue player is ready to play.";
          goto LABEL_20;
        }

        goto LABEL_37;
      }

      v41 = [WeakRetained log];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2();
      }

      v42 = [v23 error];
      v43 = v42;
      if (v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = [MEMORY[0x277CCA9B8] an_errorWithCode:1055 component:*MEMORY[0x277CEA9A0]];
      }

      v36 = v44;

      v45 = [v23 currentItem];
      [WeakRetained _stopPlaybackAndFailWithItem:v45 error:v36];

      goto LABEL_36;
    }
  }

  else
  {
    v28 = a1[4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1[5] isEqualToString:@"status"])
      {
        v29 = a1[4];
        if (v29)
        {
          v23 = v29;
          v30 = [WeakRetained log];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [WeakRetained _stringForPlayerItemStatus:{objc_msgSend(v23, "status")}];
            [v23 asset];
            v32 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v23 duration];
            [v23 duration];
            v33 = [v23 error];
            *buf = 138413058;
            v51 = v31;
            v52 = 2112;
            v53 = v32;
            v54 = 2048;
            v55 = v49 / v48;
            v56 = 2112;
            v57 = v33;
            _os_log_impl(&dword_23F525000, v30, OS_LOG_TYPE_DEFAULT, "|> AVPlayerItem Status = %@                        \n    Asset = %@                        \n    Duration (sec) = %f                        \n    Error = %@", buf, 0x2Au);
          }

          v34 = [v23 status];
          if (v34 != 2)
          {
            if (v34 == 1)
            {
              v26 = [WeakRetained log];
              if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              *buf = 136315138;
              v51 = "[ANTrackPlayer observeValueForKeyPath:ofObject:change:context:]_block_invoke";
              v27 = "%s: Player Item is ready to play.";
LABEL_20:
              _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
LABEL_21:

              if (![WeakRetained playbackPending])
              {
                goto LABEL_37;
              }

              v35 = [WeakRetained handler];

              if (!v35)
              {
                goto LABEL_37;
              }

              v36 = [WeakRetained handler];
              [WeakRetained _playWithCompletionHandler:v36];
              goto LABEL_36;
            }

LABEL_37:

            goto LABEL_38;
          }

          v37 = [WeakRetained log];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1();
          }

          v38 = [v23 error];
          v39 = v38;
          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = [MEMORY[0x277CCA9B8] an_errorWithCode:1053 component:*MEMORY[0x277CEA9A0]];
          }

          v36 = v40;

          [WeakRetained _stopPlaybackAndFailWithItem:v23 error:v36];
LABEL_36:

          goto LABEL_37;
        }
      }
    }
  }

LABEL_38:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)stopInternalSync
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ANTrackPlayer stopInternalSync]";
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v5 = [(ANTrackPlayer *)self queuePlayer];
  [v5 pause];

  [(ANTrackPlayer *)self setPlaybackPending:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)nextInternalSync
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[ANTrackPlayer nextInternalSync]";
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(ANTrackPlayer *)self queuePlayer];
  v6 = [v5 currentItem];
  v7 = [(ANTrackPlayer *)self _playerInfoForAVPlayerItem:v6];

  if (v7)
  {
    [v7 setCompleted:1];
  }

  v8 = [(ANTrackPlayer *)self queuePlayer];
  [v8 advanceToNextItem];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__ANTrackPlayer_nextInternalSync__block_invoke;
  v11[3] = &unk_278C87138;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  [(ANTrackPlayer *)self _callDelegateWithBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __33__ANTrackPlayer_nextInternalSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 trackType];
  v7 = [*(a1 + 40) announcementID];
  [v5 trackPlayer:v3 didFinishPlayingTrackType:v6 announcementID:v7 error:0];
}

- (void)previousInternalSync
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v3);

  v38 = self;
  v4 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136315138;
    *(&buf.value + 4) = "[ANTrackPlayer previousInternalSync]";
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v5 = [(ANTrackPlayer *)self playerItems];
  v6 = [v5 reverseObjectEnumerator];
  v7 = [v6 allObjects];

  v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_63];
  v9 = [(ANTrackPlayer *)self queuePlayer];
  v10 = v9;
  if (v9)
  {
    [v9 currentTime];
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  Seconds = CMTimeGetSeconds(&buf);

  [(ANTrackPlayer *)self previousSkipGoesToPreviousTrackDelta];
  if (Seconds <= v12 && v8)
  {
    v13 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = "[ANTrackPlayer previousInternalSync]";
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%s: Going back to previous announcement.", &buf, 0xCu);
    }

    v37 = v7;

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __37__ANTrackPlayer_previousInternalSync__block_invoke_67;
    v43[3] = &unk_278C87138;
    v43[4] = self;
    v36 = v8;
    v14 = v8;
    v44 = v14;
    [(ANTrackPlayer *)self _callDelegateWithBlock:v43];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = [(ANTrackPlayer *)self playerItems];
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          if (v21 == v14 || [v15 count])
          {
            [v21 setCompleted:0];
            v22 = MEMORY[0x277CE65B0];
            v23 = [v21 playerItem];
            v24 = [v23 asset];
            v25 = [v22 playerItemWithAsset:v24];

            [v21 setPlayerItem:v25];
            [v15 addObject:v25];
            [v25 addObserver:v38 forKeyPath:@"status" options:1 context:0];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v18);
    }

    v26 = [(ANTrackPlayer *)v38 queuePlayer];
    [(ANTrackPlayer *)v38 _removeItemObserverForPlayer:v26];

    v27 = [(ANTrackPlayer *)v38 queuePlayer];
    [v27 removeAllItems];

    v28 = [(ANTrackPlayer *)v38 queuePlayer];
    [(ANTrackPlayer *)v38 _removeObserverForPlayer:v28];

    v29 = [objc_alloc(MEMORY[0x277CE65F8]) initWithItems:v15];
    [(ANTrackPlayer *)v38 setQueuePlayer:v29];
    v30 = [(ANTrackPlayer *)v38 queuePlayer];
    [(ANTrackPlayer *)v38 _addObserverForPlayer:v30];

    v31 = [(ANTrackPlayer *)v38 audioSession];
    v32 = [(ANTrackPlayer *)v38 queuePlayer];
    [v32 setAudioSession:v31];

    v33 = v44;
    v8 = v36;
    v7 = v37;
  }

  else
  {
    v33 = [(ANTrackPlayer *)self queuePlayer];
    v34 = [v33 currentItem];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __37__ANTrackPlayer_previousInternalSync__block_invoke_2;
    v45[3] = &unk_278C86A38;
    v45[4] = self;
    buf = **&MEMORY[0x277CC08F0];
    [v34 seekToTime:&buf completionHandler:v45];
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __37__ANTrackPlayer_previousInternalSync__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 trackType])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 completed];
  }

  return v3;
}

void __37__ANTrackPlayer_previousInternalSync__block_invoke_2(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "unsuccessful";
    if (a2)
    {
      v4 = "successful";
    }

    v6 = 136315394;
    v7 = "[ANTrackPlayer previousInternalSync]_block_invoke_2";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%s: Attempt to restart announcement was %s.", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __37__ANTrackPlayer_previousInternalSync__block_invoke_67(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 trackType];
  v7 = [*(a1 + 40) announcementID];
  [v5 trackPlayer:v3 didFinishPlayingTrackType:v6 announcementID:v7 error:0];
}

- (void)_resumePlaybackAfterInterruptionAtTimeInterval:(double)a3
{
  v5 = [(ANTrackPlayer *)self prepareToPlay];
  [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
  [(ANTrackPlayer *)self handleInterruptionDelay:v6 - a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke;
  v7[3] = &unk_278C86700;
  v7[4] = self;
  [(ANTrackPlayer *)self _playWithCompletionHandler:v7];
}

void __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke_cold_1();
    }

    [*(a1 + 32) setPlaybackState:0];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke_69;
    v7[3] = &unk_278C87138;
    v7[4] = v6;
    v8 = v3;
    [v6 _callDelegateWithBlock:v7];
  }

  else
  {
    [v4 setPlaybackState:1];
  }
}

- (void)audioSessionMediaServicesLostHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ANTrackPlayer audioSessionMediaServicesLostHandler:];
  }

  if ([(ANTrackPlayer *)self playbackState])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__ANTrackPlayer_audioSessionMediaServicesLostHandler___block_invoke;
    v6[3] = &unk_278C86910;
    v6[4] = self;
    [(ANTrackPlayer *)self stopWithCompletionHandler:v6];
  }
}

void __54__ANTrackPlayer_audioSessionMediaServicesLostHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] an_errorWithCode:1024 component:*MEMORY[0x277CEA9A0]];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ANTrackPlayer_audioSessionMediaServicesLostHandler___block_invoke_2;
  v5[3] = &unk_278C87138;
  v5[4] = v3;
  v6 = v2;
  v4 = v2;
  [v3 _callDelegateWithBlock:v5];
}

- (void)audioSessionMediaServicesResetHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ANTrackPlayer audioSessionMediaServicesResetHandler:];
  }

  if ([(ANTrackPlayer *)self playbackState])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__ANTrackPlayer_audioSessionMediaServicesResetHandler___block_invoke;
    v6[3] = &unk_278C86910;
    v6[4] = self;
    [(ANTrackPlayer *)self stopWithCompletionHandler:v6];
  }

  else
  {
    [(ANTrackPlayer *)self _configureAudioSession];
  }
}

void __55__ANTrackPlayer_audioSessionMediaServicesResetHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] an_errorWithCode:1025 component:*MEMORY[0x277CEA9A0]];
  v3 = *(a1 + 32);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __55__ANTrackPlayer_audioSessionMediaServicesResetHandler___block_invoke_2;
  v8 = &unk_278C87138;
  v9 = v3;
  v10 = v2;
  v4 = v2;
  [v3 _callDelegateWithBlock:&v5];
  [*(a1 + 32) _configureAudioSession];
}

- (void)_handleInterruptionEndedAndShouldResume:(BOOL)a3
{
  v3 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v5 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ANTrackPlayer *)self interruptionTimer];
  [v6 cancel];

  [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
  v8 = v7;
  [(ANTrackPlayer *)self interruptionStart];
  v10 = v9;
  v11 = [(ANTrackPlayer *)self log];
  v12 = v8 - v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    *buf = 138412290;
    v37 = v13;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Seconds elapsed since interruption began: %@", buf, 0xCu);
  }

  if ([(ANTrackPlayer *)self playbackState]!= 2)
  {
    v14 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[ANTrackPlayer _handleInterruptionEndedAndShouldResume:]";
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%s: Interruption ended but we are not interrupted, don't do anything", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (([(ANTrackPlayer *)self options]& 1) == 0)
  {
    v14 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[ANTrackPlayer _handleInterruptionEndedAndShouldResume:]";
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%s: Option to resume after interruption ended not set, don't do anything", buf, 0xCu);
    }

LABEL_10:

    goto LABEL_11;
  }

  v16 = [MEMORY[0x277CEAB80] sharedInstance];
  v17 = [v16 numberForDefault:*MEMORY[0x277CEA948]];
  [v17 doubleValue];
  v19 = v18;

  v20 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v37 = *&v19;
    _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_DEFAULT, "Resume Timeout After Audio Interruption End: %f", buf, 0xCu);
  }

  if (v3 && v12 < v19)
  {
    v21 = [MEMORY[0x277CEAB80] sharedInstance];
    v22 = [v21 numberForDefault:*MEMORY[0x277CEA890]];
    [v22 doubleValue];
    v24 = v23;

    objc_initWeak(&location, self);
    v25 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = v24;
      _os_log_impl(&dword_23F525000, v25, OS_LOG_TYPE_DEFAULT, "Resume Audio Session Delay %f seconds", buf, 0xCu);
    }

    v26 = dispatch_time(0, (*&v24 * 1000000000.0));
    v27 = [(ANTrackPlayer *)self mainQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ANTrackPlayer__handleInterruptionEndedAndShouldResume___block_invoke;
    block[3] = &unk_278C87160;
    block[4] = self;
    v34[1] = v24;
    objc_copyWeak(v34, &location);
    dispatch_after(v26, v27, block);

    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }

  else
  {
    v28 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "Will not resume playback after Audio Session Interruption ended", buf, 2u);
    }

    [(ANTrackPlayer *)self _stopAndUpdatePlaybackState:0];
    v29 = [MEMORY[0x277CCA9B8] an_errorWithCode:1027 component:*MEMORY[0x277CEA9A0]];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __57__ANTrackPlayer__handleInterruptionEndedAndShouldResume___block_invoke_71;
    v31[3] = &unk_278C87138;
    v31[4] = self;
    v32 = v29;
    v30 = v29;
    [(ANTrackPlayer *)self _callDelegateWithBlock:v31];
  }

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
}

void __57__ANTrackPlayer__handleInterruptionEndedAndShouldResume___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) playbackState];
  WeakRetained = [*(a1 + 32) log];
  v4 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (v2 == 2)
  {
    if (v4)
    {
      v5 = *(a1 + 48);
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_23F525000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Still interrupted. Resuming playback after delaying for %f seconds", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [*(a1 + 32) interruptionStart];
    [WeakRetained _resumePlaybackAfterInterruptionAtTimeInterval:?];
  }

  else if (v4)
  {
    v6 = *(a1 + 48);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_23F525000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Playback state is not interrupted. Will not resume playback after delaying for %f seconds", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionInterruptionHandler:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(ANTrackPlayer *)self audioSession];
    v8 = v6 == v7;

    v9 = [(ANTrackPlayer *)self log];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Received Audio Session Interruption Notification for Audio Session %@", buf, 0xCu);
      }

      v13 = [v4 userInfo];
      v9 = v13;
      if (v13)
      {
        v14 = [v13 valueForKey:*MEMORY[0x277CB8080]];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 unsignedIntegerValue];
          if (v16)
          {
            if (v16 == 1)
            {
              v17 = [(ANTrackPlayer *)self log];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "Audio Session Interruption: Began", buf, 2u);
              }

              if ([(ANTrackPlayer *)self playbackState]== 1)
              {
                [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
                [(ANTrackPlayer *)self setInterruptionStart:?];
                [(ANTrackPlayer *)self stopInternalSync];
                if (([(ANTrackPlayer *)self options]& 1) != 0)
                {
                  [(ANTrackPlayer *)self setPlaybackState:2];
                  v24 = [MEMORY[0x277CEAB80] sharedInstance];
                  v25 = [v24 numberForDefault:*MEMORY[0x277CEA948]];
                  [v25 doubleValue];
                  v27 = v26;

                  objc_initWeak(buf, self);
                  v28 = [(ANTrackPlayer *)self interruptionTimer];
                  v29 = [(ANTrackPlayer *)self mainQueue];
                  v30[0] = MEMORY[0x277D85DD0];
                  v30[1] = 3221225472;
                  v30[2] = __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke_2;
                  v30[3] = &unk_278C868C0;
                  objc_copyWeak(&v31, buf);
                  v30[4] = self;
                  [v28 startWithValue:v29 queue:v30 handler:v27];

                  objc_destroyWeak(&v31);
                  objc_destroyWeak(buf);
                }

                else
                {
                  [(ANTrackPlayer *)self setPlaybackState:0];
                  v18 = [MEMORY[0x277CCA9B8] an_errorWithCode:1027 component:*MEMORY[0x277CEA9A0]];
                  v32[0] = MEMORY[0x277D85DD0];
                  v32[1] = 3221225472;
                  v32[2] = __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke;
                  v32[3] = &unk_278C87138;
                  v32[4] = self;
                  v33 = v18;
                  v19 = v18;
                  [(ANTrackPlayer *)self _callDelegateWithBlock:v32];
                }
              }

              else
              {
                v23 = [(ANTrackPlayer *)self log];
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v35 = "[ANTrackPlayer audioSessionInterruptionHandler:]";
                  _os_log_impl(&dword_23F525000, v23, OS_LOG_TYPE_DEFAULT, "%s: Interruption while not playing, don't do anything", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v20 = [v9 valueForKey:*MEMORY[0x277CB8070]];
            v21 = [(ANTrackPlayer *)self log];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v35 = v20;
              _os_log_impl(&dword_23F525000, v21, OS_LOG_TYPE_DEFAULT, "Audio Session Interruption: Ended. Should Resume: %@", buf, 0xCu);
            }

            if (v20)
            {
              v22 = [v20 unsignedIntegerValue] == 1;
            }

            else
            {
              v22 = 0;
            }

            [(ANTrackPlayer *)self _handleInterruptionEndedAndShouldResume:v22];
          }
        }
      }
    }

    else if (v10)
    {
      v11 = [(ANTrackPlayer *)self audioSession];
      *buf = 138412546;
      v35 = v11;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Received Audio Session Interruption Notification for different Audio Session. Expected: %@, Actual: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ANTrackPlayer audioSessionInterruptionHandler:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke_2_cold_1(a1);
  }

  [WeakRetained _stopAndUpdatePlaybackState:0];
}

- (void)playerRateChangedHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ANTrackPlayer_playerRateChangedHandler___block_invoke;
  v7[3] = &unk_278C86378;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__ANTrackPlayer_playerRateChangedHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  if (v2)
  {
    v3 = [*(a1 + 40) queuePlayer];

    if (v2 == v3)
    {
      v4 = [*(a1 + 40) log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "|> Rate Changed Notification: %@", &v16, 0xCu);
      }

      v6 = [*(a1 + 40) log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        [v2 rate];
        v16 = 134217984;
        v17 = v7;
        _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "|> Player Rate: %f", &v16, 0xCu);
      }

      v8 = [*(a1 + 32) userInfo];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE6160]];

      if (v9 && [v9 isEqualToString:*MEMORY[0x277CE6168]])
      {
        v10 = [*(a1 + 40) log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __42__ANTrackPlayer_playerRateChangedHandler___block_invoke_cold_1();
        }

        v11 = [MEMORY[0x277CCA9B8] an_errorWithCode:1018 component:*MEMORY[0x277CEA9A0]];
        v12 = *(a1 + 40);
        v13 = [v12 queuePlayer];
        v14 = [v13 currentItem];
        [v12 _stopPlaybackAndFailWithItem:v14 error:v11];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)playerItemPlayedToEndHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke;
  v7[3] = &unk_278C86378;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Player item played to end notification: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 _playerInfoForAVPlayerItem:v7];
    v10 = [*v2 log];
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*v2 queuePlayer];
        *buf = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Marking player item as completed for player %@: %@", buf, 0x16u);
      }

      [v9 setCompleted:1];
      v13 = [*(a1 + 40) name];
      v14 = [v13 isEqualToString:*MEMORY[0x277CE60D0]];

      if (v14)
      {
        v15 = [*(a1 + 40) userInfo];
        v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CE60C8]];

        if (!v16)
        {
          v16 = [MEMORY[0x277CCA9B8] an_errorWithCode:5004 component:*MEMORY[0x277CEA9A0]];
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = *v2;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_72;
      v19[3] = &unk_278C87188;
      v19[4] = v17;
      v20 = v9;
      v21 = v16;
      v11 = v16;
      [v17 _callDelegateWithBlock:v19];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_cold_1(v2);
    }
  }

  else
  {
    v9 = [v8 log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_cold_2();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_72(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 trackType];
  v7 = [*(a1 + 40) announcementID];
  [v5 trackPlayer:v3 didFinishPlayingTrackType:v6 announcementID:v7 error:*(a1 + 48)];
}

- (ANTrackPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_dispatch_queue)delegateQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateQueue);

  return WeakRetained;
}

void __44__ANTrackPlayer__playWithCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadyToPlayWithCompletionHandler:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 queuePlayer];
  v4 = [v3 error];
  v6 = 136315394;
  v7 = "[ANTrackPlayer _handleReadyToPlayWithCompletionHandler:]";
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "%s: Queue player error: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 playerTimer];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23F525000, v0, OS_LOG_TYPE_DEBUG, "Currently Playing: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __35__ANTrackPlayer_numberActiveTracks__block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ANTrackPlayer numberActiveTracks]_block_invoke";
  _os_log_debug_impl(&dword_23F525000, log, OS_LOG_TYPE_DEBUG, "%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesLostHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesResetHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionInterruptionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) interruptionTimer];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __42__ANTrackPlayer_playerRateChangedHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 queuePlayer];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end