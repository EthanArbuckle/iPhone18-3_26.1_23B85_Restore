@interface ATXCategoricalFeatureMotionType
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
- (id)featureNameForATXMotionType:(int64_t)a3;
@end

@implementation ATXCategoricalFeatureMotionType

- (id)featureNameForATXMotionType:(int64_t)a3
{
  if (a3 < 5)
  {
    return off_2785A2098[a3];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureMotionType featureNameForATXMotionType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  v6 = [v5 locationMotionContext];

  if (v6)
  {
    v7 = [v5 locationMotionContext];
    v8 = -[ATXCategoricalFeatureMotionType featureNameForATXMotionType:](self, "featureNameForATXMotionType:", [v7 motionType]);
  }

  else
  {
    v9 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureMotionType categoricalFeatureValueForContext:candidate:];
    }

    v8 = @"<Unexpected Category Value>";
  }

  return v8;
}

- (void)featureNameForATXMotionType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

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