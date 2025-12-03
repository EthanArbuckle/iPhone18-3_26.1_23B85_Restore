@interface NSMeasurement(HKQuantity)
- (id)hk_convertToQuantity;
@end

@implementation NSMeasurement(HKQuantity)

- (id)hk_convertToQuantity
{
  unit = [self unit];
  [self doubleValue];
  v3 = [unit hk_quantityWithConvertibleValue:?];

  return v3;
}

@end