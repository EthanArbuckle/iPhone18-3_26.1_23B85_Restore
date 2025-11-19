@interface IMAVPlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_contextDependentTolerance;
- (BOOL)isVideo;
- (IMAVPlayer)init;
- (IMAVPlayerDelegate)delegate;
- (NSURL)assetURL;
- (double)currentTime;
- (double)duration;
- (double)loadedDuration;
- (id)_stringFromState:(int)a3;
- (id)description;
- (id)stillFrameAt:(double)a3 maxSize:(CGSize)a4 scale:(double)a5;
- (void)_playWithRate:(float)a3 fadeInTime:(double)a4;
- (void)_updateAllowsExternalPlayback;
- (void)_updateAudioParameters;
- (void)addPeriodicTimeObserver;
- (void)addTimeObserver:(double)a3;
- (void)clearEndTimeObserver;
- (void)clearExternalDisplay;
- (void)clearTimeObservers;
- (void)createExternalDisplayOnScreen:(id)a3;
- (void)dealloc;
- (void)endSeek;
- (void)fadeOut:(double)a3;
- (void)forceTriggerTimeObserverAt:(double)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onInterruption:(id)a3;
- (void)onRouteChange:(id)a3;
- (void)onScreenConnection:(id)a3;
- (void)onScreenDisconnection:(id)a3;
- (void)onSeekTimer:(id)a3;
- (void)pause;
- (void)play;
- (void)playFrom:(double)a3;
- (void)playbackWasPaused:(id)a3;
- (void)playerItemDidReachEnd:(id)a3;
- (void)removeAllTimeObservers;
- (void)removePeriodicTimeObserver;
- (void)removeTimeObserver:(double)a3;
- (void)seekFinished:(double)a3;
- (void)sendItemEndedNotification;
- (void)sendItemStoppedNotification;
- (void)setAsset:(id)a3;
- (void)setAssetURL:(id)a3;
- (void)setAssetURL:(id)a3 withStartTime:(double)a4;
- (void)setCurrentTime:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setEndTime:(double)a3;
- (void)setLoadState:(int)a3;
- (void)setPlaybackRate:(float)a3;
- (void)setPlayer:(id)a3;
- (void)setScale:(int)a3;
- (void)setScrubbing:(BOOL)a3;
- (void)setState:(int)a3;
- (void)setUseFullExternalScreen:(BOOL)a3;
- (void)setVolume:(float)a3;
- (void)setupEndTimeObserver;
- (void)setupTimeObserver:(id)a3;
- (void)singleSkip:(BOOL)a3;
- (void)startSeek:(BOOL)a3;
- (void)stop;
- (void)togglePlayPause;
- (void)triggerTimeObserverAt:(id)a3;
- (void)updateNowPlayingInfo;
- (void)updatePlayer;
- (void)updateScale;
- (void)updateSeekTime:(double)a3;
- (void)updateTimeObservers;
- (void)updateVideoLayer;
@end

@implementation IMAVPlayer

- (IMAVPlayer)init
{
  v15.receiver = self;
  v15.super_class = IMAVPlayer;
  v2 = [(IMAVPlayer *)&v15 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_volume = 1065353216;
    v2->_playbackPending = 0;
    v2->_wasPlaying = 0;
    *&v2->_state = 0x3F80000000000000;
    v2->_scale = 0;
    v4 = [[IMVideoView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    videoView = v3->_videoView;
    v3->_videoView = v4;

    v6 = +[UIColor blackColor];
    [(IMVideoView *)v3->_videoView setBackgroundColor:v6];

    [(IMVideoView *)v3->_videoView setPlayer:v3];
    *&v3->_seekStep = xmmword_2A3F50;
    *&v3->_usesExternalPlaybackWhileExternalScreenIsActive = 257;
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = kBKPlayerPlaybackWasInterruptedNotification[0];
    v9 = +[AVAudioSession sharedInstance];
    [v7 addObserver:v3 selector:"playbackWasPaused:" name:v8 object:v9];

    v10 = +[AVAudioSession sharedInstance];
    [v7 addObserver:v3 selector:"onInterruption:" name:AVAudioSessionInterruptionNotification object:v10];

    v11 = +[AVAudioSession sharedInstance];
    [v7 addObserver:v3 selector:"onRouteChange:" name:AVAudioSessionRouteChangeNotification object:v11];

    v12 = +[AVAudioSession sharedInstance];
    [v7 addObserver:v3 selector:"resetPlayer:" name:AVAudioSessionMediaServicesWereResetNotification object:v12];

    [v7 addObserver:v3 selector:"playerItemDidReachEnd:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];
    [v7 addObserver:v3 selector:"onScreenConnection:" name:UIScreenDidConnectNotification object:0];
    [v7 addObserver:v3 selector:"onScreenDisconnection:" name:UIScreenDidDisconnectNotification object:0];
    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 addObserver:v3 forKeyPath:IMAVPlayerDefaults_ClosedCaptioning options:1 context:off_33EA30];
  }

  return v3;
}

- (void)dealloc
{
  [(IMAVPlayer *)self stop];
  [(IMAVPlayer *)self setPlayer:0];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = kBKPlayerPlaybackWasInterruptedNotification[0];
  v5 = +[AVAudioSession sharedInstance];
  [v3 removeObserver:self name:v4 object:v5];

  v6 = +[AVAudioSession sharedInstance];
  [v3 removeObserver:self name:AVAudioSessionInterruptionNotification object:v6];

  v7 = +[AVAudioSession sharedInstance];
  [v3 removeObserver:self name:AVAudioSessionRouteChangeNotification object:v7];

  v8 = +[AVAudioSession sharedInstance];
  [v3 removeObserver:self name:AVAudioSessionMediaServicesWereResetNotification object:v8];

  [v3 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:0];
  [v3 removeObserver:self name:UIScreenDidConnectNotification object:0];
  [v3 removeObserver:self name:UIScreenDidDisconnectNotification object:0];
  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 removeObserver:self forKeyPath:IMAVPlayerDefaults_ClosedCaptioning context:off_33EA30];

  [(IMAVPlayer *)self clearEndTimeObserver];
  [(IMAVPlayer *)self removeAllTimeObservers];
  [(IMAVPlayer *)self removePeriodicTimeObserver];
  [(IMAVPlayer *)self setAsset:0];
  [(IMVideoView *)self->_videoView setPlayer:0];
  [(IMAVPlayer *)self clearExternalDisplay];
  [(NSTimer *)self->_hdcpTimer invalidate];
  hdcpTimer = self->_hdcpTimer;
  self->_hdcpTimer = 0;

  [(NSTimer *)self->_seekTimer invalidate];
  seekTimer = self->_seekTimer;
  self->_seekTimer = 0;

  v12.receiver = self;
  v12.super_class = IMAVPlayer;
  [(IMAVPlayer *)&v12 dealloc];
}

- (id)_stringFromState:(int)a3
{
  if (qword_342880 != -1)
  {
    sub_1E97E8();
  }

  v4 = qword_342878;
  if (a3 >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return [v4 objectAtIndexedSubscript:v5];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(IMAVPlayer *)self currentTime];
  v6 = v5;
  [(IMAVPlayer *)self duration];
  v8 = v7;
  v9 = [(IMAVPlayer *)self _stringFromState:[(IMAVPlayer *)self state]];
  v10 = [NSString stringWithFormat:@"<%@=%p t=%.1lf/%.1lf state=%@>", v4, self, v6, v8, v9];

  return v10;
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (([(AVAsset *)self->_asset isEqual:v5]& 1) == 0)
  {
    v6 = BCAVPlayerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138477827;
      v9 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "setAssetURL: asset=%{private}@", &v8, 0xCu);
    }

    objc_storeStrong(&self->_asset, a3);
    v7 = BCAVPlayerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "setAsset %@", &v8, 0xCu);
    }

    [(IMAVPlayer *)self updatePlayer];
  }
}

- (void)setAssetURL:(id)a3
{
  v4 = a3;
  v5 = [(IMAVPlayer *)self assetURL];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = BCAVPlayerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138477827;
      v10 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "setAssetURL: assetURL=%{private}@", &v9, 0xCu);
    }

    if (v4)
    {
      v8 = [AVURLAsset URLAssetWithURL:v4 options:0];
      [(IMAVPlayer *)self setAsset:v8];
    }

    else
    {
      [(IMAVPlayer *)self setAsset:0];
    }
  }
}

- (void)setAssetURL:(id)a3 withStartTime:(double)a4
{
  v6 = a3;
  v7 = BCAVPlayerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138478083;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "setAssetURL:withStateTime: assetURL=%{private}@ time=%.1lf", &v10, 0x16u);
  }

  v8 = [(IMAVPlayer *)self assetURL];
  v9 = [v6 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    self->_preloadingTime = a4;
    [(IMAVPlayer *)self setAssetURL:v6];
  }
}

- (NSURL)assetURL
{
  v2 = [(IMAVPlayer *)self currentItem];
  v3 = [v2 asset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 URL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_playWithRate:(float)a3 fadeInTime:(double)a4
{
  v7 = BCAVPlayerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "_playWithRate:fadeInTime: playbackRate=%.1f duration=%.1lf", buf, 0x16u);
  }

  v8 = [(AVPlayer *)self->_player currentItem];
  v9 = [v8 status];

  if (v9 == &dword_0 + 1)
  {
    [(IMAVPlayer *)self updateTimeObservers];
    v10 = fabs(a4);
    if (v10 >= 0.00999999978)
    {
      player = self->_player;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_D0510;
      v13[3] = &unk_2CCC30;
      v13[4] = self;
      v14 = a3;
      *&v13[5] = a4;
      [(AVPlayer *)player prerollAtRate:v13 completionHandler:COERCE_DOUBLE(LODWORD(a3))];
    }

    else
    {
      *&v10 = self->_playbackRate;
      [(AVPlayer *)self->_player setRate:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  self->_playbackPending = v11;
}

- (void)play
{
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "play", v5, 2u);
  }

  *&v4 = self->_playbackRate;
  [(IMAVPlayer *)self _playWithRate:v4 fadeInTime:0.0];
}

- (void)playFrom:(double)a3
{
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.value) = 134217984;
    *(&buf.value + 4) = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "play from %f", &buf, 0xCu);
  }

  v6 = [(AVPlayer *)self->_player currentItem];
  if ([v6 status] == &dword_0 + 1)
  {

LABEL_6:
    player = self->_player;
    CMTimeMakeWithSeconds(&buf, a3, 1000000000);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_D0784;
    v13[3] = &unk_2C7E08;
    v13[4] = self;
    *&v13[5] = a3;
    v11 = *&kCMTimePositiveInfinity.value;
    epoch = kCMTimePositiveInfinity.epoch;
    v9 = v11;
    v10 = epoch;
    [(AVPlayer *)player seekToTime:&buf toleranceBefore:&v11 toleranceAfter:&v9 completionHandler:v13];
    return;
  }

  v7 = [(AVPlayer *)self->_player isExternalPlaybackActive];

  if (v7)
  {
    goto LABEL_6;
  }

  self->_playbackPending = 1;
  self->_lastSeekingTime = a3;
}

- (void)pause
{
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "pause", v4, 2u);
  }

  [(AVPlayer *)self->_player setRate:0.0];
  self->_playbackPending = 0;
  self->_wasPlaying = 0;
}

- (void)stop
{
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12.value) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "stop", &v12, 2u);
  }

  if (self->_player)
  {
    if ([(IMAVPlayer *)self state]!= 1)
    {
      v4 = BCAVPlayerLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12.value) = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "stop", &v12, 2u);
      }

      v5 = [(IMAVPlayer *)self state];
      [(IMAVPlayer *)self setState:1];
      [(IMAVPlayer *)self setLoadState:0];
      if (v5 == 3)
      {
        [(IMAVPlayer *)self sendItemStoppedNotification];
      }

      else
      {
        [(AVPlayer *)self->_player setRate:0.0];
        [(IMAVPlayer *)self sendItemStoppedNotification];
        player = self->_player;
        CMTimeMakeWithSeconds(&v12, 0.0, 1);
        [(AVPlayer *)player seekToTime:&v12];
      }

      [(IMAVPlayer *)self setAsset:0];
    }

    __asm { FMOV            V0.2D, #-1.0 }

    *&self->_lastSeekingTime = _Q0;
    self->_seeking = 0;
  }
}

- (void)togglePlayPause
{
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "togglePlayPause", v4, 2u);
  }

  if ([(IMAVPlayer *)self isPlaying])
  {
    [(IMAVPlayer *)self pause];
  }

  else
  {
    [(IMAVPlayer *)self play];
  }
}

- (void)fadeOut:(double)a3
{
  player = self->_player;
  CMTimeMakeWithSeconds(&v4, a3, 1000000000);
  [(AVPlayer *)player setRate:&v4 withVolumeRampDuration:0.0];
}

- (void)startSeek:(BOOL)a3
{
  v3 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "startSeek: forward=%d", v9, 8u);
  }

  [(IMAVPlayer *)self endSeek];
  self->_skipStepCount = 0;
  self->_seekForward = v3;
  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"onSeekTimer:" selector:0 userInfo:1 repeats:self->_seekDelay];
  seekTimer = self->_seekTimer;
  self->_seekTimer = v6;

  if (self->_playWhileSeeking)
  {
    LODWORD(v8) = -2.0;
    if (v3)
    {
      *&v8 = 2.0;
    }

    [(AVPlayer *)self->_player setRate:v8];
    [(IMAVPlayer *)self updateNowPlayingInfo];
  }
}

- (void)endSeek
{
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "endSeek", v5, 2u);
  }

  [(NSTimer *)self->_seekTimer invalidate];
  seekTimer = self->_seekTimer;
  self->_seekTimer = 0;

  if (self->_playWhileSeeking)
  {
    [(IMAVPlayer *)self play];
  }

  [(IMAVPlayer *)self updateNowPlayingInfo];
}

- (void)singleSkip:(BOOL)a3
{
  v3 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "singleSkip: forward=%d", v6, 8u);
  }

  self->_seekForward = v3;
  [(IMAVPlayer *)self endSeek];
  [(IMAVPlayer *)self onSeekTimer:0];
}

- (void)onSeekTimer:(id)a3
{
  ++self->_skipStepCount;
  if (self->_seekForward)
  {
    [(IMAVPlayer *)self duration];
    v5 = v4;
    [(IMAVPlayer *)self currentTime];
    if (v5 >= v6 + self->_seekStep)
    {
      [(IMAVPlayer *)self currentTime];
      v7 = v11 + self->_seekStep;
    }

    else
    {
      [(IMAVPlayer *)self duration];
    }
  }

  else
  {
    [(IMAVPlayer *)self currentTime];
    v9 = v8;
    v7 = 0.0;
    if (v9 >= self->_seekStep)
    {
      [(IMAVPlayer *)self currentTime];
      v7 = v10 - self->_seekStep;
    }
  }

  [(IMAVPlayer *)self setCurrentTime:v7];
}

- (void)setPlaybackRate:(float)a3
{
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setPlaybackRate: rate=%.1f", &v7, 0xCu);
  }

  self->_playbackRate = a3;
  if ([(IMAVPlayer *)self state]== 2)
  {
    *&v6 = self->_playbackRate;
    [(AVPlayer *)self->_player setRate:v6];
    [(IMAVPlayer *)self updateNowPlayingInfo];
  }
}

- (void)setState:(int)a3
{
  if (self->_state != a3)
  {
    v3 = *&a3;
    self->_state = a3;
    v5 = BCAVPlayerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(IMAVPlayer *)self _stringFromState:v3];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setState: state=%{public}@", &v9, 0xCu);
    }

    if (*&self->_delegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerStateChanged:self];
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:IMAVPlayerNotification_StateChanged[0] object:self];

    [(IMAVPlayer *)self updateNowPlayingInfo];
  }
}

- (void)setLoadState:(int)a3
{
  if (self->_loadState != a3)
  {
    self->_loadState = a3;
    v5 = BCAVPlayerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = a3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setLoadState: loadState=%d", v7, 8u);
    }

    if ((*&self->_delegateFlags & 0x20) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerLoadStateChanged:self];
    }
  }
}

- (void)setVolume:(float)a3
{
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setVolume: volume=%.1f", &v6, 0xCu);
  }

  if (self->_volume != a3)
  {
    self->_volume = a3;
    [(IMAVPlayer *)self updateVolume];
  }
}

- (void)setScale:(int)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(IMAVPlayer *)self updateScale];
  }
}

- (BOOL)isVideo
{
  v2 = [(IMAVPlayer *)self currentItem];
  v3 = [v2 asset];
  v4 = [v3 tracksWithMediaCharacteristic:AVMediaCharacteristicVisual];

  LOBYTE(v2) = [v4 count] != 0;
  return v2;
}

- (void)setUseFullExternalScreen:(BOOL)a3
{
  self->_useFullExternalScreen = a3;
  v4 = [(IMVideoView *)self->_videoView window];

  if (v4)
  {

    [(IMAVPlayer *)self updateVideoLayer];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_contextDependentTolerance
{
  result = [(IMAVPlayer *)self optimizePerformanceOverAccuracy];
  if (result)
  {
    v5 = &kCMTimePositiveInfinity;
  }

  else
  {
    v5 = &kCMTimeZero;
  }

  *&retstr->var0 = *&v5->value;
  retstr->var3 = v5->epoch;
  return result;
}

- (void)updatePlayer
{
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_lastSeekingTime = _Q0;
  self->_seeking = 0;
  [(IMVideoView *)self->_videoView setVideoLayer:0];
  [(IMAVPlayer *)self clearExternalDisplay];
  v8 = [(IMAVPlayer *)self asset];

  if (v8)
  {
    [(IMAVPlayer *)self setState:0];
    v9 = [(IMAVPlayer *)self asset];
    v10 = [AVPlayerItem playerItemWithAsset:v9];

    preloadingTime = self->_preloadingTime;
    if (preloadingTime > 0.0)
    {
      v12 = BCAVPlayerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_preloadingTime;
        *buf = 134217984;
        *&buf[4] = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "preloading asset to time: %f", buf, 0xCu);
      }

      memset(buf, 0, sizeof(buf));
      v28 = 0;
      [(IMAVPlayer *)self _contextDependentTolerance];
      CMTimeMakeWithSeconds(&v26, self->_preloadingTime, 1000000000);
      v24 = *buf;
      v25 = v28;
      v22 = *buf;
      v23 = v28;
      [v10 seekToTime:&v26 toleranceBefore:&v24 toleranceAfter:&v22 completionHandler:&stru_2CCC50];
      self->_preloadingTime = 0.0;
    }

    if (self->_player)
    {
      v14 = [(IMAVPlayer *)self player];
      [v14 replaceCurrentItemWithPlayerItem:0];

      v15 = [(IMAVPlayer *)self player];
      [v15 replaceCurrentItemWithPlayerItem:v10];

      [(IMAVPlayer *)self forceTriggerTimeObserverAt:preloadingTime];
    }

    else
    {
      v16 = [AVPlayer playerWithPlayerItem:v10];
      [(IMAVPlayer *)self setPlayer:v16];

      v17 = [(IMAVPlayer *)self player];
      [v17 setActionAtItemEnd:1];

      [(IMAVPlayer *)self _updateAllowsExternalPlayback];
      usesExternalPlaybackWhileExternalScreenIsActive = self->_usesExternalPlaybackWhileExternalScreenIsActive;
      v19 = [(IMAVPlayer *)self player];
      [v19 setUsesExternalPlaybackWhileExternalScreenIsActive:usesExternalPlaybackWhileExternalScreenIsActive];
    }

    v20 = [(IMVideoView *)self->_videoView window];

    if (v20)
    {
      [(IMAVPlayer *)self updateVideoLayer];
    }
  }

  else
  {
    v21 = [(IMAVPlayer *)self player];
    [v21 replaceCurrentItemWithPlayerItem:0];
  }
}

- (void)updateVideoLayer
{
  if (!self->_player)
  {
    return;
  }

  v3 = +[UIScreen screens];
  if ([v3 count] == &dword_0 + 1)
  {
    goto LABEL_6;
  }

  v4 = [(IMAVPlayer *)self asset];
  if (!v4 || [(IMAVPlayer *)self airplayVideoActive])
  {

LABEL_6:
LABEL_7:
    [(IMAVPlayer *)self clearExternalDisplay];
    goto LABEL_8;
  }

  useFullExternalScreen = self->_useFullExternalScreen;

  if (!useFullExternalScreen)
  {
    goto LABEL_7;
  }

  v13 = +[UIScreen screens];
  v14 = [v13 objectAtIndex:1];

  [(IMAVPlayer *)self createExternalDisplayOnScreen:v14];
LABEL_8:
  p_videoView = &self->_videoView;
  [(IMVideoView *)self->_videoView setExternalDisplay:self->_externalDisplay];
  [(IMVideoView *)self->_videoView updateAirplayNoContentView];
  externalDisplay = self->_externalDisplay;
  if (!externalDisplay)
  {
    v8 = [*p_videoView videoLayer];

    if (v8)
    {
      externalDisplay = 0;
      goto LABEL_15;
    }

LABEL_14:
    v9 = [AVPlayerLayer playerLayerWithPlayer:self->_player];
    [*p_videoView setVideoLayer:v9];

    goto LABEL_15;
  }

  p_videoView = &self->_externalVideoView;
  v7 = [(IMExternalVideoView *)self->_externalVideoView videoLayer];

  if (!v7)
  {
    goto LABEL_14;
  }

  externalDisplay = 1;
LABEL_15:
  v10 = [(IMVideoView *)self->_videoView videoLayer];
  [v10 setHidden:externalDisplay];

  v11 = +[NSUserDefaults standardUserDefaults];
  v15 = [v11 objectForKey:IMAVPlayerDefaults_ClosedCaptioning];

  -[AVPlayer setAppliesMediaSelectionCriteriaAutomatically:](self->_player, "setAppliesMediaSelectionCriteriaAutomatically:", [v15 BOOLValue]);
  [(IMAVPlayer *)self updateScale];
}

- (void)clearExternalDisplay
{
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "clearExternalDisplay", v6, 2u);
  }

  [(IMExternalVideoView *)self->_externalVideoView removeFromSuperview];
  externalVideoView = self->_externalVideoView;
  self->_externalVideoView = 0;

  [(UIWindow *)self->_externalVideoWindow resignKeyWindow];
  externalVideoWindow = self->_externalVideoWindow;
  self->_externalVideoWindow = 0;

  self->_externalDisplay = 0;
}

- (void)createExternalDisplayOnScreen:(id)a3
{
  v4 = a3;
  if (*&self->_externalVideoView == 0)
  {
    v5 = BCAVPlayerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "createExternalDisplayOnScreen %@", &v13, 0xCu);
    }

    v6 = [UIWindow alloc];
    [v4 bounds];
    v7 = [v6 initWithFrame:?];
    externalVideoWindow = self->_externalVideoWindow;
    self->_externalVideoWindow = v7;

    [(UIWindow *)self->_externalVideoWindow setScreen:v4];
    v9 = [IMExternalVideoView alloc];
    [v4 bounds];
    v10 = [(IMExternalVideoView *)v9 initWithFrame:?];
    externalVideoView = self->_externalVideoView;
    self->_externalVideoView = v10;

    v12 = +[UIColor blackColor];
    [(IMExternalVideoView *)self->_externalVideoView setBackgroundColor:v12];

    [(UIWindow *)self->_externalVideoWindow addSubview:self->_externalVideoView];
    [(UIWindow *)self->_externalVideoWindow makeKeyAndVisible];
  }

  self->_externalDisplay = 1;
}

- (void)updateScale
{
  v3 = [(IMAVPlayer *)self scale];
  if (v3 <= 2)
  {
    v4 = **(&off_2CCCE8 + v3);
    v6 = [(IMVideoView *)self->_videoView videoLayer];
    [v6 setVideoGravity:v4];
    v5 = [(IMExternalVideoView *)self->_externalVideoView videoLayer];
    [v5 setVideoGravity:v4];
  }
}

- (void)_updateAllowsExternalPlayback
{
  v3 = [(IMAVPlayer *)self delegate];
  v6 = v3;
  if ((*&self->_delegateFlags & 0x400) != 0)
  {
    v4 = [v3 playerAllowsExternalPlayback:self];
  }

  else
  {
    v4 = &dword_0 + 1;
  }

  v5 = [(IMAVPlayer *)self player];
  [v5 setAllowsExternalPlayback:v4];
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  player = self->_player;
  if (player != v5)
  {
    [(AVPlayer *)player removeObserver:self forKeyPath:@"currentItem"];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"rate"];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"airPlayVideoActive"];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"timeControlStatus"];
    [(IMAVPlayer *)self removePeriodicTimeObserver];
    [(IMAVPlayer *)self clearTimeObservers];
    [(IMAVPlayer *)self clearEndTimeObserver];
    objc_storeStrong(&self->_player, a3);
    if (self->_player)
    {
      [(IMAVPlayer *)self addPeriodicTimeObserver];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"airPlayVideoActive" options:4 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem" options:6 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"rate" options:0 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"timeControlStatus" options:1 context:0];
    }

    player = [(IMAVPlayer *)self _updateAllowsExternalPlayback];
  }

  _objc_release_x1(player);
}

- (void)_updateAudioParameters
{
  v3 = [(AVPlayer *)self->_player currentItem];
  v4 = [v3 asset];
  v5 = [v4 tracksWithMediaType:AVMediaTypeAudio];

  v6 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [AVMutableAudioMixInputParameters audioMixInputParametersWithTrack:*(*(&v15 + 1) + 8 * v11), v15];
        [v12 setAudioTimePitchAlgorithm:AVAudioTimePitchAlgorithmTimeDomain];
        [v6 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = +[AVMutableAudioMix audioMix];
  [v13 setInputParameters:v6];
  v14 = [(AVPlayer *)self->_player currentItem];
  [v14 setAudioMix:v13];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_33EA30 == a6)
  {
    objc_initWeak(buf, self);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_D27D8;
    v55[3] = &unk_2CCC78;
    v56 = v12;
    objc_copyWeak(&v57, buf);
    v24 = objc_retainBlock(v55);
    v25 = objc_retainBlock(v24);
    if (v25)
    {
      if (+[NSThread isMainThread])
      {
        v25[2](v25);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_D2894;
        block[3] = &unk_2C8398;
        v54 = v25;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v57);
    objc_destroyWeak(buf);
  }

  else if ([v10 isEqualToString:@"currentItem"])
  {
    v13 = [(IMAVPlayer *)self delegate];
    v14 = BCAVPlayerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(AVPlayer *)self->_player currentItem];
      *buf = 138477827;
      v59[0] = *&v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "currentItem changed: %{private}@", buf, 0xCu);
    }

    v16 = [v12 objectForKey:NSKeyValueChangeOldKey];
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 removeObserver:self forKeyPath:@"status"];
        [v16 removeObserver:self forKeyPath:@"playbackLikelyToKeepUp"];
        [v16 removeObserver:self forKeyPath:@"playbackBufferEmpty"];
      }
    }

    if ((*&self->_delegateFlags & 0x80) != 0)
    {
      [v13 playerCurrentItemChanged:self];
    }

    v17 = [(AVPlayer *)self->_player currentItem];

    if (v17)
    {
      [(IMAVPlayer *)self updateTimeObservers];
      v18 = [(AVPlayer *)self->_player currentItem];
      [v18 addObserver:self forKeyPath:@"status" options:4 context:0];

      v19 = [(AVPlayer *)self->_player currentItem];
      [v19 addObserver:self forKeyPath:@"playbackLikelyToKeepUp" options:4 context:0];

      v20 = [(AVPlayer *)self->_player currentItem];
      [v20 addObserver:self forKeyPath:@"playbackBufferEmpty" options:4 context:0];

      v21 = [(AVPlayer *)self->_player currentItem];
      v22 = [v21 asset];
      v23 = [NSArray arrayWithObjects:@"tracks", @"duration", 0];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_D28A4;
      v51[3] = &unk_2C7BE8;
      v51[4] = self;
      v52 = v13;
      [v22 loadValuesAsynchronouslyForKeys:v23 completionHandler:v51];
    }
  }

  else if ([v10 isEqualToString:@"rate"])
  {
    v26 = BCAVPlayerLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      [(AVPlayer *)self->_player rate];
      *buf = 134217984;
      v59[0] = v27;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "rate changed: %f", buf, 0xCu);
    }

    [(AVPlayer *)self->_player rate];
    if (v28 == 0.0)
    {
      if ([(IMAVPlayer *)self state]!= 1 && [(IMAVPlayer *)self state])
      {
        [(IMAVPlayer *)self setState:3];
      }
    }

    else
    {
      [(IMAVPlayer *)self setState:2];
      [(IMAVPlayer *)self setLoadState:1];
      self->_wasPlaying = 1;
    }
  }

  else if ([v10 isEqualToString:@"status"])
  {
    v29 = [(AVPlayer *)self->_player currentItem];

    if (v29)
    {
      v30 = [(IMAVPlayer *)self delegate];
      v31 = BCAVPlayerLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [(AVPlayer *)self->_player currentItem];
        *buf = 134217984;
        v59[0] = COERCE_DOUBLE([v32 status]);
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "item status changed: %ld", buf, 0xCu);
      }

      v33 = [(AVPlayer *)self->_player currentItem];
      v34 = [v33 status];

      if (v34 == &dword_0 + 2)
      {
        v47 = [(AVPlayer *)self->_player currentItem];
        v48 = [v47 error];

        [(IMAVPlayer *)self playbackFailedWithError:v48];
        v49 = BCAVPlayerLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1E97FC(v48, v49);
        }

        [(IMAVPlayer *)self stop];
        [(IMAVPlayer *)self setPlayer:0];
        if ((*&self->_delegateFlags & 2) != 0)
        {
          [v30 playerErrorDidOccur:self error:v48];
        }
      }

      else if (v34 == &dword_0 + 1)
      {
        [(IMAVPlayer *)self setLoadState:1];
        lastSeekingTime = self->_lastSeekingTime;
        if (self->_playbackPending)
        {
          if (lastSeekingTime >= 0.0)
          {
            [(IMAVPlayer *)self playFrom:?];
          }

          else
          {
            [(IMAVPlayer *)self play];
          }
        }

        else if (lastSeekingTime != self->_lastSeekedTime)
        {
          [(IMAVPlayer *)self updateSeekTime:?];
        }
      }

      else if (!v34)
      {
        [(IMAVPlayer *)self setLoadState:0];
      }
    }
  }

  else if ([v10 isEqualToString:@"airPlayVideoActive"])
  {
    v35 = BCAVPlayerLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v59[0]) = [(IMAVPlayer *)self airplayVideoActive];
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "airPlayVideoActive new value = %d", buf, 8u);
    }

    [(IMAVPlayer *)self willChangeValueForKey:@"airplayVideoActive"];
    [(IMVideoView *)self->_videoView setAirplayActive:[(IMAVPlayer *)self airplayVideoActive]];
    v36 = [(IMVideoView *)self->_videoView window];

    if (v36)
    {
      [(IMAVPlayer *)self updateVideoLayer];
    }

    [(IMAVPlayer *)self didChangeValueForKey:@"airplayVideoActive"];
  }

  else if ([v10 isEqualToString:@"playbackBufferEmpty"])
  {
    v37 = BCAVPlayerLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [(AVPlayer *)self->_player currentItem];
      *buf = 67109120;
      LODWORD(v59[0]) = [v38 isPlaybackBufferEmpty];
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "playbackBufferEmpty new value = %d", buf, 8u);
    }

    v39 = [(AVPlayer *)self->_player currentItem];
    v40 = [v39 isPlaybackBufferEmpty];

    if (v40)
    {
      v41 = BCAVPlayerLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "playbackBufferEmpty", buf, 2u);
      }

      if (![(IMAVPlayer *)self isPlaying])
      {
        [(IMAVPlayer *)self setLoadState:2];
      }
    }
  }

  else if ([v10 isEqualToString:@"playbackLikelyToKeepUp"])
  {
    v42 = BCAVPlayerLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = [(AVPlayer *)self->_player currentItem];
      *buf = 67109120;
      LODWORD(v59[0]) = [v43 isPlaybackLikelyToKeepUp];
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "playbackLikelyToKeepUp new value = %d", buf, 8u);
    }

    v44 = [(AVPlayer *)self->_player currentItem];
    v45 = [v44 isPlaybackLikelyToKeepUp];

    if (v45)
    {
      if ([(IMAVPlayer *)self loadState]== 2 && self->_wasPlaying && ![(IMAVPlayer *)self isPlaying])
      {
        [(IMAVPlayer *)self play];
      }

      [(IMAVPlayer *)self setLoadState:1];
    }
  }

  else if ([v10 isEqualToString:@"timeControlStatus"])
  {
    if ([(AVPlayer *)self->_player timeControlStatus]== &dword_0 + 2)
    {
      [(IMAVPlayer *)self updateNowPlayingInfo];
    }
  }

  else
  {
    v50.receiver = self;
    v50.super_class = IMAVPlayer;
    [(IMAVPlayer *)&v50 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)playerItemDidReachEnd:(id)a3
{
  v4 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 138477827;
    v15 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "playerItemDidReachEnd: notification=%{private}@", &v14, 0xCu);
  }

  v6 = [(AVPlayer *)self->_player currentItem];
  v7 = [v4 object];

  if (v6 == v7)
  {
    if (self->_loops)
    {
      [(IMAVPlayer *)self playFrom:0.0];
      loops = self->_loops;
      v9 = __OFSUB__(loops, 1);
      v10 = loops - 1;
      if (v10 < 0 == v9)
      {
        self->_loops = v10;
      }
    }

    else
    {
      [(IMAVPlayer *)self currentTime];
      v12 = v11;
      [(IMAVPlayer *)self duration];
      if (vabdd_f64(v12, v13) < 2.0)
      {
        [(IMAVPlayer *)self stop];
        [(IMAVPlayer *)self sendItemEndedNotification];
      }
    }
  }
}

- (void)setScrubbing:(BOOL)a3
{
  v3 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setScrubbing: scrubbing=%d", v8, 8u);
  }

  if (self->_scrubbing != v3)
  {
    self->_scrubbing = v3;
    if (v3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [(IMAVPlayer *)self player];
    [v7 setActionAtItemEnd:v6];
  }
}

- (void)sendItemStoppedNotification
{
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "sendItemStoppedNotification", v6, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:IMAVPlayerNotification_PlaybackStopped[0] object:self];

  if ((*&self->_delegateFlags & 0x100) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playerCurrentItemStopped:self];
  }
}

- (void)sendItemEndedNotification
{
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "sendItemEndedNotification", v8, 2u);
  }

  v4 = [(IMAVPlayer *)self delegate];
  if (v4 && (*&self->_delegateFlags & 0x40) != 0)
  {
    [(IMAVPlayer *)self duration];
    v6 = v5;
    [(IMAVPlayer *)self duration];
    [v4 playerPeriodicUpdate:self elapsed:1 duration:v6 isFinished:v7];
  }

  if ((*&self->_delegateFlags & 0x200) != 0)
  {
    [v4 playerCurrentItemEnded:self];
  }
}

- (void)setCurrentTime:(double)a3
{
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setCurrentTime %.1lf", &v8, 0xCu);
  }

  if (a3 >= 0.0)
  {
    self->_lastSeekingTime = a3;
    v6 = [(AVPlayer *)self->_player currentItem];
    v7 = [v6 status];

    if (v7 == &dword_0 + 1 && !self->_seeking)
    {
      self->_seeking = 1;
      [(IMAVPlayer *)self updateSeekTime:a3];
    }
  }
}

- (void)seekFinished:(double)a3
{
  self->_lastSeekedTime = a3;
  if (self->_lastSeekingTime == a3)
  {
    self->_seeking = 0;
    [(IMAVPlayer *)self forceTriggerTimeObserverAt:?];

    [(IMAVPlayer *)self updateNowPlayingInfo];
  }

  else
  {
    v4 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D2F30;
    block[3] = &unk_2C7D40;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)updateSeekTime:(double)a3
{
  if (a3 >= 0.0)
  {
    v5 = BCAVPlayerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "updateSeekTime %.1lf", buf, 0xCu);
    }

    memset(buf, 0, sizeof(buf));
    v14 = 0;
    [(IMAVPlayer *)self _contextDependentTolerance];
    player = self->_player;
    CMTimeMakeWithSeconds(&v12, a3, 1000000000);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_D309C;
    v11[3] = &unk_2C7E08;
    v11[4] = self;
    *&v11[5] = a3;
    v9 = *buf;
    v10 = v14;
    v7 = *buf;
    v8 = v14;
    [(AVPlayer *)player seekToTime:&v12 toleranceBefore:&v9 toleranceAfter:&v7 completionHandler:v11];
  }
}

- (double)currentTime
{
  if (self->_seeking)
  {
    return self->_lastSeekingTime;
  }

  v3 = [(AVPlayer *)self->_player currentItem];
  v4 = [v3 status];

  if (v4 != &dword_0 + 1)
  {
    return self->_lastSeekingTime;
  }

  v5 = [(AVPlayer *)self->_player currentItem];

  if (!v5)
  {
    return 0.0;
  }

  player = self->_player;
  if (player)
  {
    [(AVPlayer *)player currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (double)duration
{
  v3 = [(IMAVPlayer *)self asset];
  v4 = [v3 statusOfValueForKey:@"duration" error:0];

  if (v4 == &dword_0 + 2)
  {
    v5 = [(IMAVPlayer *)self asset];
    v6 = v5;
    if (v5)
    {
      [v5 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [(IMAVPlayer *)self setCachedDuration:CMTimeGetSeconds(&time)];

    [(IMAVPlayer *)self cachedDuration];
  }

  else
  {

    [(IMAVPlayer *)self cachedDuration];
  }

  return result;
}

- (double)loadedDuration
{
  v3 = [(AVPlayer *)self->_player currentItem];

  if (!v3)
  {
    return 0.0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(AVPlayer *)self->_player currentItem];
  v5 = [v4 loadedTimeRanges];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v11)
        {
          [v11 CMTimeRangeValue];
        }

        else
        {
          memset(&v14, 0, sizeof(v14));
        }

        CMTimeRangeGetEnd(&time, &v14);
        Seconds = CMTimeGetSeconds(&time);
        if (Seconds > v9)
        {
          v9 = Seconds;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)setEndTime:(double)a3
{
  if (self->_endTime != a3)
  {
    if (a3 == 0.0)
    {
      [(IMAVPlayer *)self clearEndTimeObserver];
    }

    self->_endTime = a3;
    self->_timeObserverNeedsUpdate = 1;
  }
}

- (void)clearEndTimeObserver
{
  if (self->_endTimeObserver)
  {
    [(AVPlayer *)self->_player removeTimeObserver:?];
    endTimeObserver = self->_endTimeObserver;
    self->_endTimeObserver = 0;
  }
}

- (void)addTimeObserver:(double)a3
{
  if (a3 >= 0.0)
  {
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    if (!self->_observingTimes)
    {
      v9 = objc_alloc_init(NSMutableArray);
      observingTimes = self->_observingTimes;
      self->_observingTimes = v9;
    }

    CMTimeMakeWithSeconds(&v12, a3, 1000000000);
    v11 = [NSValue valueWithCMTime:&v12];
    [(NSMutableArray *)self->_observingTimes addObject:v11];
    self->_timeObserverNeedsUpdate = 1;
  }
}

- (void)removeTimeObserver:(double)a3
{
  observingTimes = self->_observingTimes;
  CMTimeMakeWithSeconds(&v5, a3, 1000000000);
  v4 = [NSValue valueWithCMTime:&v5];
  [(NSMutableArray *)observingTimes removeObject:v4];
}

- (void)removeAllTimeObservers
{
  [(IMAVPlayer *)self clearTimeObservers];
  [(NSMutableArray *)self->_observingTimes removeAllObjects];
  observingTimes = self->_observingTimes;
  self->_observingTimes = 0;
}

- (void)clearTimeObservers
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_timeObservers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AVPlayer *)self->_player removeTimeObserver:*(*(&v9 + 1) + 8 * v7), v9];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_timeObservers removeAllObjects];
  timeObservers = self->_timeObservers;
  self->_timeObservers = 0;
}

- (void)addPeriodicTimeObserver
{
  v3 = [(IMAVPlayer *)self periodicTimeObserver];

  if (!v3)
  {
    objc_initWeak(&location, self);
    player = self->_player;
    CMTimeMakeWithSeconds(&v8, 1.0, 1000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D3858;
    v6[3] = &unk_2CCCA0;
    objc_copyWeak(&v7, &location);
    v5 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v8 queue:0 usingBlock:v6];
    [(IMAVPlayer *)self setPeriodicTimeObserver:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)removePeriodicTimeObserver
{
  v3 = [(IMAVPlayer *)self periodicTimeObserver];

  if (v3)
  {
    player = self->_player;
    v5 = [(IMAVPlayer *)self periodicTimeObserver];
    [(AVPlayer *)player removeTimeObserver:v5];

    [(IMAVPlayer *)self setPeriodicTimeObserver:0];
  }
}

- (void)updateTimeObservers
{
  if (self->_timeObserverNeedsUpdate)
  {
    [(IMAVPlayer *)self clearEndTimeObserver];
    [(IMAVPlayer *)self clearTimeObservers];
    [(IMAVPlayer *)self setupEndTimeObserver];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_observingTimes;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(IMAVPlayer *)self setupTimeObserver:*(*(&v8 + 1) + 8 * v7), v8];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    self->_timeObserverNeedsUpdate = 0;
    [(IMAVPlayer *)self currentTime];
    [(IMAVPlayer *)self forceTriggerTimeObserverAt:?];
  }
}

- (void)setupTimeObserver:(id)a3
{
  v4 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "add BoundaryTimeObserver timeValue %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  player = self->_player;
  v7 = [NSArray arrayWithObject:v4];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_D3C90;
  v17 = &unk_2C8188;
  objc_copyWeak(&v19, buf);
  v8 = v4;
  v18 = v8;
  v9 = [(AVPlayer *)player addBoundaryTimeObserverForTimes:v7 queue:0 usingBlock:&v14];

  timeObservers = self->_timeObservers;
  if (!timeObservers)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v13 = self->_timeObservers;
    p_timeObservers = &self->_timeObservers;
    *p_timeObservers = v11;

    timeObservers = *p_timeObservers;
  }

  [(NSMutableArray *)timeObservers addObject:v9, v14, v15, v16, v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)setupEndTimeObserver
{
  [(IMAVPlayer *)self endTime];
  if (v3 > 0.0)
  {
    [(IMAVPlayer *)self endTime];
    CMTimeMakeWithSeconds(&v16, v4, 1000000000);
    v5 = [NSValue valueWithCMTime:&v16];
    objc_initWeak(&location, self);
    v6 = BCAVPlayerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(v16.value) = 138412290;
      *(&v16.value + 4) = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "End TimeObserver timeValue %@", &v16, 0xCu);
    }

    player = self->_player;
    v8 = [NSArray arrayWithObject:v5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_D3ECC;
    v12[3] = &unk_2C8188;
    objc_copyWeak(&v14, &location);
    v9 = v5;
    v13 = v9;
    v10 = [(AVPlayer *)player addBoundaryTimeObserverForTimes:v8 queue:0 usingBlock:v12];
    endTimeObserver = self->_endTimeObserver;
    self->_endTimeObserver = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)triggerTimeObserverAt:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    if (v4)
    {
      [v4 CMTimeValue];
    }

    else
    {
      memset(&v9, 0, sizeof(v9));
    }

    Seconds = CMTimeGetSeconds(&v9);
    v7 = BCAVPlayerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(v9.value) = 134217984;
      *(&v9.value + 4) = Seconds;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "triggerTimeObserver %f", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained player:self callbackForTime:Seconds];
  }
}

- (void)forceTriggerTimeObserverAt:(double)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_observingTimes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        if (v12)
        {
          [*(*(&v15 + 1) + 8 * v10) CMTimeValue];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        Seconds = CMTimeGetSeconds(&time);
        if (Seconds > a3)
        {
          v8 = v11;
          goto LABEL_16;
        }

        if (Seconds == a3)
        {
          goto LABEL_18;
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  if (v8)
  {
    v12 = [(NSMutableArray *)self->_observingTimes objectAtIndex:v8 - 1];
    v5 = v12;
LABEL_18:
    [(IMAVPlayer *)self triggerTimeObserverAt:v12];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  v4 = [(IMAVPlayer *)self delegate];
  if (v4 != obj)
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
    if (objc_opt_respondsToSelector())
    {
      v14 = 1024;
    }

    else
    {
      v14 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFBFF | v14;
  }
}

- (void)updateNowPlayingInfo
{
  v3 = +[MPNowPlayingInfoCenter defaultCenter];
  if ([(IMAVPlayer *)self state]== 1)
  {
    [v3 setNowPlayingInfo:0];
  }

  else
  {
    v4 = [NSMutableDictionary dictionaryWithCapacity:7];
    v5 = [(IMAVPlayer *)self metaData];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKey:IMAVPlayerMetaData_Title[0]];

      if (v7)
      {
        v8 = [v6 objectForKey:IMAVPlayerMetaData_Title[0]];
        [v4 setObject:v8 forKey:MPMediaItemPropertyTitle];
      }

      v9 = [v6 objectForKey:IMAVPlayerMetaData_Artist[0]];

      if (v9)
      {
        v10 = [v6 objectForKey:IMAVPlayerMetaData_Artist[0]];
        [v4 setObject:v10 forKey:MPMediaItemPropertyArtist];
      }

      v11 = [v6 objectForKey:IMAVPlayerMetaData_Album[0]];

      if (v11)
      {
        v12 = [v6 objectForKey:IMAVPlayerMetaData_Album[0]];
        [v4 setObject:v12 forKey:MPMediaItemPropertyAlbumTitle];
      }

      v13 = +[NSMutableDictionary dictionary];
      v14 = [v6 objectForKeyedSubscript:IMAVPlayerMetaData_PersistentID[0]];

      if (v14)
      {
        v15 = [v6 objectForKeyedSubscript:IMAVPlayerMetaData_PersistentID[0]];
        [v13 setObject:v15 forKeyedSubscript:MPMediaItemPropertyPersistentID];
      }

      v16 = [v6 objectForKey:IMAVPlayerMetaData_StoreIdentifier[0]];

      if (v16)
      {
        v17 = [v6 objectForKeyedSubscript:IMAVPlayerMetaData_StoreIdentifier[0]];
        [v13 setObject:v17 forKeyedSubscript:_MPNowPlayingInfoPropertyiTunesStoreIdentifier];
      }

      v18 = [NSDictionary dictionaryWithDictionary:v13];
      [v4 setObject:v18 forKey:_MPNowPlayingCollectionInfoKeyIdentifiers];

      v19 = [v6 objectForKey:IMAVPlayerMetaData_Artwork[0]];
      if (v19)
      {
        v20 = [MPMediaItemArtwork alloc];
        [v19 size];
        v22 = v21;
        v24 = v23;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_D490C;
        v33[3] = &unk_2CCCC8;
        v34 = v19;
        v25 = [v20 initWithBoundsSize:v33 requestHandler:{v22, v24}];
        [v4 setObject:v25 forKey:MPMediaItemPropertyArtwork];
      }
    }

    [(IMAVPlayer *)self currentTime];
    v26 = [NSNumber numberWithDouble:?];
    [v4 setObject:v26 forKey:MPNowPlayingInfoPropertyElapsedPlaybackTime];

    [(IMAVPlayer *)self duration];
    v27 = [NSNumber numberWithDouble:?];
    [v4 setObject:v27 forKey:MPMediaItemPropertyPlaybackDuration];

    v28 = [(IMAVPlayer *)self isPlaying];
    v29 = 0.0;
    if (v28)
    {
      [(AVPlayer *)self->_player rate];
      v29 = v30;
    }

    v31 = [NSNumber numberWithDouble:v29];
    [v4 setObject:v31 forKey:MPNowPlayingInfoPropertyPlaybackRate];

    v32 = BCAVPlayerLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v36 = v4;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Setting nowPlayingInfo=%{private}@", buf, 0xCu);
    }

    [v3 setNowPlayingInfo:v4];
  }
}

- (id)stillFrameAt:(double)a3 maxSize:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v9 = [(IMAVPlayer *)self asset];
  v10 = [AVAssetImageGenerator assetImageGeneratorWithAsset:v9];

  if (a5 < 1.0)
  {
    v11 = +[UIScreen mainScreen];
    [v11 scale];
    a5 = v12;
  }

  [v10 setMaximumSize:{width * a5, height * a5}];
  v21 = kCMTimePositiveInfinity;
  v19 = *&v21.value;
  epoch = v21.epoch;
  [v10 setRequestedTimeToleranceBefore:&v21];
  *&v21.value = v19;
  v21.epoch = epoch;
  [v10 setRequestedTimeToleranceAfter:&v21];
  CMTimeMakeWithSeconds(&v21, a3, 1000000000);
  v20 = 0;
  v14 = [v10 copyCGImageAtTime:&v21 actualTime:0 error:&v20];
  v15 = v20;
  if (v15)
  {
    v16 = BCAVPlayerLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1E9874(v15, v16);
    }

    v17 = 0;
  }

  else
  {
    v16 = +[UIScreen mainScreen];
    [v16 scale];
    v17 = [UIImage imageWithCGImage:v14 scale:0 orientation:?];
  }

  CGImageRelease(v14);

  return v17;
}

- (void)onScreenConnection:(id)a3
{
  v4 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 object];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "onScreenConnection %@", &v8, 0xCu);
  }

  v7 = [(IMVideoView *)self->_videoView window];

  if (v7)
  {
    [(IMAVPlayer *)self updateVideoLayer];
  }
}

- (void)onScreenDisconnection:(id)a3
{
  v4 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 object];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "onScreenDisconnection %@", &v8, 0xCu);
  }

  v7 = [(IMVideoView *)self->_videoView window];

  if (v7)
  {
    [(IMAVPlayer *)self updateVideoLayer];
  }
}

- (void)playbackWasPaused:(id)a3
{
  self->_wasPlaying = [(IMAVPlayer *)self isPlaying];
  p_wasPlaying = &self->_wasPlaying;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1E990C(p_wasPlaying);
  }
}

- (void)onInterruption:(id)a3
{
  v4 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    *v18 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "onInterruption: notification=%@", &v17, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
  v8 = [v7 unsignedIntegerValue];

  if (v8)
  {
    if (v8 == &dword_0 + 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1E9990(self);
      }

      v9 = BCAVPlayerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        wasPlaying = self->_wasPlaying;
        v17 = 67109120;
        *v18 = wasPlaying;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "begin interruption, wasPlaying: %d", &v17, 8u);
      }
    }
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:AVAudioSessionInterruptionOptionKey];
    v12 = [v11 unsignedIntegerValue];

    v13 = BCAVPlayerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = self->_wasPlaying;
      v17 = 134218240;
      *v18 = v12;
      *&v18[8] = 1024;
      v19 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "end interruption AVAudioSessionInterruptionOptionKey: %lu wasPlaying: %d", &v17, 0x12u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v15 = self->_wasPlaying;
      v17 = 67109376;
      *v18 = v12 & 1;
      *&v18[4] = 1024;
      *&v18[6] = v15;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "AVAudioSession: Interruption has ended. Should resume: %d. Was playing: %d.", &v17, 0xEu);
    }

    if (v12)
    {
      v16 = +[AVAudioSession sharedInstance];
      [v16 setActive:1 error:0];

      if (self->_wasPlaying)
      {
        [(IMAVPlayer *)self rewindFollowingInterruption];
        [(IMAVPlayer *)self play];
      }
    }
  }
}

- (void)onRouteChange:(id)a3
{
  v4 = a3;
  v5 = BCAVPlayerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "onRouteChange: notification=%@", buf, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:AVAudioSessionRouteChangePreviousRouteKey];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:AVAudioSessionRouteChangeReasonKey];

  if ([v9 integerValue] == &dword_0 + 2)
  {
    v23 = self;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [v7 outputs];
    v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      v21 = v7;
      v22 = v4;
      v20 = v9;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 portType];
          if ([v15 isEqualToString:AVAudioSessionPortHeadphones])
          {
            goto LABEL_16;
          }

          v16 = [v14 portType];
          if ([v16 isEqualToString:AVAudioSessionPortLineOut])
          {

LABEL_16:
LABEL_17:
            v19 = BCAVPlayerLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "route change interruption.  Setting _wasPlaying=NO", buf, 2u);
            }

            v4 = v22;
            v23->_wasPlaying = 0;
            v9 = v20;
            v7 = v21;
            goto LABEL_20;
          }

          v17 = [v14 portType];
          v18 = [v17 isEqualToString:AVAudioSessionPortBluetoothA2DP];

          if (v18)
          {
            goto LABEL_17;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        v7 = v21;
        v4 = v22;
        v9 = v20;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }
}

- (IMAVPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end