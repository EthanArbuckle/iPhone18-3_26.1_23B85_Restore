@interface TUIVideoPlayer
- (AVAsset)playerAsset;
- (BOOL)captionsEnabled;
- (BOOL)isPlaying;
- (TUIVideoPlayer)initWithUrl:(id)a3 videoId:(id)a4;
- (TUIVideoPlayerDelegate)delegate;
- (id)_failureAsString;
- (id)_stateAsString;
- (id)_timeControlStatusAsString;
- (void)_addPlaybackCheckObservers;
- (void)_addPlayerItemObservers;
- (void)_addPlayerObservers;
- (void)_loadPlayerWithAsset:(id)a3;
- (void)_removePlaybackCheckObservers;
- (void)_removePlayerItemObservers;
- (void)_removePlayerObservers;
- (void)beginLoadingResources;
- (void)dealloc;
- (void)handlePlaybackChecksChange:(id)a3 keyPath:(id)a4 playbackChecks:(id)a5;
- (void)handlePlayerChange:(id)a3 keyPath:(id)a4 player:(id)a5;
- (void)handlePlayerItemChange:(id)a3 keyPath:(id)a4 playerItem:(id)a5;
- (void)logPlayerStatus;
- (void)mediaSelectionDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)playbackErrorOccured:(id)a3;
- (void)releaseResources;
- (void)reload;
- (void)reloadWithNewURL:(id)a3;
- (void)reset;
- (void)setDelegate:(id)a3;
- (void)setFailureCount:(int64_t)a3;
- (void)setFailureReason:(unint64_t)a3;
- (void)setLastPlaybackTime:(id *)a3;
- (void)setMuted:(BOOL)a3;
- (void)setPlayerItem:(id)a3;
- (void)setShouldLoop:(BOOL)a3;
- (void)setState:(unint64_t)a3;
- (void)setTimeObserver:(id)a3;
- (void)videoDidPlayToEnd;
- (void)videoPlaybackDidStall;
@end

@implementation TUIVideoPlayer

- (TUIVideoPlayer)initWithUrl:(id)a3 videoId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TUIVideoPlayer;
  v9 = [(TUIVideoPlayer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoUrl, a3);
    objc_storeStrong(&v10->_videoId, a4);
    *&v10->_lastPlaybackTime.value = *&kCMTimeZero.value;
    v10->_lastPlaybackTime.epoch = kCMTimeZero.epoch;
    v11 = objc_alloc_init(_TUIVideoPlaybackChecks);
    playbackChecks = v10->_playbackChecks;
    v10->_playbackChecks = v11;

    [(TUIVideoPlayer *)v10 _addPlayerObservers];
    [(TUIVideoPlayer *)v10 _addPlaybackCheckObservers];
  }

  return v10;
}

- (void)dealloc
{
  [(TUIVideoPlayer *)self _removePlayerObservers];
  [(TUIVideoPlayer *)self _removePlayerItemObservers];
  [(TUIVideoPlayer *)self _removePlaybackCheckObservers];
  if (self->_timeObserver)
  {
    [(TUIVideoPlayer *)self removeTimeObserver:?];
  }

  v3.receiver = self;
  v3.super_class = TUIVideoPlayer;
  [(TUIVideoPlayer *)&v3 dealloc];
}

- (void)setPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [(TUIVideoPlayer *)self playerItem];

  if (v5)
  {
    [(TUIVideoPlayer *)self _removePlayerItemObservers];
  }

  playerItem = self->_playerItem;
  self->_playerItem = v4;

  [(TUIVideoPlayer *)self replaceCurrentItemWithPlayerItem:0];

  [(TUIVideoPlayer *)self _addPlayerItemObservers];
}

- (void)setShouldLoop:(BOOL)a3
{
  if (self->_shouldLoop != a3)
  {
    self->_shouldLoop = a3;
  }
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    if (a3 == 6)
    {
      self->_shouldBePlaying = 1;
    }

    if (*&self->_delegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained player:self didChangeState:self->_state];
    }

    v5 = TUIVideoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(TUIVideoPlayer *)self _stateAsString];
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ : Did change state: %@", &v7, 0x16u);
    }
  }
}

- (void)setTimeObserver:(id)a3
{
  v4 = a3;
  if (self->_timeObserver)
  {
    [(TUIVideoPlayer *)self removeTimeObserver:?];
  }

  timeObserver = self->_timeObserver;
  self->_timeObserver = v4;
}

- (void)setLastPlaybackTime:(id *)a3
{
  [(NSLock *)self->_lastPlaybackTimeLock lock];
  v5 = *&a3->var0;
  self->_lastPlaybackTime.epoch = a3->var3;
  *&self->_lastPlaybackTime.value = v5;
  lastPlaybackTimeLock = self->_lastPlaybackTimeLock;

  [(NSLock *)lastPlaybackTimeLock unlock];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFBF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFF7F | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFEFF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFDFF | v13;
  }
}

- (void)setFailureCount:(int64_t)a3
{
  self->_failureCount = a3;
  v5 = a3 - 1;
  v6 = TUIVideoLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 > 1)
  {
    if (v7)
    {
      v8 = 138412546;
      v9 = self;
      v10 = 2048;
      v11 = 2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ : Did reach reload limit of %lu", &v8, 0x16u);
    }

    [(TUIVideoPlayer *)self setState:10];
  }

  else
  {
    if (v7)
    {
      v8 = 138412802;
      v9 = self;
      v10 = 2048;
      v11 = a3;
      v12 = 2048;
      v13 = 2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ : Attempting to reload, attempt %lu of %lu", &v8, 0x20u);
    }

    [(TUIVideoPlayer *)self reload];
  }
}

- (void)setFailureReason:(unint64_t)a3
{
  self->_failureReason = a3;
  if (a3)
  {
    v4 = TUIVideoLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(TUIVideoPlayer *)self _failureAsString];
      v8 = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ : Playback did fail, reason: %@", &v8, 0x16u);
    }

    if ((*&self->_delegateFlags & 0x100) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      failureReason = self->_failureReason;
      [(TUIVideoPlayer *)self currentTimePlayed];
      [WeakRetained player:self didSetFailureReason:failureReason mediaTimePlayed:?];
    }

    [(TUIVideoPlayer *)self setFailureCount:[(TUIVideoPlayer *)self failureCount]+ 1];
  }
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(TUIVideoPlayer *)self isMuted]!= v3)
  {
    v6.receiver = self;
    v6.super_class = TUIVideoPlayer;
    [(TUIVideoPlayer *)&v6 setMuted:v3];
    if ((*&self->_delegateFlags & 0x80) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(TUIVideoPlayer *)self currentTimePlayed];
      [WeakRetained player:self didSetMuted:v3 mediaTimePlayed:?];
    }
  }
}

- (AVAsset)playerAsset
{
  playerItem = self->_playerItem;
  if (playerItem)
  {
    playerItem = [playerItem asset];
    v2 = vars8;
  }

  return playerItem;
}

- (BOOL)isPlaying
{
  if (self->_state == 7 || [(TUIVideoPlayer *)self timeControlStatus]!= &dword_0 + 2)
  {
    return 0;
  }

  v3 = [(TUIVideoPlayer *)self error];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)captionsEnabled
{
  v3 = [(TUIVideoPlayer *)self playerItem];
  v4 = [(TUIVideoPlayer *)self playerItem];
  v5 = [v4 asset];
  v6 = [v5 mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicLegible];

  if (v6)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [v3 currentMediaSelection];
    v9 = [v8 selectedMediaOptionInMediaSelectionGroup:v6];

    v10 = v9 != 0;
  }

  return v10;
}

- (void)beginLoadingResources
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_videoUrl)
  {
    v3 = [(TUIVideoPlayer *)self playerAsset];

    if (v3)
    {
      v4 = [(TUIVideoPlayer *)self playerAsset];
      [v4 cancelLoading];
    }

    [(TUIVideoPlayer *)self setState:1];
    objc_initWeak(&location, self);
    videoUrl = self->_videoUrl;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_158C84;
    v6[3] = &unk_262BA0;
    objc_copyWeak(&v7, &location);
    [AVAsset tui_createAssetFromURL:videoUrl completion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)releaseResources
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(TUIVideoPlayer *)self isPlaying])
  {
    [(TUIVideoPlayer *)self pause];
  }

  [(TUIVideoPlayer *)self currentTime];
  v5 = v7;
  v6 = v8;
  [(TUIVideoPlayer *)self setLastPlaybackTime:&v5];
  v3 = [(TUIVideoPlayer *)self playerAsset];
  [v3 cancelLoading];

  v4 = [(TUIVideoPlayer *)self playbackChecks];
  [v4 reset];

  [(TUIVideoPlayer *)self setPlayerItem:0];
  [(TUIVideoPlayer *)self setState:0];
}

- (void)reset
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(TUIVideoPlayer *)self releaseResources];
  v3 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [(TUIVideoPlayer *)self setLastPlaybackTime:&v3];
  [(TUIVideoPlayer *)self setFailureReason:0];
  self->_shouldBePlaying = 0;
  self->_failureCount = 0;
}

- (void)reloadWithNewURL:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(TUIVideoPlayer *)self isPlaying];
  [(TUIVideoPlayer *)self releaseResources];
  self->_shouldBePlaying = v5;
  videoUrl = self->_videoUrl;
  self->_videoUrl = v4;

  [(TUIVideoPlayer *)self reload];
}

- (void)reload
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(TUIVideoPlayer *)self setState:0];
  [(TUIVideoPlayer *)self setFailureReason:0];
  v3 = [(TUIVideoPlayer *)self playerAsset];

  if (v3)
  {
    v4 = [(TUIVideoPlayer *)self playerAsset];
    [v4 cancelLoading];
  }

  [(TUIVideoPlayer *)self setPlayerItem:0];
  v5 = [(TUIVideoPlayer *)self playbackChecks];
  [v5 reset];

  [(TUIVideoPlayer *)self beginLoadingResources];
}

- (void)play
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (![(TUIVideoPlayer *)self isPlaying])
  {
    self->_shouldBePlaying = 1;
    if (self->_state)
    {
      v3 = [(TUIVideoPlayer *)self playbackChecks];
      v4 = [v3 complete];

      if (v4)
      {
        v5.receiver = self;
        v5.super_class = TUIVideoPlayer;
        [(TUIVideoPlayer *)&v5 play];
      }
    }

    else
    {

      [(TUIVideoPlayer *)self beginLoadingResources];
    }
  }
}

- (void)pause
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  self->_shouldBePlaying = 0;
  v3.receiver = self;
  v3.super_class = TUIVideoPlayer;
  [(TUIVideoPlayer *)&v3 pause];
}

- (void)_loadPlayerWithAsset:(id)a3
{
  v4 = a3;
  v14[0] = @"duration";
  v14[1] = @"playable";
  v5 = [NSArray arrayWithObjects:v14 count:2];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_159228;
  v8[3] = &unk_262C40;
  objc_copyWeak(&v12, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  v11 = self;
  [v7 loadValuesAsynchronouslyForKeys:v6 completionHandler:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_addPlaybackCheckObservers
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(_TUIVideoPlaybackChecks *)self->_playbackChecks addObserver:self forKeyPath:@"assetKeysLoaded" options:1 context:&off_262C60];
  [(_TUIVideoPlaybackChecks *)self->_playbackChecks addObserver:self forKeyPath:@"itemIsReadyToPlay" options:1 context:&off_262C60];
  playbackChecks = self->_playbackChecks;

  [(_TUIVideoPlaybackChecks *)playbackChecks addObserver:self forKeyPath:@"playbackLikelyToKeepUp" options:1 context:&off_262C60];
}

- (void)_removePlaybackCheckObservers
{
  [(_TUIVideoPlaybackChecks *)self->_playbackChecks removeObserver:self forKeyPath:@"assetKeysLoaded"];
  [(_TUIVideoPlaybackChecks *)self->_playbackChecks removeObserver:self forKeyPath:@"itemIsReadyToPlay"];
  playbackChecks = self->_playbackChecks;

  [(_TUIVideoPlaybackChecks *)playbackChecks removeObserver:self forKeyPath:@"playbackLikelyToKeepUp"];
}

- (void)_addPlayerObservers
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(TUIVideoPlayer *)self addObserver:self forKeyPath:@"rate" options:1 context:&off_262C60];
  [(TUIVideoPlayer *)self addObserver:self forKeyPath:@"timeControlStatus" options:1 context:&off_262C60];

  [(TUIVideoPlayer *)self addObserver:self forKeyPath:@"reasonForWaitingToPlay" options:1 context:&off_262C60];
}

- (void)_removePlayerObservers
{
  [(TUIVideoPlayer *)self removeObserver:self forKeyPath:@"rate" context:&off_262C60];
  [(TUIVideoPlayer *)self removeObserver:self forKeyPath:@"timeControlStatus" context:&off_262C60];

  [(TUIVideoPlayer *)self removeObserver:self forKeyPath:@"reasonForWaitingToPlay" context:&off_262C60];
}

- (void)_addPlayerItemObservers
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  playerItem = self->_playerItem;
  if (playerItem)
  {
    [(AVPlayerItem *)playerItem addObserver:self forKeyPath:@"status" options:1 context:&off_262C60];
    [(AVPlayerItem *)self->_playerItem addObserver:self forKeyPath:@"playbackLikelyToKeepUp" options:1 context:&off_262C60];
    [(AVPlayerItem *)self->_playerItem addObserver:self forKeyPath:@"playbackBufferFull" options:1 context:&off_262C60];
    [(AVPlayerItem *)self->_playerItem addObserver:self forKeyPath:@"playbackBufferEmpty" options:1 context:&off_262C60];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"videoDidPlayToEnd" name:AVPlayerItemDidPlayToEndTimeNotification object:self->_playerItem];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"videoPlaybackDidStall" name:AVPlayerItemPlaybackStalledNotification object:self->_playerItem];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"playbackErrorOccured:" name:AVPlayerItemFailedToPlayToEndTimeErrorKey object:self->_playerItem];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"playbackErrorOccured:" name:AVPlayerItemNewErrorLogEntryNotification object:self->_playerItem];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"mediaSelectionDidChange:" name:AVPlayerItemMediaSelectionDidChangeNotification object:self->_playerItem];
  }
}

- (void)_removePlayerItemObservers
{
  playerItem = self->_playerItem;
  if (playerItem)
  {
    [(AVPlayerItem *)playerItem removeObserver:self forKeyPath:@"status" context:&off_262C60];
    [(AVPlayerItem *)self->_playerItem removeObserver:self forKeyPath:@"playbackLikelyToKeepUp" context:&off_262C60];
    [(AVPlayerItem *)self->_playerItem removeObserver:self forKeyPath:@"playbackBufferFull" context:&off_262C60];
    [(AVPlayerItem *)self->_playerItem removeObserver:self forKeyPath:@"playbackBufferEmpty" context:&off_262C60];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:self->_playerItem];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:AVPlayerItemPlaybackStalledNotification object:self->_playerItem];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:AVPlayerItemFailedToPlayToEndTimeErrorKey object:self->_playerItem];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:AVPlayerItemNewErrorLogEntryNotification object:self->_playerItem];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:AVPlayerItemMediaSelectionDidChangeNotification object:self->_playerItem];
  }
}

- (void)videoDidPlayToEnd
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15A0C0;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)videoPlaybackDidStall
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15A224;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)playbackErrorOccured:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15A358;
  v5[3] = &unk_25DCA0;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)mediaSelectionDidChange:(id)a3
{
  v4 = a3;
  if ((*&self->_delegateFlags & 0x200) != 0)
  {
    v7 = v4;
    v5 = [(TUIVideoPlayer *)self captionsEnabled];
    v4 = v7;
    if (self->_lastCaptionsEnabled != v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained player:self didSetCaptionsEnabled:{-[TUIVideoPlayer captionsEnabled](self, "captionsEnabled")}];

      v4 = v7;
      self->_lastCaptionsEnabled = v5;
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a6 == &off_262C60)
  {
    if (v10 && v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_opt_class();
        v15 = TUIDynamicCast(v14, v11);
        [(TUIVideoPlayer *)self handlePlayerItemChange:v13 keyPath:v10 playerItem:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_opt_class();
          v15 = TUIDynamicCast(v16, v11);
          [(TUIVideoPlayer *)self handlePlayerChange:v13 keyPath:v10 player:v15];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }

          v17 = objc_opt_class();
          v15 = TUIDynamicCast(v17, v11);
          [(TUIVideoPlayer *)self handlePlaybackChecksChange:v13 keyPath:v10 playbackChecks:v15];
        }
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TUIVideoPlayer;
    [(TUIVideoPlayer *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_12:
}

- (void)handlePlayerItemChange:(id)a3 keyPath:(id)a4 playerItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (a5)
  {
    if ([v9 isEqualToString:@"status"])
    {
      v10 = objc_opt_class();
      v11 = [v8 objectForKey:NSKeyValueChangeNewKey];
      v12 = TUIDynamicCast(v10, v11);
      v13 = [v12 integerValue];

      if (v13 == &dword_0 + 1)
      {
        v14 = [(TUIVideoPlayer *)self playbackChecks];
        [v14 setItemIsReadyToPlay:1];
LABEL_8:
      }
    }

    else
    {
      if (([v9 isEqualToString:@"playbackBufferFull"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"playbackLikelyToKeepUp"))
      {
        v15 = objc_opt_class();
        v16 = [v8 objectForKey:NSKeyValueChangeNewKey];
        v17 = TUIDynamicCast(v15, v16);
        v18 = [v17 BOOLValue];

        v14 = [(TUIVideoPlayer *)self playbackChecks];
        [v14 setPlaybackLikelyToKeepUp:v18];
        goto LABEL_8;
      }

      if ([v9 isEqualToString:@"playbackBufferEmpty"])
      {
        v19 = objc_opt_class();
        v20 = [v8 objectForKey:NSKeyValueChangeNewKey];
        v21 = TUIDynamicCast(v19, v20);
        v22 = [v21 BOOLValue];

        v23 = TUIVideoLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412546;
          v25 = self;
          v26 = 1024;
          v27 = v22;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%@ : Playback buffer is empty: %i", &v24, 0x12u);
        }
      }
    }
  }
}

- (void)handlePlayerChange:(id)a3 keyPath:(id)a4 player:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v10 == self)
  {
    if ([v9 isEqualToString:@"rate"])
    {
      v11 = objc_opt_class();
      v12 = [v8 objectForKey:NSKeyValueChangeNewKey];
      v13 = TUIDynamicCast(v11, v12);
      [v13 floatValue];
      v15 = v14;

      WeakRetained = TUIVideoLog();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138412546;
        *(&buf.value + 4) = v10;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = v15;
        _os_log_impl(&dword_0, WeakRetained, OS_LOG_TYPE_DEFAULT, "%@ : Did change rate to %f", &buf, 0x16u);
      }

      goto LABEL_24;
    }

    if ([v9 isEqualToString:@"timeControlStatus"])
    {
      v17 = objc_opt_class();
      v18 = [v8 objectForKey:NSKeyValueChangeNewKey];
      v19 = TUIDynamicCast(v17, v18);
      v20 = [v19 intValue];

      [(TUIVideoPlayer *)self currentTime];
      v21 = [(TUIVideoPlayer *)self currentItem];
      v22 = v21;
      if (v21)
      {
        [v21 duration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v27 = CMTimeCompare(&buf, &time2);

      if (v20 == 2)
      {
        [(TUIVideoPlayer *)self setState:4];
        if ((*&self->_delegateFlags & 0x20) != 0)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [(TUIVideoPlayer *)self currentTimePlayed];
          [WeakRetained playerDidPlay:self mediaTimePlayed:?];
          goto LABEL_24;
        }
      }

      else if (!v20 && self->_state == 4 && v27 < 0)
      {
        [(TUIVideoPlayer *)self setState:5];
        self->_shouldBePlaying = 0;
        if ((*&self->_delegateFlags & 0x40) != 0)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [(TUIVideoPlayer *)self currentTimePlayed];
          [WeakRetained playerDidPause:self mediaTimePlayed:?];
LABEL_24:
        }
      }
    }

    else if ([v9 isEqualToString:@"reasonForWaitingToPlay"])
    {
      v23 = objc_opt_class();
      v24 = [v8 objectForKey:NSKeyValueChangeNewKey];
      WeakRetained = TUIDynamicCast(v23, v24);

      v25 = [(TUIVideoPlayer *)self playbackChecks];
      [v25 setPlayerHasNoWaitingReason:WeakRetained == 0];

      if (WeakRetained)
      {
        if ([WeakRetained isEqualToString:AVPlayerWaitingToMinimizeStallsReason])
        {
          [(TUIVideoPlayer *)self setState:9];
        }

        v26 = TUIVideoLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 138412546;
          *(&buf.value + 4) = v10;
          LOWORD(buf.flags) = 2112;
          *(&buf.flags + 2) = WeakRetained;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%@ : Waiting on playback: %@", &buf, 0x16u);
        }
      }

      goto LABEL_24;
    }
  }
}

- (void)handlePlaybackChecksChange:(id)a3 keyPath:(id)a4 playbackChecks:(id)a5
{
  v6 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = [v6 complete];

  if (v7)
  {
    if (self->_state == 1)
    {
      [(TUIVideoPlayer *)self setState:2];
    }

    if (self->_shouldBePlaying)
    {

      [(TUIVideoPlayer *)self play];
    }

    else
    {

      [(TUIVideoPlayer *)self setState:3];
    }
  }
}

- (id)_stateAsString
{
  if (qword_2E66A8 != -1)
  {
    sub_19BDC4();
  }

  v3 = qword_2E66A0;
  state = self->_state;

  return [v3 objectAtIndexedSubscript:state];
}

- (id)_failureAsString
{
  if (qword_2E66B8 != -1)
  {
    sub_19BDD8();
  }

  v3 = qword_2E66B0;
  failureReason = self->_failureReason;

  return [v3 objectAtIndexedSubscript:failureReason];
}

- (id)_timeControlStatusAsString
{
  if (qword_2E66C8 != -1)
  {
    sub_19BDEC();
  }

  v3 = qword_2E66C0;
  v4 = [(TUIVideoPlayer *)self timeControlStatus];

  return [v3 objectAtIndexedSubscript:v4];
}

- (void)logPlayerStatus
{
  v3 = [(TUIVideoPlayer *)self _timeControlStatusAsString];
  v21 = [NSString stringWithFormat:@"timeControlStatus: %@", v3];

  v4 = [(TUIVideoPlayer *)self reasonForWaitingToPlay];
  v5 = [NSString stringWithFormat:@"reasonForWaitingToPlay: %@", v4];

  [(TUIVideoPlayer *)self rate];
  v7 = [NSString stringWithFormat:@"playerRate: %f", v6];
  [(TUIVideoPlayer *)self currentTime];
  v8 = [NSString stringWithFormat:@"currentTime: %f", CMTimeGetSeconds(&time)];
  v9 = [(TUIVideoPlayer *)self playerItem];
  v10 = [v9 loadedTimeRanges];
  v11 = [v10 description];
  v12 = [NSString stringWithFormat:@"loadedTimeRanges: %@", v11];

  v13 = [(TUIVideoPlayer *)self playerItem];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isPlaybackLikelyToKeepUp: %i", [v13 isPlaybackLikelyToKeepUp]);

  v15 = [(TUIVideoPlayer *)self playerItem];
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isPlaybackBufferFull: %i", [v15 isPlaybackBufferFull]);

  v17 = [(TUIVideoPlayer *)self playerItem];
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isPlaybackBufferEmpty: %i", [v17 isPlaybackBufferEmpty]);

  v19 = [NSString stringWithFormat:@"\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n", v21, v5, v7, v8, v12, v14, v16, v18];
  v20 = TUIVideoLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(time.value) = 138412290;
    *(&time.value + 4) = v19;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%@", &time, 0xCu);
  }
}

- (TUIVideoPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end