@interface AVMetricDownloadSummaryEvent
- (AVMetricDownloadSummaryEvent)initWithCoder:(id)a3;
- (AVMetricDownloadSummaryEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 errorEvent:(id)a6 recoverableErrorCount:(int64_t)a7 mediaResourceRequestCount:(int64_t)a8 bytesDownloadedCount:(int64_t)a9 downloadDuration:(double)a10 variants:(id)a11;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVMetricDownloadSummaryEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricDownloadSummaryEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (AVMetricDownloadSummaryEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 errorEvent:(id)a6 recoverableErrorCount:(int64_t)a7 mediaResourceRequestCount:(int64_t)a8 bytesDownloadedCount:(int64_t)a9 downloadDuration:(double)a10 variants:(id)a11
{
  v18.receiver = self;
  v18.super_class = AVMetricDownloadSummaryEvent;
  v17 = *a4;
  v15 = [(AVMetricEvent *)&v18 initWithDate:a3 mediaTime:&v17 sessionID:a5];
  if (v15)
  {
    v15->_errorEvent = a6;
    v15->_recoverableErrorCount = a7;
    v15->_mediaResourceRequestCount = a8;
    v15->_bytesDownloadedCount = a9;
    v15->_downloadDuration = a10;
    v15->_variants = a11;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricDownloadSummaryEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeObject:self->_errorEvent forKey:@"errorEvent"];
  [a3 encodeInteger:self->_recoverableErrorCount forKey:@"recoverableErrorCount"];
  [a3 encodeInteger:self->_mediaResourceRequestCount forKey:@"mediaResourceRequestCount"];
  [a3 encodeInteger:self->_bytesDownloadedCount forKey:@"bytesDownloadedCount"];
  [a3 encodeDouble:@"downloadDuration" forKey:self->_downloadDuration];
  [a3 encodeObject:self->_variants forKey:@"variants"];
}

- (AVMetricDownloadSummaryEvent)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVMetricDownloadSummaryEvent;
  v4 = [(AVMetricEvent *)&v9 initWithCoder:?];
  if (v4)
  {
    v4->_errorEvent = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"errorEvent"];
    v4->_recoverableErrorCount = [a3 decodeIntegerForKey:@"recoverableErrorCount"];
    v4->_mediaResourceRequestCount = [a3 decodeIntegerForKey:@"mediaResourceRequestCount"];
    v4->_bytesDownloadedCount = [a3 decodeIntegerForKey:@"bytesDownloadedCount"];
    [a3 decodeDoubleForKey:@"downloadDuration"];
    v4->_downloadDuration = v5;
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v4->_variants = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"variants"}];
  }

  return v4;
}

@end