@interface AVMetricDownloadSummaryEvent
- (AVMetricDownloadSummaryEvent)initWithCoder:(id)coder;
- (AVMetricDownloadSummaryEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d errorEvent:(id)event recoverableErrorCount:(int64_t)count mediaResourceRequestCount:(int64_t)requestCount bytesDownloadedCount:(int64_t)downloadedCount downloadDuration:(double)self0 variants:(id)self1;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricDownloadSummaryEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricDownloadSummaryEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (AVMetricDownloadSummaryEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d errorEvent:(id)event recoverableErrorCount:(int64_t)count mediaResourceRequestCount:(int64_t)requestCount bytesDownloadedCount:(int64_t)downloadedCount downloadDuration:(double)self0 variants:(id)self1
{
  v18.receiver = self;
  v18.super_class = AVMetricDownloadSummaryEvent;
  v17 = *time;
  v15 = [(AVMetricEvent *)&v18 initWithDate:date mediaTime:&v17 sessionID:d];
  if (v15)
  {
    v15->_errorEvent = event;
    v15->_recoverableErrorCount = count;
    v15->_mediaResourceRequestCount = requestCount;
    v15->_bytesDownloadedCount = downloadedCount;
    v15->_downloadDuration = duration;
    v15->_variants = variants;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricDownloadSummaryEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeObject:self->_errorEvent forKey:@"errorEvent"];
  [coder encodeInteger:self->_recoverableErrorCount forKey:@"recoverableErrorCount"];
  [coder encodeInteger:self->_mediaResourceRequestCount forKey:@"mediaResourceRequestCount"];
  [coder encodeInteger:self->_bytesDownloadedCount forKey:@"bytesDownloadedCount"];
  [coder encodeDouble:@"downloadDuration" forKey:self->_downloadDuration];
  [coder encodeObject:self->_variants forKey:@"variants"];
}

- (AVMetricDownloadSummaryEvent)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = AVMetricDownloadSummaryEvent;
  v4 = [(AVMetricEvent *)&v9 initWithCoder:?];
  if (v4)
  {
    v4->_errorEvent = [coder decodeObjectOfClass:objc_opt_class() forKey:@"errorEvent"];
    v4->_recoverableErrorCount = [coder decodeIntegerForKey:@"recoverableErrorCount"];
    v4->_mediaResourceRequestCount = [coder decodeIntegerForKey:@"mediaResourceRequestCount"];
    v4->_bytesDownloadedCount = [coder decodeIntegerForKey:@"bytesDownloadedCount"];
    [coder decodeDoubleForKey:@"downloadDuration"];
    v4->_downloadDuration = v5;
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v4->_variants = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"variants"}];
  }

  return v4;
}

@end