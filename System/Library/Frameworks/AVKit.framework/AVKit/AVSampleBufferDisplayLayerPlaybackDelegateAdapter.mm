@interface AVSampleBufferDisplayLayerPlaybackDelegateAdapter
+ (id)playbackDelegateAdapterWithDelegate:(id)delegate;
- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)pictureInPictureControllerTimeRangeForPlayback:(SEL)playback;
- (AVPictureInPictureSampleBufferPlaybackDelegate)playbackDelegate;
- (BOOL)pictureInPictureControllerIsPlaybackPaused:(id)paused;
- (void)pictureInPictureController:(id)controller didTransitionToRenderSize:(id)size;
- (void)pictureInPictureController:(id)controller setPlaying:(BOOL)playing;
- (void)pictureInPictureController:(id)controller skipByInterval:(id *)interval completionHandler:(id)handler;
@end

@implementation AVSampleBufferDisplayLayerPlaybackDelegateAdapter

+ (id)playbackDelegateAdapterWithDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AVSampleBufferDisplayLayerPlaybackDelegateAdapter;
  delegateCopy = delegate;
  v4 = objc_msgSendSuper2(&v7, sel_alloc);
  v5 = [v4 init];
  objc_storeWeak(v5 + 1, delegateCopy);

  return v5;
}

- (AVPictureInPictureSampleBufferPlaybackDelegate)playbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackDelegate);

  return WeakRetained;
}

- (void)pictureInPictureController:(id)controller skipByInterval:(id *)interval completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  playbackDelegate = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v11 = *interval;
  [playbackDelegate pictureInPictureController:controllerCopy skipByInterval:&v11 completionHandler:handlerCopy];
}

- (void)pictureInPictureController:(id)controller didTransitionToRenderSize:(id)size
{
  controllerCopy = controller;
  playbackDelegate = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  [playbackDelegate pictureInPictureController:controllerCopy didTransitionToRenderSize:size];
}

- (BOOL)pictureInPictureControllerIsPlaybackPaused:(id)paused
{
  pausedCopy = paused;
  playbackDelegate = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v6 = objc_opt_respondsToSelector();

  playbackDelegate2 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v8 = playbackDelegate2;
  if (v6)
  {
    v9 = [playbackDelegate2 pictureInPictureControllerPlaybackPaused:pausedCopy];
  }

  else
  {
    v9 = [playbackDelegate2 pictureInPictureControllerIsPlaybackPaused:pausedCopy];
  }

  v10 = v9;

  return v10;
}

- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)pictureInPictureControllerTimeRangeForPlayback:(SEL)playback
{
  v6 = a4;
  playbackDelegate = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    playbackDelegate2 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
    v10 = playbackDelegate2;
    if (playbackDelegate2)
    {
      [playbackDelegate2 pictureInPictureControllerTimeRangeForPlayback:v6];
      goto LABEL_7;
    }

LABEL_6:
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    goto LABEL_7;
  }

  playbackDelegate3 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v10 = playbackDelegate3;
  if (!playbackDelegate3)
  {
    goto LABEL_6;
  }

  [playbackDelegate3 pictureInPictureControllerPlaybackTimeRange:v6];
LABEL_7:
  *&retstr->var0.var0 = v13;
  *&retstr->var0.var3 = v14;
  *&retstr->var1.var1 = v15;

  return result;
}

- (void)pictureInPictureController:(id)controller setPlaying:(BOOL)playing
{
  playingCopy = playing;
  controllerCopy = controller;
  playbackDelegate = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v7 = objc_opt_respondsToSelector();

  playbackDelegate2 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v9 = objc_opt_respondsToSelector();

  playbackDelegate3 = [(AVSampleBufferDisplayLayerPlaybackDelegateAdapter *)self playbackDelegate];
  v11 = playbackDelegate3;
  if (v7 & 1) != 0 || (v9)
  {
    if (playingCopy)
    {
      if (v7)
      {
        [playbackDelegate3 pictureInPictureControllerStartPlayback:controllerCopy];
      }
    }

    else if (v9)
    {
      [playbackDelegate3 pictureInPictureControllerStopPlayback:controllerCopy];
    }
  }

  else
  {
    [playbackDelegate3 pictureInPictureController:controllerCopy setPlaying:playingCopy];
  }
}

@end