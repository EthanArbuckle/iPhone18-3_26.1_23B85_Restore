@interface ADDisparityToDepthLRUParameters
- (ADDisparityToDepthLRUParameters)init;
@end

@implementation ADDisparityToDepthLRUParameters

- (ADDisparityToDepthLRUParameters)init
{
  v3.receiver = self;
  v3.super_class = ADDisparityToDepthLRUParameters;
  result = [(ADDisparityToDepthLRUParameters *)&v3 init];
  if (result)
  {
    result->_capacity = 900;
    result->_threshold = 0.1;
  }

  return result;
}

@end