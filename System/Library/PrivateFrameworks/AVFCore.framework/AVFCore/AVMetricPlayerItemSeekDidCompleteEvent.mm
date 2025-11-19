@interface AVMetricPlayerItemSeekDidCompleteEvent
- (AVMetricPlayerItemSeekDidCompleteEvent)initWithCoder:(id)a3;
- (AVMetricPlayerItemSeekDidCompleteEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 variant:(id)a6 didSeekInBuffer:(BOOL)a7 rate:(double)a8 previousRate:(double)a9;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVMetricPlayerItemSeekDidCompleteEvent

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemSeekDidCompleteEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricPlayerItemSeekDidCompleteEvent:%p %@ didSeekInBuffer:%d>", self, -[AVMetricPlayerItemRateChangeEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_didSeekInBuffer];
}

- (AVMetricPlayerItemSeekDidCompleteEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 variant:(id)a6 didSeekInBuffer:(BOOL)a7 rate:(double)a8 previousRate:(double)a9
{
  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemSeekDidCompleteEvent;
  v11 = *a4;
  result = [(AVMetricPlayerItemRateChangeEvent *)&v12 initWithDate:a3 mediaTime:&v11 sessionID:a5 variant:a6 rate:a8 previousRate:a9];
  if (result)
  {
    result->_didSeekInBuffer = a7;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemSeekDidCompleteEvent;
  [(AVMetricPlayerItemRateChangeEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeBool:self->_didSeekInBuffer forKey:@"didSeekInBuffer"];
}

- (AVMetricPlayerItemSeekDidCompleteEvent)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMetricPlayerItemSeekDidCompleteEvent;
  v4 = [(AVMetricPlayerItemRateChangeEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_didSeekInBuffer = [a3 decodeBoolForKey:@"didSeekInBuffer"];
  }

  return v4;
}

@end