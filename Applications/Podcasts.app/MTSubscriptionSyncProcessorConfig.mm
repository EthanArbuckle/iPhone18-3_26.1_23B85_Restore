@interface MTSubscriptionSyncProcessorConfig
+ (id)configWithSupportsMetrics:(BOOL)a3;
@end

@implementation MTSubscriptionSyncProcessorConfig

+ (id)configWithSupportsMetrics:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTSubscriptionSyncProcessorConfig);
  [(MTSubscriptionSyncProcessorConfig *)v4 setSupportsMetrics:v3];

  return v4;
}

@end