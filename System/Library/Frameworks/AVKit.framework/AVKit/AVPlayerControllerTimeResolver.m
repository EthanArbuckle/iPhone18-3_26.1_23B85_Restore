@interface AVPlayerControllerTimeResolver
- (AVPlayerControllerTimeResolver)init;
- (BOOL)isCurrentTimeAtEndOfSeekableTimeRanges;
- (double)currentTimeWithinEndTimes;
- (double)remainingTargetTimeWithinEndTimes;
- (double)remainingTime;
- (double)remainingTimeWithinEndTimes;
- (double)seekableTimeRangeDuration;
- (double)targetTime;
- (double)targetTimeWithinEndTimes;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCurrentTime:(double)a3;
- (void)setCurrentTimeWithinEndTimes:(double)a3;
- (void)setInterval:(double)a3;
- (void)setPlayerController:(id)a3;
- (void)setResolution:(double)a3;
- (void)setTargetTimeWithinEndTimes:(double)a3;
@end

@implementation AVPlayerControllerTimeResolver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  kdebug_trace();
  if (AVPlayerControllerTimeResolverUpdateContext == a6)
  {
    AVPlayerControllerTimeResolverUpdate(self);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AVPlayerControllerTimeResolver;
    [(AVPlayerControllerTimeResolver *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  kdebug_trace();
}

- (void)setCurrentTime:(double)a3
{
  if (self->_currentTime != a3)
  {
    self->_currentTime = a3;
    EffectiveInterval = AVPlayerControllerTimeResolverGetEffectiveInterval(self);
    playerController = self->_playerController;
    v7 = a3 - EffectiveInterval * floor(a3 / EffectiveInterval);
    v8 = EffectiveInterval * ceil(a3 / EffectiveInterval) - a3;

    [(AVTimeControlling *)playerController seekToTime:a3 toleranceBefore:v7 toleranceAfter:v8];
  }
}

- (void)setResolution:(double)a3
{
  if (self->_resolution != a3)
  {
    self->_resolution = a3;
    AVPlayerControllerTimeResolverUpdate(self);
  }
}

- (void)setInterval:(double)a3
{
  if (self->_interval != a3)
  {
    self->_interval = a3;
    AVPlayerControllerTimeResolverUpdate(self);
  }
}

- (void)setPlayerController:(id)a3
{
  v5 = a3;
  playerController = self->_playerController;
  p_playerController = &self->_playerController;
  if (playerController != v5)
  {
    v8 = v5;
    objc_storeStrong(p_playerController, a3);
    v5 = v8;
  }
}

- (void)dealloc
{
  [(AVPlayerControllerTimeResolver *)self removeObserver:self forKeyPath:@"playerController.timing" context:AVPlayerControllerTimeResolverUpdateContext];
  [(AVPlayerControllerTimeResolver *)self removeObserver:self forKeyPath:@"playerController.maxTiming" context:AVPlayerControllerTimeResolverUpdateContext];
  [(AVPlayerControllerTimeResolver *)self removeObserver:self forKeyPath:@"playerController.maxTime" context:AVPlayerControllerTimeResolverUpdateContext];
  [(AVPlayerControllerTimeResolver *)self removeObserver:self forKeyPath:@"playerController.minTiming" context:AVPlayerControllerTimeResolverUpdateContext];
  [(AVPlayerControllerTimeResolver *)self removeObserver:self forKeyPath:@"playerController.minTime" context:AVPlayerControllerTimeResolverUpdateContext];
  v3.receiver = self;
  v3.super_class = AVPlayerControllerTimeResolver;
  [(AVPlayerControllerTimeResolver *)&v3 dealloc];
}

- (AVPlayerControllerTimeResolver)init
{
  v7.receiver = self;
  v7.super_class = AVPlayerControllerTimeResolver;
  v2 = [(AVPlayerControllerTimeResolver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_interval = 1.0;
    v4 = AVPlayerControllerTimeResolverUpdateContext;
    v5 = v2;
    [(AVPlayerControllerTimeResolver *)v5 addObserver:v5 forKeyPath:@"playerController.minTime" options:0 context:v4];
    [(AVPlayerControllerTimeResolver *)v5 addObserver:v5 forKeyPath:@"playerController.minTiming" options:0 context:AVPlayerControllerTimeResolverUpdateContext];
    [(AVPlayerControllerTimeResolver *)v5 addObserver:v5 forKeyPath:@"playerController.maxTime" options:0 context:AVPlayerControllerTimeResolverUpdateContext];
    [(AVPlayerControllerTimeResolver *)v5 addObserver:v5 forKeyPath:@"playerController.maxTiming" options:0 context:AVPlayerControllerTimeResolverUpdateContext];
    [(AVPlayerControllerTimeResolver *)v5 addObserver:v5 forKeyPath:@"playerController.timing" options:0 context:AVPlayerControllerTimeResolverUpdateContext];
  }

  return v3;
}

- (BOOL)isCurrentTimeAtEndOfSeekableTimeRanges
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(AVPlayerControllerTimeResolver *)self playerController];
  v4 = [v3 seekableTimeRanges];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = NAN;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        memset(&v16, 0, sizeof(v16));
        if (v10)
        {
          [v10 CMTimeRangeValue];
        }

        v14 = v16;
        CMTimeRangeGetEnd(&time, &v14);
        Seconds = CMTimeGetSeconds(&time);
        if (Seconds > v8)
        {
          v8 = Seconds;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);

    [(AVPlayerControllerTimeResolver *)self currentTime];
    if (v12 > v8 + -2.0)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (double)seekableTimeRangeDuration
{
  [(AVPlayerControllerTimeResolver *)self maxTime];
  v4 = v3;
  [(AVPlayerControllerTimeResolver *)self minTime];
  return v4 - v5;
}

- (double)remainingTimeWithinEndTimes
{
  v3 = [(AVPlayerControllerTimeResolver *)self playerController];
  [v3 maxTime];
  v5 = v4;
  [(AVPlayerControllerTimeResolver *)self currentTime];
  v7 = v5 - v6;

  return v7;
}

- (double)remainingTime
{
  v3 = [(AVPlayerControllerTimeResolver *)self playerController];
  [v3 contentDuration];
  v5 = v4;
  [(AVPlayerControllerTimeResolver *)self currentTime];
  v7 = v5 - v6;

  return v7;
}

- (void)setCurrentTimeWithinEndTimes:(double)a3
{
  v6 = [(AVPlayerControllerTimeResolver *)self playerController];
  [v6 minTime];
  [(AVPlayerControllerTimeResolver *)self setCurrentTime:v5 + a3];
}

- (double)currentTimeWithinEndTimes
{
  [(AVPlayerControllerTimeResolver *)self currentTime];
  v4 = v3;
  v5 = [(AVPlayerControllerTimeResolver *)self playerController];
  [v5 minTime];
  v7 = v4 - v6;

  return v7;
}

- (double)remainingTargetTimeWithinEndTimes
{
  v3 = [(AVPlayerControllerTimeResolver *)self playerController];
  [v3 maxTime];
  v5 = v4;
  [(AVPlayerControllerTimeResolver *)self targetTime];
  v7 = v5 - v6;

  return v7;
}

- (void)setTargetTimeWithinEndTimes:(double)a3
{
  v6 = [(AVPlayerControllerTimeResolver *)self playerController];
  [v6 minTime];
  [(AVPlayerControllerTimeResolver *)self setTargetTime:v5 + a3];
}

- (double)targetTimeWithinEndTimes
{
  [(AVPlayerControllerTimeResolver *)self targetTime];
  v4 = v3;
  v5 = [(AVPlayerControllerTimeResolver *)self playerController];
  [v5 minTime];
  v7 = v4 - v6;

  return v7;
}

- (double)targetTime
{
  [(AVPlayerControllerTimeResolver *)self currentTime];
  v4 = v3;
  v5 = [(AVPlayerControllerTimeResolver *)self playerController];
  [v5 seekToTime];
  v7 = v6;

  v8 = [(AVPlayerControllerTimeResolver *)self playerController];
  LOBYTE(v5) = [v8 isSeeking];

  if (v5)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

@end