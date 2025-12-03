@interface ATXNotificationAdjacentSuggestionMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXNotificationAdjacentSuggestionMetric

- (id)coreAnalyticsDictionary
{
  v26[8] = *MEMORY[0x277D85DE8];
  v25[0] = @"bundleId";
  bundleId = [(ATXNotificationAdjacentSuggestionMetric *)self bundleId];
  v4 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x277CBEB68] null];
  }

  v20 = bundleId;
  v26[0] = bundleId;
  v25[1] = @"isAddToMode";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXNotificationAdjacentSuggestionMetric isAddToMode](self, "isAddToMode")}];
  v26[1] = v24;
  v25[2] = @"secureBundleId";
  bundleId2 = [(ATXNotificationAdjacentSuggestionMetric *)self bundleId];
  if (bundleId2)
  {
    bundleId3 = [(ATXNotificationAdjacentSuggestionMetric *)self bundleId];
    null = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    bundleId3 = null;
  }

  v21 = null;
  v26[2] = null;
  v25[3] = @"suggestionOutcome";
  suggestionOutcome = [(ATXNotificationAdjacentSuggestionMetric *)self suggestionOutcome];
  v7 = suggestionOutcome;
  if (!suggestionOutcome)
  {
    suggestionOutcome = [MEMORY[0x277CBEB68] null];
  }

  v26[3] = suggestionOutcome;
  v25[4] = @"suggestionScope";
  suggestionScope = [(ATXNotificationAdjacentSuggestionMetric *)self suggestionScope];
  null2 = suggestionScope;
  if (!suggestionScope)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v26[4] = null2;
  v25[5] = @"suggestionType";
  suggestionType = [(ATXNotificationAdjacentSuggestionMetric *)self suggestionType];
  null3 = suggestionType;
  if (!suggestionType)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v26[5] = null3;
  v25[6] = @"targetMode";
  targetMode = [(ATXNotificationAdjacentSuggestionMetric *)self targetMode];
  null4 = targetMode;
  if (!targetMode)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v26[6] = null4;
  v25[7] = @"timeToOutcome";
  v14 = MEMORY[0x277CCABB0];
  [(ATXNotificationAdjacentSuggestionMetric *)self timeToOutcome];
  v15 = [v14 numberWithDouble:?];
  v26[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];

  if (!targetMode)
  {
  }

  if (!suggestionType)
  {
  }

  if (!suggestionScope)
  {
  }

  if (!v7)
  {
  }

  if (bundleId2)
  {
  }

  if (!v4)
  {
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end