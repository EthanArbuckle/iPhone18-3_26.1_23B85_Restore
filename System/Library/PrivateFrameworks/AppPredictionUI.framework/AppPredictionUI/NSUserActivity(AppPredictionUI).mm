@interface NSUserActivity(AppPredictionUI)
- (id)apui_intent;
@end

@implementation NSUserActivity(AppPredictionUI)

- (id)apui_intent
{
  interaction = [self interaction];
  apui_intent = [interaction apui_intent];

  return apui_intent;
}

@end