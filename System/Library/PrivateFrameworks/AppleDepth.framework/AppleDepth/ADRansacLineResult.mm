@interface ADRansacLineResult
- (ADRansacLineResult)initWithSlope:(float)a3 intercept:(float)a4;
@end

@implementation ADRansacLineResult

- (ADRansacLineResult)initWithSlope:(float)a3 intercept:(float)a4
{
  v7.receiver = self;
  v7.super_class = ADRansacLineResult;
  result = [(ADRansacLineResult *)&v7 init];
  if (result)
  {
    result->_slope = a3;
    result->_intercept = a4;
  }

  return result;
}

@end