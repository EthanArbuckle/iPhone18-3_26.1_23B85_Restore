@interface MapsVideoPlayerView
- (void)_createVideoPlayer;
- (void)_destroyVideoPlayer;
- (void)_replaceCurrentItemWithPlayerItem:(id)a3 preserveCurrentTimestamp:(BOOL)a4;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)loadAssetNamed:(id)a3 preservingTimestamp:(BOOL)a4;
- (void)play;
- (void)playerItemDidPlayToEndTimeNotification:(id)a3;
- (void)playerItemFailedToPlayToEndTimeNotification:(id)a3;
- (void)reset;
- (void)sceneWillEnterForegroundNotification:(id)a3;
@end

@implementation MapsVideoPlayerView

- (void)sceneWillEnterForegroundNotification:(id)a3
{
  v4 = sub_1008A1450();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Application will enter foreground; re-starting video", &v6, 0xCu);
  }

  v5 = [(MapsVideoPlayerView *)self playerItem];
  [(MapsVideoPlayerView *)self _replaceCurrentItemWithPlayerItem:v5 preserveCurrentTimestamp:1];
}

- (void)playerItemFailedToPlayToEndTimeNotification:(id)a3
{
  v4 = sub_1008A1450();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [(MapsVideoPlayerView *)self player];
    v6 = [v5 currentItem];
    v7 = [v6 error];
    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}p] Player item failed to play to end time notification: %@; re-starting video", &v9, 0x16u);
  }

  v8 = [(MapsVideoPlayerView *)self playerItem];
  [(MapsVideoPlayerView *)self _replaceCurrentItemWithPlayerItem:v8 preserveCurrentTimestamp:0];
}

- (void)playerItemDidPlayToEndTimeNotification:(id)a3
{
  v4 = sub_1008A1450();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Video finished playing; looping", &v7, 0xCu);
  }

  v5 = [(MapsVideoPlayerView *)self playbackDidEndBlock];

  if (v5)
  {
    v6 = [(MapsVideoPlayerView *)self playbackDidEndBlock];
    v6[2]();
  }
}

- (void)_stopObserving
{
  if ([(MapsVideoPlayerView *)self isObserving])
  {
    v3 = sub_1008A1450();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Stop observing notifications", &v6, 0xCu);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:AVPlayerItemFailedToPlayToEndTimeNotification object:0];

    [(MapsVideoPlayerView *)self setObserving:0];
  }
}

- (void)_startObserving
{
  if (![(MapsVideoPlayerView *)self isObserving])
  {
    v3 = sub_1008A1450();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134349056;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Start observing notifications", &v10, 0xCu);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v5 = [(MapsVideoPlayerView *)self player];
    v6 = [v5 currentItem];
    [v4 addObserver:self selector:"playerItemDidPlayToEndTimeNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:v6];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = [(MapsVideoPlayerView *)self player];
    v9 = [v8 currentItem];
    [v7 addObserver:self selector:"playerItemFailedToPlayToEndTimeNotification:" name:AVPlayerItemFailedToPlayToEndTimeNotification object:v9];

    [(MapsVideoPlayerView *)self setObserving:1];
  }
}

- (void)_destroyVideoPlayer
{
  v3 = sub_1008A1450();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Destroying video player", &v7, 0xCu);
  }

  [(MapsVideoPlayerView *)self _stopObserving];
  v4 = [(MapsVideoPlayerView *)self player];
  [v4 replaceCurrentItemWithPlayerItem:0];

  playerItem = self->_playerItem;
  self->_playerItem = 0;

  v6 = [(MapsVideoPlayerView *)self player];
  [v6 pause];

  [(MapsVideoPlayerView *)self setPlayer:0];
}

- (void)_createVideoPlayer
{
  v3 = sub_1008A1450();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134349056;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Creating video player", &v15, 0xCu);
  }

  [(MapsVideoPlayerView *)self _stopObserving];
  v4 = [AVPlayer playerWithPlayerItem:0];
  player = self->_player;
  self->_player = v4;

  [(AVPlayer *)self->_player setMuted:1];
  [(AVPlayerLayer *)self->_playerLayer removeFromSuperlayer];
  v6 = [AVPlayerLayer playerLayerWithPlayer:self->_player];
  playerLayer = self->_playerLayer;
  self->_playerLayer = v6;

  [(MapsVideoPlayerView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayer setFrame:?];
  v8 = [(MapsVideoPlayerView *)self aspectFill];
  v9 = &kCAGravityResizeAspectFill;
  if (!v8)
  {
    v9 = &kCAGravityResizeAspect;
  }

  [(AVPlayerLayer *)self->_playerLayer setContentsGravity:*v9];
  v10 = [(MapsVideoPlayerView *)self aspectFill];
  v11 = &AVLayerVideoGravityResize;
  if (!v10)
  {
    v11 = &AVLayerVideoGravityResizeAspect;
  }

  [(AVPlayerLayer *)self->_playerLayer setVideoGravity:*v11];
  v12 = [(MapsVideoPlayerView *)self layer];
  [v12 addSublayer:self->_playerLayer];

  v13 = [(MapsVideoPlayerView *)self playerItem];

  if (v13)
  {
    v14 = [(MapsVideoPlayerView *)self playerItem];
    [(MapsVideoPlayerView *)self _replaceCurrentItemWithPlayerItem:v14 preserveCurrentTimestamp:0];
  }
}

- (void)_replaceCurrentItemWithPlayerItem:(id)a3 preserveCurrentTimestamp:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_1008A1450();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(MapsVideoPlayerView *)self playerItem];
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
    v25 = v6;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Swapping video; old player item: %@, new player item: %@; preserving timestamp: %@", &buf, 0x2Au);
  }

  v11 = [(MapsVideoPlayerView *)self playerItem];

  if (!v11)
  {
    v15 = sub_1008A1450();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.value) = 134349056;
      *(&buf.value + 4) = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] There was no previously playing item; disabling timestamp preservation", &buf, 0xCu);
    }

    [(MapsVideoPlayerView *)self setPlayerItem:v6];
    [(MapsVideoPlayerView *)self _stopObserving];
    goto LABEL_12;
  }

  [(MapsVideoPlayerView *)self setPlayerItem:v6];
  [(MapsVideoPlayerView *)self _stopObserving];
  if (!v4)
  {
LABEL_12:
    v16 = [(MapsVideoPlayerView *)self player];
    v17 = [(MapsVideoPlayerView *)self playerItem];
    [v16 replaceCurrentItemWithPlayerItem:v17];

    goto LABEL_13;
  }

  v12 = [(MapsVideoPlayerView *)self player];
  [v12 pause];

  v13 = [(MapsVideoPlayerView *)self player];
  v14 = v13;
  if (v13)
  {
    [v13 currentTime];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  buf = time2;

  v18 = [(MapsVideoPlayerView *)self player];
  v19 = [(MapsVideoPlayerView *)self playerItem];
  [v18 replaceCurrentItemWithPlayerItem:v19];

  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v22 = buf;
  v20 = CMTimeCompare(&v22, &time2);
  v16 = sub_1008A1450();
  v21 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v20 <= 0)
  {
    if (v21)
    {
      LODWORD(time2.value) = 134349056;
      *(&time2.value + 4) = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Preserving timestamp of last video", &time2, 0xCu);
    }

    v16 = [(MapsVideoPlayerView *)self player];
    time2 = buf;
    [v16 seekToTime:&time2];
  }

  else if (v21)
  {
    LODWORD(time2.value) = 134349056;
    *(&time2.value + 4) = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Could not preserve the timestamp of the last video because the new video is shorter than the timestamp of the last one", &time2, 0xCu);
  }

LABEL_13:

  [(MapsVideoPlayerView *)self _startObserving];
}

- (void)reset
{
  v3 = [(MapsVideoPlayerView *)self player];
  [v3 pause];

  v4 = [(MapsVideoPlayerView *)self player];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v4 seekToTime:&v5];
}

- (void)play
{
  v2 = [(MapsVideoPlayerView *)self player];
  [v2 play];
}

- (void)loadAssetNamed:(id)a3 preservingTimestamp:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[NSDataAsset alloc] initWithName:v6];

  v8 = [v7 data];
  v12[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v12[1] = AVAssetReferenceRestrictionsKey;
  v13[0] = &__kCFBooleanFalse;
  v13[1] = &off_1016E75F8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [AVAsset assetWithData:v8 contentType:AVFileTypeMPEG4 options:v9];

  v11 = [AVPlayerItem playerItemWithAsset:v10];
  [(MapsVideoPlayerView *)self _replaceCurrentItemWithPlayerItem:v11 preserveCurrentTimestamp:v4];
}

- (void)didMoveToWindow
{
  v15.receiver = self;
  v15.super_class = MapsVideoPlayerView;
  [(MapsVideoPlayerView *)&v15 didMoveToWindow];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UISceneWillEnterForegroundNotification object:0];

  v4 = [(MapsVideoPlayerView *)self window];
  v5 = [v4 windowScene];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(MapsVideoPlayerView *)self window];
    v8 = [v7 windowScene];
    [v6 addObserver:self selector:"sceneWillEnterForegroundNotification:" name:UISceneWillEnterForegroundNotification object:v8];

    v9 = sub_1008A1450();
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
      v13 = sub_1008A1450();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        v17 = self;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}p] Error setting audio session category to ambient: %@", buf, 0x16u);
      }
    }

    [(MapsVideoPlayerView *)self _createVideoPlayer];
  }

  else
  {
    [(MapsVideoPlayerView *)self _destroyVideoPlayer];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MapsVideoPlayerView;
  [(MapsVideoPlayerView *)&v12 layoutSubviews];
  [(MapsVideoPlayerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MapsVideoPlayerView *)self playerLayer];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)dealloc
{
  [(MapsVideoPlayerView *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = MapsVideoPlayerView;
  [(MapsVideoPlayerView *)&v3 dealloc];
}

@end