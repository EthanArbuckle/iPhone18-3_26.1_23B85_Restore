@interface ATXCategoricalFeatureTimeOfDayHour
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureTimeOfDayHour

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  timeContext = [contextCopy timeContext];

  if (timeContext)
  {
    v6 = MEMORY[0x277CCABB0];
    timeContext2 = [contextCopy timeContext];
    v8 = [v6 numberWithInt:{objc_msgSend(timeContext2, "timeOfDay")}];
    stringValue = [v8 stringValue];
  }

  else
  {
    v10 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:candidate:];
    }

    stringValue = @"<Unexpected Category Value>";
  }

  return stringValue;
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