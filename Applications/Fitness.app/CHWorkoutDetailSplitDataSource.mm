@interface CHWorkoutDetailSplitDataSource
- (CHWorkoutDetailSplitDataSource)init;
- (CHWorkoutDetailSplitDataSource)initWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6;
@end

@implementation CHWorkoutDetailSplitDataSource

- (CHWorkoutDetailSplitDataSource)initWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6
{
  v9 = a3;
  v10 = a4;
  return sub_1005386D8(v9, a4, a5, a6);
}

- (CHWorkoutDetailSplitDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end