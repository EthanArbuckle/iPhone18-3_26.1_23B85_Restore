@interface AVRoutingDialogMixBiasRamp
+ (float)boundsAdjustedFloatValue:(float)a3;
+ (id)dialogMixBiasRampWithStartValue:(float)a3 endValue:(float)a4 timeRange:(id *)a5;
@end

@implementation AVRoutingDialogMixBiasRamp

+ (float)boundsAdjustedFloatValue:(float)a3
{
  v3 = fmin(a3, 1.0);
  if (v3 <= 0.0)
  {
    return 0.0;
  }

  return v3;
}

+ (id)dialogMixBiasRampWithStartValue:(float)a3 endValue:(float)a4 timeRange:(id *)a5
{
  v5 = *&a5->var0.var3;
  v7[0] = *&a5->var0.var0;
  v7[1] = v5;
  v7[2] = *&a5->var1.var1;
  return [a1 scheduledFloatValueRampWithStartValue:v7 endValue:? timeRange:?];
}

@end