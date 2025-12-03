@interface AVPlayerControllerVolumeAnimator
- (AVPlayerControllerVolumeAnimator)initWithPlayerController:(id)controller;
- (BOOL)canAnimateVolumeAwayFromZero;
- (BOOL)canAnimateVolumeTowardsZero;
- (BOOL)currentRouteHasVolumeControl;
- (void)restoreVolumeIfNeeded;
- (void)setProgressAwayFromZero:(double)zero;
- (void)setProgressTowardsZero:(double)zero;
@end

@implementation AVPlayerControllerVolumeAnimator

- (void)restoreVolumeIfNeeded
{
  if ([(AVPlayerControllerVolumeAnimator *)self isAnimatingTowardsZero]|| [(AVPlayerControllerVolumeAnimator *)self isAnimatingAwayFromZero])
  {
    [(AVPlayerControllerVolumeAnimator *)self volumeToRestore];
    v4 = v3;
    playerController = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [playerController setVolume:v4];
  }

  [(AVPlayerControllerVolumeAnimator *)self setAnimatingTowardsZero:0];

  [(AVPlayerControllerVolumeAnimator *)self setAnimatingAwayFromZero:0];
}

- (void)setProgressAwayFromZero:(double)zero
{
  if ([(AVPlayerControllerVolumeAnimator *)self isAnimatingTowardsZero])
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Cannot unmute when muting.", v12, 2u);
    }
  }

  if (![(AVPlayerControllerVolumeAnimator *)self isAnimatingAwayFromZero])
  {
    [(AVPlayerControllerVolumeAnimator *)self setAnimatingAwayFromZero:1];
    playerController = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [playerController volume];
    [(AVPlayerControllerVolumeAnimator *)self setVolumeToRestore:?];

    playerController2 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [playerController2 setVolume:0.0];

    playerController3 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [playerController3 setMuted:0];
  }

  [(AVPlayerControllerVolumeAnimator *)self volumeToRestore];
  v10 = fmin(fmax(zero, 0.0), 1.0) * v9;
  playerController4 = [(AVPlayerControllerVolumeAnimator *)self playerController];
  [playerController4 setVolume:v10];
}

- (void)setProgressTowardsZero:(double)zero
{
  if ([(AVPlayerControllerVolumeAnimator *)self isAnimatingAwayFromZero])
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Cannot mute when unmuting.", v10, 2u);
    }
  }

  if (![(AVPlayerControllerVolumeAnimator *)self isAnimatingTowardsZero])
  {
    [(AVPlayerControllerVolumeAnimator *)self setAnimatingTowardsZero:1];
    playerController = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [playerController volume];
    [(AVPlayerControllerVolumeAnimator *)self setVolumeToRestore:?];
  }

  [(AVPlayerControllerVolumeAnimator *)self volumeToRestore];
  v8 = (1.0 - fmin(fmax(zero, 0.0), 1.0)) * v7;
  playerController2 = [(AVPlayerControllerVolumeAnimator *)self playerController];
  [playerController2 setVolume:v8];
}

- (BOOL)canAnimateVolumeAwayFromZero
{
  if (![(AVPlayerControllerVolumeAnimator *)self currentRouteHasVolumeControl])
  {
    return 0;
  }

  playerController = [(AVPlayerControllerVolumeAnimator *)self playerController];
  player = [playerController player];
  if (player && ![(AVPlayerControllerVolumeAnimator *)self isAnimatingTowardsZero])
  {
    playerController2 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    if ([playerController2 isMuted])
    {
      playerController3 = [(AVPlayerControllerVolumeAnimator *)self playerController];
      [playerController3 volume];
      v5 = v8 > 0.0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canAnimateVolumeTowardsZero
{
  if (![(AVPlayerControllerVolumeAnimator *)self currentRouteHasVolumeControl])
  {
    return 0;
  }

  playerController = [(AVPlayerControllerVolumeAnimator *)self playerController];
  player = [playerController player];
  if (player && ![(AVPlayerControllerVolumeAnimator *)self isAnimatingAwayFromZero])
  {
    playerController2 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    if ([playerController2 isMuted])
    {
      v5 = 0;
    }

    else
    {
      playerController3 = [(AVPlayerControllerVolumeAnimator *)self playerController];
      [playerController3 volume];
      v5 = v8 > 0.0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)currentRouteHasVolumeControl
{
  v2 = +[AVSystemVolumeController volumeController];
  currentRouteHasVolumeControl = [v2 currentRouteHasVolumeControl];

  return currentRouteHasVolumeControl;
}

- (AVPlayerControllerVolumeAnimator)initWithPlayerController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AVPlayerControllerVolumeAnimator;
  v6 = [(AVPlayerControllerVolumeAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerController, controller);
  }

  return v7;
}

@end