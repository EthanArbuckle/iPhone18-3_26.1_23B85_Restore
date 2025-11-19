@interface CHWorkoutSwimmingSet
+ (id)_decimalNumberFormatter;
- (double)_activeDuration;
- (double)_restingDuration;
- (id)description;
- (id)formattedActiveDurationWithFormattingManager:(id)a3;
- (id)formattedDistanceValueWithFormattingManager:(id)a3;
- (id)formattedDominantStrokeStyle;
- (id)formattedPaceUsingFormatType:(int64_t)a3 formattingManager:(id)a4;
- (id)formattedRestDurationWithFormattingManager:(id)a3;
- (id)formattedStrokeCountUsingFormatType:(int64_t)a3 formattingManager:(id)a4;
@end

@implementation CHWorkoutSwimmingSet

- (double)_activeDuration
{
  v3 = [(CHWorkoutSwimmingSet *)self movementEndDate];
  v4 = [(CHWorkoutSwimmingSet *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (double)_restingDuration
{
  v3 = [(CHWorkoutSwimmingSet *)self endDate];
  v4 = [(CHWorkoutSwimmingSet *)self movementEndDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (id)formattedActiveDurationWithFormattingManager:(id)a3
{
  v4 = a3;
  [(CHWorkoutSwimmingSet *)self _activeDuration];
  v5 = [v4 stringWithDuration:3 durationFormat:?];

  return v5;
}

- (id)formattedRestDurationWithFormattingManager:(id)a3
{
  v4 = a3;
  [(CHWorkoutSwimmingSet *)self _restingDuration];
  v5 = [v4 stringWithDuration:3 durationFormat:?];

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

- (id)formattedDistanceValueWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = [(CHWorkoutSwimmingSet *)self distance];
  v6 = +[HKUnit meterUnit];
  [v5 doubleValueForUnit:v6];
  v7 = [v4 localizedStringWithDistanceInMeters:3 distanceType:1 unitStyle:?];

  return v7;
}

- (id)formattedPaceUsingFormatType:(int64_t)a3 formattingManager:(id)a4
{
  v6 = a4;
  [(CHWorkoutSwimmingSet *)self _activeDuration];
  v8 = v7;
  v9 = [(CHWorkoutSwimmingSet *)self distance];
  v10 = [v6 localizedSwimmingPaceStringWithDistance:v9 overDuration:a3 paceFormat:v8];

  return v10;
}

- (id)formattedStrokeCountUsingFormatType:(int64_t)a3 formattingManager:(id)a4
{
  v6 = a4;
  v7 = [(CHWorkoutSwimmingSet *)self strokeCount];
  v8 = [(CHWorkoutSwimmingSet *)self distance];
  v9 = [v6 localizedStrokeCountStringWithCount:v7 overDistance:v8 paceFormat:a3];

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
  v4 = [(CHWorkoutSwimmingSet *)self startDate];
  v5 = [(CHWorkoutSwimmingSet *)self endDate];
  v6 = [(CHWorkoutSwimmingSet *)self distance];
  v7 = [NSNumber numberWithInteger:[(CHWorkoutSwimmingSet *)self strokeCount]];
  v8 = [NSNumber numberWithInteger:[(CHWorkoutSwimmingSet *)self dominantStrokeStyle]];
  v9 = [NSString stringWithFormat:@"%@: Start: %@ End: %@; Distance: %@; Stroke Count: %@; Stroke Style: %@", v3, v4, v5, v6, v7, v8];;

  return v9;
}

@end