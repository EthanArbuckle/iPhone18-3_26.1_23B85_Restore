@interface ASDSampleRateRange
+ (id)rangeWithMinimum:(double)a3 maximum:(double)a4;
+ (id)rangeWithSingleRate:(double)a3;
- (ASDSampleRateRange)initWithMinimum:(double)a3 maximum:(double)a4;
@end

@implementation ASDSampleRateRange

+ (id)rangeWithSingleRate:(double)a3
{
  v3 = [[ASDSampleRateRange alloc] initWithMinimum:a3 maximum:a3];

  return v3;
}

+ (id)rangeWithMinimum:(double)a3 maximum:(double)a4
{
  v4 = [[ASDSampleRateRange alloc] initWithMinimum:a3 maximum:a4];

  return v4;
}

- (ASDSampleRateRange)initWithMinimum:(double)a3 maximum:(double)a4
{
  v7.receiver = self;
  v7.super_class = ASDSampleRateRange;
  result = [(ASDSampleRateRange *)&v7 init];
  if (result)
  {
    result->_minimum = a3;
    result->_maximum = a4;
  }

  return result;
}

@end