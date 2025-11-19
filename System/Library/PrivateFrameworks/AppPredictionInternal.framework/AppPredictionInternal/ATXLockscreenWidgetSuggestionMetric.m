@interface ATXLockscreenWidgetSuggestionMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenWidgetSuggestionMetric

- (id)coreAnalyticsDictionary
{
  v18[7] = *MEMORY[0x277D85DE8];
  v17[0] = @"extensionBundleId";
  v3 = [(ATXLockscreenWidgetSuggestionMetric *)self extensionBundleId];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = v3;
  v17[1] = @"family";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetSuggestionMetric family](self, "family", v3)}];
  v18[1] = v5;
  v17[2] = @"kind";
  v6 = [(ATXLockscreenWidgetSuggestionMetric *)self kind];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = v7;
  v17[3] = @"reason";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetSuggestionMetric reason](self, "reason")}];
  v18[3] = v8;
  v17[4] = @"outcome";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenWidgetSuggestionMetric outcome](self, "outcome")}];
  v18[4] = v9;
  v17[5] = @"sessionId";
  v10 = [(ATXLockscreenWidgetSuggestionMetric *)self sessionId];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v18[5] = v11;
  v17[6] = @"numEngaged";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXLockscreenWidgetSuggestionMetric numEngaged](self, "numEngaged")}];
  v18[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];

  if (!v10)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end