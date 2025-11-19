@interface AVSampleBufferDisplayLayerPlaybackDelegateAdapter
+ (id)playbackDelegateAdapterWithDelegate:(id)a3;
- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)pictureInPictureControllerTimeRangeForPlayback:(SEL)a3;
- (AVPictureInPictureSampleBufferPlaybackDelegate)playbackDelegate;
- (BOOL)pictureInPictureControllerIsPlaybackPaused:(id)a3;
- (void)pictureInPictureController:(id)a3 didTransitionToRenderSize:(id)a4;
- (void)pictureInPictureController:(id)a3 setPlaying:(BOOL)a4;
- (void)pictureInPictureController:(id)a3 skipByInterval:(id *)a4 completionHandler:(id)a5;
@end

@implementation AVSampleBufferDisplayLayerPlaybackDelegateAdapter

+ (id)playbackDelegateAdapterWithDelegate:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___AVSampleBufferDisplayLayerPlaybackDelegateAdapter;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v7, sel_alloc);
  v5 = [v4 init];
  objc_storeWeak(v5 + 1, v3);

  return v5;
}

- (AVPictureInPictureSampleBufferPlaybackDelegate)playbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackDelegate);

  return WeakRetained;
}

- (void)pictureInPictureController:(id)a3 skipByInterval:(id *)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v11 = *a4;
  [v10 pictureInPictureController:v9 skipByInterval:&v11 completionHandler:v8];
}

- (void)pictureInPictureController:(id)a3 didTransitionToRenderSize:(id)a4
{
  v6 = a3;
  v7 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  [v7 pictureInPictureController:v6 didTransitionToRenderSize:a4];
}

- (BOOL)pictureInPictureControllerIsPlaybackPaused:(id)a3
{
  v4 = a3;
  v5 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 pictureInPictureControllerPlaybackPaused:v4];
  }

  else
  {
    v9 = [v7 pictureInPictureControllerIsPlaybackPaused:v4];
  }

  v10 = v9;

  return v10;
}

- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)pictureInPictureControllerTimeRangeForPlayback:(SEL)a3
{
  v6 = a4;
  v7 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v11 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
    v10 = v11;
    if (v11)
    {
      [v11 pictureInPictureControllerTimeRangeForPlayback:v6];
      goto LABEL_7;
    }

LABEL_6:
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    goto LABEL_7;
  }

  v9 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  [v9 pictureInPictureControllerPlaybackTimeRange:v6];
LABEL_7:
  *&retstr->var0.var0 = v13;
  *&retstr->var0.var3 = v14;
  *&retstr->var1.var1 = v15;

  return result;
}

- (void)pictureInPictureController:(id)a3 setPlaying:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v7 = objc_opt_respondsToSelector();

  v8 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v9 = objc_opt_respondsToSelector();

  v10 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v11 = v10;
  if (v7 & 1) != 0 || (v9)
  {
    if (v4)
    {
      if (v7)
      {
        [v10 pictureInPictureControllerStartPlayback:v12];
      }
    }

    else if (v9)
    {
      [v10 pictureInPictureControllerStopPlayback:v12];
    }
  }

  else
  {
    [v10 pictureInPictureController:v12 setPlaying:v4];
  }
}

@end