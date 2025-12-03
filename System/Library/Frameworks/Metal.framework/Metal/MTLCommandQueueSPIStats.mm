@interface MTLCommandQueueSPIStats
- (MTLCommandQueueSPIStats)initWithValues:(id)values;
@end

@implementation MTLCommandQueueSPIStats

- (MTLCommandQueueSPIStats)initWithValues:(id)values
{
  v5.receiver = self;
  v5.super_class = MTLCommandQueueSPIStats;
  result = [(MTLCommandQueueSPIStats *)&v5 init];
  if (result)
  {
    result->_values = values;
  }

  return result;
}

@end