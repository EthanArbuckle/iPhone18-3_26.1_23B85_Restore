@interface _BSUIDailyReadingLayerConfig
- (BOOL)isEqualToConfig:(id)a3;
- (_BSUIDailyReadingLayerConfig)initWithMetrics:(id)a3 timeTextYOffset:(double)a4 micaFileProvider:(id)a5;
@end

@implementation _BSUIDailyReadingLayerConfig

- (_BSUIDailyReadingLayerConfig)initWithMetrics:(id)a3 timeTextYOffset:(double)a4 micaFileProvider:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _BSUIDailyReadingLayerConfig;
  v11 = [(_BSUIDailyReadingLayerConfig *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metrics, a3);
    v12->_timeTextYOffset = a4;
    objc_storeStrong(&v12->_micaFileProvider, a5);
  }

  return v12;
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TUIDynamicCast();

  return v5 == self;
}

@end