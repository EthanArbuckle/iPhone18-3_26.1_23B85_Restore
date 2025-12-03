@interface AVTCoreAnalyticsClient
- (void)sendEventForKey:(id)key payload:(id)payload;
@end

@implementation AVTCoreAnalyticsClient

- (void)sendEventForKey:(id)key payload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  AnalyticsSendEventLazy();
}

@end