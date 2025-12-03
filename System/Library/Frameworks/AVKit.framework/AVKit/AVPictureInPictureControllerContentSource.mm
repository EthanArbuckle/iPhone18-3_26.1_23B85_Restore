@interface AVPictureInPictureControllerContentSource
- (AVPictureInPictureContentSource)source;
- (AVPictureInPictureControllerContentSource)initWithActiveVideoCallSourceView:(UIView *)sourceView contentViewController:(AVPictureInPictureVideoCallViewController *)contentViewController;
- (AVPictureInPictureControllerContentSource)initWithPlayerLayer:(AVPlayerLayer *)playerLayer;
- (AVPictureInPictureControllerContentSource)initWithSampleBufferDisplayLayer:(AVSampleBufferDisplayLayer *)sampleBufferDisplayLayer playbackDelegate:(id)playbackDelegate;
- (AVPictureInPictureControllerContentSource)initWithSampleBufferDisplayLayer:(id)layer initialRenderSize:(CGSize)size playbackDelegate:(id)delegate;
- (AVPictureInPictureControllerContentSource)initWithSourceView:(id)view contentViewController:(id)controller playerController:(id)playerController;
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
  sampleBufferDisplayLayer = [(AVPictureInPictureControllerContentSource *)self sampleBufferDisplayLayer];
  [sampleBufferDisplayLayer avkit_removePictureInPicturePlayerController];

  v4.receiver = self;
  v4.super_class = AVPictureInPictureControllerContentSource;
  [(AVPictureInPictureControllerContentSource *)&v4 dealloc];
}

- (AVPictureInPictureContentSource)source
{
  sampleBufferDisplayLayer = [(AVPictureInPictureControllerContentSource *)self sampleBufferDisplayLayer];
  v4 = sampleBufferDisplayLayer;
  if (sampleBufferDisplayLayer)
  {
    v5 = sampleBufferDisplayLayer;
  }

  else
  {
    playerLayer = [(AVPictureInPictureControllerContentSource *)self playerLayer];
    v7 = playerLayer;
    if (playerLayer)
    {
      v5 = playerLayer;
    }

    else
    {
      _activeVideoCallContentViewController = [(AVPictureInPictureControllerContentSource *)self _activeVideoCallContentViewController];
      v9 = _activeVideoCallContentViewController;
      if (_activeVideoCallContentViewController)
      {
        activeContentViewController = _activeVideoCallContentViewController;
      }

      else
      {
        activeContentViewController = [(AVPictureInPictureControllerContentSource *)self activeContentViewController];
      }

      v5 = activeContentViewController;
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

- (AVPictureInPictureControllerContentSource)initWithSampleBufferDisplayLayer:(id)layer initialRenderSize:(CGSize)size playbackDelegate:(id)delegate
{
  height = size.height;
  width = size.width;
  layerCopy = layer;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = AVPictureInPictureControllerContentSource;
  v12 = [(AVPictureInPictureControllerContentSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_initialRenderSize.width = width;
    v12->_initialRenderSize.height = height;
    objc_storeStrong(&v12->_sampleBufferDisplayLayer, layer);
    objc_storeStrong(&v13->_sampleBufferPlaybackDelegate, delegate);
    v13->_hasInitialRenderSize = 1;
  }

  return v13;
}

- (UIView)activeSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_activeSourceView);

  return WeakRetained;
}

- (AVPictureInPictureControllerContentSource)initWithSourceView:(id)view contentViewController:(id)controller playerController:(id)playerController
{
  viewCopy = view;
  controllerCopy = controller;
  playerControllerCopy = playerController;
  v14.receiver = self;
  v14.super_class = AVPictureInPictureControllerContentSource;
  v11 = [(AVPictureInPictureControllerContentSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_activeSourceView, viewCopy);
    objc_storeStrong(&v12->_activeContentViewController, controller);
    [controllerCopy setPlayerController:playerControllerCopy];
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