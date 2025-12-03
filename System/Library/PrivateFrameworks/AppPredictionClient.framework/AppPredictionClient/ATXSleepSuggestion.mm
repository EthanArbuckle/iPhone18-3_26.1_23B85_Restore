@interface ATXSleepSuggestion
- (ATXSleepSuggestion)initWithCoder:(id)coder;
- (ATXSleepSuggestion)initWithOccurence:(id)occurence;
@end

@implementation ATXSleepSuggestion

- (ATXSleepSuggestion)initWithOccurence:(id)occurence
{
  occurenceCopy = occurence;
  v9.receiver = self;
  v9.super_class = ATXSleepSuggestion;
  v6 = [(ATXSleepSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_occurrence, occurence);
  }

  return v7;
}

- (ATXSleepSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ATXSleepSuggestion;
  v5 = [(ATXSleepSuggestion *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"occurrence"];
    occurrence = v5->_occurrence;
    v5->_occurrence = v6;
  }

  return v5;
}

@end