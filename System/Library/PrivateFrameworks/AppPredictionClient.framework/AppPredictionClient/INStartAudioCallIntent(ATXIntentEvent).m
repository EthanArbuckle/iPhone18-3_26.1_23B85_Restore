@interface INStartAudioCallIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INStartAudioCallIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  v6 = [a1 contacts];
  v5 = joinedDisplayNames(v6);
  [v4 setArg1:v5];
}

@end