@interface App
- (void)sendEvent:(id)event;
@end

@implementation App

- (void)sendEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_100001F70(eventCopy);
}

@end