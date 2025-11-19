@interface ADDisparityToDepthFitResult
- (ADDisparityToDepthFitResult)initWithDisparityToDepthMultiplier:(float)a3 disparityToDepthOffset:(float)a4;
@end

@implementation ADDisparityToDepthFitResult

- (ADDisparityToDepthFitResult)initWithDisparityToDepthMultiplier:(float)a3 disparityToDepthOffset:(float)a4
{
  v7.receiver = self;
  v7.super_class = ADDisparityToDepthFitResult;
  result = [(ADDisparityToDepthFitResult *)&v7 init];
  if (result)
  {
    result->_disparityToDepthMultiplier = a3;
    result->_disparityToDepthOffset = a4;
  }

  return result;
}

@end