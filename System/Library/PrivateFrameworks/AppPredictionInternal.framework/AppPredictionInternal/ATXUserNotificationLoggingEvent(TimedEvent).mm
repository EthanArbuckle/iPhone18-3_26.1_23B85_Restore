@interface ATXUserNotificationLoggingEvent(TimedEvent)
- (uint64_t)eventTime;
@end

@implementation ATXUserNotificationLoggingEvent(TimedEvent)

- (uint64_t)eventTime
{
  v1 = MEMORY[0x277CBEAA8];
  [self timestamp];

  return [v1 dateWithTimeIntervalSinceReferenceDate:?];
}

@end