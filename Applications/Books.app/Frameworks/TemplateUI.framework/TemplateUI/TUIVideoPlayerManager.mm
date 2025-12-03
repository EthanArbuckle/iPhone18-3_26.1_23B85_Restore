@interface TUIVideoPlayerManager
- (BOOL)captionsEnabledForActivePlayer;
- (BOOL)playerWithVideoIdIsPlaying:(id)playing;
- (TUIVideoPlayerManager)init;
- (_TUISharableVideoPlayer)activeVideoPlayer;
- (unint64_t)stateForPlayerWithVideoId:(id)id;
- (void)_addAudioSessionObservers;
- (void)_addNotificationObservers;
- (void)_determineSystemAutoPlay;
- (void)_handleDidEnterBackgroundNotification:(id)notification;
- (void)_handlePowerStateDidChange:(id)change;
- (void)_handleWillEnterForegroundNotification:(id)notification;
- (void)_removeAudioSessionObservers;
- (void)addObserver:(id)observer;
- (void)configureHostWithPlayerForURL:(id)l videoId:(id)id host:(id)host options:(unint64_t)options;
- (void)dealloc;
- (void)endHostingForVideoId:(id)id forHost:(id)host;
- (void)hostWantsToPausePlayerWithVideoId:(id)id requestingHost:(id)host isTriggerInitiated:(BOOL)initiated;
- (void)hostWantsToPlayVideoWithVideoId:(id)id requestingHost:(id)host isTriggerInitiated:(BOOL)initiated;
- (void)hostWantsToSetPlayerIsWithinVisibleBoundsForPlayerWithVideoId:(id)id requestingHost:(id)host isWithinVisibleBounds:(BOOL)bounds;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)player:(id)player didChangeState:(unint64_t)state;
- (void)player:(id)player didPlayToTime:(double)time;
- (void)player:(id)player didSetCaptionsEnabled:(BOOL)enabled;
- (void)player:(id)player didSetFailureReason:(unint64_t)reason mediaTimePlayed:(double)played;
- (void)player:(id)player didSetMuted:(BOOL)muted mediaTimePlayed:(double)played;
- (void)player:(id)player didStallPlaybackAtTime:(double)time;
- (void)playerDidLoadPlayerItem:(id)item;
- (void)playerDidPause:(id)pause mediaTimePlayed:(double)played;
- (void)playerDidPlay:(id)play mediaTimePlayed:(double)played;
- (void)playerDidPlayToEnd:(id)end mediaTimePlayed:(double)played;
- (void)removeObserver:(id)observer;
- (void)setActiveHostOfPlayerForVideoId:(id)id videoUrl:(id)url host:(id)host;
- (void)setActiveVideoPlayer:(id)player;
- (void)setLoopingStateForPlayerWithVideoId:(id)id loop:(BOOL)loop requestingHost:(id)host;
- (void)setMuteStateForPlayerWithVideoId:(id)id muted:(BOOL)muted requestingHost:(id)host isTriggerInitiated:(BOOL)initiated;
- (void)setSystemAutoPlayEnabled:(BOOL)enabled;
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

- (void)setSystemAutoPlayEnabled:(BOOL)enabled
{
  if (self->_systemAutoPlayEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = TUIVideoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
      v17 = 67109378;
      LODWORD(v18[0]) = enabledCopy;
      WORD2(v18[0]) = 2112;
      *(v18 + 6) = WeakRetained;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Setting systemAutoPlayEnabled: %i, activeVideoPlayer: %@", &v17, 0x12u);
    }

    self->_systemAutoPlayEnabled = enabledCopy;
    v7 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    v8 = v7;
    if (v7 && self->_systemAutoPlayEnabled)
    {
      v9 = objc_loadWeakRetained(&self->_activeVideoPlayer);
      isWithinVisibleBounds = [v9 isWithinVisibleBounds];

      if (isWithinVisibleBounds)
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
        player = [v13 player];
        [player play];
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
    player = [v13 player];
    [player pause];
    goto LABEL_14;
  }
}

- (void)setActiveVideoPlayer:(id)player
{
  playerCopy = player;
  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);

  if (WeakRetained != playerCopy)
  {
    objc_storeWeak(&self->_activeVideoPlayer, playerCopy);
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
  activeVideoPlayer = [(TUIVideoPlayerManager *)self activeVideoPlayer];

  if (!activeVideoPlayer)
  {
    return 0;
  }

  activeVideoPlayer2 = [(TUIVideoPlayerManager *)self activeVideoPlayer];
  player = [activeVideoPlayer2 player];
  captionsEnabled = [player captionsEnabled];

  return captionsEnabled;
}

- (void)configureHostWithPlayerForURL:(id)l videoId:(id)id host:(id)host options:(unint64_t)options
{
  lCopy = l;
  idCopy = id;
  hostCopy = host;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];
  if (v12)
  {
    v13 = v12;
    [(_TUISharableVideoPlayer *)v12 incrementHostCount];
  }

  else
  {
    v13 = [[_TUISharableVideoPlayer alloc] initWithURL:lCopy videoId:idCopy];
    player = [(_TUISharableVideoPlayer *)v13 player];
    [player beginLoadingResources];

    [(_TUISharableVideoPlayer *)v13 setTriggerPlaybackEnabled:(options >> 1) & 1];
    player2 = [(_TUISharableVideoPlayer *)v13 player];
    [player2 setShouldLoop:options & 1];

    player3 = [(_TUISharableVideoPlayer *)v13 player];
    [player3 setMuted:(options >> 2) & 1];

    [(NSMutableDictionary *)self->_players setObject:v13 forKey:idCopy];
  }

  player4 = [(_TUISharableVideoPlayer *)v13 player];
  videoUrl = [player4 videoUrl];
  v19 = [videoUrl isEqual:lCopy];

  if ((v19 & 1) == 0)
  {
    player5 = [(_TUISharableVideoPlayer *)v13 player];
    [player5 reloadWithNewURL:lCopy];
  }

  activeHost = [(_TUISharableVideoPlayer *)v13 activeHost];

  if (activeHost != hostCopy)
  {
    activeHost2 = [(_TUISharableVideoPlayer *)v13 activeHost];

    if (activeHost2)
    {
      activeHost3 = [(_TUISharableVideoPlayer *)v13 activeHost];
      [activeHost3 willBecomeInactiveHost];
    }

    player6 = [(_TUISharableVideoPlayer *)v13 player];
    [player6 setDelegate:self];

    [(_TUISharableVideoPlayer *)v13 setActiveHost:hostCopy];
    [hostCopy didBecomeActiveHost];
  }

  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);

  if (!WeakRetained)
  {
    [(TUIVideoPlayerManager *)self setActiveVideoPlayer:v13];
  }

  player7 = [(_TUISharableVideoPlayer *)v13 player];
  videoViewController = [hostCopy videoViewController];
  [videoViewController setPlayer:player7];
}

- (void)endHostingForVideoId:(id)id forHost:(id)host
{
  idCopy = id;
  hostCopy = host;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];
  v8 = v7;
  if (v7)
  {
    [v7 decrementHostCount];
    activeHost = [v8 activeHost];

    if (activeHost == hostCopy)
    {
      [v8 setActiveHost:0];
    }

    if ([v8 shouldRelease])
    {
      player = [v8 player];
      [player releaseResources];

      [(NSMutableDictionary *)self->_players removeObjectForKey:idCopy];
    }
  }
}

- (void)setActiveHostOfPlayerForVideoId:(id)id videoUrl:(id)url host:(id)host
{
  urlCopy = url;
  hostCopy = host;
  idCopy = id;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];

  if (v10)
  {
    activeHost = [v10 activeHost];

    if (activeHost != hostCopy)
    {
      activeHost2 = [v10 activeHost];

      if (activeHost2)
      {
        activeHost3 = [v10 activeHost];
        [activeHost3 willBecomeInactiveHost];
      }

      [v10 setActiveHost:hostCopy];
      [hostCopy didBecomeActiveHost];
      player = [v10 player];
      videoUrl = [player videoUrl];
      v16 = [videoUrl isEqual:urlCopy];

      if ((v16 & 1) == 0)
      {
        player2 = [v10 player];
        [player2 reloadWithNewURL:urlCopy];
      }
    }
  }
}

- (void)hostWantsToPlayVideoWithVideoId:(id)id requestingHost:(id)host isTriggerInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  hostCopy = host;
  idCopy = id;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];

  waitingOnPlaybackToBegin = self->_waitingOnPlaybackToBegin;
  if ([v9 triggerPlaybackEnabled])
  {
    v11 = self->_systemAutoPlayEnabled & initiatedCopy & ~waitingOnPlaybackToBegin;
  }

  else
  {
    v11 = 0;
  }

  v12 = !initiatedCopy;
  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
  player = [WeakRetained player];
  if ([player isPlaying])
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
    activeHost = [v9 activeHost];
    if (activeHost != hostCopy)
    {
LABEL_13:

      goto LABEL_19;
    }

    player2 = [v9 player];
    if ([player2 isPlaying])
    {

      goto LABEL_13;
    }

    player3 = [v9 player];
    state = [player3 state];

    if (state != &dword_8 + 1)
    {
      activeHost2 = [v9 activeHost];
      [activeHost2 managerAttemptingActionWithOrigin:initiatedCopy actionCase:0];

      player4 = [v9 player];
      [player4 play];

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

- (void)hostWantsToPausePlayerWithVideoId:(id)id requestingHost:(id)host isTriggerInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  hostCopy = host;
  idCopy = id;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];

  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
  if (v9 == WeakRetained)
  {
    activeHost = [v9 activeHost];
    if (activeHost == hostCopy)
    {
      player = [v9 player];
      isPlaying = [player isPlaying];

      if (isPlaying)
      {
        activeHost2 = [v9 activeHost];
        [activeHost2 managerAttemptingActionWithOrigin:initiatedCopy actionCase:1];

        player2 = [v9 player];
        [player2 pause];

        [v9 setTriggerPlaybackEnabled:initiatedCopy];
      }
    }

    else
    {
    }
  }
}

- (void)hostWantsToSetPlayerIsWithinVisibleBoundsForPlayerWithVideoId:(id)id requestingHost:(id)host isWithinVisibleBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  idCopy = id;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];

  if (v8 && [v8 isWithinVisibleBounds] != boundsCopy)
  {
    v9 = TUIVideoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      isWithinVisibleBounds = [v8 isWithinVisibleBounds];
      player = [v8 player];
      v12[0] = 67109634;
      v12[1] = isWithinVisibleBounds;
      v13 = 1024;
      v14 = boundsCopy;
      v15 = 2112;
      v16 = player;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Updating isWithinVisibleBounds from %i to %i for %@", v12, 0x18u);
    }

    [v8 setIsWithinVisibleBounds:boundsCopy];
  }
}

- (void)setLoopingStateForPlayerWithVideoId:(id)id loop:(BOOL)loop requestingHost:(id)host
{
  loopCopy = loop;
  hostCopy = host;
  idCopy = id;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];

  activeHost = [v12 activeHost];

  if (activeHost == hostCopy)
  {
    player = [v12 player];
    [player setShouldLoop:loopCopy];
  }
}

- (void)setMuteStateForPlayerWithVideoId:(id)id muted:(BOOL)muted requestingHost:(id)host isTriggerInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  mutedCopy = muted;
  hostCopy = host;
  idCopy = id;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v16 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];

  activeHost = [v16 activeHost];

  if (activeHost == hostCopy)
  {
    if (mutedCopy)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    activeHost2 = [v16 activeHost];
    [activeHost2 managerAttemptingActionWithOrigin:initiatedCopy actionCase:v13];

    player = [v16 player];
    [player setMuted:mutedCopy];
  }
}

- (unint64_t)stateForPlayerWithVideoId:(id)id
{
  idCopy = id;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(NSMutableDictionary *)self->_players objectForKey:idCopy];

  if (v5)
  {
    player = [v5 player];
    state = [player state];
  }

  else
  {
    state = 0;
  }

  return state;
}

- (BOOL)playerWithVideoIdIsPlaying:(id)playing
{
  playingCopy = playing;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(NSMutableDictionary *)self->_players objectForKey:playingCopy];

  if (v5)
  {
    player = [v5 player];
    isPlaying = [player isPlaying];
  }

  else
  {
    isPlaying = 0;
  }

  return isPlaying;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  observers = [(TUIVideoPlayerManager *)self observers];
  [observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  observers = [(TUIVideoPlayerManager *)self observers];
  [observers removeObject:observerCopy];

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

- (void)_handleWillEnterForegroundNotification:(id)notification
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
    player = [v9 player];
    [player play];
  }

  self->_isInForeground = 1;
  [(TUIVideoPlayerManager *)self _determineSystemAutoPlay];
}

- (void)_handleDidEnterBackgroundNotification:(id)notification
{
  WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    player = [v5 player];
    isPlaying = [player isPlaying];
  }

  else
  {
    isPlaying = 0;
  }

  v8 = TUIVideoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = isPlaying;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Video did enter background, isPlaying: %i", v12, 8u);
  }

  self->_activePlayerWasPlayingWhenEnteringBackground = isPlaying;
  if (isPlaying)
  {
    v9 = TUIVideoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Pausing video on background", v12, 2u);
    }

    v10 = objc_loadWeakRetained(&self->_activeVideoPlayer);
    player2 = [v10 player];
    [player2 pause];
  }

  self->_isInForeground = 0;
}

- (void)_handlePowerStateDidChange:(id)change
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
    isLowPowerModeEnabled = [v5 isLowPowerModeEnabled];

    v7 = TUIVideoLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109632;
      v9[1] = IsReduceMotionEnabled;
      v10 = 1024;
      v11 = IsVideoAutoplayEnabled;
      v12 = 1024;
      v13 = isLowPowerModeEnabled;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Setting systemAutoPlay: reducedMotion: %i, videoAutoPlayEnabled: %i, lowPowerModeEnabled: %i", v9, 0x14u);
    }

    if (IsReduceMotionEnabled)
    {
      v8 = 0;
    }

    else
    {
      v8 = IsVideoAutoplayEnabled & (isLowPowerModeEnabled ^ 1);
    }

    [(TUIVideoPlayerManager *)self setSystemAutoPlayEnabled:v8];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == &off_2619C8)
  {
    if (pathCopy && changeCopy && [pathCopy isEqualToString:@"outputVolume"])
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);
      player = [WeakRetained player];

      if (player && [player isPlaying] && objc_msgSend(player, "isMuted"))
      {
        v16 = objc_loadWeakRetained(&self->_activeVideoPlayer);
        activeHost = [v16 activeHost];
        [activeHost managerAttemptingActionWithOrigin:0 actionCase:3];

        v18 = objc_loadWeakRetained(&self->_activeVideoPlayer);
        player2 = [v18 player];
        [player2 setMuted:0];
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TUIVideoPlayerManager;
    [(TUIVideoPlayerManager *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)player:(id)player didChangeState:(unint64_t)state
{
  playerCopy = player;
  players = self->_players;
  v12 = playerCopy;
  videoId = [playerCopy videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v9)
  {
    activeHost = [v9 activeHost];
    videoId2 = [v12 videoId];
    [activeHost playerWithVideoId:videoId2 didChangeState:state];
  }
}

- (void)playerDidPlayToEnd:(id)end mediaTimePlayed:(double)played
{
  endCopy = end;
  players = self->_players;
  v12 = endCopy;
  videoId = [endCopy videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v9)
  {
    activeHost = [v9 activeHost];
    videoId2 = [v12 videoId];
    [activeHost playerWithVideoIdDidPlayToEnd:videoId2 mediaTimePlayed:played];
  }
}

- (void)player:(id)player didPlayToTime:(double)time
{
  playerCopy = player;
  players = self->_players;
  v12 = playerCopy;
  videoId = [playerCopy videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v9)
  {
    activeHost = [v9 activeHost];
    videoId2 = [v12 videoId];
    [activeHost playerWithVideoId:videoId2 didPlayToTime:time];
  }
}

- (void)player:(id)player didStallPlaybackAtTime:(double)time
{
  playerCopy = player;
  players = self->_players;
  v12 = playerCopy;
  videoId = [playerCopy videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v9)
  {
    activeHost = [v9 activeHost];
    videoId2 = [v12 videoId];
    [activeHost playerWithVideoId:videoId2 didStallPlaybackAtTime:time];
  }
}

- (void)playerDidLoadPlayerItem:(id)item
{
  itemCopy = item;
  players = self->_players;
  v10 = itemCopy;
  videoId = [itemCopy videoId];
  v7 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v7)
  {
    activeHost = [v7 activeHost];
    videoId2 = [v10 videoId];
    [activeHost playerWithVideoIdDidLoadPlayerItem:videoId2];
  }
}

- (void)playerDidPlay:(id)play mediaTimePlayed:(double)played
{
  playCopy = play;
  players = self->_players;
  v15 = playCopy;
  videoId = [playCopy videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeVideoPlayer);

    if (WeakRetained != v9)
    {
      v11 = objc_loadWeakRetained(&self->_activeVideoPlayer);
      player = [v11 player];
      [player pause];

      [(TUIVideoPlayerManager *)self setActiveVideoPlayer:v9];
    }

    activeHost = [v9 activeHost];
    videoId2 = [v15 videoId];
    [activeHost playerWithVideoIdDidPlay:videoId2 mediaTimePlayed:played];
  }

  self->_waitingOnPlaybackToBegin = 0;
}

- (void)playerDidPause:(id)pause mediaTimePlayed:(double)played
{
  pauseCopy = pause;
  players = self->_players;
  v12 = pauseCopy;
  videoId = [pauseCopy videoId];
  v9 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v9)
  {
    [v9 setTriggerPlaybackEnabled:0];
    activeHost = [v9 activeHost];
    videoId2 = [v12 videoId];
    [activeHost playerWithVideoIdDidPause:videoId2 mediaTimePlayed:played];
  }
}

- (void)player:(id)player didSetMuted:(BOOL)muted mediaTimePlayed:(double)played
{
  mutedCopy = muted;
  playerCopy = player;
  players = self->_players;
  v14 = playerCopy;
  videoId = [playerCopy videoId];
  v11 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v11)
  {
    activeHost = [v11 activeHost];
    videoId2 = [v14 videoId];
    [activeHost playerWithVideoId:videoId2 didSetMuted:mutedCopy mediaTimePlayed:played];
  }
}

- (void)player:(id)player didSetFailureReason:(unint64_t)reason mediaTimePlayed:(double)played
{
  playerCopy = player;
  players = self->_players;
  v14 = playerCopy;
  videoId = [playerCopy videoId];
  v11 = [(NSMutableDictionary *)players objectForKey:videoId];

  if (v11)
  {
    activeHost = [v11 activeHost];
    videoId2 = [v14 videoId];
    [activeHost playerWithVideoId:videoId2 didSetFailureReason:reason mediaTimePlayed:played];
  }
}

- (void)player:(id)player didSetCaptionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_observerAccessLock);
  observers = [(TUIVideoPlayerManager *)self observers];
  v7 = [observers copy];

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

        [*(*(&v13 + 1) + 8 * v12) manager:self didSetCaptions:{enabledCopy, v13}];
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