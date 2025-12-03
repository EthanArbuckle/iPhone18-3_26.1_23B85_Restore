@interface AVPictureInPicturePlaybackState
- (AVPictureInPicturePlaybackState)initWithElapsedTime:(double)time timelineDuration:(double)duration timelineRate:(double)rate paused:(BOOL)paused;
- (BOOL)isEqual:(id)equal;
- (double)currentElapsedTime;
@end

@implementation AVPictureInPicturePlaybackState

- (double)currentElapsedTime
{
  [(AVPictureInPicturePlaybackState *)self initializedElapsedTime];
  v4 = v3;
  [(AVPictureInPicturePlaybackState *)self timelineRate];
  if (v5 != 0.0)
  {
    [(AVPictureInPicturePlaybackState *)self timelineDuration];
    v7 = v6 < 0 || ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v7 || (v6 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(AVPictureInPicturePlaybackState *)self initializationTimestamp];
      v11 = Current - v10;
      [(AVPictureInPicturePlaybackState *)self timelineRate];
      v4 = v4 + v12 * v11;
    }
  }

  v13 = fmax(v4, 0.0);
  [(AVPictureInPicturePlaybackState *)self timelineDuration];
  if (v13 < result)
  {
    return v13;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(AVPictureInPicturePlaybackState *)self isPaused], v5 == [(AVPictureInPicturePlaybackState *)equalCopy isPaused]) && ([(AVPictureInPicturePlaybackState *)self timelineDuration], v7 = v6, [(AVPictureInPicturePlaybackState *)equalCopy timelineDuration], v7 == v8))
    {
      [(AVPictureInPicturePlaybackState *)self currentElapsedTime];
      v10 = v9;
      [(AVPictureInPicturePlaybackState *)equalCopy currentElapsedTime];
      v12 = v10 - v11;
      if (v12 < 0.0)
      {
        v12 = -v12;
      }

      v13 = v12 < 0.025;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (AVPictureInPicturePlaybackState)initWithElapsedTime:(double)time timelineDuration:(double)duration timelineRate:(double)rate paused:(BOOL)paused
{
  v20.receiver = self;
  v20.super_class = AVPictureInPicturePlaybackState;
  v10 = [(AVPictureInPicturePlaybackState *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v13 = (*&duration <= -1 || ((*&duration & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&duration - 1) >= 0xFFFFFFFFFFFFFLL;
    rateCopy = 0.0;
    if (v13)
    {
      durationCopy = 0.0;
    }

    else
    {
      durationCopy = duration;
    }

    v16 = fmax(time, 0.0);
    if (v16 >= durationCopy)
    {
      v16 = durationCopy;
    }

    if ((*&time <= -1 || ((*&time & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&time - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v16 = 0.0;
    }

    v10->_initializedElapsedTime = v16;
    if ((*&rate & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      rateCopy = rate;
    }

    v10->_timelineRate = rateCopy;
    v10->_timelineDuration = durationCopy;
    v10->_paused = paused;
    v10->_initializationTimestamp = CFAbsoluteTimeGetCurrent();
  }

  return v11;
}

@end