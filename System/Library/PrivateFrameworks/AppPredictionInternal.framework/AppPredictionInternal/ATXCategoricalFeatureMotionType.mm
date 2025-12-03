@interface ATXCategoricalFeatureMotionType
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForATXMotionType:(int64_t)type;
@end

@implementation ATXCategoricalFeatureMotionType

- (id)featureNameForATXMotionType:(int64_t)type
{
  if (type < 5)
  {
    return off_2785A2098[type];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureMotionType featureNameForATXMotionType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  locationMotionContext = [contextCopy locationMotionContext];

  if (locationMotionContext)
  {
    locationMotionContext2 = [contextCopy locationMotionContext];
    v8 = -[ATXCategoricalFeatureMotionType featureNameForATXMotionType:](self, "featureNameForATXMotionType:", [locationMotionContext2 motionType]);
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