@interface ATXSleepSuggestion
- (ATXSleepSuggestion)initWithCoder:(id)a3;
- (ATXSleepSuggestion)initWithOccurence:(id)a3;
@end

@implementation ATXSleepSuggestion

- (ATXSleepSuggestion)initWithOccurence:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXSleepSuggestion;
  v6 = [(ATXSleepSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_occurrence, a3);
  }

  return v7;
}

- (ATXSleepSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXSleepSuggestion;
  v5 = [(ATXSleepSuggestion *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"occurrence"];
    occurrence = v5->_occurrence;
    v5->_occurrence = v6;
  }

  return v5;
}

@end