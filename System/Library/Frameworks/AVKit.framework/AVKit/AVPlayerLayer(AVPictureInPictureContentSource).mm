@interface AVPlayerLayer(AVPictureInPictureContentSource)
- (AVPictureInPictureIndicatorLayer)avkit_makePictureInPicturePlatformAdapterContentPlaceholderLayer;
- (AVPlayerController)avkit_makePlayerControllerIfNeeded:()AVPictureInPictureContentSource;
- (double)avkit_playerLayerRectInWindow;
- (double)avkit_videoRectInWindow;
- (id)avkit_window;
- (void)avkit_beginReducingResourcesForPictureInPictureViewController:()AVPictureInPictureContentSource playerController:;
- (void)avkit_endReducingResourcesForPictureInPictureViewController:()AVPictureInPictureContentSource playerController:;
- (void)avkit_startRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource;
- (void)avkit_stopRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource;
- (void)avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:()AVPictureInPictureContentSource;
@end

@implementation AVPlayerLayer(AVPictureInPictureContentSource)

- (AVPictureInPictureIndicatorLayer)avkit_makePictureInPicturePlatformAdapterContentPlaceholderLayer
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = AVBundle();
  avkit_window = [self avkit_window];
  traitCollection = [avkit_window traitCollection];
  v6 = [v2 imageNamed:@"PictureInPictureIndicatorLarge" inBundle:v3 compatibleWithTraitCollection:traitCollection];

  aV_indicatorForegroundColor = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
  v8 = [v6 _flatImageWithColor:aV_indicatorForegroundColor];

  v9 = [AVPictureInPictureIndicatorLayer alloc];
  avkit_window2 = [self avkit_window];
  traitCollection2 = [avkit_window2 traitCollection];
  [traitCollection2 displayScale];
  v13 = v12;
  cGImage = [v8 CGImage];
  [self avkit_videoRectInWindow];
  v19 = [(AVPictureInPictureIndicatorLayer *)v9 initWithDisplayScale:cGImage placeholderImage:0 opaque:v13 videoRectWhenPIPBegan:v15, v16, v17, v18];

  return v19;
}

- (double)avkit_playerLayerRectInWindow
{
  avkit_window = [self avkit_window];
  [self frame];
  v4 = v3;
  if (avkit_window)
  {
    [self videoRect];
    v12.origin.x = v5;
    v12.origin.y = v6;
    v12.size.width = v7;
    v12.size.height = v8;
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v12))
    {
      layer = [avkit_window layer];
      if (layer)
      {
        [self videoRect];
        [layer convertRect:self fromLayer:?];
        v4 = v10;
      }
    }
  }

  return v4;
}

- (double)avkit_videoRectInWindow
{
  avkit_window = [self avkit_window];
  [self bounds];
  v4 = v3;
  if (avkit_window)
  {
    [self videoRect];
    v12.origin.x = v5;
    v12.origin.y = v6;
    v12.size.width = v7;
    v12.size.height = v8;
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v12))
    {
      layer = [avkit_window layer];
      if (layer)
      {
        [self videoRect];
        [layer convertRect:self fromLayer:?];
        v4 = v10;
      }
    }
  }

  return v4;
}

- (id)avkit_window
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    do
    {
      delegate = [v2 delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        delegate2 = [v2 delegate];
        window = [delegate2 window];
      }

      else
      {
        window = 0;
      }

      superlayer = [v2 superlayer];

      if (window)
      {
        break;
      }

      v2 = superlayer;
    }

    while (superlayer);
  }

  else
  {
    window = 0;
    superlayer = 0;
  }

  return window;
}

- (void)avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:()AVPictureInPictureContentSource
{
  pictureInPicturePlayerLayerView = [a3 pictureInPicturePlayerLayerView];
  playerLayer = [pictureInPicturePlayerLayerView playerLayer];
  [playerLayer setLegibleDisplayEnabled:1];
}

- (void)avkit_endReducingResourcesForPictureInPictureViewController:()AVPictureInPictureContentSource playerController:
{
  v5 = a4;
  pictureInPicturePlayerLayerView = [a3 pictureInPicturePlayerLayerView];
  playerLayer = [pictureInPicturePlayerLayerView playerLayer];
  [v5 endReducingResourcesForPictureInPicturePlayerLayer:playerLayer];
}

- (void)avkit_beginReducingResourcesForPictureInPictureViewController:()AVPictureInPictureContentSource playerController:
{
  v12 = a3;
  v6 = a4;
  avkit_window = [self avkit_window];
  if (!avkit_window || (v8 = avkit_window, v9 = dyld_program_sdk_at_least(), v8, v9))
  {
    pictureInPicturePlayerLayerView = [v12 pictureInPicturePlayerLayerView];
    playerLayer = [pictureInPicturePlayerLayerView playerLayer];
    [v6 beginReducingResourcesForPictureInPicturePlayerLayer:playerLayer];
  }
}

- (void)avkit_stopRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isPIPModeEnabled = [self isPIPModeEnabled];
    v7 = "NO";
    *v13 = 136315650;
    *&v13[4] = "[AVPlayerLayer(AVPictureInPictureContentSource) avkit_stopRoutingVideoToPictureInPictureViewController:]";
    *&v13[14] = "self.isPIPModeEnabled";
    *&v13[12] = 2080;
    if (isPIPModeEnabled)
    {
      v7 = "YES";
    }

    *&v13[22] = 2080;
    v14 = v7;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v13, 0x20u);
  }

  if ([self isPIPModeEnabled])
  {
    pictureInPicturePlayerLayerView = [v4 pictureInPicturePlayerLayerView];
    playerLayer = [pictureInPicturePlayerLayerView playerLayer];
    [self stopRedirectingVideoToLayer:playerLayer];

    if ([self isLegibleDisplayEnabled])
    {
      [self setLegibleDisplayEnabled:0];
      [self setLegibleDisplayEnabled:1];
    }

    pictureInPicturePlayerLayerView2 = [v4 pictureInPicturePlayerLayerView];
    playerLayer2 = [pictureInPicturePlayerLayerView2 playerLayer];
    [playerLayer2 setLegibleDisplayEnabled:1];

    pictureInPicturePlayerLayerView3 = [v4 pictureInPicturePlayerLayerView];
    [pictureInPicturePlayerLayerView3 detachPlayerLayer];

    [self setPlaceholderContentLayerDuringPIPMode:0];
  }
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isPIPModeEnabled = [self isPIPModeEnabled];
    v7 = "NO";
    v12 = 136315650;
    v13 = "[AVPlayerLayer(AVPictureInPictureContentSource) avkit_startRoutingVideoToPictureInPictureViewController:]";
    v15 = "self.isPIPModeEnabled";
    v14 = 2080;
    if (isPIPModeEnabled)
    {
      v7 = "YES";
    }

    v16 = 2080;
    v17 = v7;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v12, 0x20u);
  }

  if (([self isPIPModeEnabled] & 1) == 0)
  {
    pictureInPicturePlayerLayerView = [v4 pictureInPicturePlayerLayerView];
    [pictureInPicturePlayerLayerView attachPlayerLayer];

    pictureInPicturePlayerLayerView2 = [v4 pictureInPicturePlayerLayerView];
    playerLayer = [pictureInPicturePlayerLayerView2 playerLayer];
    [self startRedirectingVideoToLayer:playerLayer forMode:0];

    avkit_makePictureInPicturePlatformAdapterContentPlaceholderLayer = [self avkit_makePictureInPicturePlatformAdapterContentPlaceholderLayer];
    [self setPlaceholderContentLayerDuringPIPMode:avkit_makePictureInPicturePlatformAdapterContentPlaceholderLayer];
  }
}

- (AVPlayerController)avkit_makePlayerControllerIfNeeded:()AVPictureInPictureContentSource
{
  v4 = a3;
  player = [(AVPlayerController *)v4 player];
  player2 = [self player];

  v7 = v4;
  if (player != player2)
  {
    v8 = [AVPlayerController alloc];
    player3 = [self player];
    v7 = [(AVPlayerController *)v8 initWithPlayer:player3];

    [(AVPlayerController *)v7 setHandlesAudioSessionInterruptions:1];
    [(AVPlayerController *)v7 setPlayingOnSecondScreen:[(AVPlayerController *)v4 isPlayingOnSecondScreen]];
  }

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = [[AVPlayerController alloc] initWithPlayer:0];
  }

  v11 = v10;

  return v11;
}

@end