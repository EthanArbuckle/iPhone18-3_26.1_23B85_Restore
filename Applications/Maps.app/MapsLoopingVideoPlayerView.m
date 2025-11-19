@interface MapsLoopingVideoPlayerView
- (void)_createVideoPlayer;
- (void)_destroyVideoPlayer;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playerItemDidPlayToEndTimeNotification:(id)a3;
- (void)playerItemFailedToPlayToEndTimeNotification:(id)a3;
- (void)playerPlaybackWasInterruptedNotification:(id)a3;
- (void)replaceCurrentItemWithPlayerItem:(id)a3 preserveCurrentTimestamp:(BOOL)a4;
- (void)sceneWillEnterForegroundNotification:(id)a3;
@end

@implementation MapsLoopingVideoPlayerView

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MapsLoopingVideoPlayerView *)self player];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_9:
    v24.receiver = self;
    v24.super_class = MapsLoopingVideoPlayerView;
    [(MapsLoopingVideoPlayerView *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_10;
  }

  v15 = [v10 isEqualToString:@"rate"];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [(MapsLoopingVideoPlayerView *)self player];
  [v16 rate];
  v18 = v17;

  if (v18 == 0.0)
  {
    v19 = [(MapsLoopingVideoPlayerView *)self resuming];
    v20 = sub_10057F188();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = [(MapsLoopingVideoPlayerView *)self playerItem];
        *buf = 134349314;
        v26 = self;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}p] AVPlayer was paused, resumed, and immediately paused again. Will not try resuming again. playerItem: %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v26 = self;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] AVPlayer was paused; re-starting video", buf, 0xCu);
      }

      [(MapsLoopingVideoPlayerView *)self setResuming:1];
      v23 = [(MapsLoopingVideoPlayerView *)self player];
      [v23 play];

      [(MapsLoopingVideoPlayerView *)self setResuming:0];
    }
  }

LABEL_10:
}

- (void)playerPlaybackWasInterruptedNotification:(id)a3
{
  v4 = sub_10057F188();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Player playback was interrupted; re-starting video", &v6, 0xCu);
  }

  v5 = [(MapsLoopingVideoPlayerView *)self player];
  [v5 play];
}

- (void)sceneWillEnterForegroundNotification:(id)a3
{
  v4 = sub_10057F188();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Application will enter foreground; re-starting video", &v6, 0xCu);
  }

  v5 = [(MapsLoopingVideoPlayerView *)self playerItem];
  [(MapsLoopingVideoPlayerView *)self replaceCurrentItemWithPlayerItem:v5 preserveCurrentTimestamp:1];
}

- (void)playerItemFailedToPlayToEndTimeNotification:(id)a3
{
  v4 = sub_10057F188();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [(MapsLoopingVideoPlayerView *)self player];
    v6 = [v5 currentItem];
    v7 = [v6 error];
    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}p] Player item failed to play to end time notification: %@; re-starting video", &v9, 0x16u);
  }

  v8 = [(MapsLoopingVideoPlayerView *)self playerItem];
  [(MapsLoopingVideoPlayerView *)self replaceCurrentItemWithPlayerItem:v8 preserveCurrentTimestamp:0];
}

- (void)playerItemDidPlayToEndTimeNotification:(id)a3
{
  v4 = a3;
  v5 = sub_10057F188();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Video finished playing; looping", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  v6 = [(MapsLoopingVideoPlayerView *)self player];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10057F648;
  v7[3] = &unk_1016619A8;
  objc_copyWeak(&v8, &location);
  *buf = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v6 seekToTime:buf completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_stopObserving
{
  if ([(MapsLoopingVideoPlayerView *)self isObserving])
  {
    v3 = sub_10057F188();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Stop observing notifications", &v8, 0xCu);
    }

    v4 = [(MapsLoopingVideoPlayerView *)self player];
    [v4 removeObserver:self forKeyPath:@"rate"];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:AVPlayerItemFailedToPlayToEndTimeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:AVPlayerPlaybackWasInterruptedNotification object:0];

    [(MapsLoopingVideoPlayerView *)self setObserving:0];
  }
}

- (void)_startObserving
{
  if (![(MapsLoopingVideoPlayerView *)self isObserving])
  {
    v3 = sub_10057F188();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134349056;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Start observing notifications", &v14, 0xCu);
    }

    v4 = [(MapsLoopingVideoPlayerView *)self player];
    [v4 addObserver:self forKeyPath:@"rate" options:1 context:0];

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = [(MapsLoopingVideoPlayerView *)self player];
    v7 = [v6 currentItem];
    [v5 addObserver:self selector:"playerItemDidPlayToEndTimeNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = [(MapsLoopingVideoPlayerView *)self player];
    v10 = [v9 currentItem];
    [v8 addObserver:self selector:"playerItemFailedToPlayToEndTimeNotification:" name:AVPlayerItemFailedToPlayToEndTimeNotification object:v10];

    v11 = +[NSNotificationCenter defaultCenter];
    v12 = AVPlayerPlaybackWasInterruptedNotification;
    v13 = [(MapsLoopingVideoPlayerView *)self player];
    [v11 addObserver:self selector:"playerPlaybackWasInterruptedNotification:" name:v12 object:v13];

    [(MapsLoopingVideoPlayerView *)self setObserving:1];
  }
}

- (void)_destroyVideoPlayer
{
  v3 = sub_10057F188();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Destroying video player", &v7, 0xCu);
  }

  [(MapsLoopingVideoPlayerView *)self _stopObserving];
  v4 = [(MapsLoopingVideoPlayerView *)self player];
  [v4 replaceCurrentItemWithPlayerItem:0];

  playerItem = self->_playerItem;
  self->_playerItem = 0;

  v6 = [(MapsLoopingVideoPlayerView *)self player];
  [v6 pause];

  [(MapsLoopingVideoPlayerView *)self setPlayer:0];
}

- (void)_createVideoPlayer
{
  v3 = sub_10057F188();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134349056;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Creating video player", &v11, 0xCu);
  }

  [(MapsLoopingVideoPlayerView *)self _stopObserving];
  v4 = [AVPlayer playerWithPlayerItem:0];
  player = self->_player;
  self->_player = v4;

  [(AVPlayer *)self->_player setMuted:1];
  [(AVPlayerLayer *)self->_playerLayer removeFromSuperlayer];
  v6 = [AVPlayerLayer playerLayerWithPlayer:self->_player];
  playerLayer = self->_playerLayer;
  self->_playerLayer = v6;

  [(MapsLoopingVideoPlayerView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayer setFrame:?];
  [(AVPlayerLayer *)self->_playerLayer setContentsGravity:kCAGravityResizeAspect];
  [(AVPlayerLayer *)self->_playerLayer setVideoGravity:AVLayerVideoGravityResizeAspect];
  v8 = [(MapsLoopingVideoPlayerView *)self layer];
  [v8 addSublayer:self->_playerLayer];

  v9 = [(MapsLoopingVideoPlayerView *)self playerItem];

  if (v9)
  {
    v10 = [(MapsLoopingVideoPlayerView *)self playerItem];
    [(MapsLoopingVideoPlayerView *)self replaceCurrentItemWithPlayerItem:v10 preserveCurrentTimestamp:0];
  }
}

- (void)replaceCurrentItemWithPlayerItem:(id)a3 preserveCurrentTimestamp:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_10057F188();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(MapsLoopingVideoPlayerView *)self playerItem];
    v9 = @"NO";
    if (v4)
    {
      v9 = @"YES";
    }

    v10 = v9;
    LODWORD(buf.value) = 134349826;
    *(&buf.value + 4) = self;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = v8;
    HIWORD(buf.epoch) = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Swapping video; old player item: %@, new player item: %@; preserving timestamp: %@", &buf, 0x2Au);
  }

  v11 = [(MapsLoopingVideoPlayerView *)self playerItem];
  v12 = v11 == 0;

  if (v12)
  {
    v13 = sub_10057F188();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.value) = 134349056;
      *(&buf.value + 4) = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%{public}p] There was no previously playing item; disabling timestamp preservation", &buf, 0xCu);
    }

    v4 = 0;
  }

  [(MapsLoopingVideoPlayerView *)self setPlayerItem:v6];
  [(MapsLoopingVideoPlayerView *)self _stopObserving];
  buf = kCMTimeZero;
  if (v4)
  {
    v14 = [(MapsLoopingVideoPlayerView *)self player];
    [v14 pause];

    v15 = [(MapsLoopingVideoPlayerView *)self player];
    v16 = v15;
    if (v15)
    {
      [v15 currentTime];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    buf = time2;
  }

  v17 = [(MapsLoopingVideoPlayerView *)self player];
  v18 = [(MapsLoopingVideoPlayerView *)self playerItem];
  [v17 replaceCurrentItemWithPlayerItem:v18];

  objc_initWeak(&location, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100580138;
  v27[3] = &unk_101661B98;
  objc_copyWeak(&v28, &location);
  v19 = objc_retainBlock(v27);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = buf;
  v20 = CMTimeCompare(&time1, &time2);
  v21 = sub_10057F188();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v20 > 0)
  {
    if (v22)
    {
      LODWORD(time2.value) = 134349056;
      *(&time2.value + 4) = self;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Could not preserve the timestamp of the last video because the new video is shorter than the timestamp of the last one", &time2, 0xCu);
    }

LABEL_22:
    (v19[2])(v19);
    goto LABEL_23;
  }

  if (v22)
  {
    LODWORD(time2.value) = 134349056;
    *(&time2.value + 4) = self;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Preserving timestamp of last video", &time2, 0xCu);
  }

  v23 = [(MapsLoopingVideoPlayerView *)self player];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005801A8;
  v24[3] = &unk_10165F438;
  v25 = v19;
  time2 = buf;
  [v23 seekToTime:&time2 completionHandler:v24];

LABEL_23:
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)didMoveToWindow
{
  v15.receiver = self;
  v15.super_class = MapsLoopingVideoPlayerView;
  [(MapsLoopingVideoPlayerView *)&v15 didMoveToWindow];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UISceneWillEnterForegroundNotification object:0];

  v4 = [(MapsLoopingVideoPlayerView *)self window];
  v5 = [v4 windowScene];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(MapsLoopingVideoPlayerView *)self window];
    v8 = [v7 windowScene];
    [v6 addObserver:self selector:"sceneWillEnterForegroundNotification:" name:UISceneWillEnterForegroundNotification object:v8];

    v9 = sub_10057F188();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Setting audio session category to ambient", buf, 0xCu);
    }

    v10 = +[AVAudioSession sharedInstance];
    v14 = 0;
    v11 = [v10 setCategory:AVAudioSessionCategoryAmbient error:&v14];
    v12 = v14;

    if ((v11 & 1) == 0)
    {
      v13 = sub_10057F188();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        v17 = self;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}p] Error setting audio session category to ambient: %@", buf, 0x16u);
      }
    }

    [(MapsLoopingVideoPlayerView *)self _createVideoPlayer];
  }

  else
  {
    [(MapsLoopingVideoPlayerView *)self _destroyVideoPlayer];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MapsLoopingVideoPlayerView;
  [(MapsLoopingVideoPlayerView *)&v12 layoutSubviews];
  [(MapsLoopingVideoPlayerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MapsLoopingVideoPlayerView *)self playerLayer];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)dealloc
{
  [(MapsLoopingVideoPlayerView *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = MapsLoopingVideoPlayerView;
  [(MapsLoopingVideoPlayerView *)&v3 dealloc];
}

@end