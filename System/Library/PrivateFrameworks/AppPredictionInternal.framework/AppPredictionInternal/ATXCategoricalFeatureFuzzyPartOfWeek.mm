@interface ATXCategoricalFeatureFuzzyPartOfWeek
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureFuzzyPartOfWeek

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = a3;
  v5 = [v4 timeContext];

  if (v5)
  {
    v6 = [v4 timeContext];
    v7 = [v6 timeOfDay];

    if (v7 > 17)
    {
      v8 = [MEMORY[0x277CBEA80] currentCalendar];
      v12 = [v4 timeContext];
      v13 = [v12 date];
      v14 = [v13 dateByAddingTimeInterval:86400.0];
      v9 = [v8 isDateInWeekend:v14];
    }

    else
    {
      v8 = [v4 timeContext];
      v9 = [v8 dateInWeekend];
    }

    v15 = @"Weekday";
    if (v9)
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