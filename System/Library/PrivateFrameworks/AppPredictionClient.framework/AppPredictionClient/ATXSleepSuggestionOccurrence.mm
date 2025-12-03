@interface ATXSleepSuggestionOccurrence
- (ATXSleepSuggestionOccurrence)initWithBedtimeComponents:(id)components wakeupComponents:(id)wakeupComponents weekdays:(unint64_t)weekdays;
- (ATXSleepSuggestionOccurrence)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSleepSuggestionOccurrence

- (ATXSleepSuggestionOccurrence)initWithBedtimeComponents:(id)components wakeupComponents:(id)wakeupComponents weekdays:(unint64_t)weekdays
{
  componentsCopy = components;
  wakeupComponentsCopy = wakeupComponents;
  v14.receiver = self;
  v14.super_class = ATXSleepSuggestionOccurrence;
  v11 = [(ATXSleepSuggestionOccurrence *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bedtimeComponents, components);
    objc_storeStrong(&v12->_wakeUpComponents, wakeupComponents);
    v12->_weekdays = weekdays;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  bedtimeComponents = self->_bedtimeComponents;
  coderCopy = coder;
  [coderCopy encodeObject:bedtimeComponents forKey:@"bedtimeComponents"];
  [coderCopy encodeObject:self->_wakeUpComponents forKey:@"wakeUpComponents"];
  [coderCopy encodeInteger:self->_weekdays forKey:@"weekdays"];
}

- (ATXSleepSuggestionOccurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ATXSleepSuggestionOccurrence;
  v5 = [(ATXSleepSuggestionOccurrence *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bedtimeComponents"];
    bedtimeComponents = v5->_bedtimeComponents;
    v5->_bedtimeComponents = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wakeUpComponents"];
    wakeUpComponents = v5->_wakeUpComponents;
    v5->_wakeUpComponents = v8;

    v5->_weekdays = [coderCopy decodeIntegerForKey:@"weekdays"];
  }

  return v5;
}

@end