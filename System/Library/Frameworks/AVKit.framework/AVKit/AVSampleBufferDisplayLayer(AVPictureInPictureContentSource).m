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
  v3 = [a1 avkit_sampleBufferDisplayLayerPlayerController];
  v4 = [(AVPictureInPictureSampleBufferDisplayLayerView *)v2 initWithSourceLayer:a1 playerController:v3];

  v5 = [[AVPictureInPictureViewController alloc] initWithPictureInPicturePlayerLayerView:v4];

  return v5;
}

- (double)avkit_videoRectInWindow
{
  v2 = [a1 avkit_window];
  [a1 bounds];
  v39 = v3;
  [a1 bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v12 = [a1 avkit_sampleBufferDisplayLayerPlayerController];
  [v12 contentDimensions];
  v14 = v13;
  v16 = v15;

  v17 = [a1 videoGravity];
  if (![v17 isEqualToString:*MEMORY[0x1E69874E8]])
  {
    goto LABEL_20;
  }

  v20 = ((v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v16 >= 0 || (v16 - 1) < 0xFFFFFFFFFFFFFLL;

  v22 = (v14 < 0 || ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v14 - 1) > 0xFFFFFFFFFFFFELL;
  if (!v22 && v20)
  {
    v17 = [a1 avkit_sampleBufferDisplayLayerPlayerController];
    [v17 contentDimensions];
    v24 = v23;
    v26 = v25;
    [a1 bounds];
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

  if (v2)
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v43))
    {
      v35 = [v2 layer];
      v36 = v35;
      if (v35)
      {
        [v35 convertRect:a1 fromLayer:{x, y, width, height}];
        [a1 avkit_visibleRectForRect:v36 inLayer:?];
        v39 = v37;
      }
    }
  }

  return v39;
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

- (void)avkit_stopRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource
{
  v6 = [a3 pictureInPicturePlayerLayerView];
  [v6 setPIPModeEnabled:0];
  v4 = +[AVKitGlobalSettings shared];
  v5 = [v4 constrainedHDREnabled];

  if (v5)
  {
    [a1 setOverridesPreferredDynamicRangeForVideo:0];
  }
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:()AVPictureInPictureContentSource
{
  v7 = a3;
  v4 = +[AVKitGlobalSettings shared];
  v5 = [v4 constrainedHDREnabled];

  if (v5)
  {
    [a1 setOverridesPreferredDynamicRangeForVideo:1];
  }

  v6 = [v7 pictureInPicturePlayerLayerView];
  [v6 setPIPModeEnabled:1];
}

@end