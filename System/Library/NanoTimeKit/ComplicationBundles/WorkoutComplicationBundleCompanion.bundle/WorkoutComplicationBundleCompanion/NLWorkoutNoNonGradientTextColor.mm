@interface NLWorkoutNoNonGradientTextColor
@end

@implementation NLWorkoutNoNonGradientTextColor

void __NLWorkoutNoNonGradientTextColor_block_invoke(id a1)
{
  v3 = +[ARUIMetricColors noMetricColors];
  v1 = [v3 nonGradientTextColor];
  v2 = NLWorkoutNoNonGradientTextColor___color;
  NLWorkoutNoNonGradientTextColor___color = v1;
}

@end