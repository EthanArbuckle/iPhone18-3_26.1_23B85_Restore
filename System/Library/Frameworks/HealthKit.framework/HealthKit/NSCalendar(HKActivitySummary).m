@interface NSCalendar(HKActivitySummary)
- (id)hk_activitySummaryDateComponentsFromDate:()HKActivitySummary;
@end

@implementation NSCalendar(HKActivitySummary)

- (id)hk_activitySummaryDateComponentsFromDate:()HKActivitySummary
{
  v4 = [a1 components:30 fromDate:a3];
  [v4 setCalendar:a1];

  return v4;
}

@end