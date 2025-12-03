@interface ATXTimelineAbuseControlConfig
- (ATXTimelineAbuseControlConfig)init;
- (int64_t)resolvedValueForConfigWithKey:(id)key forWidgetWithIdentifier:(id)identifier kind:(id)kind;
@end

@implementation ATXTimelineAbuseControlConfig

- (ATXTimelineAbuseControlConfig)init
{
  v70.receiver = self;
  v70.super_class = ATXTimelineAbuseControlConfig;
  v2 = [(ATXTimelineAbuseControlConfig *)&v70 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
    config = v2->_config;
    v2->_config = v3;

    v5 = v2->_config;
    if (v5)
    {
      v6 = [(NSDictionary *)v5 objectForKeyedSubscript:@"DenyList"];
      v7 = v6;
      v8 = MEMORY[0x277CBEBF8];
      if (v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = MEMORY[0x277CBEBF8];
      }

      objc_storeStrong(&v2->_denyList, v9);

      v10 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"WidgetsExcludedFromPersonalizedQuotaUpdate"];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      objc_storeStrong(&v2->_widgetsExcludedFromPersonalizedQuotaUpdate, v12);

      v13 = [(NSDictionary *)v2->_config objectForKey:@"abGroup"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = @"default";
      }

      objc_storeStrong(&v2->_timelineRelevanceABGroup, v15);

      v16 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"MinimumSecondsBetweenMetadataUpdatesPerSource"];
      unsignedIntegerValue = [v16 unsignedIntegerValue];
      v18 = 60;
      if (unsignedIntegerValue)
      {
        v18 = unsignedIntegerValue;
      }

      v2->_minimumSecondsBetweenMetadataUpdatesPerSource = v18;

      v19 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"TimelineUpdateLimitPerSource"];
      unsignedIntegerValue2 = [v19 unsignedIntegerValue];
      v21 = 100;
      if (unsignedIntegerValue2)
      {
        v21 = unsignedIntegerValue2;
      }

      v2->_timelineUpdateLimitPerSource = v21;

      v22 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"TimelineUpdateLimitPerAppBundleId"];
      unsignedIntegerValue3 = [v22 unsignedIntegerValue];
      v24 = 300;
      if (unsignedIntegerValue3)
      {
        v24 = unsignedIntegerValue3;
      }

      v2->_timelineUpdateLimitPerAppBundleId = v24;

      v25 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DefaultDurationForTimelineSuggestions"];
      unsignedIntegerValue4 = [v25 unsignedIntegerValue];
      v27 = 3600;
      if (unsignedIntegerValue4)
      {
        v27 = unsignedIntegerValue4;
      }

      v2->_defaultDurationForTimelineSuggestions = v27;

      v28 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DefaultDurationForFallbackTimelineSuggestions"];
      unsignedIntegerValue5 = [v28 unsignedIntegerValue];
      v30 = 86400;
      if (unsignedIntegerValue5)
      {
        v30 = unsignedIntegerValue5;
      }

      v2->_defaultDurationForFallbackTimelineSuggestions = v30;

      v31 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"SoftRotationQuota"];
      integerValue = [v31 integerValue];
      if (integerValue <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = integerValue;
      }

      v2->_defaultSoftRotationQuota = v33;

      v34 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"HardRotationQuota"];
      integerValue2 = [v34 integerValue];
      if (integerValue2)
      {
        v36 = integerValue2;
      }

      else
      {
        v36 = 2;
      }

      v2->_defaultHardRotationQuota = v36;

      v37 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"SoftRotationQuotaForSingleScoreSchemas"];
      integerValue3 = [v37 integerValue];
      if (integerValue3 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = integerValue3;
      }

      v2->_defaultSoftRotationQuotaForSingleScoreSchemas = v39;

      v40 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"HardRotationQuotaForSingleScoreSchemas"];
      integerValue4 = [v40 integerValue];
      if (integerValue4)
      {
        v42 = integerValue4;
      }

      else
      {
        v42 = 2;
      }

      v2->_defaultHardRotationQuotaForSingleScoreSchemas = v42;

      v43 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"SoftRotationQuotaForLikelyDiverseSchemas"];
      integerValue5 = [v43 integerValue];
      v45 = 3;
      if (integerValue5)
      {
        v45 = integerValue5;
      }

      v2->_defaultSoftRotationQuotaForLikelyDiverseSchemas = v45;

      v46 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"HardRotationQuotaForLikelyDiverseSchemas"];
      integerValue6 = [v46 integerValue];
      v48 = 4;
      if (integerValue6)
      {
        v48 = integerValue6;
      }

      v2->_defaultHardRotationQuotaForLikelyDiverseSchemas = v48;

      v49 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"SoftRotationQuotaForDiverseSchemas"];
      integerValue7 = [v49 integerValue];
      v51 = 5;
      if (integerValue7)
      {
        v51 = integerValue7;
      }

      v2->_defaultSoftRotationQuotaForDiverseSchemas = v51;

      v52 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"HardRotationQuotaForDiverseSchemas"];
      integerValue8 = [v52 integerValue];
      v54 = 6;
      if (integerValue8)
      {
        v54 = integerValue8;
      }

      v2->_defaultHardRotationQuotaForDiverseSchemas = v54;

      v55 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"Duration"];
      integerValue9 = [v55 integerValue];
      if (integerValue9)
      {
        v57 = integerValue9;
      }

      else
      {
        v57 = 900;
      }

      v2->_defaultDurationLimit = v57;

      v58 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DurationLimitForSingleScoreSchemas"];
      integerValue10 = [v58 integerValue];
      if (integerValue10)
      {
        v60 = integerValue10;
      }

      else
      {
        v60 = 900;
      }

      v2->_defaultDurationLimitForSingleScoreSchemas = v60;

      v61 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DurationLimitForLikelyDiverseSchemas"];
      integerValue11 = [v61 integerValue];
      if (integerValue11)
      {
        v63 = integerValue11;
      }

      else
      {
        v63 = 1800;
      }

      v2->_defaultDurationLimitForLikelyDiverseSchemas = v63;

      v64 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DurationLimitForDiverseSchemas"];
      integerValue12 = [v64 integerValue];
      if (integerValue12)
      {
        v66 = integerValue12;
      }

      else
      {
        v66 = 1800;
      }

      v2->_defaultDurationLimitForDiverseSchemas = v66;

      v67 = objc_opt_new();
      personalizedConfig = v2->_personalizedConfig;
      v2->_personalizedConfig = v67;
    }
  }

  return v2;
}

- (int64_t)resolvedValueForConfigWithKey:(id)key forWidgetWithIdentifier:(id)identifier kind:(id)kind
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  identifierCopy = identifier;
  kindCopy = kind;
  v11 = [(ATXTimelineRelevancePersonalizedConfig *)self->_personalizedConfig personalizedValueForParameter:keyCopy forWidgetBundleIdentifier:identifierCopy kind:kindCopy];
  if ([(ATXTimelineAbuseControlConfig *)self shouldUsePersonalizedBudgets]&& v11)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v20 = 138413058;
      v21 = keyCopy;
      v22 = 2112;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = kindCopy;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Using personalized %@ for widgetBundleId: %@, widgetKind: %@: %@", &v20, 0x2Au);
    }

    integerValue = [v11 integerValue];
  }

  else
  {
    v14 = [(NSDictionary *)self->_config objectForKeyedSubscript:identifierCopy];
    config = [v14 objectForKeyedSubscript:kindCopy];
    v16 = config;
    if (!config)
    {
      if (v14)
      {
        config = v14;
      }

      else
      {
        config = self->_config;
      }
    }

    v17 = [config objectForKeyedSubscript:keyCopy];
    integerValue = [v17 integerValue];
  }

  v18 = *MEMORY[0x277D85DE8];
  return integerValue;
}

@end