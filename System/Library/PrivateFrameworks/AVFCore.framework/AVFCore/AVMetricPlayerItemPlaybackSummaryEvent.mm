@interface AVMetricPlayerItemPlaybackSummaryEvent
- (AVMetricPlayerItemPlaybackSummaryEvent)initWithCoder:(id)a3;
- (AVMetricPlayerItemPlaybackSummaryEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 errorEvent:(id)a6 recoverableErrorCount:(int64_t)a7 stallCount:(int64_t)a8 variantSwitchCount:(int64_t)a9 playbackDuration:(int64_t)a10 mediaResourceRequestCount:(int64_t)a11 timeSpentRecoveringFromStall:(double)a12 timeSpentInInitialStartup:(double)a13 timeWeightedAverageBitrate:(int64_t)a14 timeWeightedPeakBitrate:(int64_t)a15;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVMetricPlayerItemPlaybackSummaryEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemPlaybackSummaryEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (AVMetricPlayerItemPlaybackSummaryEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 errorEvent:(id)a6 recoverableErrorCount:(int64_t)a7 stallCount:(int64_t)a8 variantSwitchCount:(int64_t)a9 playbackDuration:(int64_t)a10 mediaResourceRequestCount:(int64_t)a11 timeSpentRecoveringFromStall:(double)a12 timeSpentInInitialStartup:(double)a13 timeWeightedAverageBitrate:(int64_t)a14 timeWeightedPeakBitrate:(int64_t)a15
{
  v23.receiver = self;
  v23.super_class = AVMetricPlayerItemPlaybackSummaryEvent;
  v22 = *a4;
  v20 = [(AVMetricEvent *)&v23 initWithDate:a3 mediaTime:&v22 sessionID:a5];
  if (v20)
  {
    v20->_errorEvent = a6;
    v20->_recoverableErrorCount = a7;
    v20->_stallCount = a8;
    v20->_variantSwitchCount = a9;
    v20->_playbackDuration = a10;
    v20->_mediaResourceRequestCount = a11;
    v20->_timeSpentRecoveringFromStall = a12;
    v20->_timeSpentInInitialStartup = a13;
    v20->_timeWeightedAverageBitrate = a14;
    v20->_timeWeightedPeakBitrate = a15;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemPlaybackSummaryEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeObject:self->_errorEvent forKey:@"errorEvent"];
  [a3 encodeInteger:self->_recoverableErrorCount forKey:@"recoverableErrorCount"];
  [a3 encodeInteger:self->_stallCount forKey:@"stallCount"];
  [a3 encodeInteger:self->_variantSwitchCount forKey:@"variantSwitchCount"];
  [a3 encodeInteger:self->_playbackDuration forKey:@"playbackDuration"];
  [a3 encodeInteger:self->_mediaResourceRequestCount forKey:@"mediaResourceRequestCount"];
  [a3 encodeDouble:@"timeSpentRecoveringFromStall" forKey:self->_timeSpentRecoveringFromStall];
  [a3 encodeDouble:@"timeSpentInInitialStartup" forKey:self->_timeSpentInInitialStartup];
  [a3 encodeInteger:self->_timeWeightedAverageBitrate forKey:@"timeWeightedAverageBitrate"];
  [a3 encodeInteger:self->_timeWeightedPeakBitrate forKey:@"timeWeightedPeakBitrate"];
}

- (AVMetricPlayerItemPlaybackSummaryEvent)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVMetricPlayerItemPlaybackSummaryEvent;
  v4 = [(AVMetricEvent *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_errorEvent = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"errorEvent"];
    v4->_recoverableErrorCount = [a3 decodeIntegerForKey:@"recoverableErrorCount"];
    v4->_stallCount = [a3 decodeIntegerForKey:@"stallCount"];
    v4->_variantSwitchCount = [a3 decodeIntegerForKey:@"variantSwitchCount"];
    v4->_playbackDuration = [a3 decodeIntegerForKey:@"playbackDuration"];
    v4->_mediaResourceRequestCount = [a3 decodeIntegerForKey:@"mediaResourceRequestCount"];
    [a3 decodeDoubleForKey:@"timeSpentRecoveringFromStall"];
    v4->_timeSpentRecoveringFromStall = v5;
    [a3 decodeDoubleForKey:@"timeSpentInInitialStartup"];
    v4->_timeSpentInInitialStartup = v6;
    v4->_timeWeightedAverageBitrate = [a3 decodeIntegerForKey:@"timeWeightedAverageBitrate"];
    v4->_timeWeightedPeakBitrate = [a3 decodeIntegerForKey:@"timeWeightedPeakBitrate"];
  }

  return v4;
}

@end