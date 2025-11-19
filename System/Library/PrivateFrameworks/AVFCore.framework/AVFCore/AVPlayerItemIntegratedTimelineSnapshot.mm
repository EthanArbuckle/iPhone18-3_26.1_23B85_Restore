@interface AVPlayerItemIntegratedTimelineSnapshot
- (AVPlayerItemIntegratedTimelineSnapshot)initWithSegments:(id)a3 duration:(id *)a4 currentTime:(id *)a5 currentDate:(id)a6 currentSegment:(id)a7;
- (AVPlayerItemSegment)currentSegment;
- (NSArray)segments;
- (NSDate)currentDate;
- (void)dealloc;
- (void)mapTime:(id *)a3 toSegment:(id *)a4 atSegmentOffset:(id *)a5;
@end

@implementation AVPlayerItemIntegratedTimelineSnapshot

- (AVPlayerItemIntegratedTimelineSnapshot)initWithSegments:(id)a3 duration:(id *)a4 currentTime:(id *)a5 currentDate:(id)a6 currentSegment:(id)a7
{
  v16.receiver = self;
  v16.super_class = AVPlayerItemIntegratedTimelineSnapshot;
  v12 = [(AVPlayerItemIntegratedTimelineSnapshot *)&v16 init];
  if (v12)
  {
    *(v12 + 9) = [a3 copy];
    var3 = a4->var3;
    *(v12 + 8) = *&a4->var0;
    *(v12 + 3) = var3;
    v14 = *&a5->var0;
    *(v12 + 6) = a5->var3;
    *(v12 + 2) = v14;
    *(v12 + 7) = [a6 copy];
    *(v12 + 8) = [a7 copy];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerItemIntegratedTimelineSnapshot;
  [(AVPlayerItemIntegratedTimelineSnapshot *)&v3 dealloc];
}

- (NSDate)currentDate
{
  v2 = [(NSDate *)self->_currentDate copy];

  return v2;
}

- (AVPlayerItemSegment)currentSegment
{
  v2 = [(AVPlayerItemSegment *)self->_currentSegment copy];

  return v2;
}

- (NSArray)segments
{
  v2 = [(NSArray *)self->_segments copy];

  return v2;
}

- (void)mapTime:(id *)a3 toSegment:(id *)a4 atSegmentOffset:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [(AVPlayerItemIntegratedTimelineSnapshot *)self segments];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v23 + 1) + 8 * v12);
      if (v13)
      {
        [*(*(&v23 + 1) + 8 * v12) timeMapping];
      }

      else
      {
        v20 = 0u;
        memset(&v21, 0, sizeof(v21));
        v18 = 0u;
        v19 = 0u;
      }

      range = v21;
      time = *a3;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  if (a4)
  {
    *a4 = [v13 copy];
  }

  if (a5)
  {
    if (v13)
    {
      [v13 timeMapping];
      time = *&v16[3].timescale;
      v16[0] = *a3;
      CMTimeSubtract(&range.start, v16, &time);
      *&a5->var0 = *&range.start.value;
      epoch = range.start.epoch;
    }

    else
    {
      v15 = MEMORY[0x1E6960C70];
      *&a5->var0 = *MEMORY[0x1E6960C70];
      epoch = *(v15 + 16);
    }

    a5->var3 = epoch;
  }
}

@end