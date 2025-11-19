@interface ATXCategoricalFeatureUserFocusComputedMode
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
- (id)featureNameForBMUserFocusComputedModeSemanticType:(int)a3;
@end

@implementation ATXCategoricalFeatureUserFocusComputedMode

- (id)featureNameForBMUserFocusComputedModeSemanticType:(int)a3
{
  if ((a3 - 1) < 0xB)
  {
    return off_2785A1FE0[a3 - 1];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureUserFocusComputedMode featureNameForBMUserFocusComputedModeSemanticType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  v6 = [v5 userFocusComputedModeEvent];

  if (v6)
  {
    v7 = [v5 userFocusComputedModeEvent];
    v8 = [v7 semanticType];

    v9 = [(ATXCategoricalFeatureUserFocusComputedMode *)self featureNameForBMUserFocusComputedModeSemanticType:v8];
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