@interface AVPlayerControllerVolumeAnimator
- (AVPlayerControllerVolumeAnimator)initWithPlayerController:(id)a3;
- (BOOL)canAnimateVolumeAwayFromZero;
- (BOOL)canAnimateVolumeTowardsZero;
- (BOOL)currentRouteHasVolumeControl;
- (void)restoreVolumeIfNeeded;
- (void)setProgressAwayFromZero:(double)a3;
- (void)setProgressTowardsZero:(double)a3;
@end

@implementation AVPlayerControllerVolumeAnimator

- (void)restoreVolumeIfNeeded
{
  if ([(AVPlayerControllerVolumeAnimator *)self isAnimatingTowardsZero]|| [(AVPlayerControllerVolumeAnimator *)self isAnimatingAwayFromZero])
  {
    [(AVPlayerControllerVolumeAnimator *)self volumeToRestore];
    v4 = v3;
    v5 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [v5 setVolume:v4];
  }

  [(AVPlayerControllerVolumeAnimator *)self setAnimatingTowardsZero:0];

  [(AVPlayerControllerVolumeAnimator *)self setAnimatingAwayFromZero:0];
}

- (void)setProgressAwayFromZero:(double)a3
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
    v6 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [v6 volume];
    [(AVPlayerControllerVolumeAnimator *)self setVolumeToRestore:?];

    v7 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [v7 setVolume:0.0];

    v8 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [v8 setMuted:0];
  }

  [(AVPlayerControllerVolumeAnimator *)self volumeToRestore];
  v10 = fmin(fmax(a3, 0.0), 1.0) * v9;
  v11 = [(AVPlayerControllerVolumeAnimator *)self playerController];
  [v11 setVolume:v10];
}

- (void)setProgressTowardsZero:(double)a3
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
    v6 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    [v6 volume];
    [(AVPlayerControllerVolumeAnimator *)self setVolumeToRestore:?];
  }

  [(AVPlayerControllerVolumeAnimator *)self volumeToRestore];
  v8 = (1.0 - fmin(fmax(a3, 0.0), 1.0)) * v7;
  v9 = [(AVPlayerControllerVolumeAnimator *)self playerController];
  [v9 setVolume:v8];
}

- (BOOL)canAnimateVolumeAwayFromZero
{
  if (![(AVPlayerControllerVolumeAnimator *)self currentRouteHasVolumeControl])
  {
    return 0;
  }

  v3 = [(AVPlayerControllerVolumeAnimator *)self playerController];
  v4 = [v3 player];
  if (v4 && ![(AVPlayerControllerVolumeAnimator *)self isAnimatingTowardsZero])
  {
    v6 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    if ([v6 isMuted])
    {
      v7 = [(AVPlayerControllerVolumeAnimator *)self playerController];
      [v7 volume];
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

  v3 = [(AVPlayerControllerVolumeAnimator *)self playerController];
  v4 = [v3 player];
  if (v4 && ![(AVPlayerControllerVolumeAnimator *)self isAnimatingAwayFromZero])
  {
    v6 = [(AVPlayerControllerVolumeAnimator *)self playerController];
    if ([v6 isMuted])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(AVPlayerControllerVolumeAnimator *)self playerController];
      [v7 volume];
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
  v3 = [v2 currentRouteHasVolumeControl];

  return v3;
}

- (AVPlayerControllerVolumeAnimator)initWithPlayerController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVPlayerControllerVolumeAnimator;
  v6 = [(AVPlayerControllerVolumeAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerController, a3);
  }

  return v7;
}

@end