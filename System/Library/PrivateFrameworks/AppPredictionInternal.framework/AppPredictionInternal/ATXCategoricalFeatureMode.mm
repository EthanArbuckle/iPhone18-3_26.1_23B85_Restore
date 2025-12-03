@interface ATXCategoricalFeatureMode
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForBMUserFocusInferredModeType:(int)type;
@end

@implementation ATXCategoricalFeatureMode

- (id)featureNameForBMUserFocusInferredModeType:(int)type
{
  if ((type - 1) < 0x11)
  {
    return off_2785A1F58[type - 1];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureMode featureNameForBMUserFocusInferredModeType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  inferredModeEvent = [contextCopy inferredModeEvent];

  if (inferredModeEvent)
  {
    inferredModeEvent2 = [contextCopy inferredModeEvent];
    modeType = [inferredModeEvent2 modeType];

    v9 = [(ATXCategoricalFeatureMode *)self featureNameForBMUserFocusInferredModeType:modeType];
  }

  else
  {
    v9 = @"Mode NA";
  }

  return v9;
}

- (void)featureNameForBMUserFocusInferredModeType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end