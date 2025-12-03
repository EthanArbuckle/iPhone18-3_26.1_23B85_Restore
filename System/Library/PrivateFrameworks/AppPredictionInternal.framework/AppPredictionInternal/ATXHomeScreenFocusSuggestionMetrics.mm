@interface ATXHomeScreenFocusSuggestionMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
- (id)outcomeToString:(int64_t)string;
- (unint64_t)cappedForPrivacyWithValue:(int64_t)value;
@end

@implementation ATXHomeScreenFocusSuggestionMetrics

- (id)coreAnalyticsDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"modeSemanticType";
  modeSemanticType = [(ATXHomeScreenFocusSuggestionMetrics *)self modeSemanticType];
  null = modeSemanticType;
  if (!modeSemanticType)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"outcome";
  v11[0] = null;
  v5 = [(ATXHomeScreenFocusSuggestionMetrics *)self outcomeToString:[(ATXHomeScreenFocusSuggestionMetrics *)self outcome]];
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!modeSemanticType)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  modeSemanticType = [(ATXHomeScreenFocusSuggestionMetrics *)self modeSemanticType];
  v5 = [(ATXHomeScreenFocusSuggestionMetrics *)self outcomeToString:[(ATXHomeScreenFocusSuggestionMetrics *)self outcome]];
  v6 = [v3 stringWithFormat:@"ATXHomeScreenFocusSuggestionMetrics modeSemanticType:%@\noutcome:%@\n", modeSemanticType, v5];

  return v6;
}

- (id)outcomeToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"AbandonedAfter24h";
  }

  else
  {
    return off_2785974E0[string - 1];
  }
}

- (unint64_t)cappedForPrivacyWithValue:(int64_t)value
{
  if (value >= 0x14)
  {
    return 20;
  }

  else
  {
    return value;
  }
}

@end