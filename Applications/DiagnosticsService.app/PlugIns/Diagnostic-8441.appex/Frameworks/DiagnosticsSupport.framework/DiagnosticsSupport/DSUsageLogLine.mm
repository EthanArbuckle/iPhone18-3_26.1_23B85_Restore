@interface DSUsageLogLine
- (BOOL)isOffPower;
- (BOOL)isOnPower;
- (BOOL)isReset;
@end

@implementation DSUsageLogLine

- (BOOL)isReset
{
  eventType = [(DSUsageLogLine *)self eventType];
  v3 = [eventType isEqualToString:@"1"];

  return v3;
}

- (BOOL)isOnPower
{
  eventType = [(DSUsageLogLine *)self eventType];
  v3 = [eventType isEqualToString:@"2"];

  return v3;
}

- (BOOL)isOffPower
{
  eventType = [(DSUsageLogLine *)self eventType];
  v3 = [eventType isEqualToString:@"3"];

  return v3;
}

@end