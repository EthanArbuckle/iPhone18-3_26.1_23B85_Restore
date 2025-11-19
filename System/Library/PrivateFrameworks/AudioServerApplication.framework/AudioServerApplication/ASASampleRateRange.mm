@interface ASASampleRateRange
+ (id)rangeWithMinimum:(double)a3 maximum:(double)a4;
+ (id)rangeWithSingleRate:(double)a3;
- (ASASampleRateRange)initWithMinimum:(double)a3 maximum:(double)a4;
@end

@implementation ASASampleRateRange

+ (id)rangeWithSingleRate:(double)a3
{
  v3 = [[ASASampleRateRange alloc] initWithMinimum:a3 maximum:a3];

  return v3;
}

+ (id)rangeWithMinimum:(double)a3 maximum:(double)a4
{
  v4 = [[ASASampleRateRange alloc] initWithMinimum:a3 maximum:a4];

  return v4;
}

- (ASASampleRateRange)initWithMinimum:(double)a3 maximum:(double)a4
{
  v7.receiver = self;
  v7.super_class = ASASampleRateRange;
  result = [(ASASampleRateRange *)&v7 init];
  if (result)
  {
    result->_minimum = a3;
    result->_maximum = a4;
  }

  return result;
}

@end