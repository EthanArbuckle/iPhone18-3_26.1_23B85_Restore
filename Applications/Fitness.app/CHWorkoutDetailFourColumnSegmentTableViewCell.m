@interface CHWorkoutDetailFourColumnSegmentTableViewCell
- (CHWorkoutDetailFourColumnSegmentTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailFourColumnSegmentTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureHeaderWithWorkout:(id)a3 activityType:(id)a4 activityMoveMode:(int64_t)a5 formattingManager:(id)a6;
- (void)configureWithSegment:(id)a3 segmentIndex:(int64_t)a4 workout:(id)a5 trackDistanceUnit:(unint64_t)a6 activityType:(id)a7 activityMoveMode:(int64_t)a8 isLastCell:(BOOL)a9 formattingManager:(id)a10;
@end

@implementation CHWorkoutDetailFourColumnSegmentTableViewCell

- (void)configureHeaderWithWorkout:(id)a3 activityType:(id)a4 activityMoveMode:(int64_t)a5 formattingManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_1002CC6AC(v10, v11, a5, v12);
}

- (void)configureWithSegment:(id)a3 segmentIndex:(int64_t)a4 workout:(id)a5 trackDistanceUnit:(unint64_t)a6 activityType:(id)a7 activityMoveMode:(int64_t)a8 isLastCell:(BOOL)a9 formattingManager:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = a10;
  v20 = self;
  sub_1002CCE74(a3, a4, v17, a6, v18, a8, a9, v19);
}

- (CHWorkoutDetailFourColumnSegmentTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnSegmentTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnSegmentTableViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnSegmentTableViewCell();
  v4 = a3;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end