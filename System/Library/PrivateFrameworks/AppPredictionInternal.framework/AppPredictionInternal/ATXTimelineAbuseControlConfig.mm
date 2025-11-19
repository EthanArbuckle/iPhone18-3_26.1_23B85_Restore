@interface ATXTimelineAbuseControlConfig
- (ATXTimelineAbuseControlConfig)init;
- (int64_t)resolvedValueForConfigWithKey:(id)a3 forWidgetWithIdentifier:(id)a4 kind:(id)a5;
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
      v17 = [v16 unsignedIntegerValue];
      v18 = 60;
      if (v17)
      {
        v18 = v17;
      }

      v2->_minimumSecondsBetweenMetadataUpdatesPerSource = v18;

      v19 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"TimelineUpdateLimitPerSource"];
      v20 = [v19 unsignedIntegerValue];
      v21 = 100;
      if (v20)
      {
        v21 = v20;
      }

      v2->_timelineUpdateLimitPerSource = v21;

      v22 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"TimelineUpdateLimitPerAppBundleId"];
      v23 = [v22 unsignedIntegerValue];
      v24 = 300;
      if (v23)
      {
        v24 = v23;
      }

      v2->_timelineUpdateLimitPerAppBundleId = v24;

      v25 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DefaultDurationForTimelineSuggestions"];
      v26 = [v25 unsignedIntegerValue];
      v27 = 3600;
      if (v26)
      {
        v27 = v26;
      }

      v2->_defaultDurationForTimelineSuggestions = v27;

      v28 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DefaultDurationForFallbackTimelineSuggestions"];
      v29 = [v28 unsignedIntegerValue];
      v30 = 86400;
      if (v29)
      {
        v30 = v29;
      }

      v2->_defaultDurationForFallbackTimelineSuggestions = v30;

      v31 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"SoftRotationQuota"];
      v32 = [v31 integerValue];
      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      v2->_defaultSoftRotationQuota = v33;

      v34 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"HardRotationQuota"];
      v35 = [v34 integerValue];
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = 2;
      }

      v2->_defaultHardRotationQuota = v36;

      v37 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"SoftRotationQuotaForSingleScoreSchemas"];
      v38 = [v37 integerValue];
      if (v38 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      v2->_defaultSoftRotationQuotaForSingleScoreSchemas = v39;

      v40 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"HardRotationQuotaForSingleScoreSchemas"];
      v41 = [v40 integerValue];
      if (v41)
      {
        v42 = v41;
      }

      else
      {
        v42 = 2;
      }

      v2->_defaultHardRotationQuotaForSingleScoreSchemas = v42;

      v43 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"SoftRotationQuotaForLikelyDiverseSchemas"];
      v44 = [v43 integerValue];
      v45 = 3;
      if (v44)
      {
        v45 = v44;
      }

      v2->_defaultSoftRotationQuotaForLikelyDiverseSchemas = v45;

      v46 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"HardRotationQuotaForLikelyDiverseSchemas"];
      v47 = [v46 integerValue];
      v48 = 4;
      if (v47)
      {
        v48 = v47;
      }

      v2->_defaultHardRotationQuotaForLikelyDiverseSchemas = v48;

      v49 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"SoftRotationQuotaForDiverseSchemas"];
      v50 = [v49 integerValue];
      v51 = 5;
      if (v50)
      {
        v51 = v50;
      }

      v2->_defaultSoftRotationQuotaForDiverseSchemas = v51;

      v52 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"HardRotationQuotaForDiverseSchemas"];
      v53 = [v52 integerValue];
      v54 = 6;
      if (v53)
      {
        v54 = v53;
      }

      v2->_defaultHardRotationQuotaForDiverseSchemas = v54;

      v55 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"Duration"];
      v56 = [v55 integerValue];
      if (v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = 900;
      }

      v2->_defaultDurationLimit = v57;

      v58 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DurationLimitForSingleScoreSchemas"];
      v59 = [v58 integerValue];
      if (v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = 900;
      }

      v2->_defaultDurationLimitForSingleScoreSchemas = v60;

      v61 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DurationLimitForLikelyDiverseSchemas"];
      v62 = [v61 integerValue];
      if (v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = 1800;
      }

      v2->_defaultDurationLimitForLikelyDiverseSchemas = v63;

      v64 = [(NSDictionary *)v2->_config objectForKeyedSubscript:@"DurationLimitForDiverseSchemas"];
      v65 = [v64 integerValue];
      if (v65)
      {
        v66 = v65;
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

- (int64_t)resolvedValueForConfigWithKey:(id)a3 forWidgetWithIdentifier:(id)a4 kind:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ATXTimelineRelevancePersonalizedConfig *)self->_personalizedConfig personalizedValueForParameter:v8 forWidgetBundleIdentifier:v9 kind:v10];
  if ([(ATXTimelineAbuseControlConfig *)self shouldUsePersonalizedBudgets]&& v11)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v20 = 138413058;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Using personalized %@ for widgetBundleId: %@, widgetKind: %@: %@", &v20, 0x2Au);
    }

    v13 = [v11 integerValue];
  }

  else
  {
    v14 = [(NSDictionary *)self->_config objectForKeyedSubscript:v9];
    config = [v14 objectForKeyedSubscript:v10];
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

    v17 = [config objectForKeyedSubscript:v8];
    v13 = [v17 integerValue];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

@end