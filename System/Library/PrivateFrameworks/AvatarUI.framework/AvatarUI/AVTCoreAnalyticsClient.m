@interface AVTCoreAnalyticsClient
- (void)sendEventForKey:(id)a3 payload:(id)a4;
@end

@implementation AVTCoreAnalyticsClient

- (void)sendEventForKey:(id)a3 payload:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

@end