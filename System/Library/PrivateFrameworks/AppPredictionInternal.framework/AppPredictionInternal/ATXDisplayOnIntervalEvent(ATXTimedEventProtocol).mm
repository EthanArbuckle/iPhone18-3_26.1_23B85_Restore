@interface ATXDisplayOnIntervalEvent(ATXTimedEventProtocol)
- (id)eventTime;
@end

@implementation ATXDisplayOnIntervalEvent(ATXTimedEventProtocol)

- (id)eventTime
{
  onInterval = [self onInterval];
  startDate = [onInterval startDate];

  return startDate;
}

@end