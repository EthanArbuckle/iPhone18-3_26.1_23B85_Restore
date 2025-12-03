@interface AVMetricPlayerItemSeekDidCompleteEvent
- (AVMetricPlayerItemSeekDidCompleteEvent)initWithCoder:(id)coder;
- (AVMetricPlayerItemSeekDidCompleteEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d variant:(id)variant didSeekInBuffer:(BOOL)buffer rate:(double)rate previousRate:(double)previousRate;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricPlayerItemSeekDidCompleteEvent

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemSeekDidCompleteEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricPlayerItemSeekDidCompleteEvent:%p %@ didSeekInBuffer:%d>", self, -[AVMetricPlayerItemRateChangeEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_didSeekInBuffer];
}

- (AVMetricPlayerItemSeekDidCompleteEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d variant:(id)variant didSeekInBuffer:(BOOL)buffer rate:(double)rate previousRate:(double)previousRate
{
  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemSeekDidCompleteEvent;
  v11 = *time;
  result = [(AVMetricPlayerItemRateChangeEvent *)&v12 initWithDate:date mediaTime:&v11 sessionID:d variant:variant rate:rate previousRate:previousRate];
  if (result)
  {
    result->_didSeekInBuffer = buffer;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemSeekDidCompleteEvent;
  [(AVMetricPlayerItemRateChangeEvent *)&v12 encodeWithCoder:coder];
  [coder encodeBool:self->_didSeekInBuffer forKey:@"didSeekInBuffer"];
}

- (AVMetricPlayerItemSeekDidCompleteEvent)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVMetricPlayerItemSeekDidCompleteEvent;
  v4 = [(AVMetricPlayerItemRateChangeEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_didSeekInBuffer = [coder decodeBoolForKey:@"didSeekInBuffer"];
  }

  return v4;
}

@end