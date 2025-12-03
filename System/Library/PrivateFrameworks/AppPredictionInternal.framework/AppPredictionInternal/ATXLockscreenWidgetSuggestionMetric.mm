@interface ATXLockscreenWidgetSuggestionMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenWidgetSuggestionMetric

- (id)coreAnalyticsDictionary
{
  v18[7] = *MEMORY[0x277D85DE8];
  v17[0] = @"extensionBundleId";
  extensionBundleId = [(ATXLockscreenWidgetSuggestionMetric *)self extensionBundleId];
  v4 = extensionBundleId;
  if (!extensionBundleId)
  {
    extensionBundleId = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = extensionBundleId;
  v17[1] = @"family";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetSuggestionMetric family](self, "family", extensionBundleId)}];
  v18[1] = v5;
  v17[2] = @"kind";
  kind = [(ATXLockscreenWidgetSuggestionMetric *)self kind];
  null = kind;
  if (!kind)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = null;
  v17[3] = @"reason";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetSuggestionMetric reason](self, "reason")}];
  v18[3] = v8;
  v17[4] = @"outcome";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenWidgetSuggestionMetric outcome](self, "outcome")}];
  v18[4] = v9;
  v17[5] = @"sessionId";
  sessionId = [(ATXLockscreenWidgetSuggestionMetric *)self sessionId];
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v18[5] = null2;
  v17[6] = @"numEngaged";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXLockscreenWidgetSuggestionMetric numEngaged](self, "numEngaged")}];
  v18[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];

  if (!sessionId)
  {
  }

  if (!kind)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end