@interface ATXCategoricalFeatureFuzzyPartOfWeek
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureFuzzyPartOfWeek

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  timeContext = [contextCopy timeContext];

  if (timeContext)
  {
    timeContext2 = [contextCopy timeContext];
    timeOfDay = [timeContext2 timeOfDay];

    if (timeOfDay > 17)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      timeContext3 = [contextCopy timeContext];
      date = [timeContext3 date];
      v14 = [date dateByAddingTimeInterval:86400.0];
      dateInWeekend = [currentCalendar isDateInWeekend:v14];
    }

    else
    {
      currentCalendar = [contextCopy timeContext];
      dateInWeekend = [currentCalendar dateInWeekend];
    }

    v15 = @"Weekday";
    if (dateInWeekend)
    {
      v15 = @"Weekend";
    }

    v11 = v15;
  }

  else
  {
    v10 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:candidate:];
    }

    v11 = @"<Unexpected Category Value>";
  }

  return v11;
}

@end