@interface CHWorkoutDetailFourColumnDownhillRunTableViewCell
- (CHWorkoutDetailFourColumnDownhillRunTableViewCell)initWithCoder:(id)a3;
- (CHWorkoutDetailFourColumnDownhillRunTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureHeaderWithFormattingManager:(id)a3;
- (void)configureWithDownhillRun:(id)a3 downhillRunIndex:(int64_t)a4 activityType:(id)a5 isLastCell:(BOOL)a6 formattingManager:(id)a7;
- (void)configureWithDownhillRunsStats:(id)a3 activityType:(id)a4 formattingManager:(id)a5;
@end

@implementation CHWorkoutDetailFourColumnDownhillRunTableViewCell

- (void)configureHeaderWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002210DC(v4);
}

- (void)configureWithDownhillRunsStats:(id)a3 activityType:(id)a4 formattingManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100221750(v8, v9, v10);
}

- (void)configureWithDownhillRun:(id)a3 downhillRunIndex:(int64_t)a4 activityType:(id)a5 isLastCell:(BOOL)a6 formattingManager:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = self;
  sub_100221AB8(a3, a4, v14, a6, v15);
}

- (CHWorkoutDetailFourColumnDownhillRunTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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
  v9.super_class = type metadata accessor for WorkoutDetailFourColumnDownhillRunTableViewCell();
  v7 = [(CHWorkoutDetailFourColumnTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (CHWorkoutDetailFourColumnDownhillRunTableViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutDetailFourColumnDownhillRunTableViewCell();
  v4 = a3;
  v5 = [(CHWorkoutDetailFourColumnTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end