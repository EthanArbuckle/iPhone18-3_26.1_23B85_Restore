@interface INStartCallIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INStartCallIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  contacts = [self contacts];
  v5 = joinedDisplayNames(contacts);
  [v4 setArg1:v5];
}

@end