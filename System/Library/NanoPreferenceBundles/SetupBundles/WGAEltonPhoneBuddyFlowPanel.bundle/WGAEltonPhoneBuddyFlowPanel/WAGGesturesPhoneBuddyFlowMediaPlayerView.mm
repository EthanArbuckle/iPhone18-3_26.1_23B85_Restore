@interface WAGGesturesPhoneBuddyFlowMediaPlayerView
- (WAGGesturesPhoneBuddyFlowMediaPlayerView)initWithVideoURL:(id)l placeholderImageName:(id)name;
- (id)_phoneBuddyFlowPanelLog;
- (void)_advanceToNextStep;
- (void)_avQueuePlayerTryToRemoveObserverForKeyPath:(id)path;
- (void)_clearOutAnimationsForViewAndAllSubviews:(id)subviews;
- (void)_handleCurrentPlayerState;
- (void)_handleFadeOutAnimationDidFinish;
- (void)_startVideoPlayback;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playerDidFinishPlaying:(id)playing;
- (void)startVideoPlaybackWithFadeInAnimaton:(BOOL)animaton;
- (void)stopAndResetVideoPlaybackToStartWithFadeInAnimation:(BOOL)animation;
@end

@implementation WAGGesturesPhoneBuddyFlowMediaPlayerView

- (WAGGesturesPhoneBuddyFlowMediaPlayerView)initWithVideoURL:(id)l placeholderImageName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = WAGGesturesPhoneBuddyFlowMediaPlayerView;
  v8 = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)&v21 init];
  v9 = v8;
  if (v8)
  {
    _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)v8 _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v9;
      v24 = 2080;
      v25 = "[WAGGesturesPhoneBuddyFlowMediaPlayerView initWithVideoURL:placeholderImageName:]";
      _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view:%@ -- %s", buf, 0x16u);
    }

    v11 = [AVPlayerItem playerItemWithURL:lCopy];
    v12 = [AVPlayer playerWithPlayerItem:v11];
    [v12 addObserver:v9 forKeyPath:@"status" options:0 context:0];
    [v12 addObserver:v9 forKeyPath:@"timeControlStatus" options:0 context:0];
    v13 = [AVPlayerLayer playerLayerWithPlayer:v12];
    playerLayer = v9->_playerLayer;
    v9->_playerLayer = v13;

    [(AVPlayerLayer *)v9->_playerLayer removeAllAnimations];
    layer = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)v9 layer];
    [layer addSublayer:v9->_playerLayer];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [UIImage imageNamed:nameCopy inBundle:v16 withConfiguration:0];

    v18 = [[UIImageView alloc] initWithImage:v17];
    placeholderImageView = v9->_placeholderImageView;
    v9->_placeholderImageView = v18;

    [(UIImageView *)v9->_placeholderImageView setContentMode:1];
    [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)v9 addSubview:v9->_placeholderImageView];
  }

  return v9;
}

- (void)dealloc
{
  _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[WAGGesturesPhoneBuddyFlowMediaPlayerView dealloc]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view:%@ -- %s", buf, 0x16u);
  }

  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _avQueuePlayerTryToRemoveObserverForKeyPath:@"status"];
  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _avQueuePlayerTryToRemoveObserverForKeyPath:@"timeControlStatus"];
  v4.receiver = self;
  v4.super_class = WAGGesturesPhoneBuddyFlowMediaPlayerView;
  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WAGGesturesPhoneBuddyFlowMediaPlayerView;
  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)&v3 layoutSubviews];
  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self frame];
  [(AVPlayerLayer *)self->_playerLayer setFrame:?];
  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self frame];
  [(UIImageView *)self->_placeholderImageView setFrame:?];
}

- (void)_handleCurrentPlayerState
{
  _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v22 = 2080;
    v23 = "[WAGGesturesPhoneBuddyFlowMediaPlayerView _handleCurrentPlayerState]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view:%@ -- %s", buf, 0x16u);
  }

  instructionState = self->_instructionState;
  switch(instructionState)
  {
    case 3:
      _phoneBuddyFlowPanelLog2 = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
      if (os_log_type_enabled(_phoneBuddyFlowPanelLog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view will try to perform fade in animation", buf, 2u);
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_18D0;
      v17[3] = &unk_C2F0;
      v17[4] = self;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_18E8;
      v16[3] = &unk_C318;
      v16[4] = self;
      [UIView animateWithDuration:65540 delay:v17 options:v16 animations:1.0 completion:0.0];
      break;
    case 2:
      _phoneBuddyFlowPanelLog3 = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
      if (os_log_type_enabled(_phoneBuddyFlowPanelLog3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view will try to perform fade out animation", buf, 2u);
      }

      player = [(AVPlayerLayer *)self->_playerLayer player];
      [player pause];

      objc_initWeak(buf, self);
      +[CATransaction begin];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1794;
      v18[3] = &unk_C2C8;
      objc_copyWeak(&v19, buf);
      v18[4] = self;
      [CATransaction setCompletionBlock:v18];
      v12 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      [v12 setDuration:1.0];
      [(AVPlayerLayer *)self->_playerLayer opacity];
      v13 = [NSNumber numberWithFloat:?];
      [v12 setFromValue:v13];

      [v12 setToValue:&off_C6D8];
      [v12 setFillMode:kCAFillModeForwards];
      [v12 setRemovedOnCompletion:0];
      v14 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
      [v12 setTimingFunction:v14];

      [(AVPlayerLayer *)self->_playerLayer addAnimation:v12 forKey:@"opacity"];
      +[CATransaction commit];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
      break;
    case 1:
      _phoneBuddyFlowPanelLog4 = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
      if (os_log_type_enabled(_phoneBuddyFlowPanelLog4, OS_LOG_TYPE_DEFAULT))
      {
        player2 = [(AVPlayerLayer *)self->_playerLayer player];
        status = [player2 status];
        *buf = 134217984;
        selfCopy = status;
        _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog4, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view will try to call _startVideoPlayback, player status is:%ld", buf, 0xCu);
      }

      player3 = [(AVPlayerLayer *)self->_playerLayer player];
      v9 = [player3 status] == &dword_0 + 1;

      if (v9)
      {
        [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _startVideoPlayback];
      }

      break;
  }
}

- (void)_handleFadeOutAnimationDidFinish
{
  _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    instructionState = self->_instructionState;
    LODWORD(v7) = 134217984;
    *(&v7 + 4) = instructionState;
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view _handleFadeOutAnimationDidFinish _instructionState is:%ld", &v7, 0xCu);
  }

  if (self->_instructionState == 2)
  {
    [(AVPlayerLayer *)self->_playerLayer setOpacity:0.0];
    [(AVPlayerLayer *)self->_playerLayer removeAnimationForKey:@"opacity"];
    player = [(AVPlayerLayer *)self->_playerLayer player];
    [player pause];

    player2 = [(AVPlayerLayer *)self->_playerLayer player];
    v7 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [player2 seekToTime:&v7];

    [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _advanceToNextStep];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v23 = 2080;
    v24 = "[WAGGesturesPhoneBuddyFlowMediaPlayerView observeValueForKeyPath:ofObject:change:context:]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view:%@ -- %s", buf, 0x16u);
  }

  player = [(AVPlayerLayer *)self->_playerLayer player];
  if ([objectCopy isEqual:player])
  {
    v12 = [pathCopy isEqualToString:@"status"];

    if (v12)
    {
      player2 = [(AVPlayerLayer *)self->_playerLayer player];
      status = [player2 status];

      if (status == &dword_0 + 1)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1DF8;
        block[3] = &unk_C2F0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }

  else
  {
  }

  player3 = [(AVPlayerLayer *)self->_playerLayer player];
  if ([objectCopy isEqual:player3])
  {
    v16 = [pathCopy isEqualToString:@"timeControlStatus"];

    if (v16)
    {
      player4 = [(AVPlayerLayer *)self->_playerLayer player];
      timeControlStatus = [player4 timeControlStatus];

      if (timeControlStatus == &dword_0 + 2)
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1E3C;
        v19[3] = &unk_C2F0;
        v19[4] = self;
        dispatch_async(&_dispatch_main_q, v19);
      }
    }
  }

  else
  {
  }
}

- (void)_startVideoPlayback
{
  _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[WAGGesturesPhoneBuddyFlowMediaPlayerView _startVideoPlayback]";
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view:%@ -- %s", &v5, 0x16u);
  }

  player = [(AVPlayerLayer *)self->_playerLayer player];
  [player play];
}

- (void)startVideoPlaybackWithFadeInAnimaton:(BOOL)animaton
{
  animatonCopy = animaton;
  if (([(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self isHidden]& 1) == 0 && !self->_instructionState)
  {
    player = [(AVPlayerLayer *)self->_playerLayer player];
    [player pause];

    player2 = [(AVPlayerLayer *)self->_playerLayer player];
    v10 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [player2 seekToTime:&v10];

    if (animatonCopy)
    {
      self->_instructionState = 3;
      [(AVPlayerLayer *)self->_playerLayer setOpacity:0.0];
      [(UIImageView *)self->_placeholderImageView setAlpha:0.0];
    }

    else
    {
      self->_instructionState = 1;
    }

    v7 = +[NSNotificationCenter defaultCenter];
    player3 = [(AVPlayerLayer *)self->_playerLayer player];
    currentItem = [player3 currentItem];
    [v7 addObserver:self selector:"playerDidFinishPlaying:" name:AVPlayerItemDidPlayToEndTimeNotification object:currentItem];

    [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _handleCurrentPlayerState];
  }
}

- (void)stopAndResetVideoPlaybackToStartWithFadeInAnimation:(BOOL)animation
{
  animationCopy = animation;
  v5 = +[NSNotificationCenter defaultCenter];
  player = [(AVPlayerLayer *)self->_playerLayer player];
  currentItem = [player currentItem];
  [v5 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:currentItem];

  player2 = [(AVPlayerLayer *)self->_playerLayer player];
  v12 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [player2 seekToTime:&v12];

  player3 = [(AVPlayerLayer *)self->_playerLayer player];
  [player3 pause];

  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _clearOutAnimationsForViewAndAllSubviews:self];
  [(AVPlayerLayer *)self->_playerLayer opacity];
  if (v10 < 1.0 || self->_instructionState != 1)
  {
    [(AVPlayerLayer *)self->_playerLayer removeAllAnimations];
    LODWORD(v11) = 1.0;
    [(AVPlayerLayer *)self->_playerLayer setOpacity:v11];
  }

  if (animationCopy)
  {
    [(AVPlayerLayer *)self->_playerLayer setOpacity:0.0];
    [(UIImageView *)self->_placeholderImageView setAlpha:0.0];
  }

  self->_instructionState = 0;
}

- (void)playerDidFinishPlaying:(id)playing
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2270;
  block[3] = &unk_C2F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_advanceToNextStep
{
  _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    instructionState = self->_instructionState;
    v11 = 134217984;
    v12 = instructionState;
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view current state is %ld", &v11, 0xCu);
  }

  v5 = self->_instructionState;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      _phoneBuddyFlowPanelLog2 = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
      if (os_log_type_enabled(_phoneBuddyFlowPanelLog2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view  state is WAGGesturesPhoneBuddyFlowMediaPlayerStateFadeOutAnimation", &v11, 2u);
      }

      v6 = 3;
      goto LABEL_16;
    }

    if (v5 != 3)
    {
      goto LABEL_17;
    }

    _phoneBuddyFlowPanelLog3 = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(_phoneBuddyFlowPanelLog3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view  state is WAGGesturesPhoneBuddyFlowMediaPlayerStateFadeInAnimation", &v11, 2u);
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_17;
    }

    v6 = 2;
    goto LABEL_16;
  }

  v6 = 1;
LABEL_16:
  self->_instructionState = v6;
LABEL_17:
  _phoneBuddyFlowPanelLog4 = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_instructionState;
    v11 = 134217984;
    v12 = v10;
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog4, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view new state is %ld", &v11, 0xCu);
  }

  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _handleCurrentPlayerState];
}

- (void)_clearOutAnimationsForViewAndAllSubviews:(id)subviews
{
  subviewsCopy = subviews;
  _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = subviewsCopy;
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view _clearOutAnimationsForAllSubviewsOfView:%@.", buf, 0xCu);
  }

  if (subviewsCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [subviewsCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v13 = subviewsCopy;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _clearOutAnimationsForViewAndAllSubviews:v11];
          +[CATransaction begin];
          _phoneBuddyFlowPanelLog2 = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
          if (os_log_type_enabled(_phoneBuddyFlowPanelLog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view _clearOutAnimationsForAllSubviewsOfView will remove animation.", buf, 2u);
          }

          [v11 _removeAllAnimations:1];
          +[CATransaction commit];
        }

        v8 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
      subviewsCopy = v13;
    }
  }

  else
  {
    subviews = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(subviews, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, subviews, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view _clearOutAnimationsForAllSubviewsOfView will return.", buf, 2u);
    }
  }
}

- (id)_phoneBuddyFlowPanelLog
{
  if (qword_10F58 != -1)
  {
    sub_5E34();
  }

  v3 = qword_10F50;

  return v3;
}

- (void)_avQueuePlayerTryToRemoveObserverForKeyPath:(id)path
{
  pathCopy = path;
  _phoneBuddyFlowPanelLog = [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(_phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVPlayerLayer *)self->_playerLayer player];
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = pathCopy;
    v14 = 2112;
    v15 = player;
    _os_log_impl(&dword_0, _phoneBuddyFlowPanelLog, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view:%@ -- will attempt to remove observer for keyPath: %@, _avQueuePlayer is:%@", &v10, 0x20u);
  }

  if (pathCopy)
  {
    player2 = [(AVPlayerLayer *)self->_playerLayer player];
    v8 = player2 == 0;

    if (!v8)
    {
      player3 = [(AVPlayerLayer *)self->_playerLayer player];
      [player3 removeObserver:self forKeyPath:pathCopy];
    }
  }
}

@end