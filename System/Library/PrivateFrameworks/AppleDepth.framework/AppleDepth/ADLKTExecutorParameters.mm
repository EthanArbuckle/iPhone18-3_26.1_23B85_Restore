@interface ADLKTExecutorParameters
- (ADLKTExecutorParameters)init;
@end

@implementation ADLKTExecutorParameters

- (ADLKTExecutorParameters)init
{
  v6.receiver = self;
  v6.super_class = ADLKTExecutorParameters;
  v2 = [(ADExecutorParameters *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    confidenceParameters = v2->_confidenceParameters;
    v2->_confidenceParameters = v3;

    v2->_confidenceUnits = 0;
    v2->_enableStatistics = 0;
  }

  return v2;
}

@end