@interface AVMetricPlayerItemRateChangeEvent
- (AVMetricPlayerItemRateChangeEvent)initWithCoder:(id)a3;
- (AVMetricPlayerItemRateChangeEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 variant:(id)a6 rate:(double)a7 previousRate:(double)a8;
- (id)debugDescriptionForAttr;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (AVMetricPlayerItemRateChangeEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 variant:(id)a6 rate:(double)a7 previousRate:(double)a8
{
  v14.receiver = self;
  v14.super_class = AVMetricPlayerItemRateChangeEvent;
  v13 = *a4;
  v11 = [(AVMetricEvent *)&v14 initWithDate:a3 mediaTime:&v13 sessionID:a5];
  if (v11)
  {
    v11->_variant = a6;
    v11->_rate = a7;
    v11->_previousRate = a8;
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
  v12.super_class = AVMetricPlayerItemRateChangeEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeDouble:@"rate" forKey:self->_rate];
  [a3 encodeDouble:@"previousRate" forKey:self->_previousRate];
  [a3 encodeObject:self->_variant forKey:@"variant"];
}

- (AVMetricPlayerItemRateChangeEvent)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVMetricPlayerItemRateChangeEvent;
  v4 = [(AVMetricEvent *)&v8 initWithCoder:?];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"rate"];
    v4->_rate = v5;
    [a3 decodeDoubleForKey:@"previousRate"];
    v4->_previousRate = v6;
    v4->_variant = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"variant"];
  }

  return v4;
}

@end