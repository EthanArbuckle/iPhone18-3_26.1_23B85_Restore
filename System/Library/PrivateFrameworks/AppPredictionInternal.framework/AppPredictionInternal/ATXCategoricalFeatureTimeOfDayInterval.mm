@interface ATXCategoricalFeatureTimeOfDayInterval
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureTimeOfDayInterval

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  timeContext = [contextCopy timeContext];

  if (timeContext)
  {
    timeContext2 = [contextCopy timeContext];
    timeOfDay = [timeContext2 timeOfDay];

    v8 = @"6_to_12";
    v9 = @"18_to_24";
    if (timeOfDay < 0x12)
    {
      v9 = @"12_to_18";
    }

    if (timeOfDay >= 0xC)
    {
      v8 = v9;
    }

    if (timeOfDay >= 6)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"0_to_6";
    }
  }

  else
  {
    v11 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:candidate:];
    }

    v10 = @"<Unexpected Category Value>";
  }

  return v10;
}

@end