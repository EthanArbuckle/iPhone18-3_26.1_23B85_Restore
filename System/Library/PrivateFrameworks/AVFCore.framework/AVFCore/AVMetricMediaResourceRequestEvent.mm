@interface AVMetricMediaResourceRequestEvent
- (AVMetricMediaResourceRequestEvent)initWithCoder:(id)coder;
- (AVMetricMediaResourceRequestEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d url:(id)url serverAddress:(id)address requestStartTime:(id)startTime requestEndTime:(id)endTime responseStartTime:(id)self0 responseEndTime:(id)self1 byteRange:(_NSRange)self2 readFromCache:(BOOL)self3 errorEvent:(id)self4 networkTransactionMetrics:(id)self5;
- (_NSRange)byteRange;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricMediaResourceRequestEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricMediaResourceRequestEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricMediaResourceRequestEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricMediaResourceRequestEvent:%p %@ url:%@ serverAddress:%@ requestStartTime:%@ requestEndTime:%@ responseStartTime:%@ responseEndTime:%@ error:%@ byteRange:(%lu, %lu) readFromCache:%d networkTransactionMetrics:%@>", self, -[AVMetricEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_url, self->_serverAddress, self->_requestStartTime, self->_requestEndTime, self->_responseStartTime, self->_responseEndTime, -[AVMetricErrorEvent debugDescription](self->_errorEvent, "debugDescription"), self->_byteRange.location, self->_byteRange.length, self->_readFromCache, -[NSURLSessionTaskMetrics debugDescription](self->_networkTransactionMetrics, "debugDescription")];
}

- (AVMetricMediaResourceRequestEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d url:(id)url serverAddress:(id)address requestStartTime:(id)startTime requestEndTime:(id)endTime responseStartTime:(id)self0 responseEndTime:(id)self1 byteRange:(_NSRange)self2 readFromCache:(BOOL)self3 errorEvent:(id)self4 networkTransactionMetrics:(id)self5
{
  v21.receiver = self;
  v21.super_class = AVMetricMediaResourceRequestEvent;
  v20 = *time;
  v18 = [(AVMetricEvent *)&v21 initWithDate:date mediaTime:&v20 sessionID:d];
  if (v18)
  {
    v18->_url = url;
    v18->_serverAddress = address;
    v18->_requestStartTime = startTime;
    v18->_requestEndTime = endTime;
    v18->_responseStartTime = responseStartTime;
    v18->_responseEndTime = responseEndTime;
    v18->_byteRange = range;
    v18->_readFromCache = cache;
    v18->_errorEvent = event;
    v18->_networkTransactionMetrics = metrics;
  }

  return v18;
}

- (_NSRange)byteRange
{
  p_byteRange = &self->_byteRange;
  location = self->_byteRange.location;
  length = p_byteRange->length;
  result.length = length;
  result.location = location;
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
  v12.super_class = AVMetricMediaResourceRequestEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeObject:self->_url forKey:@"url"];
  [coder encodeObject:self->_serverAddress forKey:@"serverAddress"];
  [coder encodeObject:self->_requestStartTime forKey:@"requestStartTime"];
  [coder encodeObject:self->_requestEndTime forKey:@"requestEndTime"];
  [coder encodeObject:self->_responseStartTime forKey:@"responseStartTime"];
  [coder encodeObject:self->_responseEndTime forKey:@"responseEndTime"];
  [coder encodeInteger:self->_byteRange.length forKey:@"byteRangeLength"];
  [coder encodeInteger:self->_byteRange.location forKey:@"byteRangeLocation"];
  [coder encodeBool:self->_readFromCache forKey:@"readFromCache"];
  [coder encodeObject:self->_errorEvent forKey:@"errorEvent"];
  [coder encodeObject:self->_networkTransactionMetrics forKey:@"networkTransactionMetrics"];
}

- (AVMetricMediaResourceRequestEvent)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVMetricMediaResourceRequestEvent;
  v4 = [(AVMetricEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_url = [coder decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v4->_serverAddress = [coder decodeObjectOfClass:objc_opt_class() forKey:@"serverAddress"];
    v4->_requestStartTime = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestStartTime"];
    v4->_requestEndTime = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestEndTime"];
    v4->_responseStartTime = [coder decodeObjectOfClass:objc_opt_class() forKey:@"responseStartTime"];
    v4->_responseEndTime = [coder decodeObjectOfClass:objc_opt_class() forKey:@"responseEndTime"];
    v4->_byteRange.length = [coder decodeIntegerForKey:@"byteRangeLength"];
    v4->_byteRange.location = [coder decodeIntegerForKey:@"byteRangeLocation"];
    v4->_readFromCache = [coder decodeBoolForKey:@"readFromCache"];
    v4->_errorEvent = [coder decodeObjectOfClass:objc_opt_class() forKey:@"errorEvent"];
    v4->_networkTransactionMetrics = [coder decodeObjectOfClass:objc_opt_class() forKey:@"networkTransactionMetrics"];
  }

  return v4;
}

@end