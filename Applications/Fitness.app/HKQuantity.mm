@interface HKQuantity
+ (id)ch_quantityWithBeatsPerMinute:(double)a3;
- (double)ch_beatsPerMinute;
@end

@implementation HKQuantity

+ (id)ch_quantityWithBeatsPerMinute:(double)a3
{
  v4 = +[HKUnit _countPerMinuteUnit];
  v5 = [HKQuantity quantityWithUnit:v4 doubleValue:a3];

  return v5;
}

- (double)ch_beatsPerMinute
{
  v3 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)self doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

@end