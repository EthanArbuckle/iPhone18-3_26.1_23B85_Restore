@interface TUIVideoPlayerManager
- (BOOL)captionsEnabledForActivePlayer;
- (BOOL)playerWithVideoIdIsPlaying:(id)a3;
- (TUIVideoPlayerManager)init;
- (_TUISharableVideoPlayer)activeVideoPlayer;
- (unint64_t)stateForPlayerWithVideoId:(id)a3;
- (void)_addAudioSessionObservers;
- (void)_addNotificationObservers;
- (void)_determineSystemAutoPlay;
- (void)_handleDidEnterBackgroundNotification:(id)a3;
- (void)_handlePowerStateDidChange:(id)a3;
- (void)_handleWillEnterForegroundNotification:(id)a3;
- (void)_removeAudioSessionObservers;
- (void)addObserver:(id)a3;
- (void)configureHostWithPlayerForURL:(id)a3 videoId:(id)a4 host:(id)a5 options:(unint64_t)a6;
- (void)dealloc;
- (void)endHostingForVideoId:(id)a3 forHost:(id)a4;
- (void)hostWantsToPausePlayerWithVideoId:(id)a3 requestingHost:(id)a4 isTriggerInitiated:(BOOL)a5;
- (void)hostWantsToPlayVideoWithVideoId:(id)a3 requestingHost:(id)a4 isTriggerInitiated:(BOOL)a5;
- (void)hostWantsToSetPlayerIsWithinVisibleBoundsForPlayerWithVideoId:(id)a3 requestingHost:(id)a4 isWithinVisibleBounds:(BOOL)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)player:(id)a3 didChangeState:(unint64_t)a4;
- (void)player:(id)a3 didPlayToTime:(double)a4;
- (void)player:(id)a3 didSetCaptionsEnabled:(BOOL)a4;
- (void)player:(id)a3 didSetFailureReason:(unint64_t)a4 mediaTimePlayed:(double)a5;
- (void)player:(id)a3 didSetMuted:(BOOL)a4 mediaTimePlayed:(double)a5;
- (void)player:(id)a3 didStallPlaybackAtTime:(double)a4;
- (void)playerDidLoadPlayerItem:(id)a3;
- (void)playerDidPause:(id)a3 mediaTimePlayed:(double)a4;
- (void)playerDidPlay:(id)a3 mediaTimePlayed:(double)a4;
- (void)playerDidPlayToEnd:(id)a3 mediaTimePlayed:(double)a4;
- (void)removeObserver:(id)a3;
- (void)setActiveHostOfPlayerForVideoId:(id)a3 videoUrl:(id)a4 host:(id)a5;
- (void)setActiveVideoPlayer:(id)a3;
- (void)setLoopingStateForPlayerWithVideoId:(id)a3 loop:(BOOL)a4 requestingHost:(id)a5;
- (void)setMuteStateForPlayerWithVideoId:(id)a3 muted:(BOOL)a4 requestingHost:(id)a5 isTriggerInitiated:(BOOL)a6;
- (void)setSystemAutoPlayEnabled:(BOOL)a3;
@end

@implementation TUIVideoPlayerManager

- (TUIVideoPlayerManager)init
{
  v8.receiver = self;
  v8.super_class = TUIVideoPlayerManager;
  v2 = [(TUIVideoPlayerManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    players = v2->_players;
    v2->_players = v3;

    v5 = objc_alloc_init(NSMutableSet);
    observers = v2->_observers;
    v2->_observers = v5;

    v2->_isInForeground = 1;
    v2->_observerAccessLock._os_unfair_lock_opaque = 0;
    [(TUIVideoPlayerManager *)v2 _determineSystemAutoPlay];
    [(TUIVideoPlayerManager *)v2 _addAudioSessionObservers];
    [(TUIVideoPlayerManager *)v2 _addNotificationObservers];
  }

  return v2;
}

- (void)dealloc
{
  [(TUIVideoPlayerManager *)self _removeAudioSessionObservers];
  v3.receiver = self;
  v3.super_class = TUIVideoPlayerManager;
  [(TUIVideoPlayerManager *)&v3 dealloc];
}

- (void)setSystemAutoPlayEnabled:(BOOL)a3
{
  if (self->_systemAutoPlayEnabled != a3)
  {
    v3 = a3;
    v5 = TUIVideoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
      v17 = 67109378;
      LODWORD(v18[0]) = v3;
      WORD2(v18[0]) = 2112;
      *(v18 + 6) = WeakRetained;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Setting systemAutoPlayEnabled: %i, activeVideoPlayer: %@", &v17, 0x12u);
    }

    self->_systemAutoPlayEnabled = v3;
    v7 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    v8 = v7;
    if (v7 && self->_systemAutoPlayEnabled)
    {
      v9 = objc_loadWeakRetained(&self->_activeVideoPlayer);
      v10 = [v9 isWithinVisibleBounds];

      if (v10)
      {
        v11 = TUIVideoLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_loadWeakRetained(&self->_activeVideoPlayer);
          v17 = 138412290;
          v18[0] = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Playing video from system auto play settings changed: %@", &v17, 0xCu);
        }

        v13 = objc_loadWeakRetained(&self->_activeVideoPlayer);
        v14 = [v13 player];
        [v14 play];
LABEL_14:

        return;
      }
    }

    else
    {
    }

    v15 = TUIVideoLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_loadWeakRetained(&self->_activeVideoPlayer);
      v17 = 138412290;
      v18[0] = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Pausing video from system auto play settings changed: %@", &v17, 0xCu);
    }

    v13 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    v14 = [v13 player];
    [v14 pause];
    goto LABEL_14;
  }
}

- (void)setActiveVideoPlayer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_activeVideoPlayer, v4);
    v6 = TUIVideoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained(&self->_activeVideoPlayer);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Set active video player: %@", &v8, 0xCu);
    }
  }
}

- (BOOL)captionsEnabledForActivePlayer
{
  v3 = [(TUIVideoPlayerManager *)self activeVideoPlayer];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TUIVideoPlayerManager *)self activeVideoPlayer];
  v5 = [v4 player];
  v6 = [v5 captionsEnabled];

  return v6;
}

- (void)configureHostWithPlayerForURL:(id)a3 videoId:(id)a4 host:(id)a5 options:(unint64_t)a6
{
  v28 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12 = [(NSMutableDictionary *)self->_players objectForKey:v10];
  if (v12)
  {
    v13 = v12;
    [(_TUISharableVideoPlayer *)v12 incrementHostCount];
  }

  else
  {
    v13 = [[_TUISharableVideoPlayer alloc] initWithURL:v28 videoId:v10];
    v14 = [(_TUISharableVideoPlayer *)v13 player];
    [v14 beginLoadingResources];

    [(_TUISharableVideoPlayer *)v13 setTriggerPlaybackEnabled:(a6 >> 1) & 1];
    v15 = [(_TUISharableVideoPlayer *)v13 player];
    [v15 setShouldLoop:a6 & 1];

    v16 = [(_TUISharableVideoPlayer *)v13 player];
    [v16 setMuted:(a6 >> 2) & 1];

    [(NSMutableDictionary *)self->_players setObject:v13 forKey:v10];
  }

  v17 = [(_TUISharableVideoPlayer *)v13 player];
  v18 = [v17 videoUrl];
  v19 = [v18 isEqual:v28];

  if ((v19 & 1) == 0)
  {
    v20 = [(_TUISharableVideoPlayer *)v13 player];
    [v20 reloadWithNewURL:v28];
  }

  v21 = [(_TUISharableVideoPlayer *)v13 activeHost];

  if (v21 != v11)
  {
    v22 = [(_TUISharableVideoPlayer *)v13 activeHost];

    if (v22)
    {
      v23 = [(_TUISharableVideoPlayer *)v13 activeHost];
      [v23 willBecomeInactiveHost];
    }

    v24 = [(_TUISharableVideoPlayer *)v13 player];
    [v24 setDelegate:self];

    [(_TUISharableVideoPlayer *)v13 setActiveHost:v11];
    [v11 didBecomeActiveHost];
  }

  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);

  if (!WeakRetained)
  {
    [(TUIVideoPlayerManager *)self setActiveVideoPlayer:v13];
  }

  v26 = [(_TUISharableVideoPlayer *)v13 player];
  v27 = [v11 videoViewController];
  [v27 setPlayer:v26];
}

- (void)endHostingForVideoId:(id)a3 forHost:(id)a4
{
  v11 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = [(NSMutableDictionary *)self->_players objectForKey:v11];
  v8 = v7;
  if (v7)
  {
    [v7 decrementHostCount];
    v9 = [v8 activeHost];

    if (v9 == v6)
    {
      [v8 setActiveHost:0];
    }

    if ([v8 shouldRelease])
    {
      v10 = [v8 player];
      [v10 releaseResources];

      [(NSMutableDictionary *)self->_players removeObjectForKey:v11];
    }
  }
}

- (void)setActiveHostOfPlayerForVideoId:(id)a3 videoUrl:(id)a4 host:(id)a5
{
  v18 = a4;
  v8 = a5;
  v9 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10 = [(NSMutableDictionary *)self->_players objectForKey:v9];

  if (v10)
  {
    v11 = [v10 activeHost];

    if (v11 != v8)
    {
      v12 = [v10 activeHost];

      if (v12)
      {
        v13 = [v10 activeHost];
        [v13 willBecomeInactiveHost];
      }

      [v10 setActiveHost:v8];
      [v8 didBecomeActiveHost];
      v14 = [v10 player];
      v15 = [v14 videoUrl];
      v16 = [v15 isEqual:v18];

      if ((v16 & 1) == 0)
      {
        v17 = [v10 player];
        [v17 reloadWithNewURL:v18];
      }
    }
  }
}

- (void)hostWantsToPlayVideoWithVideoId:(id)a3 requestingHost:(id)a4 isTriggerInitiated:(BOOL)a5
{
  v5 = a5;
  v24 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = [(NSMutableDictionary *)self->_players objectForKey:v8];

  waitingOnPlaybackToBegin = self->_waitingOnPlaybackToBegin;
  if ([v9 triggerPlaybackEnabled])
  {
    v11 = self->_systemAutoPlayEnabled & v5 & ~waitingOnPlaybackToBegin;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v5;
  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
  v14 = [WeakRetained player];
  if ([v14 isPlaying])
  {
    v15 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    v16 = v12 | [v15 isWithinVisibleBounds] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  if (v16 && v9 && ((v11 | v12) & 1) != 0)
  {
    v17 = [v9 activeHost];
    if (v17 != v24)
    {
LABEL_13:

      goto LABEL_19;
    }

    v18 = [v9 player];
    if ([v18 isPlaying])
    {

      goto LABEL_13;
    }

    v20 = [v9 player];
    v21 = [v20 state];

    if (v21 != &dword_8 + 1)
    {
      v22 = [v9 activeHost];
      [v22 managerAttemptingActionWithOrigin:v5 actionCase:0];

      v23 = [v9 player];
      [v23 play];

      self->_waitingOnPlaybackToBegin = 1;
    }
  }

  else
  {
    if (v9)
    {
      v19 = v16;
    }

    else
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      [v9 setTriggerPlaybackEnabled:0];
    }
  }

LABEL_19:
}

- (void)hostWantsToPausePlayerWithVideoId:(id)a3 requestingHost:(id)a4 isTriggerInitiated:(BOOL)a5
{
  v5 = a5;
  v16 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = [(NSMutableDictionary *)self->_players objectForKey:v8];

  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
  if (v9 == WeakRetained)
  {
    v11 = [v9 activeHost];
    if (v11 == v16)
    {
      v12 = [v9 player];
      v13 = [v12 isPlaying];

      if (v13)
      {
        v14 = [v9 activeHost];
        [v14 managerAttemptingActionWithOrigin:v5 actionCase:1];

        v15 = [v9 player];
        [v15 pause];

        [v9 setTriggerPlaybackEnabled:v5];
      }
    }

    else
    {
    }
  }
}

- (void)hostWantsToSetPlayerIsWithinVisibleBoundsForPlayerWithVideoId:(id)a3 requestingHost:(id)a4 isWithinVisibleBounds:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = [(NSMutableDictionary *)self->_players objectForKey:v7];

  if (v8 && [v8 isWithinVisibleBounds] != v5)
  {
    v9 = TUIVideoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 isWithinVisibleBounds];
      v11 = [v8 player];
      v12[0] = 67109634;
      v12[1] = v10;
      v13 = 1024;
      v14 = v5;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Updating isWithinVisibleBounds from %i to %i for %@", v12, 0x18u);
    }

    [v8 setIsWithinVisibleBounds:v5];
  }
}

- (void)setLoopingStateForPlayerWithVideoId:(id)a3 loop:(BOOL)a4 requestingHost:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12 = [(NSMutableDictionary *)self->_players objectForKey:v9];

  v10 = [v12 activeHost];

  if (v10 == v8)
  {
    v11 = [v12 player];
    [v11 setShouldLoop:v5];
  }
}

- (void)setMuteStateForPlayerWithVideoId:(id)a3 muted:(BOOL)a4 requestingHost:(id)a5 isTriggerInitiated:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  v10 = a5;
  v11 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v16 = [(NSMutableDictionary *)self->_players objectForKey:v11];

  v12 = [v16 activeHost];

  if (v12 == v10)
  {
    if (v7)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    v14 = [v16 activeHost];
    [v14 managerAttemptingActionWithOrigin:v6 actionCase:v13];

    v15 = [v16 player];
    [v15 setMuted:v7];
  }
}

- (unint64_t)stateForPlayerWithVideoId:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(NSMutableDictionary *)self->_players objectForKey:v4];

  if (v5)
  {
    v6 = [v5 player];
    v7 = [v6 state];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)playerWithVideoIdIsPlaying:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(NSMutableDictionary *)self->_players objectForKey:v4];

  if (v5)
  {
    v6 = [v5 player];
    v7 = [v6 isPlaying];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observerAccessLock);
  v5 = [(TUIVideoPlayerManager *)self observers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observerAccessLock);
  v5 = [(TUIVideoPlayerManager *)self observers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)_addAudioSessionObservers
{
  v3 = +[AVAudioSession sharedInstance];
  if (v3)
  {
    v4 = v3;
    [v3 addObserver:self forKeyPath:@"outputVolume" options:1 context:&off_2619C8];
    v3 = v4;
  }
}

- (void)_removeAudioSessionObservers
{
  v3 = +[AVAudioSession sharedInstance];
  if (v3)
  {
    v4 = v3;
    [v3 removeObserver:self forKeyPath:@"outputVolume"];
    v3 = v4;
  }
}

- (void)_addNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleVideoAutoplayStatusDidChange:" name:UIAccessibilityVideoAutoplayStatusDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleReduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_handlePowerStateDidChange:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
}

- (void)_handleWillEnterForegroundNotification:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
  if (WeakRetained)
  {
    activePlayerWasPlayingWhenEnteringBackground = self->_activePlayerWasPlayingWhenEnteringBackground;
  }

  else
  {
    activePlayerWasPlayingWhenEnteringBackground = 0;
  }

  v6 = TUIVideoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    v11[0] = 67109378;
    v11[1] = activePlayerWasPlayingWhenEnteringBackground;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Video did enter foreground, should resume: %i, for player: %@", v11, 0x12u);
  }

  if (activePlayerWasPlayingWhenEnteringBackground)
  {
    v8 = TUIVideoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Resuming video on foreground", v11, 2u);
    }

    v9 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    v10 = [v9 player];
    [v10 play];
  }

  self->_isInForeground = 1;
  [(TUIVideoPlayerManager *)self _determineSystemAutoPlay];
}

- (void)_handleDidEnterBackgroundNotification:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    v6 = [v5 player];
    v7 = [v6 isPlaying];
  }

  else
  {
    v7 = 0;
  }

  v8 = TUIVideoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Video did enter background, isPlaying: %i", v12, 8u);
  }

  self->_activePlayerWasPlayingWhenEnteringBackground = v7;
  if (v7)
  {
    v9 = TUIVideoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Pausing video on background", v12, 2u);
    }

    v10 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    v11 = [v10 player];
    [v11 pause];
  }

  self->_isInForeground = 0;
}

- (void)_handlePowerStateDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E8CC4;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_determineSystemAutoPlay
{
  if (self->_isInForeground)
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
    v5 = +[NSProcessInfo processInfo];
    v6 = [v5 isLowPowerModeEnabled];

    v7 = TUIVideoLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109632;
      v9[1] = IsReduceMotionEnabled;
      v10 = 1024;
      v11 = IsVideoAutoplayEnabled;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Setting systemAutoPlay: reducedMotion: %i, videoAutoPlayEnabled: %i, lowPowerModeEnabled: %i", v9, 0x14u);
    }

    if (IsReduceMotionEnabled)
    {
      v8 = 0;
    }

    else
    {
      v8 = IsVideoAutoplayEnabled & (v6 ^ 1);
    }

    [(TUIVideoPlayerManager *)self setSystemAutoPlayEnabled:v8];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a6 == &off_2619C8)
  {
    if (v10 && v12 && [v10 isEqualToString:@"outputVolume"])
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
      v15 = [WeakRetained player];

      if (v15 && [v15 isPlaying] && objc_msgSend(v15, "isMuted"))
      {
        v16 = objc_loadWeakRetained(&self->_activeVideoPlayer);
        v17 = [v16 activeHost];
        [v17 managerAttemptingActionWithOrigin:0 actionCase:3];

        v18 = objc_loadWeakRetained(&self->_activeVideoPlayer);
        v19 = [v18 player];
        [v19 setMuted:0];
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TUIVideoPlayerManager;
    [(TUIVideoPlayerManager *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)player:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  players = self->_players;
  v12 = v6;
  v8 = [v6 videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:v8];

  if (v9)
  {
    v10 = [v9 activeHost];
    v11 = [v12 videoId];
    [v10 playerWithVideoId:v11 didChangeState:a4];
  }
}

- (void)playerDidPlayToEnd:(id)a3 mediaTimePlayed:(double)a4
{
  v6 = a3;
  players = self->_players;
  v12 = v6;
  v8 = [v6 videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:v8];

  if (v9)
  {
    v10 = [v9 activeHost];
    v11 = [v12 videoId];
    [v10 playerWithVideoIdDidPlayToEnd:v11 mediaTimePlayed:a4];
  }
}

- (void)player:(id)a3 didPlayToTime:(double)a4
{
  v6 = a3;
  players = self->_players;
  v12 = v6;
  v8 = [v6 videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:v8];

  if (v9)
  {
    v10 = [v9 activeHost];
    v11 = [v12 videoId];
    [v10 playerWithVideoId:v11 didPlayToTime:a4];
  }
}

- (void)player:(id)a3 didStallPlaybackAtTime:(double)a4
{
  v6 = a3;
  players = self->_players;
  v12 = v6;
  v8 = [v6 videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:v8];

  if (v9)
  {
    v10 = [v9 activeHost];
    v11 = [v12 videoId];
    [v10 playerWithVideoId:v11 didStallPlaybackAtTime:a4];
  }
}

- (void)playerDidLoadPlayerItem:(id)a3
{
  v4 = a3;
  players = self->_players;
  v10 = v4;
  v6 = [v4 videoId];
  v7 = [(NSMutableDictionary *)players objectForKey:v6];

  if (v7)
  {
    v8 = [v7 activeHost];
    v9 = [v10 videoId];
    [v8 playerWithVideoIdDidLoadPlayerItem:v9];
  }
}

- (void)playerDidPlay:(id)a3 mediaTimePlayed:(double)a4
{
  v6 = a3;
  players = self->_players;
  v15 = v6;
  v8 = [v6 videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:v8];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);

    if (WeakRetained != v9)
    {
      v11 = objc_loadWeakRetained(&self->_activeVideoPlayer);
      v12 = [v11 player];
      [v12 pause];

      [(TUIVideoPlayerManager *)self setActiveVideoPlayer:v9];
    }

    v13 = [v9 activeHost];
    v14 = [v15 videoId];
    [v13 playerWithVideoIdDidPlay:v14 mediaTimePlayed:a4];
  }

  self->_waitingOnPlaybackToBegin = 0;
}

- (void)playerDidPause:(id)a3 mediaTimePlayed:(double)a4
{
  v6 = a3;
  players = self->_players;
  v12 = v6;
  v8 = [v6 videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:v8];

  if (v9)
  {
    [v9 setTriggerPlaybackEnabled:0];
    v10 = [v9 activeHost];
    v11 = [v12 videoId];
    [v10 playerWithVideoIdDidPause:v11 mediaTimePlayed:a4];
  }
}

- (void)player:(id)a3 didSetMuted:(BOOL)a4 mediaTimePlayed:(double)a5
{
  v6 = a4;
  v8 = a3;
  players = self->_players;
  v14 = v8;
  v10 = [v8 videoId];
  v11 = [(NSMutableDictionary *)players objectForKey:v10];

  if (v11)
  {
    v12 = [v11 activeHost];
    v13 = [v14 videoId];
    [v12 playerWithVideoId:v13 didSetMuted:v6 mediaTimePlayed:a5];
  }
}

- (void)player:(id)a3 didSetFailureReason:(unint64_t)a4 mediaTimePlayed:(double)a5
{
  v8 = a3;
  players = self->_players;
  v14 = v8;
  v10 = [v8 videoId];
  v11 = [(NSMutableDictionary *)players objectForKey:v10];

  if (v11)
  {
    v12 = [v11 activeHost];
    v13 = [v14 videoId];
    [v12 playerWithVideoId:v13 didSetFailureReason:a4 mediaTimePlayed:a5];
  }
}

- (void)player:(id)a3 didSetCaptionsEnabled:(BOOL)a4
{
  v4 = a4;
  os_unfair_lock_lock(&self->_observerAccessLock);
  v6 = [(TUIVideoPlayerManager *)self observers];
  v7 = [v6 copy];

  os_unfair_lock_unlock(&self->_observerAccessLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) manager:self didSetCaptions:{v4, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (_TUISharableVideoPlayer)activeVideoPlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);

  return WeakRetained;
}

@end