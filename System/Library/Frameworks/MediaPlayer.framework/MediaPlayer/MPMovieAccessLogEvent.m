@interface MPMovieAccessLogEvent
- (id)_initWithAVItemAccessLogEvent:(id)a3;
@end

@implementation MPMovieAccessLogEvent

- (id)_initWithAVItemAccessLogEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPMovieAccessLogEvent;
  v6 = [(MPMovieAccessLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
  }

  return v7;
}

@end