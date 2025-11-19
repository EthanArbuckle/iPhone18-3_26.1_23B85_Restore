@interface QLMediaScrubberGesture
- (QLMediaScrubberGesture)initWithPlayer:(id)a3;
- (QLMediaScrubberGestureDelegate)scrubberDelegate;
- (float)clampedEstimatedFrameRate;
- (float)nominalFrameRate;
- (void)scrubbGestureDidChange:(id)a3;
@end

@implementation QLMediaScrubberGesture

- (QLMediaScrubberGesture)initWithPlayer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = QLMediaScrubberGesture;
  v6 = [(QLMediaScrubberGesture *)&v10 initWithTarget:self action:sel_scrubbGestureDidChange_];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, a3);
    v8 = v7;
  }

  return v7;
}

- (float)nominalFrameRate
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(AVPlayer *)self->_player currentItem];
  v4 = [v3 asset];
  v5 = [v4 tracksWithMediaType:*MEMORY[0x277CE5EA8]];

  memset(&v23, 0, sizeof(v23));
  player = self->_player;
  if (player)
  {
    [(AVPlayer *)player currentTime];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v12)
        {
          [*(*(&v19 + 1) + 8 * i) timeRange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v17 = v23;
        if (CMTimeRangeContainsTime(&range, &v17))
        {
          [v12 nominalFrameRate];
          v13 = v14;
          goto LABEL_16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = NAN;
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (float)clampedEstimatedFrameRate
{
  estimatedFrameRate = self->_estimatedFrameRate;
  result = 30.0;
  if (estimatedFrameRate > 0.0)
  {
    return fmin(fmax(estimatedFrameRate, 10.0), 480.0);
  }

  return result;
}

- (void)scrubbGestureDidChange:(id)a3
{
  v4 = a3;
  v5 = [(QLMediaScrubberGesture *)self view];
  [(QLMediaScrubberGesture *)self locationInView:v5];
  v7 = v6;
  v9 = v8;

  if ([v4 state] == 1)
  {
    [(QLMediaScrubberGesture *)self nominalFrameRate];
    self->_estimatedFrameRate = v10;
    player = self->_player;
    if (player)
    {
      [(AVPlayer *)player currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v34 = [(AVPlayer *)self->_player currentItem];
    v35 = [v34 asset];
    v36 = v35;
    if (v35)
    {
      [v35 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v37 = Seconds / CMTimeGetSeconds(&time);
    self->_value = v37;

    self->_startTouchLocationInView.x = v7;
    self->_startTouchLocationInView.y = v9;
    v12 = [(QLMediaScrubberGesture *)self scrubberDelegate];
    [v12 scrubberDidStartScrubbing:self];
  }

  else if ([v4 state] == 3)
  {
    v12 = [(QLMediaScrubberGesture *)self scrubberDelegate];
    [v12 scrubberDidEndScrubbing:self];
  }

  else
  {
    v13 = [(QLMediaScrubberGesture *)self view];
    [v13 bounds];
    v15 = v14 + -40.0;

    [(QLMediaScrubberGesture *)self maximumValue];
    v17 = v16;
    [(QLMediaScrubberGesture *)self minimumValue];
    v19 = v17 - v18;
    v20 = v7 - self->_previousTouchLocationInView.x;
    v21 = [(QLMediaScrubberGesture *)self view];
    [v21 center];

    y = self->_startTouchLocationInView.y;
    v23 = v9 <= y;
    *&y = 1.0 - fabs(v9 / y);
    v24 = *&y;
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0.0;
    }

    [(QLMediaScrubberGesture *)self value];
    v27 = v26;
    [(QLMediaScrubberGesture *)self minimumValue];
    v29 = (v27 - v28) / v19;
    v30 = v20 / v15;
    if (v25 <= 0.75)
    {
      v32 = 0.25;
      if (v25 > 0.25)
      {
        v38 = 0.5;
      }

      else
      {
        v38 = 1.0;
      }

      if (v25 <= 0.5)
      {
        v32 = v38;
      }
    }

    else
    {
      [(QLMediaScrubberGesture *)self clampedEstimatedFrameRate];
      v32 = v15 / (v19 * v31);
      if (v32 > 0.125)
      {
        v32 = 0.125;
      }
    }

    v39 = fmin(fmax(v29 + v32 * v30, 0.0), 1.0);
    [(QLMediaScrubberGesture *)self minimumValue];
    v41 = v40 + (v39 * v19);
    self->_value = v41;
    self->_previousTouchLocationInView.x = v7;
    self->_previousTouchLocationInView.y = v9;
    v12 = [(QLMediaScrubberGesture *)self scrubberDelegate];
    *&v42 = v41;
    [v12 scrubber:self didChangeValue:v42];
  }
}

- (QLMediaScrubberGestureDelegate)scrubberDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubberDelegate);

  return WeakRetained;
}

@end