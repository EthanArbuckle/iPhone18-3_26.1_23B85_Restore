@interface ADLineRansacParameters
- (ADLineRansacParameters)init;
@end

@implementation ADLineRansacParameters

- (ADLineRansacParameters)init
{
  v3.receiver = self;
  v3.super_class = ADLineRansacParameters;
  result = [(ADLineRansacParameters *)&v3 init];
  if (result)
  {
    result->_seed = 42;
    result->_maxIterations = 100;
    *&result->_threshold = 0x3F00000000000000;
    *&result->_constantSlope = 0;
  }

  return result;
}

@end