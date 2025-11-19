@interface ATXProactiveSuggestionFeedbackResult(iOSUIFeedbackQuery)
- (id)predictionContext;
@end

@implementation ATXProactiveSuggestionFeedbackResult(iOSUIFeedbackQuery)

- (id)predictionContext
{
  v2 = [a1 context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [a1 context];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end