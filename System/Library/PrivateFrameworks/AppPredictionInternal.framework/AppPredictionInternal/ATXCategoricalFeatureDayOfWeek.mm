@interface ATXCategoricalFeatureDayOfWeek
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
- (id)featureNameForDayOfWeek:(int)a3;
@end

@implementation ATXCategoricalFeatureDayOfWeek

- (id)featureNameForDayOfWeek:(int)a3
{
  if (a3 < 7)
  {
    return off_2785A2038[a3];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureDayOfWeek featureNameForDayOfWeek:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  v6 = [v5 timeContext];

  if (v6)
  {
    v7 = [v5 timeContext];
    v8 = -[ATXCategoricalFeatureDayOfWeek featureNameForDayOfWeek:](self, "featureNameForDayOfWeek:", [v7 dayOfWeek]);
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