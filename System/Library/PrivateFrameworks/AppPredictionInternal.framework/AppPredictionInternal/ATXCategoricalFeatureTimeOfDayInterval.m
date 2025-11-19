@interface ATXCategoricalFeatureTimeOfDayInterval
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureTimeOfDayInterval

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = a3;
  v5 = [v4 timeContext];

  if (v5)
  {
    v6 = [v4 timeContext];
    v7 = [v6 timeOfDay];

    v8 = @"6_to_12";
    v9 = @"18_to_24";
    if (v7 < 0x12)
    {
      v9 = @"12_to_18";
    }

    if (v7 >= 0xC)
    {
      v8 = v9;
    }

    if (v7 >= 6)
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