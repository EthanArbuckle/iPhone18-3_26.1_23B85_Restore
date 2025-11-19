@interface ATXAction(AppPredictionUI)
- (id)apui_intent;
@end

@implementation ATXAction(AppPredictionUI)

- (id)apui_intent
{
  v2 = [a1 intent];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 userActivity];
    v4 = [v5 apui_intent];
  }

  return v4;
}

@end