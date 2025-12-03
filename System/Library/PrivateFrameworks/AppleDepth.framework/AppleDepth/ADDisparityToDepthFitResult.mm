@interface ADDisparityToDepthFitResult
- (ADDisparityToDepthFitResult)initWithDisparityToDepthMultiplier:(float)multiplier disparityToDepthOffset:(float)offset;
@end

@implementation ADDisparityToDepthFitResult

- (ADDisparityToDepthFitResult)initWithDisparityToDepthMultiplier:(float)multiplier disparityToDepthOffset:(float)offset
{
  v7.receiver = self;
  v7.super_class = ADDisparityToDepthFitResult;
  result = [(ADDisparityToDepthFitResult *)&v7 init];
  if (result)
  {
    result->_disparityToDepthMultiplier = multiplier;
    result->_disparityToDepthOffset = offset;
  }

  return result;
}

@end