@interface AVPlayerControllerWebKitData
- (AVPlayerControllerWebKitData)initWithPlayerController:(id)controller;
- (AVPlayerControllerWebKitDelegate)delegate;
- (void)setScrubbing:(BOOL)scrubbing;
- (void)setSeekToTime:(double)time;
@end

@implementation AVPlayerControllerWebKitData

- (AVPlayerControllerWebKitDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSeekToTime:(double)time
{
  if (self->_seekToTime != time)
  {
    self->_seekToTime = time;
    delegate = [(AVPlayerControllerWebKitData *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_playerController);
      [delegate webkitPlayerController:WeakRetained didUpdateSeekToTime:time];
    }
  }
}

- (void)setScrubbing:(BOOL)scrubbing
{
  if (self->_scrubbing != scrubbing)
  {
    scrubbingCopy = scrubbing;
    self->_scrubbing = scrubbing;
    delegate = [(AVPlayerControllerWebKitData *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_playerController);
      [delegate webkitPlayerController:WeakRetained didChangeScrubbingStateTo:scrubbingCopy];
    }
  }
}

- (AVPlayerControllerWebKitData)initWithPlayerController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AVPlayerControllerWebKitData;
  v5 = [(AVPlayerControllerWebKitData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerController, controllerCopy);
    v6->_scrubbing = 0;
    v6->_seekToTime = NAN;
    objc_storeWeak(&v6->_delegate, 0);
  }

  return v6;
}

@end