@interface ATXCategoricalFeatureAmbientLightType
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
- (id)featureNameForAWDProactiveAppPredictionAmbientLightType:(int)a3;
@end

@implementation ATXCategoricalFeatureAmbientLightType

- (id)featureNameForAWDProactiveAppPredictionAmbientLightType:(int)a3
{
  if (a3 < 8)
  {
    return off_2785A20C0[a3];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureAmbientLightType featureNameForAWDProactiveAppPredictionAmbientLightType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  v6 = [v5 ambientLightContext];

  if (v6)
  {
    v7 = [v5 ambientLightContext];
    v8 = [v7 ambientLightType];

    v9 = [(ATXCategoricalFeatureAmbientLightType *)self featureNameForAWDProactiveAppPredictionAmbientLightType:v8];
  }

  else
  {
    v10 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureAmbientLightType categoricalFeatureValueForContext:candidate:];
    }

    v9 = @"<Unexpected Category Value>";
  }

  return v9;
}

- (void)featureNameForAWDProactiveAppPredictionAmbientLightType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
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