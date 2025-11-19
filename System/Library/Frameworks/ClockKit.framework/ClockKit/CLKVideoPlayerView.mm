@interface CLKVideoPlayerView
- (BOOL)_readyToPerformRequest;
- (BOOL)isPlaybackReady;
- (CLKVideoPlayerView)initWithFrame:(CGRect)a3;
- (CLKVideoPlayerViewDelegate)delegate;
- (id)_createPlayerItemForVideoURL:(id)a3;
- (void)_handleDidPlayToEndTime:(id)a3;
- (void)_hidePausedView;
- (void)_loadVideo:(id)a3;
- (void)_observePlayerItem:(id)a3;
- (void)_pause;
- (void)_performNextRequest;
- (void)_periodicTimeObserverChanged:(id *)a3;
- (void)_play;
- (void)_preroll;
- (void)_queueVideo:(id)a3;
- (void)_seekToTime:(id *)a3;
- (void)_showPausedView;
- (void)_stopObservingPlayerItem;
- (void)dealloc;
- (void)layoutSubviews;
- (void)loadVideo:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)prepareNextQueuedVideo;
- (void)preroll;
- (void)queueVideo:(id)a3;
- (void)resetRequestState;
- (void)seekToTime:(id *)a3;
- (void)seekToTime:(id *)a3 tolerance:(id *)a4;
- (void)setGravityResize:(int64_t)a3;
- (void)setPausedViewEnabled:(BOOL)a3;
@end

@implementation CLKVideoPlayerView

- (CLKVideoPlayerView)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = CLKVideoPlayerView;
  v3 = [(CLKVideoPlayerView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!v3)
  {
    return v3;
  }

  v4 = [getAVAudioSessionClass() sharedInstance];
  [v4 setRequiresNoAudioResources:1 error:0];

  v5 = [getAVAudioSessionClass() sharedInstance];
  v6 = getAVAudioSessionCategoryAmbient();
  [v5 setCategory:v6 withOptions:1 error:0];

  v3[545] = 1;
  *(v3 + 70) = 1;
  v7 = [_CLKPlayerView alloc];
  v8 = [(_CLKPlayerView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = *(v3 + 51);
  *(v3 + 51) = v8;

  [v3 addSubview:*(v3 + 51)];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v10 = getAVQueuePlayerClass_softClass;
  v37 = getAVQueuePlayerClass_softClass;
  if (!getAVQueuePlayerClass_softClass)
  {
    *&v30 = MEMORY[0x277D85DD0];
    *(&v30 + 1) = 3221225472;
    v31 = __getAVQueuePlayerClass_block_invoke;
    v32 = &unk_278A1E6A0;
    v33 = &v34;
    __getAVQueuePlayerClass_block_invoke(&v30);
    v10 = v35[3];
  }

  v11 = v10;
  _Block_object_dispose(&v34, 8);
  v12 = objc_alloc_init(v10);
  v13 = *(v3 + 52);
  *(v3 + 52) = v12;

  [*(v3 + 52) _setCALayerDestinationIsTVOut:1];
  v14 = [*(v3 + 51) layer];
  [v14 setPlayer:*(v3 + 52)];

  [v3 setGravityResize:*(v3 + 70)];
  v15 = [*(v3 + 51) layer];
  [v15 addObserver:v3 forKeyPath:@"readyForDisplay" options:0 context:&kCLKVideoPlayerLayerKVOContext];

  objc_initWeak(&location, v3);
  _CMTimeMakeWithSeconds(0xFFFFFFFFLL, 0.0);
  v16 = v30;
  *(v3 + 61) = v31;
  *(v3 + 472) = v16;
  v17 = *(v3 + 52);
  _CMTimeMakeWithSeconds(60, 10.0);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __36__CLKVideoPlayerView_initWithFrame___block_invoke;
  v26[3] = &unk_278A1FCE0;
  objc_copyWeak(&v27, &location);
  v18 = [v17 addPeriodicTimeObserverForInterval:&v30 queue:0 usingBlock:v26];
  v19 = *(v3 + 58);
  *(v3 + 58) = v18;

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v21 = getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr;
  v37 = getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr;
  if (!getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr)
  {
    *&v30 = MEMORY[0x277D85DD0];
    *(&v30 + 1) = 3221225472;
    v31 = __getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_block_invoke;
    v32 = &unk_278A1E6A0;
    v33 = &v34;
    v22 = AVFoundationLibrary();
    v23 = dlsym(v22, "AVPlayerItemDidPlayToEndTimeNotification");
    *(v33[1] + 24) = v23;
    getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr = *(v33[1] + 24);
    v21 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (v21)
  {
    v24 = *v21;
    [v20 addObserver:v3 selector:sel__handleDidPlayToEndTime_ name:v24 object:0];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    return v3;
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

void __36__CLKVideoPlayerView_initWithFrame___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _periodicTimeObserverChanged:&v4];
}

- (void)dealloc
{
  [(AVQueuePlayer *)self->_player removeTimeObserver:self->_periodicTimeObserver];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(CLKVideoPlayerView *)self _stopObservingPlayerItem];
  v4 = [(_CLKPlayerView *)self->_playerView layer];
  [v4 removeObserver:self forKeyPath:@"readyForDisplay" context:&kCLKVideoPlayerLayerKVOContext];

  v5.receiver = self;
  v5.super_class = CLKVideoPlayerView;
  [(CLKVideoPlayerView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CLKVideoPlayerView;
  [(CLKVideoPlayerView *)&v3 layoutSubviews];
  [(CLKVideoPlayerView *)self bounds];
  [(_CLKPlayerView *)self->_playerView setFrame:?];
  if (self->_pausedViewEnabled)
  {
    [(CLKVideoPlayerView *)self bounds];
    [(UIView *)self->_pausedView setFrame:?];
  }
}

- (void)setGravityResize:(int64_t)a3
{
  self->_gravityResize = a3;
  if (a3 == 1)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getAVLayerVideoGravityResizeAspectSymbolLoc_ptr;
  v13 = getAVLayerVideoGravityResizeAspectSymbolLoc_ptr;
  if (!getAVLayerVideoGravityResizeAspectSymbolLoc_ptr)
  {
    v5 = AVFoundationLibrary();
    v11[3] = dlsym(v5, "AVLayerVideoGravityResizeAspect");
    getAVLayerVideoGravityResizeAspectSymbolLoc_ptr = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
LABEL_7:
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v4 = getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr;
    v13 = getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr;
    if (!getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr)
    {
      v6 = AVFoundationLibrary();
      v11[3] = dlsym(v6, "AVLayerVideoGravityResizeAspectFill");
      getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr = v11[3];
      v4 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v4)
    {
      v9 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
      _Block_object_dispose(&v10, 8);
      _Unwind_Resume(v9);
    }
  }

  v7 = *v4;
LABEL_12:
  v8 = [(_CLKPlayerView *)self->_playerView layer];
  [v8 setVideoGravity:v7];
}

- (void)_observePlayerItem:(id)a3
{
  objc_storeStrong(&self->_observedItem, a3);
  v5 = a3;
  [(AVPlayerItem *)self->_observedItem addObserver:self forKeyPath:@"status" options:0 context:&kCLKVideoPlayerViewKVOContext];
}

- (void)_stopObservingPlayerItem
{
  [(AVPlayerItem *)self->_observedItem removeObserver:self forKeyPath:@"status" context:&kCLKVideoPlayerViewKVOContext];
  observedItem = self->_observedItem;
  self->_observedItem = 0;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &kCLKVideoPlayerViewKVOContext)
  {
    if (self->_observedItem == v11)
    {
      if ([v10 isEqualToString:@"status"])
      {
        if ([(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusReadyToPlay)
        {
          [(CLKVideoPlayerView *)self _stopObservingPlayerItem];
          [(CLKVideoPlayerView *)self _performNextRequest];
          v13 = [(CLKVideoPlayerView *)self delegate];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            v15 = [(CLKVideoPlayerView *)self delegate];
            [v15 videoPlayerViewWillBeginPlaying:self];
          }
        }
      }
    }
  }

  else if (a6 == &kCLKVideoPlayerLayerKVOContext)
  {
    if ([v10 isEqualToString:@"readyForDisplay"])
    {
      v16 = [(_CLKPlayerView *)self->_playerView layer];
      v17 = [v16 isReadyForDisplay];

      if (v17)
      {
        [(CLKVideoPlayerView *)self _performNextRequest];
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CLKVideoPlayerView;
    [(CLKVideoPlayerView *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_handleDidPlayToEndTime:(id)a3
{
  v4 = a3;
  if ([(AVQueuePlayer *)self->_player actionAtItemEnd]== 1)
  {
    v5 = [v4 object];
    playerItem = self->_playerItem;

    if (v5 == playerItem)
    {
      [(CLKVideoPlayerView *)self _pause];
      v11 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v12 = __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke;
LABEL_10:
      v11[2] = v12;
      v11[3] = &unk_278A1F1B8;
      v11[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v11);
      goto LABEL_11;
    }
  }

  if (![(AVQueuePlayer *)self->_player actionAtItemEnd])
  {
    v7 = [v4 object];
    v8 = self->_playerItem;

    if (v7 == v8)
    {
      queuedItem = self->_queuedItem;
      if (queuedItem)
      {
        objc_storeStrong(&self->_playerItem, queuedItem);
        v10 = self->_queuedItem;
        self->_queuedItem = 0;

        if ([(AVPlayerItem *)self->_playerItem status]!= AVPlayerItemStatusReadyToPlay)
        {
          [(CLKVideoPlayerView *)self _observePlayerItem:self->_playerItem];
        }

        v11 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v12 = __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke_2;
      }

      else
      {
        v13 = CLKLoggingObjectForDomain(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CLKVideoPlayerView _handleDidPlayToEndTime:v13];
        }

        v11 = v14;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v12 = __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke_18;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
}

void __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 videoPlayerViewDidPauseAfterPlayingVideoToEnd:*(a1 + 32)];
}

void __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 videoPlayerViewDidBeginPlayingQueuedVideo:*(a1 + 32)];
}

void __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 videoPlayerViewDidPauseAfterPlayingVideoToEnd:*(a1 + 32)];
}

- (void)_periodicTimeObserverChanged:(id *)a3
{
  p_willBeginPlayingTime = &self->_willBeginPlayingTime;
  if (self->_willBeginPlayingTime.timescale >= 1)
  {
    v8 = *&a3->var0;
    var3 = a3->var3;
    v6 = *&p_willBeginPlayingTime->value;
    epoch = self->_willBeginPlayingTime.epoch;
    if (_CMTimeCompare(&v8, &v6))
    {
      if (self->_pausedViewEnabled)
      {
        [(CLKVideoPlayerView *)self _hidePausedView];
      }

      getkCMTimePositiveInfinity(&v8);
      *&p_willBeginPlayingTime->value = v8;
      p_willBeginPlayingTime->epoch = var3;
      kdebug_trace();
      v5 = [(CLKVideoPlayerView *)self delegate];
      [v5 videoPlayerViewDidBeginPlaying:self];
    }
  }
}

- (BOOL)_readyToPerformRequest
{
  if ([(AVPlayerItem *)self->_playerItem status]!= AVPlayerItemStatusReadyToPlay)
  {
    return 0;
  }

  v3 = [(_CLKPlayerView *)self->_playerView layer];
  if ([v3 isReadyForDisplay])
  {
    v4 = self->_servicingRequest == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_performNextRequest
{
  if ([(CLKVideoPlayerView *)self _readyToPerformRequest])
  {
    seekRequested = self->_seekRequested;
    if (seekRequested)
    {
      [(NSValue *)seekRequested CMTimeValue];
      [(CLKVideoPlayerView *)self _seekToTime:v5];
    }

    else if ((*(self + 544) & 2) != 0)
    {

      [(CLKVideoPlayerView *)self _preroll];
    }

    else if (*(self + 544))
    {

      [(CLKVideoPlayerView *)self _play];
    }
  }

  else
  {
    playerItem = self->_playerItem;

    [(AVPlayerItem *)playerItem status];
  }
}

- (void)_showPausedView
{
  if (!self->_pausedView)
  {
    v3 = [(_CLKPlayerView *)self->_playerView snapshotViewAfterScreenUpdates:0];
    pausedView = self->_pausedView;
    self->_pausedView = v3;

    v5 = self->_pausedView;

    [(CLKVideoPlayerView *)self addSubview:v5];
  }
}

- (void)_hidePausedView
{
  [(UIView *)self->_pausedView removeFromSuperview];
  pausedView = self->_pausedView;
  self->_pausedView = 0;
}

- (void)setPausedViewEnabled:(BOOL)a3
{
  self->_pausedViewEnabled = a3;
  if (!a3)
  {
    [(CLKVideoPlayerView *)self _hidePausedView];
  }
}

- (BOOL)isPlaybackReady
{
  v3 = [(AVQueuePlayer *)self->_player currentItem];
  if (v3 == self->_playerItem)
  {
    v5 = [(AVQueuePlayer *)self->_player currentItem];
    v4 = [v5 status] == 1 && -[AVQueuePlayer status](self->_player, "status") == 1 && (*(self + 544) & 4) == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resetRequestState
{
  self->_servicingRequest = 0;
  *(self + 544) &= ~1u;
  seekRequested = self->_seekRequested;
  self->_seekRequested = 0;

  *(self + 544) &= ~2u;
  *(self + 544) &= ~4u;
}

- (void)loadVideo:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a3 url];
  v5 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23702D000, v5, OS_LOG_TYPE_DEFAULT, "CLKVideoPlayerView loadVideo [video url]:%@", &v6, 0xCu);
  }

  [(CLKVideoPlayerView *)self _loadVideo:v4];
}

- (void)queueVideo:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a3 url];
  v4 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23702D000, v4, OS_LOG_TYPE_DEFAULT, "CLKVideoPlayerView queueVideo [video url] :%@", &v5, 0xCu);
  }
}

- (void)prepareNextQueuedVideo
{
  queuedItem = self->_queuedItem;
  if (queuedItem)
  {
    objc_storeStrong(&self->_playerItem, queuedItem);
    v4 = self->_queuedItem;
    self->_queuedItem = 0;

    if ([(AVPlayerItem *)self->_playerItem status]!= AVPlayerItemStatusReadyToPlay)
    {
      playerItem = self->_playerItem;

      [(CLKVideoPlayerView *)self _observePlayerItem:playerItem];
    }
  }
}

- (void)pause
{
  if (self->_playing)
  {
    [(CLKVideoPlayerView *)self _pause];
  }
}

- (void)play
{
  if (!self->_playing)
  {
    kdebug_trace();
    self->_playing = 1;
    if ([(CLKVideoPlayerView *)self _readyToPerformRequest])
    {

      [(CLKVideoPlayerView *)self _play];
    }

    else
    {
      *(self + 544) |= 1u;
    }
  }
}

- (void)seekToTime:(id *)a3
{
  getkCMTimePositiveInfinity(&v6);
  v5 = *a3;
  [(CLKVideoPlayerView *)self seekToTime:&v5 tolerance:&v6];
}

- (void)seekToTime:(id *)a3 tolerance:(id *)a4
{
  kdebug_trace();
  var3 = a4->var3;
  *&self->_seekWithTolerance.value = *&a4->var0;
  self->_seekWithTolerance.epoch = var3;
  if ([(CLKVideoPlayerView *)self _readyToPerformRequest])
  {
    v10 = *&a3->var0;
    v11 = a3->var3;
    [(CLKVideoPlayerView *)self _seekToTime:&v10];
  }

  else
  {
    v10 = *&a3->var0;
    v11 = a3->var3;
    v8 = [MEMORY[0x277CCAE60] valueWithCMTime:&v10];
    seekRequested = self->_seekRequested;
    self->_seekRequested = v8;
  }
}

- (void)preroll
{
  *(self + 544) &= ~4u;
  kdebug_trace();
  if ([(CLKVideoPlayerView *)self _readyToPerformRequest])
  {

    [(CLKVideoPlayerView *)self _preroll];
  }

  else
  {
    *(self + 544) |= 2u;
  }
}

- (id)_createPlayerItemForVideoURL:(id)a3
{
  v5 = a3;
  if (([(NSURL *)self->_assetURL isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_assetURL, a3);
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v6 = getAVURLAssetClass_softClass;
    v22 = getAVURLAssetClass_softClass;
    if (!getAVURLAssetClass_softClass)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __getAVURLAssetClass_block_invoke;
      v17 = &unk_278A1E6A0;
      v18 = &v19;
      __getAVURLAssetClass_block_invoke(&v14);
      v6 = v20[3];
    }

    v7 = v6;
    _Block_object_dispose(&v19, 8);
    v8 = [v6 URLAssetWithURL:v5 options:0];
    asset = self->_asset;
    self->_asset = v8;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v10 = getAVPlayerItemClass_softClass;
  v22 = getAVPlayerItemClass_softClass;
  if (!getAVPlayerItemClass_softClass)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getAVPlayerItemClass_block_invoke;
    v17 = &unk_278A1E6A0;
    v18 = &v19;
    __getAVPlayerItemClass_block_invoke(&v14);
    v10 = v20[3];
  }

  v11 = v10;
  _Block_object_dispose(&v19, 8);
  v12 = [v10 playerItemWithAsset:self->_asset];

  return v12;
}

- (void)_preroll
{
  v3 = [getAVAudioSessionClass() sharedInstance];
  [v3 setRequiresNoAudioResources:1 error:0];

  v4 = [getAVAudioSessionClass() sharedInstance];
  v5 = getAVAudioSessionCategoryAmbient();
  [v4 setCategory:v5 withOptions:1 error:0];

  self->_servicingRequest = 2;
  kdebug_trace();
  player = self->_player;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__CLKVideoPlayerView__preroll__block_invoke;
  v7[3] = &unk_278A1FD10;
  v7[4] = self;
  [(AVQueuePlayer *)player prerollAtRate:v7 completionHandler:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
}

uint64_t __30__CLKVideoPlayerView__preroll__block_invoke(uint64_t a1, uint64_t a2)
{
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 552));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 552));
    [v6 videoPlayerView:*(a1 + 32) didFinishPrerolling:a2];
  }

  *(*(a1 + 32) + 504) = 0;
  *(*(a1 + 32) + 544) &= ~2u;
  v7 = *(a1 + 32);

  return [v7 _performNextRequest];
}

- (void)_play
{
  v3 = [getAVAudioSessionClass() sharedInstance];
  [v3 setRequiresNoAudioResources:1 error:0];

  v4 = [getAVAudioSessionClass() sharedInstance];
  v5 = getAVAudioSessionCategoryAmbient();
  [v4 setCategory:v5 withOptions:1 error:0];

  kdebug_trace();
  player = self->_player;
  if (player)
  {
    [(AVQueuePlayer *)player currentTime];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
  }

  *&self->_willBeginPlayingTime.value = v7;
  self->_willBeginPlayingTime.epoch = v8;
  [(AVQueuePlayer *)self->_player play];
  *(self + 544) &= ~1u;
  [(CLKVideoPlayerView *)self _performNextRequest];
}

- (void)_pause
{
  self->_playing = 0;
  *(self + 544) &= ~1u;
  p_willBeginPlayingTime = &self->_willBeginPlayingTime;
  _CMTimeMakeWithSeconds(0xFFFFFFFFLL, 0.0);
  *p_willBeginPlayingTime = v4;
  [(AVQueuePlayer *)self->_player pause];
  if (self->_pausedViewEnabled)
  {
    [(CLKVideoPlayerView *)self _showPausedView];
  }
}

- (void)_seekToTime:(id *)a3
{
  v5 = [getAVAudioSessionClass() sharedInstance];
  [v5 setRequiresNoAudioResources:1 error:0];

  v6 = [getAVAudioSessionClass() sharedInstance];
  v7 = getAVAudioSessionCategoryAmbient();
  [v6 setCategory:v7 withOptions:1 error:0];

  self->_servicingRequest = 1;
  kdebug_trace();
  player = self->_player;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__CLKVideoPlayerView__seekToTime___block_invoke;
  v12[3] = &unk_278A1FD38;
  v12[4] = self;
  v13 = *a3;
  v11 = *a3;
  seekWithTolerance = self->_seekWithTolerance;
  v9 = self->_seekWithTolerance;
  [(AVQueuePlayer *)player seekToTime:&v11 toleranceBefore:&seekWithTolerance toleranceAfter:&v9 completionHandler:v12];
}

uint64_t __34__CLKVideoPlayerView__seekToTime___block_invoke(uint64_t a1)
{
  kdebug_trace();
  *(*(a1 + 32) + 504) = 0;
  v2 = *(*(a1 + 32) + 512);
  if (v2)
  {
    [v2 CMTimeValue];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  if (!_CMTimeCompare(&v6, &v8))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 512);
    *(v3 + 512) = 0;
  }

  return [*(a1 + 32) _performNextRequest];
}

- (void)_loadVideo:(id)a3
{
  v4 = a3;
  [(CLKVideoPlayerView *)self resetRequestState];
  [(CLKVideoPlayerView *)self _stopObservingPlayerItem];
  [(CLKVideoPlayerView *)self _pause];
  [(AVQueuePlayer *)self->_player removeAllItems];
  playerItem = self->_playerItem;
  self->_playerItem = 0;

  queuedItem = self->_queuedItem;
  self->_queuedItem = 0;

  if (v4)
  {
    v7 = [getAVAudioSessionClass() sharedInstance];
    [v7 setRequiresNoAudioResources:1 error:0];

    v8 = [getAVAudioSessionClass() sharedInstance];
    v9 = getAVAudioSessionCategoryAmbient();
    [v8 setCategory:v9 withOptions:1 error:0];

    v10 = [(CLKVideoPlayerView *)self _createPlayerItemForVideoURL:v4];
    v11 = self->_playerItem;
    self->_playerItem = v10;

    v12 = self->_playerItem;
    v13 = CLKLoggingObjectForDomain(0);
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_23702D000, v14, OS_LOG_TYPE_DEFAULT, "CLKVideoPlayerView loadVideo [success]", v21, 2u);
      }

      [(CLKVideoPlayerView *)self _observePlayerItem:self->_playerItem];
      [(AVQueuePlayer *)self->_player insertItem:self->_playerItem afterItem:0];
      [(AVQueuePlayer *)self->_player setActionAtItemEnd:1];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CLKVideoPlayerView *)v4 _loadVideo:v14, v15, v16, v17, v18, v19, v20];
      }
    }
  }
}

- (void)_queueVideo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_playerItem)
    {
      if (self->_queuedItem)
      {
        v5 = CLKLoggingObjectForDomain(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(CLKVideoPlayerView *)v4 _queueVideo:v5, v6, v7, v8, v9, v10, v11];
        }
      }

      else
      {
        v12 = [getAVAudioSessionClass() sharedInstance];
        [v12 setRequiresNoAudioResources:1 error:0];

        v13 = [getAVAudioSessionClass() sharedInstance];
        v14 = getAVAudioSessionCategoryAmbient();
        [v13 setCategory:v14 withOptions:1 error:0];

        kdebug_trace();
        v15 = [(CLKVideoPlayerView *)self _createPlayerItemForVideoURL:v4];
        queuedItem = self->_queuedItem;
        self->_queuedItem = v15;

        v17 = self->_queuedItem;
        v18 = CLKLoggingObjectForDomain(0);
        v19 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&dword_23702D000, v19, OS_LOG_TYPE_DEFAULT, "CLKVideoPlayerView _createPlayerItemForVideoURL [success]", v26, 2u);
          }

          [(AVQueuePlayer *)self->_player insertItem:self->_queuedItem afterItem:0];
          [(AVQueuePlayer *)self->_player setActionAtItemEnd:0];
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(CLKVideoPlayerView *)v4 _loadVideo:v19, v20, v21, v22, v23, v24, v25];
          }
        }

        kdebug_trace();
      }
    }

    else
    {
      [(CLKVideoPlayerView *)self _loadVideo:v4];
    }
  }
}

- (CLKVideoPlayerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end