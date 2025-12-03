@interface CHWorkoutSegment
+ (id)_decimalNumberFormatter;
- (id)description;
- (id)formattedActiveEnergyValueForUnit:(id)unit;
- (id)formattedDistanceAchievedDurationValueWithFormattingManager:(id)manager;
- (id)formattedDistanceValueForUnit:(id)unit;
- (id)formattedDurationValueWithFormattingManager:(id)manager;
- (id)formattedPaceUsingFormatType:(int64_t)type formattingManager:(id)manager distanceType:(unint64_t)distanceType;
@end

@implementation CHWorkoutSegment

- (id)formattedDurationValueWithFormattingManager:(id)manager
{
  managerCopy = manager;
  [(CHWorkoutSegment *)self elapsedTime];
  if (round(v5) >= 3600.0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  v7 = [managerCopy stringWithDuration:v6 durationFormat:?];

  return v7;
}

- (id)formattedActiveEnergyValueForUnit:(id)unit
{
  unitCopy = unit;
  activeEnergy = [(CHWorkoutSegment *)self activeEnergy];
  [activeEnergy doubleValueForUnit:unitCopy];
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

- (id)formattedDistanceValueForUnit:(id)unit
{
  unitCopy = unit;
  distance = [(CHWorkoutSegment *)self distance];
  [distance doubleValueForUnit:unitCopy];
  v7 = v6;

  _decimalNumberFormatter = [objc_opt_class() _decimalNumberFormatter];
  v9 = [NSNumber numberWithDouble:v7];
  v10 = [_decimalNumberFormatter stringFromNumber:v9];

  return v10;
}

- (id)formattedPaceUsingFormatType:(int64_t)type formattingManager:(id)manager distanceType:(unint64_t)distanceType
{
  managerCopy = manager;
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
    endDate = [(CHWorkoutSegment *)self endDate];
    startDate = [(CHWorkoutSegment *)self startDate];
    [endDate timeIntervalSinceDate:startDate];
    v11 = v14;
  }

  distance = [(CHWorkoutSegment *)self distance];
  v16 = [managerCopy localizedPaceStringWithDistance:distance overDuration:type paceFormat:distanceType distanceType:v11];

  return v16;
}

- (id)formattedDistanceAchievedDurationValueWithFormattingManager:(id)manager
{
  managerCopy = manager;
  [(CHWorkoutSegment *)self distanceGoalAchievedTime];
  if (v5 <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    [(CHWorkoutSegment *)self distanceGoalAchievedTime];
    v7 = [managerCopy stringWithDuration:3 durationFormat:round(v6)];
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