@interface CHWorkoutSegment
+ (id)_decimalNumberFormatter;
- (id)description;
- (id)formattedActiveEnergyValueForUnit:(id)a3;
- (id)formattedDistanceAchievedDurationValueWithFormattingManager:(id)a3;
- (id)formattedDistanceValueForUnit:(id)a3;
- (id)formattedDurationValueWithFormattingManager:(id)a3;
- (id)formattedPaceUsingFormatType:(int64_t)a3 formattingManager:(id)a4 distanceType:(unint64_t)a5;
@end

@implementation CHWorkoutSegment

- (id)formattedDurationValueWithFormattingManager:(id)a3
{
  v4 = a3;
  [(CHWorkoutSegment *)self elapsedTime];
  if (round(v5) >= 3600.0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  v7 = [v4 stringWithDuration:v6 durationFormat:?];

  return v7;
}

- (id)formattedActiveEnergyValueForUnit:(id)a3
{
  v4 = a3;
  v5 = [(CHWorkoutSegment *)self activeEnergy];
  [v5 doubleValueForUnit:v4];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [FIUIFormattingManager stringWithNumber:v8 decimalPrecision:1];

  return v9;
}

+ (id)_decimalNumberFormatter
{
  if (qword_1008F9BA8[0] != -1)
  {
    sub_10069D044();
  }

  v3 = qword_1008F9BA0;

  return v3;
}

- (id)formattedDistanceValueForUnit:(id)a3
{
  v4 = a3;
  v5 = [(CHWorkoutSegment *)self distance];
  [v5 doubleValueForUnit:v4];
  v7 = v6;

  v8 = [objc_opt_class() _decimalNumberFormatter];
  v9 = [NSNumber numberWithDouble:v7];
  v10 = [v8 stringFromNumber:v9];

  return v10;
}

- (id)formattedPaceUsingFormatType:(int64_t)a3 formattingManager:(id)a4 distanceType:(unint64_t)a5
{
  v8 = a4;
  [(CHWorkoutSegment *)self distanceGoalAchievedTime];
  if (v9 <= 0.0)
  {
    [(CHWorkoutSegment *)self elapsedTime];
  }

  else
  {
    [(CHWorkoutSegment *)self distanceGoalAchievedTime];
  }

  v11 = v10;
  if (fabs(v10) < 2.22044605e-16)
  {
    v12 = [(CHWorkoutSegment *)self endDate];
    v13 = [(CHWorkoutSegment *)self startDate];
    [v12 timeIntervalSinceDate:v13];
    v11 = v14;
  }

  v15 = [(CHWorkoutSegment *)self distance];
  v16 = [v8 localizedPaceStringWithDistance:v15 overDuration:a3 paceFormat:a5 distanceType:v11];

  return v16;
}

- (id)formattedDistanceAchievedDurationValueWithFormattingManager:(id)a3
{
  v4 = a3;
  [(CHWorkoutSegment *)self distanceGoalAchievedTime];
  if (v5 <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    [(CHWorkoutSegment *)self distanceGoalAchievedTime];
    v7 = [v4 stringWithDuration:3 durationFormat:round(v6)];
  }

  return v7;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = CHWorkoutSegment;
  v3 = [(CHWorkoutSegment *)&v12 description];
  [(CHWorkoutSegment *)self elapsedTime];
  v5 = [NSNumber numberWithDouble:v4 / 60.0];
  v6 = +[HKUnit kilocalorieUnit];
  v7 = [(CHWorkoutSegment *)self formattedActiveEnergyValueForUnit:v6];
  v8 = +[HKUnit mileUnit];
  v9 = [(CHWorkoutSegment *)self formattedDistanceValueForUnit:v8];
  v10 = [NSString stringWithFormat:@"%@: Duration: %@ min Energy: %@ Cal; Distance: %@ mi", v3, v5, v7, v9];;

  return v10;
}

@end