@interface ATXCategoricalFeatureLocationType
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForRTLocationOfInterestType:(int64_t)type;
@end

@implementation ATXCategoricalFeatureLocationType

- (id)featureNameForRTLocationOfInterestType:(int64_t)type
{
  if ((type + 1) < 5)
  {
    return off_2785A2070[type + 1];
  }

  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureLocationType featureNameForRTLocationOfInterestType:];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  locationMotionContext = [contextCopy locationMotionContext];
  currentLOI = [locationMotionContext currentLOI];

  if (currentLOI)
  {
    locationMotionContext2 = [contextCopy locationMotionContext];
    currentLOI2 = [locationMotionContext2 currentLOI];
    type = [currentLOI2 type];

    v11 = [(ATXCategoricalFeatureLocationType *)self featureNameForRTLocationOfInterestType:type];
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