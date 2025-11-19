@interface ATXUserEducationSuggestionFeedbackMetricCustomizeFocus
- (id)coreAnalyticsDictionary;
@end

@implementation ATXUserEducationSuggestionFeedbackMetricCustomizeFocus

- (id)coreAnalyticsDictionary
{
  v10.receiver = self;
  v10.super_class = ATXUserEducationSuggestionFeedbackMetricCustomizeFocus;
  v3 = [(ATXUserEducationSuggestionFeedbackMetric *)&v10 coreAnalyticsDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(ATXUserEducationSuggestionFeedbackMetric *)self feedback];
  v6 = [v5 suggestion];

  [v6 modeSemanticType];
  v7 = DNDModeSemanticTypeToString();
  if (v7)
  {
    [v4 setObject:v7 forKey:@"modeSemanticType"];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB68] null];
    [v4 setObject:v8 forKey:@"modeSemanticType"];
  }

  return v4;
}

@end