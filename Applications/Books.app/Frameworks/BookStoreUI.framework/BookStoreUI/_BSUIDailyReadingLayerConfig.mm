@interface _BSUIDailyReadingLayerConfig
- (BOOL)isEqualToConfig:(id)config;
- (_BSUIDailyReadingLayerConfig)initWithMetrics:(id)metrics timeTextYOffset:(double)offset micaFileProvider:(id)provider;
@end

@implementation _BSUIDailyReadingLayerConfig

- (_BSUIDailyReadingLayerConfig)initWithMetrics:(id)metrics timeTextYOffset:(double)offset micaFileProvider:(id)provider
{
  metricsCopy = metrics;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = _BSUIDailyReadingLayerConfig;
  v11 = [(_BSUIDailyReadingLayerConfig *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metrics, metrics);
    v12->_timeTextYOffset = offset;
    objc_storeStrong(&v12->_micaFileProvider, provider);
  }

  return v12;
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  objc_opt_class();
  v5 = TUIDynamicCast();

  return v5 == self;
}

@end