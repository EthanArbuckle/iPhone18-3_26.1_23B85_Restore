@interface IMApplication
- (void)sendEvent:(id)event;
@end

@implementation IMApplication

- (void)sendEvent:(id)event
{
  eventCopy = event;
  +[NSDate timeIntervalSinceReferenceDate];
  [(IMApplication *)self setLastEventDate:?];
  v5.receiver = self;
  v5.super_class = IMApplication;
  [(IMApplication *)&v5 sendEvent:eventCopy];
}

@end