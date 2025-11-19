@interface ATXNumericFeatureIsWeekend
- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXNumericFeatureIsWeekend

- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [a3 timeContext];
  v6 = [v4 numberWithBool:{objc_msgSend(v5, "dateInWeekend")}];

  return v6;
}

@end