@interface NSValue
- (int64_t)compare:(id)compare;
@end

@implementation NSValue

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  rangeValue = [(NSValue *)self rangeValue];
  rangeValue2 = [compareCopy rangeValue];

  v7 = -1;
  if (rangeValue >= rangeValue2)
  {
    v7 = 1;
  }

  if (rangeValue == rangeValue2)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end