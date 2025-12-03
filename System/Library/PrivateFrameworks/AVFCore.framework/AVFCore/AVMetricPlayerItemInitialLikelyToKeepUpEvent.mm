@interface AVMetricPlayerItemInitialLikelyToKeepUpEvent
- (AVMetricPlayerItemInitialLikelyToKeepUpEvent)initWithCoder:(id)coder;
- (AVMetricPlayerItemInitialLikelyToKeepUpEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d variant:(id)variant timeTaken:(double)taken loadedTimeRanges:(id)ranges playlistRequestEvents:(id)events mediaSegmentRequestEvents:(id)self0 contentKeyRequestEvents:(id)self1;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (AVMetricPlayerItemInitialLikelyToKeepUpEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d variant:(id)variant timeTaken:(double)taken loadedTimeRanges:(id)ranges playlistRequestEvents:(id)events mediaSegmentRequestEvents:(id)self0 contentKeyRequestEvents:(id)self1
{
  v15.receiver = self;
  v15.super_class = AVMetricPlayerItemInitialLikelyToKeepUpEvent;
  v14 = *time;
  v12 = [(AVMetricPlayerItemLikelyToKeepUpEvent *)&v15 initWithDate:date mediaTime:&v14 sessionID:d variant:variant timeTaken:ranges loadedTimeRanges:taken];
  if (v12)
  {
    v12->_playlistRequestEvents = events;
    v12->_mediaSegmentRequestEvents = requestEvents;
    v12->_contentKeyRequestEvents = keyRequestEvents;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemInitialLikelyToKeepUpEvent;
  [(AVMetricPlayerItemLikelyToKeepUpEvent *)&v12 encodeWithCoder:coder];
  [coder encodeObject:self->_playlistRequestEvents forKey:@"playlistRequestEvents"];
  [coder encodeObject:self->_mediaSegmentRequestEvents forKey:@"mediaSegmentRequestEvents"];
  [coder encodeObject:self->_contentKeyRequestEvents forKey:@"contentKeyRequestEvents"];
}

- (AVMetricPlayerItemInitialLikelyToKeepUpEvent)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemInitialLikelyToKeepUpEvent;
  v4 = [(AVMetricPlayerItemLikelyToKeepUpEvent *)&v12 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_playlistRequestEvents = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"playlistRequestEvents"}];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v4->_mediaSegmentRequestEvents = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"mediaSegmentRequestEvents"}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v4->_contentKeyRequestEvents = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"contentKeyRequestEvents"}];
  }

  return v4;
}

@end