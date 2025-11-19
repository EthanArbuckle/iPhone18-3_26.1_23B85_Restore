@interface AVPictureInPictureControllerContentSource
- (AVPictureInPictureContentSource)source;
- (AVPictureInPictureControllerContentSource)initWithActiveVideoCallSourceView:(UIView *)sourceView contentViewController:(AVPictureInPictureVideoCallViewController *)contentViewController;
- (AVPictureInPictureControllerContentSource)initWithPlayerLayer:(AVPlayerLayer *)playerLayer;
- (AVPictureInPictureControllerContentSource)initWithSampleBufferDisplayLayer:(AVSampleBufferDisplayLayer *)sampleBufferDisplayLayer playbackDelegate:(id)playbackDelegate;
- (AVPictureInPictureControllerContentSource)initWithSampleBufferDisplayLayer:(id)a3 initialRenderSize:(CGSize)a4 playbackDelegate:(id)a5;
- (AVPictureInPictureControllerContentSource)initWithSourceView:(id)a3 contentViewController:(id)a4 playerController:(id)a5;
- (CGSize)initialRenderSize;
- (UIView)activeSourceView;
- (id)_activeVideoCallSourceView;
- (void)dealloc;
@end

@implementation AVPictureInPictureControllerContentSource

- (id)_activeVideoCallSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->__activeVideoCallSourceView);

  return WeakRetained;
}

- (void)dealloc
{
  v3 = [(AVPictureInPictureControllerContentSource *)self sampleBufferDisplayLayer];
  [v3 avkit_removePictureInPicturePlayerController];

  v4.receiver = self;
  v4.super_class = AVPictureInPictureControllerContentSource;
  [(AVPictureInPictureControllerContentSource *)&v4 dealloc];
}

- (AVPictureInPictureContentSource)source
{
  v3 = [(AVPictureInPictureControllerContentSource *)self sampleBufferDisplayLayer];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(AVPictureInPictureControllerContentSource *)self playerLayer];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(AVPictureInPictureControllerContentSource *)self _activeVideoCallContentViewController];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [(AVPictureInPictureControllerContentSource *)self activeContentViewController];
      }

      v5 = v10;
    }
  }

  return v5;
}

- (AVPictureInPictureControllerContentSource)initWithPlayerLayer:(AVPlayerLayer *)playerLayer
{
  v5 = playerLayer;
  v9.receiver = self;
  v9.super_class = AVPictureInPictureControllerContentSource;
  v6 = [(AVPictureInPictureControllerContentSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerLayer, playerLayer);
  }

  return v7;
}

- (AVPictureInPictureControllerContentSource)initWithActiveVideoCallSourceView:(UIView *)sourceView contentViewController:(AVPictureInPictureVideoCallViewController *)contentViewController
{
  v6 = sourceView;
  v7 = contentViewController;
  v11.receiver = self;
  v11.super_class = AVPictureInPictureControllerContentSource;
  v8 = [(AVPictureInPictureControllerContentSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->__activeVideoCallSourceView, v6);
    objc_storeStrong(&v9->__activeVideoCallContentViewController, contentViewController);
  }

  return v9;
}

- (CGSize)initialRenderSize
{
  width = self->_initialRenderSize.width;
  height = self->_initialRenderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVPictureInPictureControllerContentSource)initWithSampleBufferDisplayLayer:(id)a3 initialRenderSize:(CGSize)a4 playbackDelegate:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVPictureInPictureControllerContentSource;
  v12 = [(AVPictureInPictureControllerContentSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_initialRenderSize.width = width;
    v12->_initialRenderSize.height = height;
    objc_storeStrong(&v12->_sampleBufferDisplayLayer, a3);
    objc_storeStrong(&v13->_sampleBufferPlaybackDelegate, a5);
    v13->_hasInitialRenderSize = 1;
  }

  return v13;
}

- (UIView)activeSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_activeSourceView);

  return WeakRetained;
}

- (AVPictureInPictureControllerContentSource)initWithSourceView:(id)a3 contentViewController:(id)a4 playerController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AVPictureInPictureControllerContentSource;
  v11 = [(AVPictureInPictureControllerContentSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_activeSourceView, v8);
    objc_storeStrong(&v12->_activeContentViewController, a4);
    [v9 setPlayerController:v10];
  }

  return v12;
}

- (AVPictureInPictureControllerContentSource)initWithSampleBufferDisplayLayer:(AVSampleBufferDisplayLayer *)sampleBufferDisplayLayer playbackDelegate:(id)playbackDelegate
{
  v7 = sampleBufferDisplayLayer;
  v8 = playbackDelegate;
  v12.receiver = self;
  v12.super_class = AVPictureInPictureControllerContentSource;
  v9 = [(AVPictureInPictureControllerContentSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sampleBufferDisplayLayer, sampleBufferDisplayLayer);
    objc_storeStrong(&v10->_sampleBufferPlaybackDelegate, playbackDelegate);
  }

  return v10;
}

@end