@interface AVDialogMixBiasRamp
+ (float)boundsAdjustedFloatValue:(float)value;
+ (id)dialogMixBiasRampWithStartValue:(float)value endValue:(float)endValue timeRange:(id *)range;
@end

@implementation AVDialogMixBiasRamp

+ (float)boundsAdjustedFloatValue:(float)value
{
  v3 = fmin(value, 1.0);
  if (v3 <= 0.0)
  {
    return 0.0;
  }

  return v3;
}

+ (id)dialogMixBiasRampWithStartValue:(float)value endValue:(float)endValue timeRange:(id *)range
{
  v5 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v5;
  v7[2] = *&range->var1.var1;
  return [self scheduledFloatValueRampWithStartValue:v7 endValue:? timeRange:?];
}

@end