@interface ATXCategoricalFeatureUserFocusComputedMode
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForBMUserFocusComputedModeSemanticType:(int)type;
@end

@implementation ATXCategoricalFeatureUserFocusComputedMode

- (id)featureNameForBMUserFocusComputedModeSemanticType:(int)type
{
  if ((type - 1) < 0xB)
  {
    return off_2785A1FE0[type - 1];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureUserFocusComputedMode featureNameForBMUserFocusComputedModeSemanticType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  userFocusComputedModeEvent = [contextCopy userFocusComputedModeEvent];

  if (userFocusComputedModeEvent)
  {
    userFocusComputedModeEvent2 = [contextCopy userFocusComputedModeEvent];
    semanticType = [userFocusComputedModeEvent2 semanticType];

    v9 = [(ATXCategoricalFeatureUserFocusComputedMode *)self featureNameForBMUserFocusComputedModeSemanticType:semanticType];
  }

  else
  {
    v9 = @"Mode NA";
  }

  return v9;
}

- (void)featureNameForBMUserFocusComputedModeSemanticType:.cold.1()
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