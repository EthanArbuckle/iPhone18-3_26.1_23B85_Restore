@interface AVMetricPlayerItemInitialLikelyToKeepUpEvent
- (AVMetricPlayerItemInitialLikelyToKeepUpEvent)initWithCoder:(id)a3;
- (AVMetricPlayerItemInitialLikelyToKeepUpEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 variant:(id)a6 timeTaken:(double)a7 loadedTimeRanges:(id)a8 playlistRequestEvents:(id)a9 mediaSegmentRequestEvents:(id)a10 contentKeyRequestEvents:(id)a11;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVMetricPlayerItemInitialLikelyToKeepUpEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemInitialLikelyToKeepUpEvent;
  [(AVMetricPlayerItemLikelyToKeepUpEvent *)&v3 dealloc];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemInitialLikelyToKeepUpEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricPlayerItemInitialLikelyToKeepUpEvent:%p %@ playlistRequestEvents:%@ mediaSegmentRequestEvents:%@ contentKeyRequestEvents:%@>", self, -[AVMetricPlayerItemLikelyToKeepUpEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_playlistRequestEvents, self->_mediaSegmentRequestEvents, self->_contentKeyRequestEvents];
}

- (AVMetricPlayerItemInitialLikelyToKeepUpEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 variant:(id)a6 timeTaken:(double)a7 loadedTimeRanges:(id)a8 playlistRequestEvents:(id)a9 mediaSegmentRequestEvents:(id)a10 contentKeyRequestEvents:(id)a11
{
  v15.receiver = self;
  v15.super_class = AVMetricPlayerItemInitialLikelyToKeepUpEvent;
  v14 = *a4;
  v12 = [(AVMetricPlayerItemLikelyToKeepUpEvent *)&v15 initWithDate:a3 mediaTime:&v14 sessionID:a5 variant:a6 timeTaken:a8 loadedTimeRanges:a7];
  if (v12)
  {
    v12->_playlistRequestEvents = a9;
    v12->_mediaSegmentRequestEvents = a10;
    v12->_contentKeyRequestEvents = a11;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemInitialLikelyToKeepUpEvent;
  [(AVMetricPlayerItemLikelyToKeepUpEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeObject:self->_playlistRequestEvents forKey:@"playlistRequestEvents"];
  [a3 encodeObject:self->_mediaSegmentRequestEvents forKey:@"mediaSegmentRequestEvents"];
  [a3 encodeObject:self->_contentKeyRequestEvents forKey:@"contentKeyRequestEvents"];
}

- (AVMetricPlayerItemInitialLikelyToKeepUpEvent)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemInitialLikelyToKeepUpEvent;
  v4 = [(AVMetricPlayerItemLikelyToKeepUpEvent *)&v12 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_playlistRequestEvents = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"playlistRequestEvents"}];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v4->_mediaSegmentRequestEvents = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"mediaSegmentRequestEvents"}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v4->_contentKeyRequestEvents = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"contentKeyRequestEvents"}];
  }

  return v4;
}

@end