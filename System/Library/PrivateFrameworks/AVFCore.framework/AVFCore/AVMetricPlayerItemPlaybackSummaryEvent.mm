@interface AVMetricPlayerItemPlaybackSummaryEvent
- (AVMetricPlayerItemPlaybackSummaryEvent)initWithCoder:(id)coder;
- (AVMetricPlayerItemPlaybackSummaryEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d errorEvent:(id)event recoverableErrorCount:(int64_t)count stallCount:(int64_t)stallCount variantSwitchCount:(int64_t)switchCount playbackDuration:(int64_t)self0 mediaResourceRequestCount:(int64_t)self1 timeSpentRecoveringFromStall:(double)self2 timeSpentInInitialStartup:(double)self3 timeWeightedAverageBitrate:(int64_t)self4 timeWeightedPeakBitrate:(int64_t)self5;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricPlayerItemPlaybackSummaryEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemPlaybackSummaryEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (AVMetricPlayerItemPlaybackSummaryEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d errorEvent:(id)event recoverableErrorCount:(int64_t)count stallCount:(int64_t)stallCount variantSwitchCount:(int64_t)switchCount playbackDuration:(int64_t)self0 mediaResourceRequestCount:(int64_t)self1 timeSpentRecoveringFromStall:(double)self2 timeSpentInInitialStartup:(double)self3 timeWeightedAverageBitrate:(int64_t)self4 timeWeightedPeakBitrate:(int64_t)self5
{
  v23.receiver = self;
  v23.super_class = AVMetricPlayerItemPlaybackSummaryEvent;
  v22 = *time;
  v20 = [(AVMetricEvent *)&v23 initWithDate:date mediaTime:&v22 sessionID:d];
  if (v20)
  {
    v20->_errorEvent = event;
    v20->_recoverableErrorCount = count;
    v20->_stallCount = stallCount;
    v20->_variantSwitchCount = switchCount;
    v20->_playbackDuration = duration;
    v20->_mediaResourceRequestCount = requestCount;
    v20->_timeSpentRecoveringFromStall = stall;
    v20->_timeSpentInInitialStartup = startup;
    v20->_timeWeightedAverageBitrate = bitrate;
    v20->_timeWeightedPeakBitrate = peakBitrate;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemPlaybackSummaryEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeObject:self->_errorEvent forKey:@"errorEvent"];
  [coder encodeInteger:self->_recoverableErrorCount forKey:@"recoverableErrorCount"];
  [coder encodeInteger:self->_stallCount forKey:@"stallCount"];
  [coder encodeInteger:self->_variantSwitchCount forKey:@"variantSwitchCount"];
  [coder encodeInteger:self->_playbackDuration forKey:@"playbackDuration"];
  [coder encodeInteger:self->_mediaResourceRequestCount forKey:@"mediaResourceRequestCount"];
  [coder encodeDouble:@"timeSpentRecoveringFromStall" forKey:self->_timeSpentRecoveringFromStall];
  [coder encodeDouble:@"timeSpentInInitialStartup" forKey:self->_timeSpentInInitialStartup];
  [coder encodeInteger:self->_timeWeightedAverageBitrate forKey:@"timeWeightedAverageBitrate"];
  [coder encodeInteger:self->_timeWeightedPeakBitrate forKey:@"timeWeightedPeakBitrate"];
}

- (AVMetricPlayerItemPlaybackSummaryEvent)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = AVMetricPlayerItemPlaybackSummaryEvent;
  v4 = [(AVMetricEvent *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_errorEvent = [coder decodeObjectOfClass:objc_opt_class() forKey:@"errorEvent"];
    v4->_recoverableErrorCount = [coder decodeIntegerForKey:@"recoverableErrorCount"];
    v4->_stallCount = [coder decodeIntegerForKey:@"stallCount"];
    v4->_variantSwitchCount = [coder decodeIntegerForKey:@"variantSwitchCount"];
    v4->_playbackDuration = [coder decodeIntegerForKey:@"playbackDuration"];
    v4->_mediaResourceRequestCount = [coder decodeIntegerForKey:@"mediaResourceRequestCount"];
    [coder decodeDoubleForKey:@"timeSpentRecoveringFromStall"];
    v4->_timeSpentRecoveringFromStall = v5;
    [coder decodeDoubleForKey:@"timeSpentInInitialStartup"];
    v4->_timeSpentInInitialStartup = v6;
    v4->_timeWeightedAverageBitrate = [coder decodeIntegerForKey:@"timeWeightedAverageBitrate"];
    v4->_timeWeightedPeakBitrate = [coder decodeIntegerForKey:@"timeWeightedPeakBitrate"];
  }

  return v4;
}

@end