@interface HKQuantity
+ (id)ch_quantityWithBeatsPerMinute:(double)minute;
- (double)ch_beatsPerMinute;
@end

@implementation HKQuantity

+ (id)ch_quantityWithBeatsPerMinute:(double)minute
{
  v4 = +[HKUnit _countPerMinuteUnit];
  v5 = [HKQuantity quantityWithUnit:v4 doubleValue:minute];

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