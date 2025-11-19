@interface AVMetricPlayerItemLikelyToKeepUpEvent
- (AVMetricPlayerItemLikelyToKeepUpEvent)initWithCoder:(id)a3;
- (AVMetricPlayerItemLikelyToKeepUpEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 variant:(id)a6 timeTaken:(double)a7 loadedTimeRanges:(id)a8;
- (id)debugDescriptionForAttr;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (AVMetricPlayerItemLikelyToKeepUpEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 variant:(id)a6 timeTaken:(double)a7 loadedTimeRanges:(id)a8
{
  v14.receiver = self;
  v14.super_class = AVMetricPlayerItemLikelyToKeepUpEvent;
  v13 = *a4;
  v11 = [(AVMetricEvent *)&v14 initWithDate:a3 mediaTime:&v13 sessionID:a5];
  if (v11)
  {
    v11->_variant = a6;
    v11->_timeTaken = a7;
    v11->_loadedTimeRanges = a8;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemLikelyToKeepUpEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeObject:self->_variant forKey:@"variant"];
  [a3 encodeInteger:self->_timeTaken forKey:@"timeTaken"];
  [a3 encodeObject:self->_loadedTimeRanges forKey:@"loadedTimeRanges"];
}

- (AVMetricPlayerItemLikelyToKeepUpEvent)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemLikelyToKeepUpEvent;
  v4 = [(AVMetricEvent *)&v12 initWithCoder:?];
  if (v4)
  {
    v4->_variant = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"variant"];
    v4->_timeTaken = [a3 decodeIntegerForKey:@"timeTaken"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v4->_loadedTimeRanges = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"loadedTimeRanges"}];
  }

  return v4;
}

@end