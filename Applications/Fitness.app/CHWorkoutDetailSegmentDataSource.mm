@interface CHWorkoutDetailSegmentDataSource
- (CHWorkoutDetailSegmentDataSource)init;
- (CHWorkoutDetailSegmentDataSource)initWithWorkout:(id)workout dataCalculator:(id)calculator formattingManager:(id)manager;
- (CHWorkoutDetailSegmentDataSource)initWithWorkout:(id)workout dataCalculator:(id)calculator trackDistanceUnit:(unint64_t)unit formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailSegmentDataSource

- (CHWorkoutDetailSegmentDataSource)initWithWorkout:(id)workout dataCalculator:(id)calculator trackDistanceUnit:(unint64_t)unit formattingManager:(id)manager
{
  workoutCopy = workout;
  calculatorCopy = calculator;
  managerCopy = manager;
  v12 = sub_10030B238(workoutCopy, calculatorCopy, unit, managerCopy);

  return v12;
}

- (CHWorkoutDetailSegmentDataSource)initWithWorkout:(id)workout dataCalculator:(id)calculator formattingManager:(id)manager
{
  workoutCopy = workout;
  calculatorCopy = calculator;
  managerCopy = manager;
  v10 = sub_10030B74C(workoutCopy, calculatorCopy, managerCopy);

  return v10;
}

- (CHWorkoutDetailSegmentDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end