@interface AVPlayerItemIntegratedTimelineSnapshot
- (AVPlayerItemIntegratedTimelineSnapshot)initWithSegments:(id)segments duration:(id *)duration currentTime:(id *)time currentDate:(id)date currentSegment:(id)segment;
- (AVPlayerItemSegment)currentSegment;
- (NSArray)segments;
- (NSDate)currentDate;
- (void)dealloc;
- (void)mapTime:(id *)time toSegment:(id *)segment atSegmentOffset:(id *)offset;
@end

@implementation AVPlayerItemIntegratedTimelineSnapshot

- (AVPlayerItemIntegratedTimelineSnapshot)initWithSegments:(id)segments duration:(id *)duration currentTime:(id *)time currentDate:(id)date currentSegment:(id)segment
{
  v16.receiver = self;
  v16.super_class = AVPlayerItemIntegratedTimelineSnapshot;
  v12 = [(AVPlayerItemIntegratedTimelineSnapshot *)&v16 init];
  if (v12)
  {
    *(v12 + 9) = [segments copy];
    var3 = duration->var3;
    *(v12 + 8) = *&duration->var0;
    *(v12 + 3) = var3;
    v14 = *&time->var0;
    *(v12 + 6) = time->var3;
    *(v12 + 2) = v14;
    *(v12 + 7) = [date copy];
    *(v12 + 8) = [segment copy];
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

- (void)mapTime:(id *)time toSegment:(id *)segment atSegmentOffset:(id *)offset
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  segments = [(AVPlayerItemIntegratedTimelineSnapshot *)self segments];
  v9 = [(NSArray *)segments countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(segments);
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
      time = *time;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)segments countByEnumeratingWithState:&v23 objects:v27 count:16];
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

  if (segment)
  {
    *segment = [v13 copy];
  }

  if (offset)
  {
    if (v13)
    {
      [v13 timeMapping];
      time = *&v16[3].timescale;
      v16[0] = *time;
      CMTimeSubtract(&range.start, v16, &time);
      *&offset->var0 = *&range.start.value;
      epoch = range.start.epoch;
    }

    else
    {
      v15 = MEMORY[0x1E6960C70];
      *&offset->var0 = *MEMORY[0x1E6960C70];
      epoch = *(v15 + 16);
    }

    offset->var3 = epoch;
  }
}

@end