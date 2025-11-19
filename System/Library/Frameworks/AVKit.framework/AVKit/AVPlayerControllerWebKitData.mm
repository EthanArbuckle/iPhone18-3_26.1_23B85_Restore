@interface AVPlayerControllerWebKitData
- (AVPlayerControllerWebKitData)initWithPlayerController:(id)a3;
- (AVPlayerControllerWebKitDelegate)delegate;
- (void)setScrubbing:(BOOL)a3;
- (void)setSeekToTime:(double)a3;
@end

@implementation AVPlayerControllerWebKitData

- (AVPlayerControllerWebKitDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSeekToTime:(double)a3
{
  if (self->_seekToTime != a3)
  {
    self->_seekToTime = a3;
    v6 = [(AVPlayerControllerWebKitData *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_playerController);
      [v6 webkitPlayerController:WeakRetained didUpdateSeekToTime:a3];
    }
  }
}

- (void)setScrubbing:(BOOL)a3
{
  if (self->_scrubbing != a3)
  {
    v4 = a3;
    self->_scrubbing = a3;
    v7 = [(AVPlayerControllerWebKitData *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_playerController);
      [v7 webkitPlayerController:WeakRetained didChangeScrubbingStateTo:v4];
    }
  }
}

- (AVPlayerControllerWebKitData)initWithPlayerController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVPlayerControllerWebKitData;
  v5 = [(AVPlayerControllerWebKitData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerController, v4);
    v6->_scrubbing = 0;
    v6->_seekToTime = NAN;
    objc_storeWeak(&v6->_delegate, 0);
  }

  return v6;
}

@end