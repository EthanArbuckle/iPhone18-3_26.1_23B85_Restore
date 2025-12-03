@interface MPMovieErrorLogEvent
- (id)_initWithAVItemErrorLogEvent:(id)event;
@end

@implementation MPMovieErrorLogEvent

- (id)_initWithAVItemErrorLogEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = MPMovieErrorLogEvent;
  v6 = [(MPMovieErrorLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

@end