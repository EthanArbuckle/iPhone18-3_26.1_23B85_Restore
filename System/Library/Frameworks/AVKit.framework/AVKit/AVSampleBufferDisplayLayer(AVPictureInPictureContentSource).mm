@interface AVSampleBufferDisplayLayer(AVPictureInPictureContentSource)
- (AVPictureInPictureViewController)avkit_pictureInPictureViewController;
- (double)avkit_videoRectInWindow;
- (id)avkit_window;
- (void)avkit_startRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource;
- (void)avkit_stopRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource;
@end

@implementation AVSampleBufferDisplayLayer(AVPictureInPictureContentSource)

- (AVPictureInPictureViewController)avkit_pictureInPictureViewController
{
  v2 = [AVPictureInPictureSampleBufferDisplayLayerView alloc];
  avkit_sampleBufferDisplayLayerPlayerController = [self avkit_sampleBufferDisplayLayerPlayerController];
  v4 = [(AVPictureInPictureSampleBufferDisplayLayerView *)v2 initWithSourceLayer:self playerController:avkit_sampleBufferDisplayLayerPlayerController];

  v5 = [[AVPictureInPictureViewController alloc] initWithPictureInPicturePlayerLayerView:v4];

  return v5;
}

- (double)avkit_videoRectInWindow
{
  avkit_window = [self avkit_window];
  [self bounds];
  v39 = v3;
  [self bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  avkit_sampleBufferDisplayLayerPlayerController = [self avkit_sampleBufferDisplayLayerPlayerController];
  [avkit_sampleBufferDisplayLayerPlayerController contentDimensions];
  v14 = v13;
  v16 = v15;

  videoGravity = [self videoGravity];
  if (![videoGravity isEqualToString:*MEMORY[0x1E69874E8]])
  {
    goto LABEL_20;
  }

  v20 = ((v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v16 >= 0 || (v16 - 1) < 0xFFFFFFFFFFFFFLL;

  v22 = (v14 < 0 || ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v14 - 1) > 0xFFFFFFFFFFFFELL;
  if (!v22 && v20)
  {
    videoGravity = [self avkit_sampleBufferDisplayLayerPlayerController];
    [videoGravity contentDimensions];
    v24 = v23;
    v26 = v25;
    [self bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v40.width = v24;
    v40.height = v26;
    v42.origin.x = v28;
    v42.origin.y = v30;
    v42.size.width = v32;
    v42.size.height = v34;
    v41 = AVMakeRectWithAspectRatioInsideRect(v40, v42);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
LABEL_20:
  }

  if (avkit_window)
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v43))
    {
      layer = [avkit_window layer];
      v36 = layer;
      if (layer)
      {
        [layer convertRect:self fromLayer:{x, y, width, height}];
        [self avkit_visibleRectForRect:v36 inLayer:?];
        v39 = v37;
      }
    }
  }

  return v39;
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

- (void)avkit_stopRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource
{
  pictureInPicturePlayerLayerView = [a3 pictureInPicturePlayerLayerView];
  [pictureInPicturePlayerLayerView setPIPModeEnabled:0];
  v4 = +[AVKitGlobalSettings shared];
  constrainedHDREnabled = [v4 constrainedHDREnabled];

  if (constrainedHDREnabled)
  {
    [self setOverridesPreferredDynamicRangeForVideo:0];
  }
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource
{
  v7 = a3;
  v4 = +[AVKitGlobalSettings shared];
  constrainedHDREnabled = [v4 constrainedHDREnabled];

  if (constrainedHDREnabled)
  {
    [self setOverridesPreferredDynamicRangeForVideo:1];
  }

  pictureInPicturePlayerLayerView = [v7 pictureInPicturePlayerLayerView];
  [pictureInPicturePlayerLayerView setPIPModeEnabled:1];
}

@end