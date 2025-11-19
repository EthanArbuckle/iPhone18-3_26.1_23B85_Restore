@interface ATXHomeScreenFocusSuggestionMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
- (id)outcomeToString:(int64_t)a3;
- (unint64_t)cappedForPrivacyWithValue:(int64_t)a3;
@end

@implementation ATXHomeScreenFocusSuggestionMetrics

- (id)coreAnalyticsDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"modeSemanticType";
  v3 = [(ATXHomeScreenFocusSuggestionMetrics *)self modeSemanticType];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"outcome";
  v11[0] = v4;
  v5 = [(ATXHomeScreenFocusSuggestionMetrics *)self outcomeToString:[(ATXHomeScreenFocusSuggestionMetrics *)self outcome]];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXHomeScreenFocusSuggestionMetrics *)self modeSemanticType];
  v5 = [(ATXHomeScreenFocusSuggestionMetrics *)self outcomeToString:[(ATXHomeScreenFocusSuggestionMetrics *)self outcome]];
  v6 = [v3 stringWithFormat:@"ATXHomeScreenFocusSuggestionMetrics modeSemanticType:%@\noutcome:%@\n", v4, v5];

  return v6;
}

- (id)outcomeToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"AbandonedAfter24h";
  }

  else
  {
    return off_2785974E0[a3 - 1];
  }
}

- (unint64_t)cappedForPrivacyWithValue:(int64_t)a3
{
  if (a3 >= 0x14)
  {
    return 20;
  }

  else
  {
    return a3;
  }
}

@end