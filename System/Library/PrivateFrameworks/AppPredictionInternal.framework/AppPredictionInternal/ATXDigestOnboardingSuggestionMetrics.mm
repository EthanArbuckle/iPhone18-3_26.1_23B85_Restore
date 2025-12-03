@interface ATXDigestOnboardingSuggestionMetrics
- (id)coreAnalyticsDictionary;
@end

@implementation ATXDigestOnboardingSuggestionMetrics

- (id)coreAnalyticsDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"sessionUUID";
  sessionUUID = [(ATXDigestOnboardingSuggestionMetrics *)self sessionUUID];
  null = sessionUUID;
  if (!sessionUUID)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = null;
  v12[1] = @"suggestionOutcome";
  outcome = [(ATXDigestOnboardingSuggestionMetrics *)self outcome];
  null2 = outcome;
  if (!outcome)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = null2;
  v12[2] = @"timeToResolution";
  v7 = MEMORY[0x277CCABB0];
  [(ATXDigestOnboardingSuggestionMetrics *)self timeToResolution];
  v8 = [v7 numberWithDouble:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  if (!outcome)
  {
  }

  if (!sessionUUID)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end