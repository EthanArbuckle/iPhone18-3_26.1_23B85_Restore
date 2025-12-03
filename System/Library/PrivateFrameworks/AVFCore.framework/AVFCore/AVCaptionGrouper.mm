@interface AVCaptionGrouper
- (NSArray)flushAddedCaptionsIntoGroupsUpToTime:(CMTime *)upToTime;
- (void)addCaption:(AVCaption *)input;
- (void)dealloc;
@end

@implementation AVCaptionGrouper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptionGrouper;
  [(AVCaptionGrouper *)&v3 dealloc];
}

- (void)addCaption:(AVCaption *)input
{
  if ((self->_captionGroupStartTime.flags & 1) == 0)
  {
    if (input)
    {
      [(AVCaption *)input timeRange];
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
      v5 = 0u;
    }

    *&self->_captionGroupStartTime.value = v5;
    self->_captionGroupStartTime.epoch = v6;
  }

  [(NSMutableArray *)self->_captionCollector addObject:input, v5, v6, v7];
}

- (NSArray)flushAddedCaptionsIntoGroupsUpToTime:(CMTime *)upToTime
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_captionCollector, "count")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_captionCollector, "count")}];
  v14 = v18;
  while (1)
  {
    [v5 removeAllObjects];
    [v6 removeAllObjects];
    memset(&v28, 0, sizeof(v28));
    start = self->_captionGroupStartTime;
    *&end.start.value = *&upToTime->value;
    end.start.epoch = upToTime->epoch;
    CMTimeRangeFromTimeToTime(&v28, &start, &end.start);
    start.value = 0;
    *&start.timescale = &start;
    start.epoch = 0x3810000000;
    v26 = &unk_19626E495;
    memset(&v27, 0, sizeof(v27));
    end = v28;
    CMTimeRangeGetEnd(&v27, &end);
    captionCollector = self->_captionCollector;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__AVCaptionGrouper_flushAddedCaptionsIntoGroupsUpToTime___block_invoke;
    v23[3] = &unk_1E7464F88;
    v23[4] = self;
    v23[5] = &start;
    [(NSMutableArray *)captionCollector enumerateObjectsUsingBlock:v23];
    time2 = self->_captionGroupStartTime;
    v21 = *(*&start.timescale + 32);
    CMTimeRangeFromTimeToTime(&end, &time2, &v21);
    v28 = end;
    flags = end.start.flags;
    if ((end.start.flags & 1) != 0 && (v28.duration.flags & 1) != 0 && !v28.duration.epoch && (v28.duration.value & 0x8000000000000000) == 0)
    {
      end.start = v28.duration;
      time2 = **&MEMORY[0x1E6960CC0];
      if (!CMTimeCompare(&end.start, &time2))
      {
        break;
      }

      flags = v28.start.flags;
    }

    if ((flags & 0x1D) != 1)
    {
      break;
    }

    end = v28;
    CMTimeRangeGetEnd(&v20, &end);
    if ((v20.flags & 0x1D) != 1)
    {
      break;
    }

    v9 = self->_captionCollector;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v19 = v28;
    v18[0] = __57__AVCaptionGrouper_flushAddedCaptionsIntoGroupsUpToTime___block_invoke_2;
    v18[1] = &unk_1E7464FB0;
    v18[2] = v5;
    [(NSMutableArray *)v9 enumerateObjectsUsingBlock:v17];
    v10 = [AVCaptionGroup alloc];
    end = v28;
    v11 = [(AVCaptionGroup *)v10 initWithCaptions:v5 timeRange:&end];
    [(NSArray *)array addObject:v11];

    end = v28;
    CMTimeRangeGetEnd(&time2, &end);
    self->_captionGroupStartTime = time2;
    v12 = self->_captionCollector;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__AVCaptionGrouper_flushAddedCaptionsIntoGroupsUpToTime___block_invoke_3;
    v16[3] = &unk_1E7464FD8;
    v16[4] = self;
    v16[5] = v6;
    [(NSMutableArray *)v12 enumerateObjectsUsingBlock:v16];
    [(NSMutableArray *)self->_captionCollector removeObjectsInArray:v6];
    _Block_object_dispose(&start, 8);
    if (![(NSMutableArray *)self->_captionCollector count])
    {
      goto LABEL_13;
    }
  }

  _Block_object_dispose(&start, 8);
LABEL_13:

  return array;
}

__n128 __57__AVCaptionGrouper_flushAddedCaptionsIntoGroupsUpToTime___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 timeRange];
    *&v23.value = v20;
    v23.epoch = v21;
    memset(&v19, 0, sizeof(v19));
    [a2 timeRange];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    memset(&v23, 0, sizeof(v23));
    memset(&v19, 0, sizeof(v19));
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&v19, &range);
  v4 = *(a1 + 32);
  range.start = v23;
  time2 = *(v4 + 16);
  if (CMTimeCompare(&range.start, &time2) < 1)
  {
    v10 = *(a1 + 32);
    range.start = v19;
    time2 = *(v10 + 16);
    if (CMTimeCompare(&range.start, &time2) < 1)
    {
      return result;
    }

    v12 = *(a1 + 40);
    v5 = a1 + 40;
    v13 = *(v12 + 8);
    *&range.start.value = *(v13 + 32);
    range.start.epoch = *(v13 + 48);
    time2 = v19;
    v8 = v15;
    v9 = v15;
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = a1 + 40;
    v7 = *(v6 + 8);
    *&range.start.value = *(v7 + 32);
    range.start.epoch = *(v7 + 48);
    time2 = v23;
    v8 = v16;
    v9 = v16;
  }

  CMTimeMinimum(v9, &range.start, &time2);
  v14 = *(*v5 + 8);
  result = *v8;
  v14[2] = *v8;
  v14[3].n128_u64[0] = v8[1].n128_u64[0];
  return result;
}

uint64_t __57__AVCaptionGrouper_flushAddedCaptionsIntoGroupsUpToTime___block_invoke_2(uint64_t a1, void *a2)
{
  memset(&v8, 0, sizeof(v8));
  if (a2)
  {
    [a2 timeRange];
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  v4 = *(a1 + 56);
  *&v6.start.value = *(a1 + 40);
  *&v6.start.epoch = v4;
  *&v6.duration.timescale = *(a1 + 72);
  CMTimeRangeGetIntersection(&v8, &v6, &otherRange);
  if ((v8.start.flags & 1) == 0)
  {
    return [*(a1 + 32) addObject:a2];
  }

  if ((v8.duration.flags & 1) == 0)
  {
    return [*(a1 + 32) addObject:a2];
  }

  if (v8.duration.epoch)
  {
    return [*(a1 + 32) addObject:a2];
  }

  if (v8.duration.value < 0)
  {
    return [*(a1 + 32) addObject:a2];
  }

  otherRange.start = v8.duration;
  *&v6.start.value = *MEMORY[0x1E6960CC0];
  v6.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  result = CMTimeCompare(&otherRange.start, &v6.start);
  if (result)
  {
    return [*(a1 + 32) addObject:a2];
  }

  return result;
}

uint64_t __57__AVCaptionGrouper_flushAddedCaptionsIntoGroupsUpToTime___block_invoke_3(uint64_t a1, void *a2)
{
  memset(&v8, 0, sizeof(v8));
  if (a2)
  {
    [a2 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&v8, &range);
  v4 = *(a1 + 32);
  range.start = v8;
  v6 = *(v4 + 16);
  result = CMTimeCompare(&range.start, &v6);
  if (result <= 0)
  {
    return [*(a1 + 40) addObject:a2];
  }

  return result;
}

@end