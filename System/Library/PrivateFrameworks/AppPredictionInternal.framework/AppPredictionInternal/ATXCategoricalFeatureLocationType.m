@interface ATXCategoricalFeatureLocationType
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
- (id)featureNameForRTLocationOfInterestType:(int64_t)a3;
@end

@implementation ATXCategoricalFeatureLocationType

- (id)featureNameForRTLocationOfInterestType:(int64_t)a3
{
  if ((a3 + 1) < 5)
  {
    return off_2785A2070[a3 + 1];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureLocationType featureNameForRTLocationOfInterestType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  v6 = [v5 locationMotionContext];
  v7 = [v6 currentLOI];

  if (v7)
  {
    v8 = [v5 locationMotionContext];
    v9 = [v8 currentLOI];
    v10 = [v9 type];

    v11 = [(ATXCategoricalFeatureLocationType *)self featureNameForRTLocationOfInterestType:v10];
  }

  else
  {
    v11 = @"LOI Type NA";
  }

  return v11;
}

- (void)featureNameForRTLocationOfInterestType:.cold.1()
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