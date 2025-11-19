@interface ATXCompactTimeSummary
- (ATXCompactTimeSummary)initWithCoder:(id)a3;
- (ATXCompactTimeSummary)initWithTimeMarbles:(id)a3;
@end

@implementation ATXCompactTimeSummary

- (ATXCompactTimeSummary)initWithTimeMarbles:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ATXCompactTimeSummary;
  v5 = [(ATXCompactTimeSummary *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    timeMarbles = v5->_timeMarbles;
    v5->_timeMarbles = v6;

    v8 = v5;
  }

  return v5;
}

- (ATXCompactTimeSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"timeMarbles"];

  v6 = [(ATXCompactTimeSummary *)self initWithTimeMarbles:v5];
  return v6;
}

@end