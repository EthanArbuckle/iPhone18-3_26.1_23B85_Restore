@interface ASDSampleRateRange
+ (id)rangeWithMinimum:(double)minimum maximum:(double)maximum;
+ (id)rangeWithSingleRate:(double)rate;
- (ASDSampleRateRange)initWithMinimum:(double)minimum maximum:(double)maximum;
@end

@implementation ASDSampleRateRange

+ (id)rangeWithSingleRate:(double)rate
{
  v3 = [[ASDSampleRateRange alloc] initWithMinimum:rate maximum:rate];

  return v3;
}

+ (id)rangeWithMinimum:(double)minimum maximum:(double)maximum
{
  v4 = [[ASDSampleRateRange alloc] initWithMinimum:minimum maximum:maximum];

  return v4;
}

- (ASDSampleRateRange)initWithMinimum:(double)minimum maximum:(double)maximum
{
  v7.receiver = self;
  v7.super_class = ASDSampleRateRange;
  result = [(ASDSampleRateRange *)&v7 init];
  if (result)
  {
    result->_minimum = minimum;
    result->_maximum = maximum;
  }

  return result;
}

@end