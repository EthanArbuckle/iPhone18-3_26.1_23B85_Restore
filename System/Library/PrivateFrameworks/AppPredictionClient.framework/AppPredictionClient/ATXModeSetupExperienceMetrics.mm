@interface ATXModeSetupExperienceMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
- (id)outcomeToString:(int64_t)a3;
- (void)sendToCoreAnalytics;
@end

@implementation ATXModeSetupExperienceMetrics

- (id)coreAnalyticsDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"modeSemanticType";
  v3 = [(ATXModeSetupExperienceMetrics *)self modeSemanticType];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"onboardingOutcome";
  v10[0] = v4;
  v5 = [(ATXModeSetupExperienceMetrics *)self outcomeToString:[(ATXModeSetupExperienceMetrics *)self onboardingOutcome]];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ATXModeSetupExperienceMetrics *)self modeSemanticType];
  v5 = [(ATXModeSetupExperienceMetrics *)self outcomeToString:[(ATXModeSetupExperienceMetrics *)self onboardingOutcome]];
  v6 = [v3 stringWithFormat:@"ATXModeSetupExperienceMetrics modeSemanticType:%@\nonboardingOutcome:%@\n", v4, v5];

  return v6;
}

- (void)sendToCoreAnalytics
{
  v4 = [(ATXModeSetupExperienceMetrics *)self metricName];
  v3 = [(ATXModeSetupExperienceMetrics *)self coreAnalyticsDictionary];
  AnalyticsSendEvent();
}

- (id)outcomeToString:(int64_t)a3
{
  v3 = @"ModifiedSuggestions";
  if (a3 == 1)
  {
    v3 = @"AcceptedSuggestions";
  }

  if (a3 == 2)
  {
    return @"Dismissed";
  }

  else
  {
    return v3;
  }
}

@end