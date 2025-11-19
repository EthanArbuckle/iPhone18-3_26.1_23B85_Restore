@interface ABBurdenResult
- (ABBurdenResult)init;
@end

@implementation ABBurdenResult

- (ABBurdenResult)init
{
  v7.receiver = self;
  v7.super_class = ABBurdenResult;
  v2 = [(ABBurdenResult *)&v7 init];
  v3 = v2;
  if (v2)
  {
    metricsForCoreAnalytics = v2->_metricsForCoreAnalytics;
    v2->_metricsForCoreAnalytics = MEMORY[0x277CBEC10];

    v5 = v3;
  }

  return v3;
}

@end