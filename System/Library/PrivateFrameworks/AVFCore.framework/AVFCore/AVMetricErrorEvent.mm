@interface AVMetricErrorEvent
- (AVMetricErrorEvent)initWithCoder:(id)coder;
- (AVMetricErrorEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d didRecover:(BOOL)recover error:(id)error;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricErrorEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricErrorEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricErrorEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricErrorEvent:%p %@, didRecover:%d error:%@>", self, -[AVMetricEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_didRecover, self->_error];
}

- (AVMetricErrorEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d didRecover:(BOOL)recover error:(id)error
{
  v13.receiver = self;
  v13.super_class = AVMetricErrorEvent;
  v12 = *time;
  v9 = [(AVMetricEvent *)&v13 initWithDate:date mediaTime:&v12 sessionID:d];
  v10 = v9;
  if (v9)
  {
    v9->_didRecover = recover;
    v9->_error = error;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricErrorEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeBool:self->_didRecover forKey:@"didRecover"];
  [coder encodeObject:self->_error forKey:@"error"];
}

- (AVMetricErrorEvent)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVMetricErrorEvent;
  v4 = [(AVMetricEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_didRecover = [coder decodeBoolForKey:@"didRecover"];
    v4->_error = [coder decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  }

  return v4;
}

@end