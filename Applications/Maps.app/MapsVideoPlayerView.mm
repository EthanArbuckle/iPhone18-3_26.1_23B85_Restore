@interface MapsVideoPlayerView
- (void)_createVideoPlayer;
- (void)_destroyVideoPlayer;
- (void)_replaceCurrentItemWithPlayerItem:(id)item preserveCurrentTimestamp:(BOOL)timestamp;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)loadAssetNamed:(id)named preservingTimestamp:(BOOL)timestamp;
- (void)play;
- (void)playerItemDidPlayToEndTimeNotification:(id)notification;
- (void)playerItemFailedToPlayToEndTimeNotification:(id)notification;
- (void)reset;
- (void)sceneWillEnterForegroundNotification:(id)notification;
@end

@implementation MapsVideoPlayerView

- (void)sceneWillEnterForegroundNotification:(id)notification
{
  v4 = sub_1008A1450();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Application will enter foreground; re-starting video", &v6, 0xCu);
  }

  playerItem = [(MapsVideoPlayerView *)self playerItem];
  [(MapsVideoPlayerView *)self _replaceCurrentItemWithPlayerItem:playerItem preserveCurrentTimestamp:1];
}

- (void)playerItemFailedToPlayToEndTimeNotification:(id)notification
{
  v4 = sub_1008A1450();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    player = [(MapsVideoPlayerView *)self player];
    currentItem = [player currentItem];
    error = [currentItem error];
    v9 = 134349314;
    selfCopy = self;
    v11 = 2112;
    v12 = error;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}p] Player item failed to play to end time notification: %@; re-starting video", &v9, 0x16u);
  }

  playerItem = [(MapsVideoPlayerView *)self playerItem];
  [(MapsVideoPlayerView *)self _replaceCurrentItemWithPlayerItem:playerItem preserveCurrentTimestamp:0];
}

- (void)playerItemDidPlayToEndTimeNotification:(id)notification
{
  v4 = sub_1008A1450();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Video finished playing; looping", &v7, 0xCu);
  }

  playbackDidEndBlock = [(MapsVideoPlayerView *)self playbackDidEndBlock];

  if (playbackDidEndBlock)
  {
    playbackDidEndBlock2 = [(MapsVideoPlayerView *)self playbackDidEndBlock];
    playbackDidEndBlock2[2]();
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
      selfCopy = self;
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Start observing notifications", &v10, 0xCu);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    player = [(MapsVideoPlayerView *)self player];
    currentItem = [player currentItem];
    [v4 addObserver:self selector:"playerItemDidPlayToEndTimeNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:currentItem];

    v7 = +[NSNotificationCenter defaultCenter];
    player2 = [(MapsVideoPlayerView *)self player];
    currentItem2 = [player2 currentItem];
    [v7 addObserver:self selector:"playerItemFailedToPlayToEndTimeNotification:" name:AVPlayerItemFailedToPlayToEndTimeNotification object:currentItem2];

    [(MapsVideoPlayerView *)self setObserving:1];
  }
}

- (void)_destroyVideoPlayer
{
  v3 = sub_1008A1450();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Destroying video player", &v7, 0xCu);
  }

  [(MapsVideoPlayerView *)self _stopObserving];
  player = [(MapsVideoPlayerView *)self player];
  [player replaceCurrentItemWithPlayerItem:0];

  playerItem = self->_playerItem;
  self->_playerItem = 0;

  player2 = [(MapsVideoPlayerView *)self player];
  [player2 pause];

  [(MapsVideoPlayerView *)self setPlayer:0];
}

- (void)_createVideoPlayer
{
  v3 = sub_1008A1450();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134349056;
    selfCopy = self;
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
  aspectFill = [(MapsVideoPlayerView *)self aspectFill];
  v9 = &kCAGravityResizeAspectFill;
  if (!aspectFill)
  {
    v9 = &kCAGravityResizeAspect;
  }

  [(AVPlayerLayer *)self->_playerLayer setContentsGravity:*v9];
  aspectFill2 = [(MapsVideoPlayerView *)self aspectFill];
  v11 = &AVLayerVideoGravityResize;
  if (!aspectFill2)
  {
    v11 = &AVLayerVideoGravityResizeAspect;
  }

  [(AVPlayerLayer *)self->_playerLayer setVideoGravity:*v11];
  layer = [(MapsVideoPlayerView *)self layer];
  [layer addSublayer:self->_playerLayer];

  playerItem = [(MapsVideoPlayerView *)self playerItem];

  if (playerItem)
  {
    playerItem2 = [(MapsVideoPlayerView *)self playerItem];
    [(MapsVideoPlayerView *)self _replaceCurrentItemWithPlayerItem:playerItem2 preserveCurrentTimestamp:0];
  }
}

- (void)_replaceCurrentItemWithPlayerItem:(id)item preserveCurrentTimestamp:(BOOL)timestamp
{
  timestampCopy = timestamp;
  itemCopy = item;
  v7 = sub_1008A1450();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    playerItem = [(MapsVideoPlayerView *)self playerItem];
    v9 = @"NO";
    if (timestampCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    LODWORD(buf.value) = 134349826;
    *(&buf.value + 4) = self;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = playerItem;
    HIWORD(buf.epoch) = 2112;
    v25 = itemCopy;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Swapping video; old player item: %@, new player item: %@; preserving timestamp: %@", &buf, 0x2Au);
  }

  playerItem2 = [(MapsVideoPlayerView *)self playerItem];

  if (!playerItem2)
  {
    v15 = sub_1008A1450();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.value) = 134349056;
      *(&buf.value + 4) = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] There was no previously playing item; disabling timestamp preservation", &buf, 0xCu);
    }

    [(MapsVideoPlayerView *)self setPlayerItem:itemCopy];
    [(MapsVideoPlayerView *)self _stopObserving];
    goto LABEL_12;
  }

  [(MapsVideoPlayerView *)self setPlayerItem:itemCopy];
  [(MapsVideoPlayerView *)self _stopObserving];
  if (!timestampCopy)
  {
LABEL_12:
    player = [(MapsVideoPlayerView *)self player];
    playerItem3 = [(MapsVideoPlayerView *)self playerItem];
    [player replaceCurrentItemWithPlayerItem:playerItem3];

    goto LABEL_13;
  }

  player2 = [(MapsVideoPlayerView *)self player];
  [player2 pause];

  player3 = [(MapsVideoPlayerView *)self player];
  v14 = player3;
  if (player3)
  {
    [player3 currentTime];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  buf = time2;

  player4 = [(MapsVideoPlayerView *)self player];
  playerItem4 = [(MapsVideoPlayerView *)self playerItem];
  [player4 replaceCurrentItemWithPlayerItem:playerItem4];

  if (itemCopy)
  {
    [itemCopy duration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v22 = buf;
  v20 = CMTimeCompare(&v22, &time2);
  player = sub_1008A1450();
  v21 = os_log_type_enabled(player, OS_LOG_TYPE_INFO);
  if (v20 <= 0)
  {
    if (v21)
    {
      LODWORD(time2.value) = 134349056;
      *(&time2.value + 4) = self;
      _os_log_impl(&_mh_execute_header, player, OS_LOG_TYPE_INFO, "[%{public}p] Preserving timestamp of last video", &time2, 0xCu);
    }

    player = [(MapsVideoPlayerView *)self player];
    time2 = buf;
    [player seekToTime:&time2];
  }

  else if (v21)
  {
    LODWORD(time2.value) = 134349056;
    *(&time2.value + 4) = self;
    _os_log_impl(&_mh_execute_header, player, OS_LOG_TYPE_INFO, "[%{public}p] Could not preserve the timestamp of the last video because the new video is shorter than the timestamp of the last one", &time2, 0xCu);
  }

LABEL_13:

  [(MapsVideoPlayerView *)self _startObserving];
}

- (void)reset
{
  player = [(MapsVideoPlayerView *)self player];
  [player pause];

  player2 = [(MapsVideoPlayerView *)self player];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [player2 seekToTime:&v5];
}

- (void)play
{
  player = [(MapsVideoPlayerView *)self player];
  [player play];
}

- (void)loadAssetNamed:(id)named preservingTimestamp:(BOOL)timestamp
{
  timestampCopy = timestamp;
  namedCopy = named;
  v7 = [[NSDataAsset alloc] initWithName:namedCopy];

  data = [v7 data];
  v12[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v12[1] = AVAssetReferenceRestrictionsKey;
  v13[0] = &__kCFBooleanFalse;
  v13[1] = &off_1016E75F8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [AVAsset assetWithData:data contentType:AVFileTypeMPEG4 options:v9];

  v11 = [AVPlayerItem playerItemWithAsset:v10];
  [(MapsVideoPlayerView *)self _replaceCurrentItemWithPlayerItem:v11 preserveCurrentTimestamp:timestampCopy];
}

- (void)didMoveToWindow
{
  v15.receiver = self;
  v15.super_class = MapsVideoPlayerView;
  [(MapsVideoPlayerView *)&v15 didMoveToWindow];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UISceneWillEnterForegroundNotification object:0];

  window = [(MapsVideoPlayerView *)self window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    window2 = [(MapsVideoPlayerView *)self window];
    windowScene2 = [window2 windowScene];
    [v6 addObserver:self selector:"sceneWillEnterForegroundNotification:" name:UISceneWillEnterForegroundNotification object:windowScene2];

    v9 = sub_1008A1450();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy2 = self;
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
        selfCopy2 = self;
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
  playerLayer = [(MapsVideoPlayerView *)self playerLayer];
  [playerLayer setFrame:{v4, v6, v8, v10}];
}

- (void)dealloc
{
  [(MapsVideoPlayerView *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = MapsVideoPlayerView;
  [(MapsVideoPlayerView *)&v3 dealloc];
}

@end