@interface ARUIMetricColors
+ (id)intervalColors;
+ (id)metricColorsForWorkout:(id)workout;
+ (id)mindfulnessColors;
+ (id)pacerColors;
+ (id)raceBehindColors;
+ (id)raceColors;
@end

@implementation ARUIMetricColors

+ (id)raceColors
{
  v0 = sub_1004334D4();

  return v0;
}

+ (id)metricColorsForWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = sub_100433844(workoutCopy);

  return v4;
}

+ (id)pacerColors
{
  v2 = sub_10043368C();

  return v2;
}

+ (id)intervalColors
{
  v2 = sub_10043331C();

  return v2;
}

+ (id)raceBehindColors
{
  v2 = sub_100433E64();

  return v2;
}

+ (id)mindfulnessColors
{
  v2 = sub_100433CAC();

  return v2;
}

@end