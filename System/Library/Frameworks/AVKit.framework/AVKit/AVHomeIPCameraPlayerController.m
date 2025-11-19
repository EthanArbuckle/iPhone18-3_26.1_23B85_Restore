@interface AVHomeIPCameraPlayerController
- (AVHomeIPCameraActionButtonHandling)delegate;
- (CGSize)presentationSize;
- (void)setMuted:(BOOL)a3;
- (void)setVolume:(double)a3;
- (void)togglePlaybackEvenWhenInBackground:(id)a3;
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

- (void)setMuted:(BOOL)a3
{
  if (LOBYTE(self->_volume) != a3)
  {
    v4 = a3;
    LOBYTE(self->_volume) = a3;
    v5 = [(AVHomeIPCameraPlayerController *)self delegate];
    [v5 playbackControlsDidToggleMuted:v4];
  }
}

- (void)setVolume:(double)a3
{
  if (*&self->super._seekToTimeInternal.epoch != a3)
  {
    *&self->super._seekToTimeInternal.epoch = a3;
    v7.receiver = self;
    v7.super_class = AVHomeIPCameraPlayerController;
    [(AVPlayerController *)&v7 setVolume:a3];
    v5 = [(AVHomeIPCameraPlayerController *)self delegate];
    *&v6 = a3;
    [v5 playbackControlsDidChangePlayerVolume:v6];
  }
}

- (void)togglePlaybackEvenWhenInBackground:(id)a3
{
  v3 = [(AVHomeIPCameraPlayerController *)self delegate];
  [v3 pictureInPictureActionButtonTapped];
}

@end