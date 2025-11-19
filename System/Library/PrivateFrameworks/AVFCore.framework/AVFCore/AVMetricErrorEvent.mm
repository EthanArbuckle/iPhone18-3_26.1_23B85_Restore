@interface AVMetricErrorEvent
- (AVMetricErrorEvent)initWithCoder:(id)a3;
- (AVMetricErrorEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 didRecover:(BOOL)a6 error:(id)a7;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (AVMetricErrorEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 didRecover:(BOOL)a6 error:(id)a7
{
  v13.receiver = self;
  v13.super_class = AVMetricErrorEvent;
  v12 = *a4;
  v9 = [(AVMetricEvent *)&v13 initWithDate:a3 mediaTime:&v12 sessionID:a5];
  v10 = v9;
  if (v9)
  {
    v9->_didRecover = a6;
    v9->_error = a7;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricErrorEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeBool:self->_didRecover forKey:@"didRecover"];
  [a3 encodeObject:self->_error forKey:@"error"];
}

- (AVMetricErrorEvent)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMetricErrorEvent;
  v4 = [(AVMetricEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_didRecover = [a3 decodeBoolForKey:@"didRecover"];
    v4->_error = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  }

  return v4;
}

@end