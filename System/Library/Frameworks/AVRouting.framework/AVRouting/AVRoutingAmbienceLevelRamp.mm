@interface AVRoutingAmbienceLevelRamp
+ (id)ambienceLevelRampWithStartValue:(float)value endValue:(float)endValue timeRange:(id *)range;
@end

@implementation AVRoutingAmbienceLevelRamp

+ (id)ambienceLevelRampWithStartValue:(float)value endValue:(float)endValue timeRange:(id *)range
{
  v5 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v5;
  v7[2] = *&range->var1.var1;
  return [self scheduledFloatValueRampWithStartValue:v7 endValue:? timeRange:?];
}

@end