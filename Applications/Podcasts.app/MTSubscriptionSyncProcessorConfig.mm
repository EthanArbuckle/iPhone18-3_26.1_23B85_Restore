@interface MTSubscriptionSyncProcessorConfig
+ (id)configWithSupportsMetrics:(BOOL)metrics;
@end

@implementation MTSubscriptionSyncProcessorConfig

+ (id)configWithSupportsMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  v4 = objc_alloc_init(MTSubscriptionSyncProcessorConfig);
  [(MTSubscriptionSyncProcessorConfig *)v4 setSupportsMetrics:metricsCopy];

  return v4;
}

@end