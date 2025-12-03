@interface CHWorkoutSwimmingSet
+ (id)_decimalNumberFormatter;
- (double)_activeDuration;
- (double)_restingDuration;
- (id)description;
- (id)formattedActiveDurationWithFormattingManager:(id)manager;
- (id)formattedDistanceValueWithFormattingManager:(id)manager;
- (id)formattedDominantStrokeStyle;
- (id)formattedPaceUsingFormatType:(int64_t)type formattingManager:(id)manager;
- (id)formattedRestDurationWithFormattingManager:(id)manager;
- (id)formattedStrokeCountUsingFormatType:(int64_t)type formattingManager:(id)manager;
@end

@implementation CHWorkoutSwimmingSet

- (double)_activeDuration
{
  movementEndDate = [(CHWorkoutSwimmingSet *)self movementEndDate];
  startDate = [(CHWorkoutSwimmingSet *)self startDate];
  [movementEndDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

- (double)_restingDuration
{
  endDate = [(CHWorkoutSwimmingSet *)self endDate];
  movementEndDate = [(CHWorkoutSwimmingSet *)self movementEndDate];
  [endDate timeIntervalSinceDate:movementEndDate];
  v6 = v5;

  return v6;
}

- (id)formattedActiveDurationWithFormattingManager:(id)manager
{
  managerCopy = manager;
  [(CHWorkoutSwimmingSet *)self _activeDuration];
  v5 = [managerCopy stringWithDuration:3 durationFormat:?];

  return v5;
}

- (id)formattedRestDurationWithFormattingManager:(id)manager
{
  managerCopy = manager;
  [(CHWorkoutSwimmingSet *)self _restingDuration];
  v5 = [managerCopy stringWithDuration:3 durationFormat:?];

  return v5;
}

+ (id)_decimalNumberFormatter
{
  if (qword_1008F9AF8 != -1)
  {
    sub_10069CB30();
  }

  v3 = qword_1008F9AF0;

  return v3;
}

- (id)formattedDistanceValueWithFormattingManager:(id)manager
{
  managerCopy = manager;
  distance = [(CHWorkoutSwimmingSet *)self distance];
  v6 = +[HKUnit meterUnit];
  [distance doubleValueForUnit:v6];
  v7 = [managerCopy localizedStringWithDistanceInMeters:3 distanceType:1 unitStyle:?];

  return v7;
}

- (id)formattedPaceUsingFormatType:(int64_t)type formattingManager:(id)manager
{
  managerCopy = manager;
  [(CHWorkoutSwimmingSet *)self _activeDuration];
  v8 = v7;
  distance = [(CHWorkoutSwimmingSet *)self distance];
  v10 = [managerCopy localizedSwimmingPaceStringWithDistance:distance overDuration:type paceFormat:v8];

  return v10;
}

- (id)formattedStrokeCountUsingFormatType:(int64_t)type formattingManager:(id)manager
{
  managerCopy = manager;
  strokeCount = [(CHWorkoutSwimmingSet *)self strokeCount];
  distance = [(CHWorkoutSwimmingSet *)self distance];
  v9 = [managerCopy localizedStrokeCountStringWithCount:strokeCount overDistance:distance paceFormat:type];

  return v9;
}

- (id)formattedDominantStrokeStyle
{
  [(CHWorkoutSwimmingSet *)self dominantStrokeStyle];

  return FILocalizedStrokeStyleName();
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = CHWorkoutSwimmingSet;
  v3 = [(CHWorkoutSwimmingSet *)&v11 description];
  startDate = [(CHWorkoutSwimmingSet *)self startDate];
  endDate = [(CHWorkoutSwimmingSet *)self endDate];
  distance = [(CHWorkoutSwimmingSet *)self distance];
  v7 = [NSNumber numberWithInteger:[(CHWorkoutSwimmingSet *)self strokeCount]];
  v8 = [NSNumber numberWithInteger:[(CHWorkoutSwimmingSet *)self dominantStrokeStyle]];
  v9 = [NSString stringWithFormat:@"%@: Start: %@ End: %@; Distance: %@; Stroke Count: %@; Stroke Style: %@", v3, startDate, endDate, distance, v7, v8];;

  return v9;
}

@end