@interface ATXNumericFeatureCandidateLaunchedInLastThirtyMinutes
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXNumericFeatureCandidateLaunchedInLastThirtyMinutes

- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  candidateCopy = candidate;
  candidateIdentifiersLaunchAge = [contextCopy candidateIdentifiersLaunchAge];
  identifier = [candidateCopy identifier];

  v9 = [candidateIdentifiersLaunchAge objectForKeyedSubscript:identifier];

  if (v9 && ([contextCopy timeContext], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "date"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    timeContext = [contextCopy timeContext];
    date = [timeContext date];
    [date timeIntervalSinceDate:v9];
    v15 = v14;

    v16 = v15 <= 1800.0 && v15 > 0.0;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  }

  else
  {
    v17 = &unk_283A57CF8;
  }

  return v17;
}

@end