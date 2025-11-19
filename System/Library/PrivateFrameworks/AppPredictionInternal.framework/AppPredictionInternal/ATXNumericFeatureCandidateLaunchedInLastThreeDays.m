@interface ATXNumericFeatureCandidateLaunchedInLastThreeDays
- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXNumericFeatureCandidateLaunchedInLastThreeDays

- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 candidateIdentifiersLaunchAge];
  v8 = [v6 identifier];

  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9 && ([v5 timeContext], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "date"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [v5 timeContext];
    v13 = [v12 date];
    [v13 timeIntervalSinceDate:v9];
    v15 = v14;

    v16 = v15 <= 259200.0 && v15 > 0.0;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  }

  else
  {
    v17 = &unk_283A57CF8;
  }

  return v17;
}

@end