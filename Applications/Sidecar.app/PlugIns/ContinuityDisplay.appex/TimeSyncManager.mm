@interface TimeSyncManager
- (void)interruptedConnectionForClockManager:(id)manager;
@end

@implementation TimeSyncManager

- (void)interruptedConnectionForClockManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_100051B28();
}

@end