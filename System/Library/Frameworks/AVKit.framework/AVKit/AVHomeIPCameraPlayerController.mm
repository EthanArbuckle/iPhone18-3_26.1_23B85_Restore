@interface AVHomeIPCameraPlayerController
- (AVHomeIPCameraActionButtonHandling)delegate;
- (CGSize)presentationSize;
- (void)setMuted:(BOOL)muted;
- (void)setVolume:(double)volume;
- (void)togglePlaybackEvenWhenInBackground:(id)background;
@end

@implementation AVHomeIPCameraPlayerController

- (CGSize)presentationSize
{
  delegate = self->_delegate;
  width = self->_presentationSize.width;
  result.height = width;
  result.width = *&delegate;
  return result;
}

- (AVHomeIPCameraActionButtonHandling)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_muted);

  return WeakRetained;
}

- (void)setMuted:(BOOL)muted
{
  if (LOBYTE(self->_volume) != muted)
  {
    mutedCopy = muted;
    LOBYTE(self->_volume) = muted;
    delegate = [(AVHomeIPCameraPlayerController *)self delegate];
    [delegate playbackControlsDidToggleMuted:mutedCopy];
  }
}

- (void)setVolume:(double)volume
{
  if (*&self->super._seekToTimeInternal.epoch != volume)
  {
    *&self->super._seekToTimeInternal.epoch = volume;
    v7.receiver = self;
    v7.super_class = AVHomeIPCameraPlayerController;
    [(AVPlayerController *)&v7 setVolume:volume];
    delegate = [(AVHomeIPCameraPlayerController *)self delegate];
    *&v6 = volume;
    [delegate playbackControlsDidChangePlayerVolume:v6];
  }
}

- (void)togglePlaybackEvenWhenInBackground:(id)background
{
  delegate = [(AVHomeIPCameraPlayerController *)self delegate];
  [delegate pictureInPictureActionButtonTapped];
}

@end