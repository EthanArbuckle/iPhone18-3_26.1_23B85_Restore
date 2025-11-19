@interface CHWorkoutDetailFourColumnIntervalTableViewCell
- (CHWorkoutDetailFourColumnIntervalTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailFourColumnIntervalTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureHeaderWithWorkout:(id)a3 activityType:(id)a4 activityMoveMode:(int64_t)a5 formattingManager:(id)a6;
- (void)configureWithInterval:(id)a3 index:(int64_t)a4 workout:(id)a5 activityType:(id)a6 activityMoveMode:(int64_t)a7 isLastCell:(BOOL)a8 formattingManager:(id)a9;
@end

@implementation CHWorkoutDetailFourColumnIntervalTableViewCell

- (void)configureHeaderWithWorkout:(id)a3 activityType:(id)a4 activityMoveMode:(int64_t)a5 formattingManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_100458828(v10, v11, a5, v12);
}

- (void)configureWithInterval:(id)a3 index:(int64_t)a4 workout:(id)a5 activityType:(id)a6 activityMoveMode:(int64_t)a7 isLastCell:(BOOL)a8 formattingManager:(id)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = self;
  sub_100458FC8(a3, a4, v17, v18, a7, a8, v19);
}

- (CHWorkoutDetailFourColumnIntervalTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnIntervalTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnIntervalTableViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnIntervalTableViewCell();
  v4 = a3;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end