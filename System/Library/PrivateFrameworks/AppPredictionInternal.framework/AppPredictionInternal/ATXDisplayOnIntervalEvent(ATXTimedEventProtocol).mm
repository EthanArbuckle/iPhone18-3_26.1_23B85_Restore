@interface ATXDisplayOnIntervalEvent(ATXTimedEventProtocol)
- (id)eventTime;
@end

@implementation ATXDisplayOnIntervalEvent(ATXTimedEventProtocol)

- (id)eventTime
{
  v1 = [a1 onInterval];
  v2 = [v1 startDate];

  return v2;
}

@end