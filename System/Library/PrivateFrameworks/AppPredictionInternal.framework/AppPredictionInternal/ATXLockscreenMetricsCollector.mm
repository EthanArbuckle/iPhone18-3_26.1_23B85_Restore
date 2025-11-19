@interface ATXLockscreenMetricsCollector
- (id)_configurationMetricFromPosterConfiguration:(id)a3 lockscreenId:(id)a4 modeClient:(id)a5;
- (id)_dailyMetricsDescriptionGivenConfigurationMetrics:(id)a3 widgetMetrics:(id)a4 summaryMetric:(id)a5;
- (id)_dailyMetricsDescription_shouldPost:(BOOL)a3;
- (id)_weeklyRollingIdFromLockscreenId:(id)a3;
- (void)_fillSummaryMetric:(id)a3 configurations:(id)a4;
- (void)_postConfigurationMetrics:(id)a3 widgetMetrics:(id)a4 summaryMetric:(id)a5;
- (void)postEditMetricWithEvent:(id)a3;
- (void)postSwitchMetricWithEvent:(id)a3;
@end

@implementation ATXLockscreenMetricsCollector

- (void)postSwitchMetricWithEvent:(id)a3
{
  v4 = a3;
  v10 = objc_opt_new();
  v5 = [v4 lockscreenId];
  v6 = [(ATXLockscreenMetricsCollector *)self _weeklyRollingIdFromLockscreenId:v5];
  [v10 setLockscreenId:v6];

  v7 = [v4 switchMechanism];
  [v10 setSwitchMechanism:v7];

  v8 = [v4 outcome];
  [v10 setOutcome:v8];

  v9 = [v4 duration];
  [v10 setDuration:v9];
  [v10 logToCoreAnalytics];
}

- (void)postEditMetricWithEvent:(id)a3
{
  v4 = a3;
  v10 = objc_opt_new();
  v5 = [v4 lockscreenId];
  v6 = [(ATXLockscreenMetricsCollector *)self _weeklyRollingIdFromLockscreenId:v5];
  [v10 setLockscreenId:v6];

  v7 = [v4 entryPoint];
  [v10 setEntryPoint:v7];

  [v10 setIsNew:{objc_msgSend(v4, "isNewlyCreated")}];
  [v10 setSecondsSinceLastEdit:{objc_msgSend(v4, "secondsSinceLastEdit")}];
  v8 = [v4 outcome];
  [v10 setOutcome:v8];

  [v10 setDuration:{objc_msgSend(v4, "duration")}];
  [v10 setUserChangedColor:{objc_msgSend(v4, "userChangedColor")}];
  [v10 setUserChangedFont:{objc_msgSend(v4, "userChangedFont")}];
  [v10 setUserChangedNumberingSystem:{objc_msgSend(v4, "userChangedNumberingSystem")}];
  [v10 setUserChangedPosterContent:{objc_msgSend(v4, "userChangedPosterContent")}];
  [v10 setUserChangedWidgets:{objc_msgSend(v4, "userChangedWidgets")}];
  v9 = [v4 didLockscreenHaveWidgetsBeforeEdit];

  [v10 setDidLockscreenHaveWidgetsBeforeEdit:v9];
  [v10 logToCoreAnalytics];
}

- (id)_dailyMetricsDescription_shouldPost:(BOOL)a3
{
  v29 = a3;
  v52 = *MEMORY[0x277D85DE8];
  v4 = +[ATXPosterConfigurationCache sharedInstance];
  v5 = [v4 configurations];

  v33 = objc_opt_new();
  v6 = objc_opt_new();
  v28 = objc_opt_new();
  [ATXLockscreenMetricsCollector _fillSummaryMetric:"_fillSummaryMetric:configurations:" configurations:?];
  v32 = [MEMORY[0x277CEB440] sharedInstance];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v5;
  v34 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v34)
  {
    v31 = *v46;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        v9 = [v8 posterUUID];
        v10 = [(ATXLockscreenMetricsCollector *)self _weeklyRollingIdFromLockscreenId:v9];

        v36 = [(ATXLockscreenMetricsCollector *)self _configurationMetricFromPosterConfiguration:v8 lockscreenId:v10 modeClient:v32];
        [v33 addObject:?];
        v11 = [v8 inlineComplication];
        v12 = [(ATXLockscreenMetricsCollector *)self _widgetMetricFromComplication:v11 lockscreenId:v10 isLandscape:0];

        if (v12)
        {
          [v6 addObject:v12];
        }

        v35 = v12;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v13 = [v8 complications];
        v14 = [v13 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v42;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v42 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [(ATXLockscreenMetricsCollector *)self _widgetMetricFromComplication:*(*(&v41 + 1) + 8 * j) lockscreenId:v10 isLandscape:0];
              if (v18)
              {
                [v6 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v15);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v19 = [v8 landscapeComplications];
        v20 = [v19 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v38;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v38 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [(ATXLockscreenMetricsCollector *)self _widgetMetricFromComplication:*(*(&v37 + 1) + 8 * k) lockscreenId:v10 isLandscape:1];
              if (v24)
              {
                [v6 addObject:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v37 objects:v49 count:16];
          }

          while (v21);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v34);
  }

  if (v29)
  {
    [(ATXLockscreenMetricsCollector *)self _postConfigurationMetrics:v33 widgetMetrics:v6 summaryMetric:v28];
  }

  v25 = [(ATXLockscreenMetricsCollector *)self _dailyMetricsDescriptionGivenConfigurationMetrics:v33 widgetMetrics:v6 summaryMetric:v28];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_configurationMetricFromPosterConfiguration:(id)a3 lockscreenId:(id)a4 modeClient:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setLockscreenId:v9];

  v11 = [v7 font];
  [v10 setFont:v11];

  v12 = [v7 color];
  [v10 setColor:v12];

  v13 = [v7 numberingSystem];
  [v10 setNumberingSystem:v13];

  v14 = [v7 complications];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v7 complications];
    [v10 setNumWidgets:{objc_msgSend(v16, "count")}];
  }

  v17 = [v7 landscapeComplications];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [v7 landscapeComplications];
    [v10 setNumLandscapeWidgets:{objc_msgSend(v19, "count")}];
  }

  [v10 setHasCustomInlineComplication:0];
  v20 = [v7 inlineComplication];

  if (v20)
  {
    [v10 setHasCustomInlineComplication:1];
  }

  v21 = [v7 galleryItem];
  [v10 setSource:{objc_msgSend(v21, "source")}];

  v22 = [v7 extensionBundleIdentifier];
  [v10 setExtensionBundleId:v22];

  if ([v7 isActive])
  {
    [v10 setIsSelected:1];
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x277CBEBD0]);
    v24 = [v23 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v25 = [v24 dictionaryForKey:*MEMORY[0x277CEBDD0]];
    v26 = [v7 posterUUID];
    v27 = [v25 objectForKeyedSubscript:v26];

    if (v27)
    {
      v28 = [MEMORY[0x277CBEA80] currentCalendar];
      v29 = objc_opt_new();
      v30 = [v28 dateByAddingUnit:16 value:-7 toDate:v29 options:0];

      if ([v30 compare:v27] == -1)
      {
        [v10 setIsSelected:1];
      }
    }
  }

  v31 = [v7 modeUUID];
  if (v31)
  {
    v32 = [v8 modeConfigurationForDNDModeWithUUID:v31];
    v33 = v32;
    if (v32)
    {
      v34 = [v32 mode];

      if (v34)
      {
        v35 = [v33 mode];
        [v35 semanticType];
        v36 = DNDModeSemanticTypeToString();
        [v10 setRelatedFocus:v36];
      }
    }
  }

  return v10;
}

- (void)_postConfigurationMetrics:(id)a3 widgetMetrics:(id)a4 summaryMetric:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v24 + 1) + 8 * v13++) logToCoreAnalytics];
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * v18++) logToCoreAnalytics];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  [v9 logToCoreAnalytics];
  v19 = *MEMORY[0x277D85DE8];
}

- (id)_dailyMetricsDescriptionGivenConfigurationMetrics:(id)a3 widgetMetrics:(id)a4 summaryMetric:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  if ([v7 count])
  {
    [v10 appendString:@"\n------------------------------------------------------\n"];
    v11 = [v7 objectAtIndexedSubscript:0];
    v12 = [v11 metricName];
    [v10 appendString:v12];

    [v10 appendString:@"\n"];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v38 + 1) + 8 * i) coreAnalyticsDictionary];
        v19 = [v18 description];
        [v10 appendString:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v15);
  }

  if ([v8 count])
  {
    [v10 appendString:@"\n------------------------------------------------------\n"];
    v20 = [v8 objectAtIndexedSubscript:0];
    v21 = [v20 metricName];
    [v10 appendString:v21];

    [v10 appendString:@"\n"];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v8;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v34 + 1) + 8 * j) coreAnalyticsDictionary];
        v28 = [v27 description];
        [v10 appendString:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v24);
  }

  [v10 appendString:@"\n------------------------------------------------------\n"];
  v29 = [v9 metricName];
  [v10 appendString:v29];

  [v10 appendString:@"\n"];
  v30 = [v9 coreAnalyticsDictionary];
  v31 = [v30 description];
  [v10 appendString:v31];

  v32 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_fillSummaryMetric:(id)a3 configurations:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CEBD00]];
  if (([v7 BOOLForKey:*MEMORY[0x277CEBDB0]] & 1) == 0)
  {
    v10 = v16;
    v11 = 0;
LABEL_8:
    [v10 setEditingUiExperienced:v11];
    goto LABEL_9;
  }

  [v16 setEditingUiExperienced:2];
  if (![v5 count])
  {
    v10 = v16;
    v11 = 1;
    goto LABEL_8;
  }

  if ([v5 count] != 1)
  {
    goto LABEL_9;
  }

  v8 = [v5 objectAtIndexedSubscript:0];
  v9 = [v8 extensionBundleIdentifier];
  if ([v9 isEqualToString:@"com.apple.PaperBoard.LegacyPoster"])
  {

    goto LABEL_13;
  }

  v12 = [v8 extensionBundleIdentifier];
  v13 = [v12 isEqualToString:@"com.apple.WallpaperKit.CollectionsPoster"];

  if (v13)
  {
LABEL_13:
    v14 = [v8 complications];
    if ([v14 count])
    {
    }

    else
    {
      v15 = [v8 inlineComplication];

      if (!v15)
      {
        [v16 setEditingUiExperienced:1];
      }
    }
  }

LABEL_9:
}

- (id)_weeklyRollingIdFromLockscreenId:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v12 = 0;
  [v5 rangeOfUnit:0x2000 startDate:&v12 interval:0 forDate:v6];
  v7 = v12;
  v8 = [v4 hash];

  v9 = [v7 hash];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v9 - v8 + 32 * v8];

  return v10;
}

@end