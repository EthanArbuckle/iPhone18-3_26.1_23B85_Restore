@interface AVMetricPlayerItemRateChangeEvent
- (AVMetricPlayerItemRateChangeEvent)initWithCoder:(id)coder;
- (AVMetricPlayerItemRateChangeEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d variant:(id)variant rate:(double)rate previousRate:(double)previousRate;
- (id)debugDescriptionForAttr;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricPlayerItemRateChangeEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemRateChangeEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescriptionForAttr
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemRateChangeEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ rate:%f previousRate:%f variant:%@", -[AVMetricEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), *&self->_rate, *&self->_previousRate, self->_variant];
}

- (AVMetricPlayerItemRateChangeEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d variant:(id)variant rate:(double)rate previousRate:(double)previousRate
{
  v14.receiver = self;
  v14.super_class = AVMetricPlayerItemRateChangeEvent;
  v13 = *time;
  v11 = [(AVMetricEvent *)&v14 initWithDate:date mediaTime:&v13 sessionID:d];
  if (v11)
  {
    v11->_variant = variant;
    v11->_rate = rate;
    v11->_previousRate = previousRate;
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
  v12.super_class = AVMetricPlayerItemRateChangeEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeDouble:@"rate" forKey:self->_rate];
  [coder encodeDouble:@"previousRate" forKey:self->_previousRate];
  [coder encodeObject:self->_variant forKey:@"variant"];
}

- (AVMetricPlayerItemRateChangeEvent)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = AVMetricPlayerItemRateChangeEvent;
  v4 = [(AVMetricEvent *)&v8 initWithCoder:?];
  if (v4)
  {
    [coder decodeDoubleForKey:@"rate"];
    v4->_rate = v5;
    [coder decodeDoubleForKey:@"previousRate"];
    v4->_previousRate = v6;
    v4->_variant = [coder decodeObjectOfClass:objc_opt_class() forKey:@"variant"];
  }

  return v4;
}

@end