@interface ATXCategoricalFeatureTimeOfDayHour
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureTimeOfDayHour

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = a3;
  v5 = [v4 timeContext];

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v4 timeContext];
    v8 = [v6 numberWithInt:{objc_msgSend(v7, "timeOfDay")}];
    v9 = [v8 stringValue];
  }

  else
  {
    v10 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:candidate:];
    }

    v9 = @"<Unexpected Category Value>";
  }

  return v9;
}

- (void)categoricalFeatureValueForContext:candidate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end