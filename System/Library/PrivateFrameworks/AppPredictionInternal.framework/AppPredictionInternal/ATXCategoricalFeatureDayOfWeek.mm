@interface ATXCategoricalFeatureDayOfWeek
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForDayOfWeek:(int)week;
@end

@implementation ATXCategoricalFeatureDayOfWeek

- (id)featureNameForDayOfWeek:(int)week
{
  if (week < 7)
  {
    return off_2785A2038[week];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureDayOfWeek featureNameForDayOfWeek:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  timeContext = [contextCopy timeContext];

  if (timeContext)
  {
    timeContext2 = [contextCopy timeContext];
    v8 = -[ATXCategoricalFeatureDayOfWeek featureNameForDayOfWeek:](self, "featureNameForDayOfWeek:", [timeContext2 dayOfWeek]);
  }

  else
  {
    v9 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:candidate:];
    }

    v8 = @"<Unexpected Category Value>";
  }

  return v8;
}

- (void)featureNameForDayOfWeek:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

@end