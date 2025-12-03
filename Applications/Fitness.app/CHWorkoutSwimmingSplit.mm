@interface CHWorkoutSwimmingSplit
- (CHWorkoutSwimmingSplit)initWithSplitDelimiterDistance:(int64_t)distance distanceInUserUnit:(double)unit strokeCount:(int64_t)count duration:(double)duration;
- (double)_fractionToFillTotalSplitDelimiterDistance;
- (double)durationScaledToFillSplit;
- (id)description;
- (id)formattedPaceWithFormattingManager:(id)manager;
- (id)formattedStrokeCount;
@end

@implementation CHWorkoutSwimmingSplit

- (CHWorkoutSwimmingSplit)initWithSplitDelimiterDistance:(int64_t)distance distanceInUserUnit:(double)unit strokeCount:(int64_t)count duration:(double)duration
{
  v11.receiver = self;
  v11.super_class = CHWorkoutSwimmingSplit;
  result = [(CHWorkoutSwimmingSplit *)&v11 init];
  if (result)
  {
    result->_splitDelimiterDistance = distance;
    result->_distanceInUserUnit = unit;
    result->_strokeCount = count;
    result->_duration = duration;
  }

  return result;
}

- (double)_fractionToFillTotalSplitDelimiterDistance
{
  splitDelimiterDistance = [(CHWorkoutSwimmingSplit *)self splitDelimiterDistance];
  [(CHWorkoutSwimmingSplit *)self distanceInUserUnit];
  return splitDelimiterDistance / v4;
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

- (id)formattedPaceWithFormattingManager:(id)manager
{
  managerCopy = manager;
  [(CHWorkoutSwimmingSplit *)self durationScaledToFillSplit];
  v5 = [managerCopy stringWithDuration:1 durationFormat:?];

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