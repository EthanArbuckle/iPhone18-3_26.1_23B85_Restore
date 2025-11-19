@interface WorkoutDetailSwimmingActivityDataSource
- (WorkoutDetailSwimmingActivityDataSource)init;
- (WorkoutDetailSwimmingActivityDataSource)initWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6;
@end

@implementation WorkoutDetailSwimmingActivityDataSource

- (WorkoutDetailSwimmingActivityDataSource)initWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6
{
  v9 = a3;
  v10 = a4;
  return sub_10028B46C(v9, a4, a5, a6);
}

- (WorkoutDetailSwimmingActivityDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end