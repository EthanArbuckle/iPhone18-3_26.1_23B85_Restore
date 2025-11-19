@interface AVRoutingAmbienceLevelRamp
+ (id)ambienceLevelRampWithStartValue:(float)a3 endValue:(float)a4 timeRange:(id *)a5;
@end

@implementation AVRoutingAmbienceLevelRamp

+ (id)ambienceLevelRampWithStartValue:(float)a3 endValue:(float)a4 timeRange:(id *)a5
{
  v5 = *&a5->var0.var3;
  v7[0] = *&a5->var0.var0;
  v7[1] = v5;
  v7[2] = *&a5->var1.var1;
  return [a1 scheduledFloatValueRampWithStartValue:v7 endValue:? timeRange:?];
}

@end