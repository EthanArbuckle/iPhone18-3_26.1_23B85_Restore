@interface ATXCategoricalFeatureAmbientLightType
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForAWDProactiveAppPredictionAmbientLightType:(int)type;
@end

@implementation ATXCategoricalFeatureAmbientLightType

- (id)featureNameForAWDProactiveAppPredictionAmbientLightType:(int)type
{
  if (type < 8)
  {
    return off_2785A20C0[type];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureAmbientLightType featureNameForAWDProactiveAppPredictionAmbientLightType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  ambientLightContext = [contextCopy ambientLightContext];

  if (ambientLightContext)
  {
    ambientLightContext2 = [contextCopy ambientLightContext];
    ambientLightType = [ambientLightContext2 ambientLightType];

    v9 = [(ATXCategoricalFeatureAmbientLightType *)self featureNameForAWDProactiveAppPredictionAmbientLightType:ambientLightType];
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