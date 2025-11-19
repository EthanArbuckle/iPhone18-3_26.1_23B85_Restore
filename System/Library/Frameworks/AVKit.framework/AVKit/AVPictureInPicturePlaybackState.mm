@interface AVPictureInPicturePlaybackState
- (AVPictureInPicturePlaybackState)initWithElapsedTime:(double)a3 timelineDuration:(double)a4 timelineRate:(double)a5 paused:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(AVPictureInPicturePlaybackState *)self isPaused], v5 == [(AVPictureInPicturePlaybackState *)v4 isPaused]) && ([(AVPictureInPicturePlaybackState *)self timelineDuration], v7 = v6, [(AVPictureInPicturePlaybackState *)v4 timelineDuration], v7 == v8))
    {
      [(AVPictureInPicturePlaybackState *)self currentElapsedTime];
      v10 = v9;
      [(AVPictureInPicturePlaybackState *)v4 currentElapsedTime];
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

- (AVPictureInPicturePlaybackState)initWithElapsedTime:(double)a3 timelineDuration:(double)a4 timelineRate:(double)a5 paused:(BOOL)a6
{
  v20.receiver = self;
  v20.super_class = AVPictureInPicturePlaybackState;
  v10 = [(AVPictureInPicturePlaybackState *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v13 = (*&a4 <= -1 || ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a4 - 1) >= 0xFFFFFFFFFFFFFLL;
    v14 = 0.0;
    if (v13)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a4;
    }

    v16 = fmax(a3, 0.0);
    if (v16 >= v15)
    {
      v16 = v15;
    }

    if ((*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a3 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v16 = 0.0;
    }

    v10->_initializedElapsedTime = v16;
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v14 = a5;
    }

    v10->_timelineRate = v14;
    v10->_timelineDuration = v15;
    v10->_paused = a6;
    v10->_initializationTimestamp = CFAbsoluteTimeGetCurrent();
  }

  return v11;
}

@end