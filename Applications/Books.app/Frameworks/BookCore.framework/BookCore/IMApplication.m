@interface IMApplication
- (void)sendEvent:(id)a3;
@end

@implementation IMApplication

- (void)sendEvent:(id)a3
{
  v4 = a3;
  +[NSDate timeIntervalSinceReferenceDate];
  [(IMApplication *)self setLastEventDate:?];
  v5.receiver = self;
  v5.super_class = IMApplication;
  [(IMApplication *)&v5 sendEvent:v4];
}

@end