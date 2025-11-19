@interface MTLCommandQueueSPIStats
- (MTLCommandQueueSPIStats)initWithValues:(id)a3;
@end

@implementation MTLCommandQueueSPIStats

- (MTLCommandQueueSPIStats)initWithValues:(id)a3
{
  v5.receiver = self;
  v5.super_class = MTLCommandQueueSPIStats;
  result = [(MTLCommandQueueSPIStats *)&v5 init];
  if (result)
  {
    result->_values = a3;
  }

  return result;
}

@end