@interface CHWorkoutCellImageLabelView
- (double)preferredHeightForWidth:(double)a3;
- (void)setWorkout:(id)a3 fitnessAppContext:(id)a4 formattingManager:(id)a5 achievementCount:(int64_t)a6 completion:(id)a7;
@end

@implementation CHWorkoutCellImageLabelView

- (void)setWorkout:(id)a3 fitnessAppContext:(id)a4 formattingManager:(id)a5 achievementCount:(int64_t)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
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

  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = self;
  sub_100696F30(v14, v15, v16, a6, v12, v13);
  sub_1000245E0(v12);
}

- (double)preferredHeightForWidth:(double)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(CHWorkoutCellImageLabelView *)self systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:v3, v4];
  return v5;
}

@end