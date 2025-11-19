@interface LPStreamingVideoView
- (BOOL)releaseDecodingResourcesIfInactive;
- (BOOL)shouldAutoPlay;
- (BOOL)shouldShowMuteButton;
- (LPStreamingVideoView)initWithHost:(id)a3 video:(id)a4 style:(id)a5 posterFrame:(id)a6 posterFrameStyle:(id)a7 configuration:(id)a8;
- (id)createFullScreenVideoViewController;
- (id)createVideoPlayerView;
- (void)beginLoadingMediaForPreroll;
- (void)createPlayerIfNeeded;
- (void)createPlayerItemAdjustedForLoopingWithAsset:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)destroyPlayer;
- (void)didFailToPlay;
- (void)fullScreenVideoDidPresent;
- (void)fullScreenVideoWillDismiss;
- (void)layoutComponentView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForDisplayWithCompletionHandler:(id)a3;
- (void)resetToPlaceholderView;
- (void)setMuted:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setVolume:(double)a3;
@end

@implementation LPStreamingVideoView

- (LPStreamingVideoView)initWithHost:(id)a3 video:(id)a4 style:(id)a5 posterFrame:(id)a6 posterFrameStyle:(id)a7 configuration:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = LPStreamingVideoView;
  v20 = [(LPVisualMediaView *)&v24 initWithHost:v14 media:v15 style:v16 posterFrame:v17 posterFrameStyle:v18 configuration:v19];
  v21 = v20;
  if (v20)
  {
    v20->_desiredVolume = 0.0;
    v20->_desiredPlayingState = [(LPStreamingVideoView *)v20 shouldAutoPlay];
    v22 = v21;
  }

  return v21;
}

- (void)dealloc
{
  [(LPStreamingVideoView *)self destroyPlayer];
  v3.receiver = self;
  v3.super_class = LPStreamingVideoView;
  [(LPVisualMediaView *)&v3 dealloc];
}

- (void)createPlayerItemAdjustedForLoopingWithAsset:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke;
  v10[3] = &unk_1E7A354C8;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [v8 loadValuesAsynchronouslyForKeys:&unk_1F24836F8 keysForCollectionKeys:&unk_1F2483CB0 completionHandler:v10];
}

void __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7A354A0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2(v6);
  (*(v2 + 16))(v2, v5);
}

id __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69880B0] playerItemWithAsset:*(a1 + 32)];
  v3 = [*(a1 + 32) tracksWithMediaCharacteristic:*MEMORY[0x1E6987590]];
  v4 = [*(a1 + 32) tracksWithMediaCharacteristic:*MEMORY[0x1E69874F8]];
  if ([v3 count] == 1 && objc_msgSend(v4, "count") == 1)
  {
    v5 = [v3 firstObject];
    v6 = [v4 firstObject];
    if ([v5 isEnabled] && (objc_msgSend(v6, "isEnabled") & 1) != 0)
    {
      memset(&v19, 0, sizeof(v19));
      if (v5)
      {
        [v5 timeRange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      CMTimeRangeGetEnd(&v19, &range);
      memset(&v18, 0, sizeof(v18));
      if (v6)
      {
        [v6 timeRange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      CMTimeRangeGetEnd(&v18, &range);
      if ((v19.flags & 0x1D) == 1 && (v18.flags & 0x1D) == 1)
      {
        range.start = v19;
        time2 = v18;
        if (CMTimeCompare(&range.start, &time2))
        {
          memset(&range, 0, 24);
          lhs = v19;
          rhs = v18;
          CMTimeSubtract(&time2, &lhs, &rhs);
          CMTimeAbsoluteValue(&range.start, &time2);
          time2 = range.start;
          Seconds = CMTimeGetSeconds(&time2);
          v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
          if (Seconds <= 0.1)
          {
            if (v9)
            {
              v13 = [*(a1 + 40) loggingID];
              time2 = range.start;
              v14 = CMTimeGetSeconds(&time2);
              __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2_cold_4(&time2, v20, v13, v14);
            }

            lhs = v19;
            rhs = v18;
            CMTimeMinimum(&v15, &lhs, &rhs);
            lhs = v15;
            [v2 setForwardPlaybackEndTime:&lhs];
          }

          else if (v9)
          {
            v10 = [*(a1 + 40) loggingID];
            time2 = range.start;
            v11 = CMTimeGetSeconds(&time2);
            __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2_cold_5(&time2, &lhs, v10, v11);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2_cold_6(&range, [*(a1 + 40) loggingID]);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2_cold_3(&range, [*(a1 + 40) loggingID]);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2_cold_2([v5 isEnabled], objc_msgSend(v6, "isEnabled"), &range, objc_msgSend(*(a1 + 40), "loggingID"));
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v7 = [*(a1 + 40) loggingID];
    [v3 count];
    [v4 count];
    __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2_cold_1(&range, v7);
  }

  return v2;
}

- (void)createPlayerIfNeeded
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_player && self->_hasCreatedVideoPlayerView)
  {
    v3 = LPLogChannelUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(LPStreamingVideoView *)v23 createPlayerIfNeeded];
    }

    v4 = objc_alloc_init(MEMORY[0x1E6988100]);
    player = self->_player;
    self->_player = v4;

    v6 = +[LPMediaPlaybackManager shared];
    v7 = [v6 audioSession];
    [(AVQueuePlayer *)self->_player setAudioSession:v7];

    v8 = [(LPVisualMediaView *)self media];
    v9 = [v8 streamingURL];
    [(AVQueuePlayer *)self->_player setAutomaticallyWaitsToMinimizeStalling:v9 != 0];

    [(AVQueuePlayer *)self->_player setPreventsDisplaySleepDuringVideoPlayback:0];
    v10 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:self->_player];
    playerLayer = self->_playerLayer;
    self->_playerLayer = v10;

    [(AVPlayerLayer *)self->_playerLayer setVideoGravity:*MEMORY[0x1E69874F0]];
    v12 = +[LPActionDisablingCALayerDelegate shared];
    [(AVPlayerLayer *)self->_playerLayer setDelegate:v12];

    v22 = self->_playerLayer;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v14 = [(LPVisualMediaView *)self playbackView];
    v15 = [v14 layer];
    [v15 setSublayers:v13];

    [(UIView *)self _lp_setNeedsLayout];
    v16 = [(LPVisualMediaView *)self media];
    v17 = [v16 _asset];

    if (v17)
    {
      objc_initWeak(&location, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __44__LPStreamingVideoView_createPlayerIfNeeded__block_invoke;
      v19[3] = &unk_1E7A354F0;
      objc_copyWeak(&v20, &location);
      [(LPStreamingVideoView *)self createPlayerItemAdjustedForLoopingWithAsset:v17 completionHandler:v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    [(LPStreamingVideoView *)self setVolume:self->_desiredVolume];
    [(LPStreamingVideoView *)self setPlaying:self->_desiredPlayingState];
    [(AVQueuePlayer *)self->_player addObserver:self forKeyPath:@"timeControlStatus" options:1 context:timeControlStatusKVOContext];
    if (self->_readyForDisplayCallback)
    {
      if ([(AVPlayerLayer *)self->_playerLayer isReadyForDisplay])
      {
        (*(self->_readyForDisplayCallback + 2))();
        readyForDisplayCallback = self->_readyForDisplayCallback;
        self->_readyForDisplayCallback = 0;
      }

      else
      {
        [(AVPlayerLayer *)self->_playerLayer addObserver:self forKeyPath:@"readyForDisplay" options:1 context:&readyForDisplayKVOContext];
      }
    }

    [(LPVisualMediaView *)self recreateFullScreenViewControllerIfNeeded];
  }
}

void __44__LPStreamingVideoView_createPlayerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[76];
    if (v5)
    {
      v6 = [MEMORY[0x1E69880E8] playerLooperWithPlayer:v5 templateItem:v8];
      v7 = v4[77];
      v4[77] = v6;

      [v4[77] addObserver:v4 forKeyPath:@"status" options:1 context:statusChangeKVOContext];
    }
  }
}

- (void)destroyPlayer
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self->_player)
  {
    v3 = LPLogChannelUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(LPStreamingVideoView *)v7 destroyPlayer];
    }

    [(AVQueuePlayer *)self->_player removeObserver:self forKeyPath:@"timeControlStatus" context:timeControlStatusKVOContext];
    player = self->_player;
    self->_player = 0;

    [(AVPlayerLooper *)self->_looper removeObserver:self forKeyPath:@"status" context:statusChangeKVOContext];
    looper = self->_looper;
    self->_looper = 0;

    if (self->_readyForDisplayCallback)
    {
      [(AVPlayerLayer *)self->_playerLayer removeObserver:self forKeyPath:@"readyForDisplay" context:&readyForDisplayKVOContext];
    }

    [(AVPlayerLayer *)self->_playerLayer removeFromSuperlayer];
    playerLayer = self->_playerLayer;
    self->_playerLayer = 0;

    [(LPVisualMediaView *)self destroyFullScreenViewController];
    [(LPVisualMediaView *)self didChangePlayingState:0];
  }
}

- (void)resetToPlaceholderView
{
  [(LPStreamingVideoView *)self destroyPlayer];
  v3.receiver = self;
  v3.super_class = LPStreamingVideoView;
  [(LPVisualMediaView *)&v3 resetToPlaceholderView];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (timeControlStatusKVOContext != a6)
  {
    if (readyForDisplayKVOContext == a6)
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x3032000000;
      v23[3] = __Block_byref_object_copy_;
      v23[4] = __Block_byref_object_dispose_;
      v16 = self;
      v24 = v16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__LPStreamingVideoView_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E7A35518;
      block[4] = v23;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      readyForDisplayCallback = v16->_readyForDisplayCallback;
      if (readyForDisplayCallback)
      {
        readyForDisplayCallback[2]();
        v18 = v16->_readyForDisplayCallback;
        v16->_readyForDisplayCallback = 0;

        [(AVPlayerLayer *)v16->_playerLayer removeObserver:v16 forKeyPath:@"readyForDisplay" context:&readyForDisplayKVOContext];
      }

      _Block_object_dispose(v23, 8);
    }

    else if (statusChangeKVOContext == a6)
    {
      if ([(AVPlayerLooper *)self->_looper status]== AVPlayerLooperStatusFailed)
      {
        [(LPStreamingVideoView *)self didFailToPlay];
      }
    }

    else
    {
      v21.receiver = self;
      v21.super_class = LPStreamingVideoView;
      [(LPStreamingVideoView *)&v21 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    }

    goto LABEL_20;
  }

  v13 = [(LPVisualMediaView *)self hasEverPlayed];
  player = self->_player;
  if (v13)
  {
    if ([(AVQueuePlayer *)player timeControlStatus])
    {
      v15 = 1;
      goto LABEL_18;
    }

    [(AVQueuePlayer *)self->_player rate];
    v19 = v20 == 1.0;
  }

  else
  {
    v19 = [(AVQueuePlayer *)player timeControlStatus]== 2;
  }

  v15 = v19;
LABEL_18:
  [(LPVisualMediaView *)self didChangePlayingState:v15];
  if ([(AVQueuePlayer *)self->_player timeControlStatus]== 2)
  {
    [(LPVisualMediaView *)self setHasEverPlayed:1];
    [(LPVisualMediaView *)self setWaitingForPlayback:0];
    self->_playbackRetryCountWithoutSuccess = 0;
  }

LABEL_20:
}

void __71__LPStreamingVideoView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)didFailToPlay
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2112;
  *(buf + 10) = a1;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPStreamingVideoView<%d>: failed to play, will try again later (%@)", buf, 0x12u);
}

uint64_t __37__LPStreamingVideoView_didFailToPlay__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  *(*(a1 + 32) + 641) = 0;
  v2 = *(*(a1 + 32) + 616);
  if (!v2 || (result = [v2 status], result == 2))
  {
    v4 = LPLogChannelUI();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __37__LPStreamingVideoView_didFailToPlay__block_invoke_cold_1(v1, v6, [*v1 loggingID], v4);
    }

    v5 = *v1;
    if (*(*v1 + 648))
    {
      return [v5 createPlayerIfNeeded];
    }

    else
    {
      return [v5 setWaitingForPlayback:0];
    }
  }

  return result;
}

- (void)beginLoadingMediaForPreroll
{
  [(LPVisualMediaView *)self _swapVideoPlaceholderForVideoForAutoPlay:1];
  [(LPStreamingVideoView *)self createPlayerIfNeeded];

  [(LPVisualMediaView *)self removePlaceholderViews];
}

- (void)setPlaying:(BOOL)a3
{
  v3 = a3;
  if ([(LPVisualMediaView *)self isPlaying]!= a3)
  {
    [(LPStreamingVideoView *)self createPlayerIfNeeded];
    self->_desiredPlayingState = v3;
    *&v5 = v3;
    [(AVQueuePlayer *)self->_player setRate:v5];
    [(LPVisualMediaView *)self setWaitingForPlayback:v3];

    [(LPVisualMediaView *)self swapVideoPlaceholderForPlaybackIfNeeded];
  }
}

- (BOOL)releaseDecodingResourcesIfInactive
{
  v7[1] = *MEMORY[0x1E69E9840];
  player = self->_player;
  if (player)
  {
    [(AVQueuePlayer *)player rate];
    if (v4 == 0.0 && !self->_desiredPlayingState)
    {
      v5 = LPLogChannelUI();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(LPStreamingVideoView *)v7 releaseDecodingResourcesIfInactive];
      }

      [(LPStreamingVideoView *)self destroyPlayer];
      LOBYTE(player) = 1;
    }

    else
    {
      LOBYTE(player) = 0;
    }
  }

  return player;
}

- (BOOL)shouldAutoPlay
{
  if (+[LPSettings disableAutoPlay])
  {
    return 0;
  }

  v3 = [(LPVisualMediaView *)self configuration];
  v4 = [v3 disableAutoPlay];

  if (v4)
  {
    return 0;
  }

  v6 = [(LPVisualMediaView *)self media];
  v7 = [v6 data];
  if (v7)
  {
    v8 = [(LPVisualMediaView *)self media];
    v9 = [v8 streamingURL];
    v5 = v9 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowMuteButton
{
  v2 = [(LPVisualMediaView *)self media];
  v3 = [v2 hasAudio];

  return v3;
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  if ([(LPStreamingVideoView *)self isMuted]!= a3)
  {

    [(LPStreamingVideoView *)self setVolume:!v3];
  }
}

- (void)setVolume:(double)a3
{
  v5 = [(LPStreamingVideoView *)self isMuted];
  v6 = a3;
  self->_desiredVolume = v6;
  [(AVQueuePlayer *)self->_player setVolume:?];
  [(AVQueuePlayer *)self->_player setMuted:0];
  if (v5 != [(LPStreamingVideoView *)self isMuted])
  {
    v7 = [(LPStreamingVideoView *)self isMuted];

    [(LPVisualMediaView *)self didChangeMutedState:v7];
  }
}

- (void)layoutComponentView
{
  v5.receiver = self;
  v5.super_class = LPStreamingVideoView;
  [(LPVisualMediaView *)&v5 layoutComponentView];
  v3 = [(LPVisualMediaView *)self playbackView];
  v4 = [v3 layer];
  [v4 bounds];
  [(AVPlayerLayer *)self->_playerLayer setFrame:?];
}

- (id)createFullScreenVideoViewController
{
  v2 = [[LPFullScreenVideoController alloc] initWithPlayer:self->_player sourceView:self];

  return v2;
}

- (id)createVideoPlayerView
{
  v7[1] = *MEMORY[0x1E69E9840];
  self->_hasCreatedVideoPlayerView = 1;
  [(LPStreamingVideoView *)self createPlayerIfNeeded];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setUserInteractionEnabled:0];
  if (self->_playerLayer)
  {
    v7[0] = self->_playerLayer;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v5 = [v3 layer];
    [v5 setSublayers:v4];
  }

  return v3;
}

- (void)prepareForDisplayWithCompletionHandler:(id)a3
{
  aBlock = a3;
  if ([(AVPlayerLayer *)self->_playerLayer isReadyForDisplay])
  {
    aBlock[2]();
  }

  else
  {
    if (!self->_readyForDisplayCallback)
    {
      [(AVPlayerLayer *)self->_playerLayer addObserver:self forKeyPath:@"readyForDisplay" options:0 context:&readyForDisplayKVOContext];
    }

    v4 = _Block_copy(aBlock);
    readyForDisplayCallback = self->_readyForDisplayCallback;
    self->_readyForDisplayCallback = v4;
  }
}

- (void)fullScreenVideoDidPresent
{
  v3.receiver = self;
  v3.super_class = LPStreamingVideoView;
  [(LPVisualMediaView *)&v3 fullScreenVideoDidPresent];
  [(AVQueuePlayer *)self->_player setPreventsDisplaySleepDuringVideoPlayback:1];
}

- (void)fullScreenVideoWillDismiss
{
  v3.receiver = self;
  v3.super_class = LPStreamingVideoView;
  [(LPVisualMediaView *)&v3 fullScreenVideoWillDismiss];
  [(AVQueuePlayer *)self->_player setPreventsDisplaySleepDuringVideoPlayback:0];
}

void __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2_cold_1(uint64_t a1, int a2)
{
  v2 = OUTLINED_FUNCTION_0(a1, a2, 1.5048e-36);
  *(v2 + 8) = 2048;
  *(v2 + 10) = v3;
  *(v2 + 18) = 2048;
  *(v2 + 20) = v4;
  _os_log_debug_impl(&dword_1AE886000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "LPStreamingVideoView<%d> preparing video for looping, bailing (count: video=%lu, audio=%lu)", v5, 0x1Cu);
}

void __86__LPStreamingVideoView_createPlayerItemAdjustedForLoopingWithAsset_completionHandler___block_invoke_2_cold_2(char a1, char a2, uint8_t *buf, int a4)
{
  *buf = 67109632;
  *(buf + 1) = a4;
  *(buf + 4) = 1024;
  *(buf + 10) = a1 & 1;
  *(buf + 7) = 1024;
  *(buf + 4) = a2 & 1;
  _os_log_debug_impl(&dword_1AE886000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "LPStreamingVideoView<%d> preparing video for looping, bailing (enabled: video=%d, audio=%d)", buf, 0x14u);
}

void __37__LPStreamingVideoView_didFailToPlay__block_invoke_cold_1(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  v4 = *(*a1 + 648);
  *buf = 67109376;
  *(buf + 1) = a3;
  *(buf + 4) = 1024;
  *(buf + 10) = v4;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPStreamingVideoView<%d>: retrying playback after failing to play (desiredPlayingState=%d)", buf, 0xEu);
}

@end