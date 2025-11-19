@interface ATXDigestOnboardingSuggestionMetrics
- (id)coreAnalyticsDictionary;
@end

@implementation ATXDigestOnboardingSuggestionMetrics

- (id)coreAnalyticsDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"sessionUUID";
  v3 = [(ATXDigestOnboardingSuggestionMetrics *)self sessionUUID];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v4;
  v12[1] = @"suggestionOutcome";
  v5 = [(ATXDigestOnboardingSuggestionMetrics *)self outcome];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v6;
  v12[2] = @"timeToResolution";
  v7 = MEMORY[0x277CCABB0];
  [(ATXDigestOnboardingSuggestionMetrics *)self timeToResolution];
  v8 = [v7 numberWithDouble:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end