@interface NSMeasurement(HKQuantity)
- (id)hk_convertToQuantity;
@end

@implementation NSMeasurement(HKQuantity)

- (id)hk_convertToQuantity
{
  v2 = [a1 unit];
  [a1 doubleValue];
  v3 = [v2 hk_quantityWithConvertibleValue:?];

  return v3;
}

@end