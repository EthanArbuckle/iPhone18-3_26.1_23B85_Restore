@interface ATXModeSetupExperienceMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
- (id)outcomeToString:(int64_t)string;
- (void)sendToCoreAnalytics;
@end

@implementation ATXModeSetupExperienceMetrics

- (id)coreAnalyticsDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"modeSemanticType";
  modeSemanticType = [(ATXModeSetupExperienceMetrics *)self modeSemanticType];
  null = modeSemanticType;
  if (!modeSemanticType)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"onboardingOutcome";
  v10[0] = null;
  v5 = [(ATXModeSetupExperienceMetrics *)self outcomeToString:[(ATXModeSetupExperienceMetrics *)self onboardingOutcome]];
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!v5)
  {
  }

  if (!modeSemanticType)
  {
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  modeSemanticType = [(ATXModeSetupExperienceMetrics *)self modeSemanticType];
  v5 = [(ATXModeSetupExperienceMetrics *)self outcomeToString:[(ATXModeSetupExperienceMetrics *)self onboardingOutcome]];
  v6 = [v3 stringWithFormat:@"ATXModeSetupExperienceMetrics modeSemanticType:%@\nonboardingOutcome:%@\n", modeSemanticType, v5];

  return v6;
}

- (void)sendToCoreAnalytics
{
  metricName = [(ATXModeSetupExperienceMetrics *)self metricName];
  coreAnalyticsDictionary = [(ATXModeSetupExperienceMetrics *)self coreAnalyticsDictionary];
  AnalyticsSendEvent();
}

- (id)outcomeToString:(int64_t)string
{
  v3 = @"ModifiedSuggestions";
  if (string == 1)
  {
    v3 = @"AcceptedSuggestions";
  }

  if (string == 2)
  {
    return @"Dismissed";
  }

  else
  {
    return v3;
  }
}

@end