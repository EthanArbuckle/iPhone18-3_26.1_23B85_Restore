@interface CHWorkoutCellImageLabelView
- (double)preferredHeightForWidth:(double)width;
- (void)setWorkout:(id)workout fitnessAppContext:(id)context formattingManager:(id)manager achievementCount:(int64_t)count completion:(id)completion;
@end

@implementation CHWorkoutCellImageLabelView

- (void)setWorkout:(id)workout fitnessAppContext:(id)context formattingManager:(id)manager achievementCount:(int64_t)count completion:(id)completion
{
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_100698D98;
  }

  else
  {
    v13 = 0;
  }

  workoutCopy = workout;
  contextCopy = context;
  managerCopy = manager;
  selfCopy = self;
  sub_100696F30(workoutCopy, contextCopy, managerCopy, count, v12, v13);
  sub_1000245E0(v12);
}

- (double)preferredHeightForWidth:(double)width
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(CHWorkoutCellImageLabelView *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:v3, v4];
  return v5;
}

@end