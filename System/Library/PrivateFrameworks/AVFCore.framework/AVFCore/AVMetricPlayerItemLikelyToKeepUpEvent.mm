@interface AVMetricPlayerItemLikelyToKeepUpEvent
- (AVMetricPlayerItemLikelyToKeepUpEvent)initWithCoder:(id)coder;
- (AVMetricPlayerItemLikelyToKeepUpEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d variant:(id)variant timeTaken:(double)taken loadedTimeRanges:(id)ranges;
- (id)debugDescriptionForAttr;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricPlayerItemLikelyToKeepUpEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemLikelyToKeepUpEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescriptionForAttr
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemLikelyToKeepUpEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ variant:%@ timeTaken:%f loadedTimeRanges:%@>", -[AVMetricEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_variant, *&self->_timeTaken, self->_loadedTimeRanges];
}

- (AVMetricPlayerItemLikelyToKeepUpEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d variant:(id)variant timeTaken:(double)taken loadedTimeRanges:(id)ranges
{
  v14.receiver = self;
  v14.super_class = AVMetricPlayerItemLikelyToKeepUpEvent;
  v13 = *time;
  v11 = [(AVMetricEvent *)&v14 initWithDate:date mediaTime:&v13 sessionID:d];
  if (v11)
  {
    v11->_variant = variant;
    v11->_timeTaken = taken;
    v11->_loadedTimeRanges = ranges;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemLikelyToKeepUpEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeObject:self->_variant forKey:@"variant"];
  [coder encodeInteger:self->_timeTaken forKey:@"timeTaken"];
  [coder encodeObject:self->_loadedTimeRanges forKey:@"loadedTimeRanges"];
}

- (AVMetricPlayerItemLikelyToKeepUpEvent)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemLikelyToKeepUpEvent;
  v4 = [(AVMetricEvent *)&v12 initWithCoder:?];
  if (v4)
  {
    v4->_variant = [coder decodeObjectOfClass:objc_opt_class() forKey:@"variant"];
    v4->_timeTaken = [coder decodeIntegerForKey:@"timeTaken"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v4->_loadedTimeRanges = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"loadedTimeRanges"}];
  }

  return v4;
}

@end