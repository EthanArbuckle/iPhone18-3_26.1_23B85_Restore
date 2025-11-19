@interface ATXLockscreenSummaryMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenSummaryMetric

- (id)coreAnalyticsDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"editingUiExperienced";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenSummaryMetric editingUiExperienced](self, "editingUiExperienced")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end