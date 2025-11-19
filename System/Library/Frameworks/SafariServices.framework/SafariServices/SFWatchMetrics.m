@interface SFWatchMetrics
+ (SFWatchMetrics)currentMetrics;
- (SFWatchMetrics)init;
@end

@implementation SFWatchMetrics

+ (SFWatchMetrics)currentMetrics
{
  v2 = currentMetrics_currentMetrics;
  if (!currentMetrics_currentMetrics)
  {
    v4 = objc_alloc_init(SFWatchMetrics);
    v5 = currentMetrics_currentMetrics;
    currentMetrics_currentMetrics = v4;

    v2 = currentMetrics_currentMetrics;
  }

  return v2;
}

- (SFWatchMetrics)init
{
  v6.receiver = self;
  v6.super_class = SFWatchMetrics;
  v2 = [(SFWatchMetrics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end