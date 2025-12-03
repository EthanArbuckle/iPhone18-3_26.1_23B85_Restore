@interface ATXAction(AppPredictionUI)
- (id)apui_intent;
@end

@implementation ATXAction(AppPredictionUI)

- (id)apui_intent
{
  intent = [self intent];
  v3 = intent;
  if (intent)
  {
    apui_intent = intent;
  }

  else
  {
    userActivity = [self userActivity];
    apui_intent = [userActivity apui_intent];
  }

  return apui_intent;
}

@end