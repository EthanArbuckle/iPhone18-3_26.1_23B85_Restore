@interface TUIVideoPlayer
- (AVAsset)playerAsset;
- (BOOL)captionsEnabled;
- (BOOL)isPlaying;
- (TUIVideoPlayer)initWithUrl:(id)url videoId:(id)id;
- (TUIVideoPlayerDelegate)delegate;
- (id)_failureAsString;
- (id)_stateAsString;
- (id)_timeControlStatusAsString;
- (void)_addPlaybackCheckObservers;
- (void)_addPlayerItemObservers;
- (void)_addPlayerObservers;
- (void)_loadPlayerWithAsset:(id)asset;
- (void)_removePlaybackCheckObservers;
- (void)_removePlayerItemObservers;
- (void)_removePlayerObservers;
- (void)beginLoadingResources;
- (void)dealloc;
- (void)handlePlaybackChecksChange:(id)change keyPath:(id)path playbackChecks:(id)checks;
- (void)handlePlayerChange:(id)change keyPath:(id)path player:(id)player;
- (void)handlePlayerItemChange:(id)change keyPath:(id)path playerItem:(id)item;
- (void)logPlayerStatus;
- (void)mediaSelectionDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playbackErrorOccured:(id)occured;
- (void)releaseResources;
- (void)reload;
- (void)reloadWithNewURL:(id)l;
- (void)reset;
- (void)setDelegate:(id)delegate;
- (void)setFailureCount:(int64_t)count;
- (void)setFailureReason:(unint64_t)reason;
- (void)setLastPlaybackTime:(id *)time;
- (void)setMuted:(BOOL)muted;
- (void)setPlayerItem:(id)item;
- (void)setShouldLoop:(BOOL)loop;
- (void)setState:(unint64_t)state;
- (void)setTimeObserver:(id)observer;
- (void)videoDidPlayToEnd;
- (void)videoPlaybackDidStall;
@end

@implementation TUIVideoPlayer

- (TUIVideoPlayer)initWithUrl:(id)url videoId:(id)id
{
  urlCopy = url;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = TUIVideoPlayer;
  v9 = [(TUIVideoPlayer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoUrl, url);
    objc_storeStrong(&v10->_videoId, id);
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

- (void)setPlayerItem:(id)item
{
  itemCopy = item;
  playerItem = [(TUIVideoPlayer *)self playerItem];

  if (playerItem)
  {
    [(TUIVideoPlayer *)self _removePlayerItemObservers];
  }

  playerItem = self->_playerItem;
  self->_playerItem = itemCopy;

  [(TUIVideoPlayer *)self replaceCurrentItemWithPlayerItem:0];

  [(TUIVideoPlayer *)self _addPlayerItemObservers];
}

- (void)setShouldLoop:(BOOL)loop
{
  if (self->_shouldLoop != loop)
  {
    self->_shouldLoop = loop;
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    if (state == 6)
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
      _stateAsString = [(TUIVideoPlayer *)self _stateAsString];
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = _stateAsString;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ : Did change state: %@", &v7, 0x16u);
    }
  }
}

- (void)setTimeObserver:(id)observer
{
  observerCopy = observer;
  if (self->_timeObserver)
  {
    [(TUIVideoPlayer *)self removeTimeObserver:?];
  }

  timeObserver = self->_timeObserver;
  self->_timeObserver = observerCopy;
}

- (void)setLastPlaybackTime:(id *)time
{
  [(NSLock *)self->_lastPlaybackTimeLock lock];
  v5 = *&time->var0;
  self->_lastPlaybackTime.epoch = time->var3;
  *&self->_lastPlaybackTime.value = v5;
  lastPlaybackTimeLock = self->_lastPlaybackTimeLock;

  [(NSLock *)lastPlaybackTimeLock unlock];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setFailureCount:(int64_t)count
{
  self->_failureCount = count;
  v5 = count - 1;
  v6 = TUIVideoLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 > 1)
  {
    if (v7)
    {
      v8 = 138412546;
      selfCopy2 = self;
      v10 = 2048;
      countCopy = 2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ : Did reach reload limit of %lu", &v8, 0x16u);
    }

    [(TUIVideoPlayer *)self setState:10];
  }

  else
  {
    if (v7)
    {
      v8 = 138412802;
      selfCopy2 = self;
      v10 = 2048;
      countCopy = count;
      v12 = 2048;
      v13 = 2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ : Attempting to reload, attempt %lu of %lu", &v8, 0x20u);
    }

    [(TUIVideoPlayer *)self reload];
  }
}

- (void)setFailureReason:(unint64_t)reason
{
  self->_failureReason = reason;
  if (reason)
  {
    v4 = TUIVideoLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _failureAsString = [(TUIVideoPlayer *)self _failureAsString];
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = _failureAsString;
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

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(TUIVideoPlayer *)self isMuted]!= mutedCopy)
  {
    v6.receiver = self;
    v6.super_class = TUIVideoPlayer;
    [(TUIVideoPlayer *)&v6 setMuted:mutedCopy];
    if ((*&self->_delegateFlags & 0x80) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(TUIVideoPlayer *)self currentTimePlayed];
      [WeakRetained player:self didSetMuted:mutedCopy mediaTimePlayed:?];
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

  error = [(TUIVideoPlayer *)self error];
  v4 = error == 0;

  return v4;
}

- (BOOL)captionsEnabled
{
  playerItem = [(TUIVideoPlayer *)self playerItem];
  playerItem2 = [(TUIVideoPlayer *)self playerItem];
  asset = [playerItem2 asset];
  v6 = [asset mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicLegible];

  if (v6)
  {
    v7 = playerItem == 0;
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
    currentMediaSelection = [playerItem currentMediaSelection];
    v9 = [currentMediaSelection selectedMediaOptionInMediaSelectionGroup:v6];

    v10 = v9 != 0;
  }

  return v10;
}

- (void)beginLoadingResources
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_videoUrl)
  {
    playerAsset = [(TUIVideoPlayer *)self playerAsset];

    if (playerAsset)
    {
      playerAsset2 = [(TUIVideoPlayer *)self playerAsset];
      [playerAsset2 cancelLoading];
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
  playerAsset = [(TUIVideoPlayer *)self playerAsset];
  [playerAsset cancelLoading];

  playbackChecks = [(TUIVideoPlayer *)self playbackChecks];
  [playbackChecks reset];

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

- (void)reloadWithNewURL:(id)l
{
  lCopy = l;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  isPlaying = [(TUIVideoPlayer *)self isPlaying];
  [(TUIVideoPlayer *)self releaseResources];
  self->_shouldBePlaying = isPlaying;
  videoUrl = self->_videoUrl;
  self->_videoUrl = lCopy;

  [(TUIVideoPlayer *)self reload];
}

- (void)reload
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(TUIVideoPlayer *)self setState:0];
  [(TUIVideoPlayer *)self setFailureReason:0];
  playerAsset = [(TUIVideoPlayer *)self playerAsset];

  if (playerAsset)
  {
    playerAsset2 = [(TUIVideoPlayer *)self playerAsset];
    [playerAsset2 cancelLoading];
  }

  [(TUIVideoPlayer *)self setPlayerItem:0];
  playbackChecks = [(TUIVideoPlayer *)self playbackChecks];
  [playbackChecks reset];

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
      playbackChecks = [(TUIVideoPlayer *)self playbackChecks];
      complete = [playbackChecks complete];

      if (complete)
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

- (void)_loadPlayerWithAsset:(id)asset
{
  assetCopy = asset;
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
  v7 = assetCopy;
  v10 = v7;
  selfCopy = self;
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

- (void)playbackErrorOccured:(id)occured
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15A358;
  v5[3] = &unk_25DCA0;
  occuredCopy = occured;
  selfCopy = self;
  v4 = occuredCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)mediaSelectionDidChange:(id)change
{
  changeCopy = change;
  if ((*&self->_delegateFlags & 0x200) != 0)
  {
    v7 = changeCopy;
    captionsEnabled = [(TUIVideoPlayer *)self captionsEnabled];
    changeCopy = v7;
    if (self->_lastCaptionsEnabled != captionsEnabled)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained player:self didSetCaptionsEnabled:{-[TUIVideoPlayer captionsEnabled](self, "captionsEnabled")}];

      changeCopy = v7;
      self->_lastCaptionsEnabled = captionsEnabled;
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == &off_262C60)
  {
    if (pathCopy && changeCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_opt_class();
        v15 = TUIDynamicCast(v14, objectCopy);
        [(TUIVideoPlayer *)self handlePlayerItemChange:v13 keyPath:pathCopy playerItem:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_opt_class();
          v15 = TUIDynamicCast(v16, objectCopy);
          [(TUIVideoPlayer *)self handlePlayerChange:v13 keyPath:pathCopy player:v15];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }

          v17 = objc_opt_class();
          v15 = TUIDynamicCast(v17, objectCopy);
          [(TUIVideoPlayer *)self handlePlaybackChecksChange:v13 keyPath:pathCopy playbackChecks:v15];
        }
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TUIVideoPlayer;
    [(TUIVideoPlayer *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_12:
}

- (void)handlePlayerItemChange:(id)change keyPath:(id)path playerItem:(id)item
{
  changeCopy = change;
  pathCopy = path;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (item)
  {
    if ([pathCopy isEqualToString:@"status"])
    {
      v10 = objc_opt_class();
      v11 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
      v12 = TUIDynamicCast(v10, v11);
      integerValue = [v12 integerValue];

      if (integerValue == &dword_0 + 1)
      {
        playbackChecks = [(TUIVideoPlayer *)self playbackChecks];
        [playbackChecks setItemIsReadyToPlay:1];
LABEL_8:
      }
    }

    else
    {
      if (([pathCopy isEqualToString:@"playbackBufferFull"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"playbackLikelyToKeepUp"))
      {
        v15 = objc_opt_class();
        v16 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
        v17 = TUIDynamicCast(v15, v16);
        bOOLValue = [v17 BOOLValue];

        playbackChecks = [(TUIVideoPlayer *)self playbackChecks];
        [playbackChecks setPlaybackLikelyToKeepUp:bOOLValue];
        goto LABEL_8;
      }

      if ([pathCopy isEqualToString:@"playbackBufferEmpty"])
      {
        v19 = objc_opt_class();
        v20 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
        v21 = TUIDynamicCast(v19, v20);
        bOOLValue2 = [v21 BOOLValue];

        v23 = TUIVideoLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412546;
          selfCopy = self;
          v26 = 1024;
          v27 = bOOLValue2;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%@ : Playback buffer is empty: %i", &v24, 0x12u);
        }
      }
    }
  }
}

- (void)handlePlayerChange:(id)change keyPath:(id)path player:(id)player
{
  changeCopy = change;
  pathCopy = path;
  playerCopy = player;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (playerCopy == self)
  {
    if ([pathCopy isEqualToString:@"rate"])
    {
      v11 = objc_opt_class();
      v12 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
      v13 = TUIDynamicCast(v11, v12);
      [v13 floatValue];
      v15 = v14;

      WeakRetained = TUIVideoLog();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138412546;
        *(&buf.value + 4) = playerCopy;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = v15;
        _os_log_impl(&dword_0, WeakRetained, OS_LOG_TYPE_DEFAULT, "%@ : Did change rate to %f", &buf, 0x16u);
      }

      goto LABEL_24;
    }

    if ([pathCopy isEqualToString:@"timeControlStatus"])
    {
      v17 = objc_opt_class();
      v18 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
      v19 = TUIDynamicCast(v17, v18);
      intValue = [v19 intValue];

      [(TUIVideoPlayer *)self currentTime];
      currentItem = [(TUIVideoPlayer *)self currentItem];
      v22 = currentItem;
      if (currentItem)
      {
        [currentItem duration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v27 = CMTimeCompare(&buf, &time2);

      if (intValue == 2)
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

      else if (!intValue && self->_state == 4 && v27 < 0)
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

    else if ([pathCopy isEqualToString:@"reasonForWaitingToPlay"])
    {
      v23 = objc_opt_class();
      v24 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
      WeakRetained = TUIDynamicCast(v23, v24);

      playbackChecks = [(TUIVideoPlayer *)self playbackChecks];
      [playbackChecks setPlayerHasNoWaitingReason:WeakRetained == 0];

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
          *(&buf.value + 4) = playerCopy;
          LOWORD(buf.flags) = 2112;
          *(&buf.flags + 2) = WeakRetained;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%@ : Waiting on playback: %@", &buf, 0x16u);
        }
      }

      goto LABEL_24;
    }
  }
}

- (void)handlePlaybackChecksChange:(id)change keyPath:(id)path playbackChecks:(id)checks
{
  checksCopy = checks;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  complete = [checksCopy complete];

  if (complete)
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
  timeControlStatus = [(TUIVideoPlayer *)self timeControlStatus];

  return [v3 objectAtIndexedSubscript:timeControlStatus];
}

- (void)logPlayerStatus
{
  _timeControlStatusAsString = [(TUIVideoPlayer *)self _timeControlStatusAsString];
  v21 = [NSString stringWithFormat:@"timeControlStatus: %@", _timeControlStatusAsString];

  reasonForWaitingToPlay = [(TUIVideoPlayer *)self reasonForWaitingToPlay];
  v5 = [NSString stringWithFormat:@"reasonForWaitingToPlay: %@", reasonForWaitingToPlay];

  [(TUIVideoPlayer *)self rate];
  v7 = [NSString stringWithFormat:@"playerRate: %f", v6];
  [(TUIVideoPlayer *)self currentTime];
  v8 = [NSString stringWithFormat:@"currentTime: %f", CMTimeGetSeconds(&time)];
  playerItem = [(TUIVideoPlayer *)self playerItem];
  loadedTimeRanges = [playerItem loadedTimeRanges];
  v11 = [loadedTimeRanges description];
  v12 = [NSString stringWithFormat:@"loadedTimeRanges: %@", v11];

  playerItem2 = [(TUIVideoPlayer *)self playerItem];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isPlaybackLikelyToKeepUp: %i", [playerItem2 isPlaybackLikelyToKeepUp]);

  playerItem3 = [(TUIVideoPlayer *)self playerItem];
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isPlaybackBufferFull: %i", [playerItem3 isPlaybackBufferFull]);

  playerItem4 = [(TUIVideoPlayer *)self playerItem];
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isPlaybackBufferEmpty: %i", [playerItem4 isPlaybackBufferEmpty]);

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