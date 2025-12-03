@interface ATXUserEducationSuggestionFeedbackMetricCustomizeFocus
- (id)coreAnalyticsDictionary;
@end

@implementation ATXUserEducationSuggestionFeedbackMetricCustomizeFocus

- (id)coreAnalyticsDictionary
{
  v10.receiver = self;
  v10.super_class = ATXUserEducationSuggestionFeedbackMetricCustomizeFocus;
  coreAnalyticsDictionary = [(ATXUserEducationSuggestionFeedbackMetric *)&v10 coreAnalyticsDictionary];
  v4 = [coreAnalyticsDictionary mutableCopy];

  feedback = [(ATXUserEducationSuggestionFeedbackMetric *)self feedback];
  suggestion = [feedback suggestion];

  [suggestion modeSemanticType];
  v7 = DNDModeSemanticTypeToString();
  if (v7)
  {
    [v4 setObject:v7 forKey:@"modeSemanticType"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v4 setObject:null forKey:@"modeSemanticType"];
  }

  return v4;
}

@end