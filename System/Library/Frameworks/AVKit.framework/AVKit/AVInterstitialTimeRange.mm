@interface AVInterstitialTimeRange
+ (AVInterstitialTimeRange)interstitialTimeRangeWithPlayerInterstitialEvent:(id)event isLive:(BOOL)live;
+ (id)interstitalTimeRangeWithTimelineSegment:(id)segment isLive:(BOOL)live;
- (AVInterstitialTimeRange)init;
- (AVInterstitialTimeRange)initWithCoder:(id)coder;
- (AVInterstitialTimeRange)initWithHiddenTimeRange:(id *)range;
- (AVInterstitialTimeRange)initWithTimeRange:(CMTimeRange *)timeRange;
- (AVTimelineSegment)timelineSegment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInterstitialTimeRange:(id)range;
- (BOOL)supplementsPrimaryContent;
- (double)playingDuration;
- (id)_initWithTimeRange:(id *)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_setActive:(BOOL)active;
- (void)_setDurationTimeInterval:(double)interval;
- (void)_setLive:(BOOL)live;
- (void)_setPlayerInterstitialEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVInterstitialTimeRange

+ (AVInterstitialTimeRange)interstitialTimeRangeWithPlayerInterstitialEvent:(id)event isLive:(BOOL)live
{
  liveCopy = live;
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  date = [eventCopy date];

  if (date)
  {
    if ([eventCopy timelineOccupancy])
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Expected timelineOccupancy to be .SinglePoint", buf, 2u);
      }
    }

    v8 = [AVInterstitialDateRange alloc];
    date2 = [eventCopy date];
    v10 = [(AVInterstitialDateRange *)v8 initWithStart:date2 end:0];

    [(AVInterstitialTimeRange *)v10 _setLive:liveCopy];
    p_super = &v10->super;
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    *buf = 0u;
    if (eventCopy)
    {
      [eventCopy time];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      *&v19[0] = 0;
    }

    *(v19 + 8) = *MEMORY[0x1E6960CC0];
    *(&v19[1] + 1) = *(MEMORY[0x1E6960CC0] + 16);
    v12 = [AVInterstitialTimeRange alloc];
    v17[0] = *buf;
    v17[1] = v19[0];
    v17[2] = v19[1];
    p_super = [(AVInterstitialTimeRange *)v12 initWithTimeRange:v17];
    v10 = 0;
  }

  [(AVInterstitialTimeRange *)p_super _setPlayerInterstitialEvent:eventCopy];
  restrictions = [eventCopy restrictions];
  v14 = INFINITY;
  if ((restrictions & 4) == 0)
  {
    v14 = 0.0;
  }

  [(AVInterstitialTimeRange *)p_super setLinearPlaybackRequirementDuration:v14];
  -[AVInterstitialTimeRange setRequiredViewingPolicy:](p_super, "setRequiredViewingPolicy:", ~(2 * [eventCopy restrictions]) & 2);
  if ([eventCopy timelineOccupancy] == 1)
  {
    [(AVInterstitialTimeRange *)p_super _setCollapsedInTimeLine:0];
    if ([eventCopy supplementsPrimaryContent])
    {
      [(AVInterstitialTimeRange *)p_super _setUnmarked:1];
    }
  }

  else if ([eventCopy supplementsPrimaryContent])
  {
    v15 = _AVLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "+[AVInterstitialTimeRange(AVPlayerInterstitialSupport) interstitialTimeRangeWithPlayerInterstitialEvent:isLive:]";
      _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s Interstitial has invalid combination of supplementsPrimaryContent without fillOccupancy -- overriding primary content designation!", buf, 0xCu);
    }
  }

  return p_super;
}

+ (id)interstitalTimeRangeWithTimelineSegment:(id)segment isLive:(BOOL)live
{
  liveCopy = live;
  v19 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  if ([segmentCopy isInterstitial])
  {
    if (liveCopy)
    {
      v6 = [AVInterstitialDateRange alloc];
      startDate = [segmentCopy startDate];
      v8 = [(AVInterstitialDateRange *)v6 initWithStart:startDate end:0];

      interstitialTimeRange = v8;
    }

    else
    {
      interstitialTimeRange = [segmentCopy interstitialTimeRange];
      v8 = 0;
    }

    [interstitialTimeRange _setLive:liveCopy];
    playerInterstitialEvent = [segmentCopy playerInterstitialEvent];
    [interstitialTimeRange _setPlayerInterstitialEvent:playerInterstitialEvent];
    [interstitialTimeRange _setTimelineSegment:segmentCopy];
    restrictions = [playerInterstitialEvent restrictions];
    v14 = INFINITY;
    if ((restrictions & 4) == 0)
    {
      v14 = 0.0;
    }

    [interstitialTimeRange setLinearPlaybackRequirementDuration:v14];
    if ([playerInterstitialEvent restrictions])
    {
      willPlayOnce = [playerInterstitialEvent willPlayOnce];
    }

    else
    {
      willPlayOnce = 2;
    }

    [interstitialTimeRange setRequiredViewingPolicy:willPlayOnce];
    if ([playerInterstitialEvent timelineOccupancy] == 1)
    {
      [interstitialTimeRange _setCollapsedInTimeLine:0];
    }

    if ([playerInterstitialEvent supplementsPrimaryContent])
    {
      [interstitialTimeRange _setUnmarked:1];
    }

    v10 = interstitialTimeRange;

    v11 = v10;
  }

  else
  {
    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "+[AVInterstitialTimeRange(AVPlayerInterstitialSupport) interstitalTimeRangeWithTimelineSegment:isLive:]";
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s not an interstitial!", &v17, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (AVTimelineSegment)timelineSegment
{
  WeakRetained = objc_loadWeakRetained(&self->_timelineSegment);

  return WeakRetained;
}

- (BOOL)supplementsPrimaryContent
{
  playerInterstitialEvent = [(AVInterstitialTimeRange *)self playerInterstitialEvent];
  supplementsPrimaryContent = [playerInterstitialEvent supplementsPrimaryContent];

  return supplementsPrimaryContent;
}

- (void)_setLive:(BOOL)live
{
  if (self->_live != live)
  {
    self->_live = live;
    [(AVInterstitialTimeRange *)self _setCollapsedInTimeLine:?];
  }
}

- (void)_setPlayerInterstitialEvent:(id)event
{
  eventCopy = event;
  p_playerInterstitialEvent = &self->_playerInterstitialEvent;
  if (self->_playerInterstitialEvent != eventCopy)
  {
    v8 = eventCopy;
    objc_storeStrong(p_playerInterstitialEvent, event);
    eventCopy = v8;
    if (v8)
    {
      if ((~self->_timeRange.duration.flags & 0x11) == 0)
      {
        v7 = MEMORY[0x1E6960CC0];
        *&self->_timeRange.duration.value = *MEMORY[0x1E6960CC0];
        self->_timeRange.duration.epoch = *(v7 + 16);
      }
    }
  }

  MEMORY[0x1EEE66BB8](p_playerInterstitialEvent, eventCopy);
}

- (double)playingDuration
{
  result = self->_playingDuration;
  if (result == -1.0)
  {
    v6 = v2;
    v7 = v3;
    duration = self->_timeRange.duration;
    return CMTimeGetSeconds(&duration);
  }

  return result;
}

- (void)_setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (!active)
    {
      v4 = [(AVInterstitialTimeRange *)self _watchCount]+ 1;

      [(AVInterstitialTimeRange *)self _setWatchCount:v4];
    }
  }
}

- (id)description
{
  v3 = *MEMORY[0x1E695E480];
  [(AVInterstitialTimeRange *)self timeRange];
  v4 = CMTimeRangeCopyDescription(v3, &range);
  v5 = v4;
  if (!self->_playerInterstitialEvent)
  {
    v12 = v4;
    goto LABEL_34;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = self->_playerInterstitialEvent;
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"%@ %p", v10, v7];
  [v6 addObject:v11];

  if (v7)
  {
    [(AVPlayerInterstitialEvent *)v7 time];
  }

  else
  {
    memset(&range, 0, 24);
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f sec", CMTimeGetSeconds(&range.start)];
  [v6 addObject:v13];
  if (!v7)
  {
    v28 = 0uLL;
    v29 = 0;
LABEL_10:
    *&range.start.value = v28;
    range.start.epoch = v29;
    Seconds = CMTimeGetSeconds(&range.start);
    if (Seconds == 0.0)
    {
      v14 = &stru_1EFED57D8;
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"resume %+0.1f sec", *&Seconds];
    }

    goto LABEL_13;
  }

  [(AVPlayerInterstitialEvent *)v7 resumptionOffset];
  if ((~HIDWORD(v28) & 0x11) != 0)
  {
    goto LABEL_10;
  }

  v14 = @"resume live stream";
LABEL_13:
  if ([(__CFString *)v14 length])
  {
    [v6 addObject:v14];
  }

  restrictions = [(AVPlayerInterstitialEvent *)v7 restrictions];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = v17;
  if (restrictions)
  {
    [v17 addObject:@"ConstrainsSeekingForwardInPrimaryContent"];
  }

  if ((restrictions & 4) != 0)
  {
    [v18 addObject:@"RequiresPlaybackAtPreferredRateForAdvancement"];
  }

  if ((restrictions & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    0xFFFFFFFFFFFFFFFALL = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unrecognized restrictions 0x%lx", restrictions & 0xFFFFFFFFFFFFFFFALL];
    [v18 addObject:0xFFFFFFFFFFFFFFFALL];
  }

  if ([v18 count])
  {
    v20 = [v18 componentsJoinedByString:{@", "}];
  }

  else
  {
    v20 = @"no restrictions";
  }

  [v6 addObject:v20];
  if ([(AVPlayerInterstitialEvent *)v7 willPlayOnce])
  {
    [v6 addObject:@"will play once"];
  }

  if ([(AVPlayerInterstitialEvent *)v7 supplementsPrimaryContent])
  {
    [v6 addObject:@"supplements primary content"];
  }

  timelineOccupancy = [(AVPlayerInterstitialEvent *)v7 timelineOccupancy];
  v22 = @"unrecognized occupancy";
  if (!timelineOccupancy)
  {
    v22 = @"single point occupancy";
  }

  if (timelineOccupancy == 1)
  {
    v23 = @"fill occupancy";
  }

  else
  {
    v23 = v22;
  }

  [v6 addObject:v23];
  v24 = MEMORY[0x1E696AEC0];
  v25 = [v6 componentsJoinedByString:{@", "}];
  v26 = [v24 stringWithFormat:@"<%@>", v25];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ {%@}", v5, v26];

LABEL_34:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = equalCopy && (v6 = objc_opt_class(), v6 == objc_opt_class()) && [(AVInterstitialTimeRange *)self isEqualToInterstitialTimeRange:v5];
  }

  return v7;
}

- (BOOL)isEqualToInterstitialTimeRange:(id)range
{
  rangeCopy = range;
  memset(v12, 0, sizeof(v12));
  v11 = 0u;
  [(AVInterstitialTimeRange *)self timeRange];
  if (rangeCopy && (memset(v10, 0, sizeof(v10)), v9 = 0u, [rangeCopy timeRange], *&time1.value = v11, time1.epoch = *&v12[0], *&v7.value = v9, v7.epoch = *&v10[0], !CMTimeCompare(&time1, &v7)))
  {
    time1 = *(v12 + 8);
    v7 = *(v10 + 8);
    v5 = CMTimeCompare(&time1, &v7) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  [(AVInterstitialTimeRange *)self timeRange];
  *&v7.value = v8;
  v7.epoch = *&v9[0];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v7)];
  v3 = [v2 hash];

  v7 = *(v9 + 8);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v7)];
  v5 = [v4 hash];

  return v5 ^ __ROR8__(v3, 61);
}

- (void)_setDurationTimeInterval:(double)interval
{
  [(AVInterstitialTimeRange *)self willChangeValueForKey:@"timeRange"];
  CMTimeMakeWithSeconds(&v5, interval, 1000);
  self->_timeRange.duration = v5;
  [(AVInterstitialTimeRange *)self didChangeValueForKey:@"timeRange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVInterstitialTimeRange allocWithZone:zone];
  [(AVInterstitialTimeRange *)self timeRange];
  v5 = [(AVInterstitialTimeRange *)v4 initWithTimeRange:&v7];
  v5->_hidden = [(AVInterstitialTimeRange *)self isHidden];
  v5->_collapsedInTimeLine = [(AVInterstitialTimeRange *)self isCollapsedInTimeLine];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AVInterstitialTimeRange *)self timeRange];
  v5 = CMTimeRangeCopyAsDictionary(&v6, *MEMORY[0x1E695E480]);
  [coderCopy encodeObject:v5 forKey:@"AVTimeRange"];
}

- (AVInterstitialTimeRange)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"AVTimeRange"];
  v5 = v4;
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  *&v10.start.value = *MEMORY[0x1E6960CA8];
  *&v10.start.epoch = v6;
  *&v10.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  if (v4)
  {
    CMTimeRangeMakeFromDictionary(&v10, v4);
  }

  v9 = v10;
  v7 = [(AVInterstitialTimeRange *)self initWithTimeRange:&v9];

  return v7;
}

- (AVInterstitialTimeRange)initWithHiddenTimeRange:(id *)range
{
  v3 = *&range->var0.var3;
  v5[0] = *&range->var0.var0;
  v5[1] = v3;
  v5[2] = *&range->var1.var1;
  result = [(AVInterstitialTimeRange *)self initWithTimeRange:v5];
  if (result)
  {
    result->_hidden = 1;
  }

  return result;
}

- (AVInterstitialTimeRange)initWithTimeRange:(CMTimeRange *)timeRange
{
  v9.receiver = self;
  v9.super_class = AVInterstitialTimeRange;
  v4 = [(AVInterstitialTimeRange *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&timeRange->start.epoch;
    v8[0] = *&timeRange->start.value;
    v8[1] = v6;
    v8[2] = *&timeRange->duration.timescale;
    _CommonInit_19613(v4, v8);
  }

  return v5;
}

- (id)_initWithTimeRange:(id *)range
{
  v9.receiver = self;
  v9.super_class = AVInterstitialTimeRange;
  v4 = [(AVInterstitialTimeRange *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&range->var0.var3;
    v8[0] = *&range->var0.var0;
    v8[1] = v6;
    v8[2] = *&range->var1.var1;
    _CommonInit_19613(v4, v8);
  }

  return v5;
}

- (AVInterstitialTimeRange)init
{
  start = **&MEMORY[0x1E6960CC0];
  v4 = start;
  CMTimeRangeMake(&v6, &start, &v4);
  return [(AVInterstitialTimeRange *)self initWithTimeRange:&v6];
}

@end