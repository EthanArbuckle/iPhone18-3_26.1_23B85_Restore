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
  v4 = [a1 avkit_window];
  v5 = [v4 traitCollection];
  v6 = [v2 imageNamed:@"PictureInPictureIndicatorLarge" inBundle:v3 compatibleWithTraitCollection:v5];

  v7 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
  v8 = [v6 _flatImageWithColor:v7];

  v9 = [AVPictureInPictureIndicatorLayer alloc];
  v10 = [a1 avkit_window];
  v11 = [v10 traitCollection];
  [v11 displayScale];
  v13 = v12;
  v14 = [v8 CGImage];
  [a1 avkit_videoRectInWindow];
  v19 = [(AVPictureInPictureIndicatorLayer *)v9 initWithDisplayScale:v14 placeholderImage:0 opaque:v13 videoRectWhenPIPBegan:v15, v16, v17, v18];

  return v19;
}

- (double)avkit_playerLayerRectInWindow
{
  v2 = [a1 avkit_window];
  [a1 frame];
  v4 = v3;
  if (v2)
  {
    [a1 videoRect];
    v12.origin.x = v5;
    v12.origin.y = v6;
    v12.size.width = v7;
    v12.size.height = v8;
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v12))
    {
      v9 = [v2 layer];
      if (v9)
      {
        [a1 videoRect];
        [v9 convertRect:a1 fromLayer:?];
        v4 = v10;
      }
    }
  }

  return v4;
}

- (double)avkit_videoRectInWindow
{
  v2 = [a1 avkit_window];
  [a1 bounds];
  v4 = v3;
  if (v2)
  {
    [a1 videoRect];
    v12.origin.x = v5;
    v12.origin.y = v6;
    v12.size.width = v7;
    v12.size.height = v8;
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v12))
    {
      v9 = [v2 layer];
      if (v9)
      {
        [a1 videoRect];
        [v9 convertRect:a1 fromLayer:?];
        v4 = v10;
      }
    }
  }

  return v4;
}

- (id)avkit_window
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = [v2 delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = [v2 delegate];
        v6 = [v5 window];
      }

      else
      {
        v6 = 0;
      }

      v7 = [v2 superlayer];

      if (v6)
      {
        break;
      }

      v2 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6;
}

- (void)avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:()AVPictureInPictureContentSource
{
  v4 = [a3 pictureInPicturePlayerLayerView];
  v3 = [v4 playerLayer];
  [v3 setLegibleDisplayEnabled:1];
}

- (void)avkit_endReducingResourcesForPictureInPictureViewController:()AVPictureInPictureContentSource playerController:
{
  v5 = a4;
  v7 = [a3 pictureInPicturePlayerLayerView];
  v6 = [v7 playerLayer];
  [v5 endReducingResourcesForPictureInPicturePlayerLayer:v6];
}

- (void)avkit_beginReducingResourcesForPictureInPictureViewController:()AVPictureInPictureContentSource playerController:
{
  v12 = a3;
  v6 = a4;
  v7 = [a1 avkit_window];
  if (!v7 || (v8 = v7, v9 = dyld_program_sdk_at_least(), v8, v9))
  {
    v10 = [v12 pictureInPicturePlayerLayerView];
    v11 = [v10 playerLayer];
    [v6 beginReducingResourcesForPictureInPicturePlayerLayer:v11];
  }
}

- (void)avkit_stopRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1 isPIPModeEnabled];
    v7 = "NO";
    *v13 = 136315650;
    *&v13[4] = "[AVPlayerLayer(AVPictureInPictureContentSource) avkit_stopRoutingVideoToPictureInPictureViewController:]";
    *&v13[14] = "self.isPIPModeEnabled";
    *&v13[12] = 2080;
    if (v6)
    {
      v7 = "YES";
    }

    *&v13[22] = 2080;
    v14 = v7;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v13, 0x20u);
  }

  if ([a1 isPIPModeEnabled])
  {
    v8 = [v4 pictureInPicturePlayerLayerView];
    v9 = [v8 playerLayer];
    [a1 stopRedirectingVideoToLayer:v9];

    if ([a1 isLegibleDisplayEnabled])
    {
      [a1 setLegibleDisplayEnabled:0];
      [a1 setLegibleDisplayEnabled:1];
    }

    v10 = [v4 pictureInPicturePlayerLayerView];
    v11 = [v10 playerLayer];
    [v11 setLegibleDisplayEnabled:1];

    v12 = [v4 pictureInPicturePlayerLayerView];
    [v12 detachPlayerLayer];

    [a1 setPlaceholderContentLayerDuringPIPMode:0];
  }
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1 isPIPModeEnabled];
    v7 = "NO";
    v12 = 136315650;
    v13 = "[AVPlayerLayer(AVPictureInPictureContentSource) avkit_startRoutingVideoToPictureInPictureViewController:]";
    v15 = "self.isPIPModeEnabled";
    v14 = 2080;
    if (v6)
    {
      v7 = "YES";
    }

    v16 = 2080;
    v17 = v7;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v12, 0x20u);
  }

  if (([a1 isPIPModeEnabled] & 1) == 0)
  {
    v8 = [v4 pictureInPicturePlayerLayerView];
    [v8 attachPlayerLayer];

    v9 = [v4 pictureInPicturePlayerLayerView];
    v10 = [v9 playerLayer];
    [a1 startRedirectingVideoToLayer:v10 forMode:0];

    v11 = [a1 avkit_makePictureInPicturePlatformAdapterContentPlaceholderLayer];
    [a1 setPlaceholderContentLayerDuringPIPMode:v11];
  }
}

- (AVPlayerController)avkit_makePlayerControllerIfNeeded:()AVPictureInPictureContentSource
{
  v4 = a3;
  v5 = [(AVPlayerController *)v4 player];
  v6 = [a1 player];

  v7 = v4;
  if (v5 != v6)
  {
    v8 = [AVPlayerController alloc];
    v9 = [a1 player];
    v7 = [(AVPlayerController *)v8 initWithPlayer:v9];

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