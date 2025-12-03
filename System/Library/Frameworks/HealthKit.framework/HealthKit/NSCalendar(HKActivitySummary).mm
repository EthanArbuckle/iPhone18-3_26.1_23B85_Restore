@interface NSCalendar(HKActivitySummary)
- (id)hk_activitySummaryDateComponentsFromDate:()HKActivitySummary;
@end

@implementation NSCalendar(HKActivitySummary)

- (id)hk_activitySummaryDateComponentsFromDate:()HKActivitySummary
{
  v4 = [self components:30 fromDate:a3];
  [v4 setCalendar:self];

  return v4;
}

@end