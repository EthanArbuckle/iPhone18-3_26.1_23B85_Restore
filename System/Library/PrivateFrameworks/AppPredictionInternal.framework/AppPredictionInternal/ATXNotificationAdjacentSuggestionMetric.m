@interface ATXNotificationAdjacentSuggestionMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXNotificationAdjacentSuggestionMetric

- (id)coreAnalyticsDictionary
{
  v26[8] = *MEMORY[0x277D85DE8];
  v25[0] = @"bundleId";
  v3 = [(ATXNotificationAdjacentSuggestionMetric *)self bundleId];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v20 = v3;
  v26[0] = v3;
  v25[1] = @"isAddToMode";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXNotificationAdjacentSuggestionMetric isAddToMode](self, "isAddToMode")}];
  v26[1] = v24;
  v25[2] = @"secureBundleId";
  v23 = [(ATXNotificationAdjacentSuggestionMetric *)self bundleId];
  if (v23)
  {
    v22 = [(ATXNotificationAdjacentSuggestionMetric *)self bundleId];
    v5 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
    v22 = v5;
  }

  v21 = v5;
  v26[2] = v5;
  v25[3] = @"suggestionOutcome";
  v6 = [(ATXNotificationAdjacentSuggestionMetric *)self suggestionOutcome];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v26[3] = v6;
  v25[4] = @"suggestionScope";
  v8 = [(ATXNotificationAdjacentSuggestionMetric *)self suggestionScope];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v26[4] = v9;
  v25[5] = @"suggestionType";
  v10 = [(ATXNotificationAdjacentSuggestionMetric *)self suggestionType];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v26[5] = v11;
  v25[6] = @"targetMode";
  v12 = [(ATXNotificationAdjacentSuggestionMetric *)self targetMode];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v26[6] = v13;
  v25[7] = @"timeToOutcome";
  v14 = MEMORY[0x277CCABB0];
  [(ATXNotificationAdjacentSuggestionMetric *)self timeToOutcome];
  v15 = [v14 numberWithDouble:?];
  v26[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v7)
  {
  }

  if (v23)
  {
  }

  if (!v4)
  {
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end