@interface ATXSleepSuggestionOccurrence
- (ATXSleepSuggestionOccurrence)initWithBedtimeComponents:(id)a3 wakeupComponents:(id)a4 weekdays:(unint64_t)a5;
- (ATXSleepSuggestionOccurrence)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSleepSuggestionOccurrence

- (ATXSleepSuggestionOccurrence)initWithBedtimeComponents:(id)a3 wakeupComponents:(id)a4 weekdays:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ATXSleepSuggestionOccurrence;
  v11 = [(ATXSleepSuggestionOccurrence *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bedtimeComponents, a3);
    objc_storeStrong(&v12->_wakeUpComponents, a4);
    v12->_weekdays = a5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  bedtimeComponents = self->_bedtimeComponents;
  v5 = a3;
  [v5 encodeObject:bedtimeComponents forKey:@"bedtimeComponents"];
  [v5 encodeObject:self->_wakeUpComponents forKey:@"wakeUpComponents"];
  [v5 encodeInteger:self->_weekdays forKey:@"weekdays"];
}

- (ATXSleepSuggestionOccurrence)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXSleepSuggestionOccurrence;
  v5 = [(ATXSleepSuggestionOccurrence *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bedtimeComponents"];
    bedtimeComponents = v5->_bedtimeComponents;
    v5->_bedtimeComponents = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wakeUpComponents"];
    wakeUpComponents = v5->_wakeUpComponents;
    v5->_wakeUpComponents = v8;

    v5->_weekdays = [v4 decodeIntegerForKey:@"weekdays"];
  }

  return v5;
}

@end