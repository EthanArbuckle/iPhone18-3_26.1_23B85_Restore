@interface ASASampleRateRange
+ (id)rangeWithMinimum:(double)minimum maximum:(double)maximum;
+ (id)rangeWithSingleRate:(double)rate;
- (ASASampleRateRange)initWithMinimum:(double)minimum maximum:(double)maximum;
@end

@implementation ASASampleRateRange

+ (id)rangeWithSingleRate:(double)rate
{
  v3 = [[ASASampleRateRange alloc] initWithMinimum:rate maximum:rate];

  return v3;
}

+ (id)rangeWithMinimum:(double)minimum maximum:(double)maximum
{
  v4 = [[ASASampleRateRange alloc] initWithMinimum:minimum maximum:maximum];

  return v4;
}

- (ASASampleRateRange)initWithMinimum:(double)minimum maximum:(double)maximum
{
  v7.receiver = self;
  v7.super_class = ASASampleRateRange;
  result = [(ASASampleRateRange *)&v7 init];
  if (result)
  {
    result->_minimum = minimum;
    result->_maximum = maximum;
  }

  return result;
}

@end