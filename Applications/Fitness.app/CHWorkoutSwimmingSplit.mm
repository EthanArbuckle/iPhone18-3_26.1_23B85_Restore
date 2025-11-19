@interface CHWorkoutSwimmingSplit
- (CHWorkoutSwimmingSplit)initWithSplitDelimiterDistance:(int64_t)a3 distanceInUserUnit:(double)a4 strokeCount:(int64_t)a5 duration:(double)a6;
- (double)_fractionToFillTotalSplitDelimiterDistance;
- (double)durationScaledToFillSplit;
- (id)description;
- (id)formattedPaceWithFormattingManager:(id)a3;
- (id)formattedStrokeCount;
@end

@implementation CHWorkoutSwimmingSplit

- (CHWorkoutSwimmingSplit)initWithSplitDelimiterDistance:(int64_t)a3 distanceInUserUnit:(double)a4 strokeCount:(int64_t)a5 duration:(double)a6
{
  v11.receiver = self;
  v11.super_class = CHWorkoutSwimmingSplit;
  result = [(CHWorkoutSwimmingSplit *)&v11 init];
  if (result)
  {
    result->_splitDelimiterDistance = a3;
    result->_distanceInUserUnit = a4;
    result->_strokeCount = a5;
    result->_duration = a6;
  }

  return result;
}

- (double)_fractionToFillTotalSplitDelimiterDistance
{
  v3 = [(CHWorkoutSwimmingSplit *)self splitDelimiterDistance];
  [(CHWorkoutSwimmingSplit *)self distanceInUserUnit];
  return v3 / v4;
}

- (double)durationScaledToFillSplit
{
  [(CHWorkoutSwimmingSplit *)self duration];
  v4 = v3;
  [(CHWorkoutSwimmingSplit *)self _fractionToFillTotalSplitDelimiterDistance];
  return v4 * v5;
}

- (id)formattedStrokeCount
{
  v2 = [NSNumber numberWithInteger:[(CHWorkoutSwimmingSplit *)self strokeCountScaledToFillSplit]];
  v3 = [FIUIFormattingManager stringWithNumber:v2 decimalPrecision:1];

  return v3;
}

- (id)formattedPaceWithFormattingManager:(id)a3
{
  v4 = a3;
  [(CHWorkoutSwimmingSplit *)self durationScaledToFillSplit];
  v5 = [v4 stringWithDuration:1 durationFormat:?];

  return v5;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CHWorkoutSwimmingSplit;
  v3 = [(CHWorkoutSwimmingSplit *)&v9 description];
  [(CHWorkoutSwimmingSplit *)self duration];
  v4 = [NSNumber numberWithDouble:?];
  v5 = [NSNumber numberWithInteger:[(CHWorkoutSwimmingSplit *)self splitDelimiterDistance]];
  v6 = [NSNumber numberWithInteger:[(CHWorkoutSwimmingSplit *)self strokeCount]];
  v7 = [NSString stringWithFormat:@"%@: %@ seconds, %@ m/yd, %@ strokes", v3, v4, v5, v6];

  return v7;
}

@end