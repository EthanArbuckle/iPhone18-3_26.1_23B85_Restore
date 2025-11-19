@interface ATXLockscreenPosterSuggestionMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenPosterSuggestionMetric

- (id)coreAnalyticsDictionary
{
  v14[5] = *MEMORY[0x277D85DE8];
  v13[0] = @"extensionBundleId";
  v3 = [(ATXLockscreenPosterSuggestionMetric *)self extensionBundleId];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v4;
  v13[1] = @"section";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenPosterSuggestionMetric section](self, "section")}];
  v14[1] = v5;
  v13[2] = @"outcome";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenPosterSuggestionMetric outcome](self, "outcome")}];
  v14[2] = v6;
  v13[3] = @"sessionId";
  v7 = [(ATXLockscreenPosterSuggestionMetric *)self sessionId];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v14[3] = v8;
  v13[4] = @"engaged";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenPosterSuggestionMetric engaged](self, "engaged")}];
  v14[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  if (!v7)
  {
  }

  if (!v3)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end