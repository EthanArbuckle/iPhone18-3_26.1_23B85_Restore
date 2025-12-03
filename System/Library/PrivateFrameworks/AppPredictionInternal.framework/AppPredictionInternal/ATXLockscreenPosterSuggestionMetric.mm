@interface ATXLockscreenPosterSuggestionMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenPosterSuggestionMetric

- (id)coreAnalyticsDictionary
{
  v14[5] = *MEMORY[0x277D85DE8];
  v13[0] = @"extensionBundleId";
  extensionBundleId = [(ATXLockscreenPosterSuggestionMetric *)self extensionBundleId];
  null = extensionBundleId;
  if (!extensionBundleId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = null;
  v13[1] = @"section";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenPosterSuggestionMetric section](self, "section")}];
  v14[1] = v5;
  v13[2] = @"outcome";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenPosterSuggestionMetric outcome](self, "outcome")}];
  v14[2] = v6;
  v13[3] = @"sessionId";
  sessionId = [(ATXLockscreenPosterSuggestionMetric *)self sessionId];
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v14[3] = null2;
  v13[4] = @"engaged";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenPosterSuggestionMetric engaged](self, "engaged")}];
  v14[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  if (!sessionId)
  {
  }

  if (!extensionBundleId)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end