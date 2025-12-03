@interface ATXProactiveSuggestionFeedbackResult(iOSUIFeedbackQuery)
- (id)predictionContext;
@end

@implementation ATXProactiveSuggestionFeedbackResult(iOSUIFeedbackQuery)

- (id)predictionContext
{
  context = [self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [self context];
  }

  else
  {
    context2 = 0;
  }

  return context2;
}

@end