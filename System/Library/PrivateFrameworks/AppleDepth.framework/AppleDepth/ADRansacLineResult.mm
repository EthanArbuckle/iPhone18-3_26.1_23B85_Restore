@interface ADRansacLineResult
- (ADRansacLineResult)initWithSlope:(float)slope intercept:(float)intercept;
@end

@implementation ADRansacLineResult

- (ADRansacLineResult)initWithSlope:(float)slope intercept:(float)intercept
{
  v7.receiver = self;
  v7.super_class = ADRansacLineResult;
  result = [(ADRansacLineResult *)&v7 init];
  if (result)
  {
    result->_slope = slope;
    result->_intercept = intercept;
  }

  return result;
}

@end