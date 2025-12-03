@interface MPMovieAccessLogEvent
- (id)_initWithAVItemAccessLogEvent:(id)event;
@end

@implementation MPMovieAccessLogEvent

- (id)_initWithAVItemAccessLogEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = MPMovieAccessLogEvent;
  v6 = [(MPMovieAccessLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

@end