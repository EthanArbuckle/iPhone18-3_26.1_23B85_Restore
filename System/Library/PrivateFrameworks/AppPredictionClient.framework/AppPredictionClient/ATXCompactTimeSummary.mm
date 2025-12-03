@interface ATXCompactTimeSummary
- (ATXCompactTimeSummary)initWithCoder:(id)coder;
- (ATXCompactTimeSummary)initWithTimeMarbles:(id)marbles;
@end

@implementation ATXCompactTimeSummary

- (ATXCompactTimeSummary)initWithTimeMarbles:(id)marbles
{
  marblesCopy = marbles;
  v10.receiver = self;
  v10.super_class = ATXCompactTimeSummary;
  v5 = [(ATXCompactTimeSummary *)&v10 init];
  if (v5)
  {
    v6 = [marblesCopy copy];
    timeMarbles = v5->_timeMarbles;
    v5->_timeMarbles = v6;

    v8 = v5;
  }

  return v5;
}

- (ATXCompactTimeSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"timeMarbles"];

  v6 = [(ATXCompactTimeSummary *)self initWithTimeMarbles:v5];
  return v6;
}

@end