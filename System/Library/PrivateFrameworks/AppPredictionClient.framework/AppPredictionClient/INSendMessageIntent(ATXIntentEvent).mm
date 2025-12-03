@interface INSendMessageIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INSendMessageIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  recipients = [self recipients];
  v6 = joinedDisplayNames(recipients);
  [v4 setArg1:v6];

  serviceName = [self serviceName];
  [v4 setArg2:serviceName];
}

@end