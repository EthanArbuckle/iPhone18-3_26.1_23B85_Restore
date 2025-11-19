@interface CHWorkoutDetailFourColumnSplitTableViewCell
- (CHWorkoutDetailFourColumnSplitTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailFourColumnSplitTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureHeaderWithActivityType:(id)a3 includeHeartRate:(BOOL)a4;
- (void)configureWithSwimmingSplit:(id)a3 splitIndex:(int64_t)a4 isLastCell:(BOOL)a5 formattingManager:(id)a6;
- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 unit:(id)a5 split:(id)a6 splitIndex:(int64_t)a7 splitDistance:(double)a8 includeHeartRate:(BOOL)a9 isLastCell:(BOOL)a10 dataCalculator:(id)a11 formattingManager:(id)a12;
@end

@implementation CHWorkoutDetailFourColumnSplitTableViewCell

- (void)configureHeaderWithActivityType:(id)a3 includeHeartRate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1003C14C0(v6, a4);
}

- (void)configureWithWorkout:(id)a3 workoutActivity:(id)a4 unit:(id)a5 split:(id)a6 splitIndex:(int64_t)a7 splitDistance:(double)a8 includeHeartRate:(BOOL)a9 isLastCell:(BOOL)a10 dataCalculator:(id)a11 formattingManager:(id)a12
{
  v24 = a9;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a11;
  v22 = a12;
  v23 = self;
  sub_1003C2C68(v17, a4, v20, a7, v24, a10, v21, v22);
}

- (CHWorkoutDetailFourColumnSplitTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnSplitTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnSplitTableViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnSplitTableViewCell();
  v4 = a3;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)configureWithSwimmingSplit:(id)a3 splitIndex:(int64_t)a4 isLastCell:(BOOL)a5 formattingManager:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self;
  sub_1003C25BC(v10, a4, a5, v11);
}

@end