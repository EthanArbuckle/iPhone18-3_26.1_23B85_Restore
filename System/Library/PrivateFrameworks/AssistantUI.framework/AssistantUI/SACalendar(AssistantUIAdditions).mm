@interface SACalendar(AssistantUIAdditions)
- (id)afui_timeZone;
@end

@implementation SACalendar(AssistantUIAdditions)

- (id)afui_timeZone
{
  v1 = MEMORY[0x277CBEBB0];
  timeZoneId = [self timeZoneId];
  v3 = [v1 timeZoneWithName:timeZoneId];

  return v3;
}

@end