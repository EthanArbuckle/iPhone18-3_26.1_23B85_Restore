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
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCurrentTime:(double)time;
- (void)setCurrentTimeWithinEndTimes:(double)times;
- (void)setInterval:(double)interval;
- (void)setPlayerController:(id)controller;
- (void)setResolution:(double)resolution;
- (void)setTargetTimeWithinEndTimes:(double)times;
@end

@implementation AVPlayerControllerTimeResolver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  kdebug_trace();
  if (AVPlayerControllerTimeResolverUpdateContext == context)
  {
    AVPlayerControllerTimeResolverUpdate(self);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AVPlayerControllerTimeResolver;
    [(AVPlayerControllerTimeResolver *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  kdebug_trace();
}

- (void)setCurrentTime:(double)time
{
  if (self->_currentTime != time)
  {
    self->_currentTime = time;
    EffectiveInterval = AVPlayerControllerTimeResolverGetEffectiveInterval(self);
    playerController = self->_playerController;
    v7 = time - EffectiveInterval * floor(time / EffectiveInterval);
    v8 = EffectiveInterval * ceil(time / EffectiveInterval) - time;

    [(AVTimeControlling *)playerController seekToTime:time toleranceBefore:v7 toleranceAfter:v8];
  }
}

- (void)setResolution:(double)resolution
{
  if (self->_resolution != resolution)
  {
    self->_resolution = resolution;
    AVPlayerControllerTimeResolverUpdate(self);
  }
}

- (void)setInterval:(double)interval
{
  if (self->_interval != interval)
  {
    self->_interval = interval;
    AVPlayerControllerTimeResolverUpdate(self);
  }
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  playerController = self->_playerController;
  p_playerController = &self->_playerController;
  if (playerController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(p_playerController, controller);
    controllerCopy = v8;
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
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  seekableTimeRanges = [playerController seekableTimeRanges];

  v5 = [seekableTimeRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(seekableTimeRanges);
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

      v6 = [seekableTimeRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  [playerController maxTime];
  v5 = v4;
  [(AVPlayerControllerTimeResolver *)self currentTime];
  v7 = v5 - v6;

  return v7;
}

- (double)remainingTime
{
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  [playerController contentDuration];
  v5 = v4;
  [(AVPlayerControllerTimeResolver *)self currentTime];
  v7 = v5 - v6;

  return v7;
}

- (void)setCurrentTimeWithinEndTimes:(double)times
{
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  [playerController minTime];
  [(AVPlayerControllerTimeResolver *)self setCurrentTime:v5 + times];
}

- (double)currentTimeWithinEndTimes
{
  [(AVPlayerControllerTimeResolver *)self currentTime];
  v4 = v3;
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  [playerController minTime];
  v7 = v4 - v6;

  return v7;
}

- (double)remainingTargetTimeWithinEndTimes
{
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  [playerController maxTime];
  v5 = v4;
  [(AVPlayerControllerTimeResolver *)self targetTime];
  v7 = v5 - v6;

  return v7;
}

- (void)setTargetTimeWithinEndTimes:(double)times
{
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  [playerController minTime];
  [(AVPlayerControllerTimeResolver *)self setTargetTime:v5 + times];
}

- (double)targetTimeWithinEndTimes
{
  [(AVPlayerControllerTimeResolver *)self targetTime];
  v4 = v3;
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  [playerController minTime];
  v7 = v4 - v6;

  return v7;
}

- (double)targetTime
{
  [(AVPlayerControllerTimeResolver *)self currentTime];
  v4 = v3;
  playerController = [(AVPlayerControllerTimeResolver *)self playerController];
  [playerController seekToTime];
  v7 = v6;

  playerController2 = [(AVPlayerControllerTimeResolver *)self playerController];
  LOBYTE(playerController) = [playerController2 isSeeking];

  if (playerController)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

@end