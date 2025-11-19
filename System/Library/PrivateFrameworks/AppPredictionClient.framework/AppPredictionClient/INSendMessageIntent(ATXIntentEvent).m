@interface INSendMessageIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INSendMessageIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  v5 = [a1 recipients];
  v6 = joinedDisplayNames(v5);
  [v4 setArg1:v6];

  v7 = [a1 serviceName];
  [v4 setArg2:v7];
}

@end