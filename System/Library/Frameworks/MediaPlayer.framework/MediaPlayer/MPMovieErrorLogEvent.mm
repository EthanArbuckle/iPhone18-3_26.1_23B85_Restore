@interface MPMovieErrorLogEvent
- (id)_initWithAVItemErrorLogEvent:(id)a3;
@end

@implementation MPMovieErrorLogEvent

- (id)_initWithAVItemErrorLogEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPMovieErrorLogEvent;
  v6 = [(MPMovieErrorLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
  }

  return v7;
}

@end