@interface ATXNumericFeatureIsWeekend
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXNumericFeatureIsWeekend

- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate
{
  v4 = MEMORY[0x277CCABB0];
  timeContext = [context timeContext];
  v6 = [v4 numberWithBool:{objc_msgSend(timeContext, "dateInWeekend")}];

  return v6;
}

@end