@interface ATXSuggestedPagesModeAffinityWidgetDataSource
- (double)_fetchScoreThresholdForWidgetModeAffinityModel;
- (id)_widgetIdentifierWithoutIntentForCHSWidget:(id)widget;
- (id)_widgetIdentifierWithoutIntentForWidget:(id)widget;
- (id)fetchWidgetsPassingThresholdForMode:(unint64_t)mode forSize:(unint64_t)size;
- (id)provideWidgetsForPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesModeAffinityWidgetDataSource

- (id)provideWidgetsForPageType:(int64_t)type environment:(id)environment
{
  environment = [ATXSuggestedPagesUtils modeForSuggestedPageType:type, environment];
  v7 = MEMORY[0x277CBEB98];
  v8 = allModesForTraining();
  v9 = [v7 setWithArray:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:environment];
  v11 = [v9 containsObject:v10];

  if (v11)
  {
    v12 = objc_opt_new();
    isiPad = [MEMORY[0x277D42590] isiPad];
    v14 = MEMORY[0x277CBEBF8];
    if (isiPad)
    {
      v15 = [(ATXSuggestedPagesModeAffinityWidgetDataSource *)self fetchWidgetsPassingThresholdForMode:environment forSize:2];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      [v12 addObjectsFromArray:v17];
    }

    v18 = [(ATXSuggestedPagesModeAffinityWidgetDataSource *)self fetchWidgetsPassingThresholdForMode:environment forSize:1];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v14;
    }

    [v12 addObjectsFromArray:v20];

    v21 = [(ATXSuggestedPagesModeAffinityWidgetDataSource *)self fetchWidgetsPassingThresholdForMode:environment forSize:0];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v14;
    }

    [v12 addObjectsFromArray:v23];
  }

  else
  {
    v24 = __atxlog_handle_modes();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ATXSuggestedPagesModeAffinityWidgetDataSource provideWidgetsForPageType:type environment:v24];
    }

    v12 = 0;
  }

  return v12;
}

- (id)fetchWidgetsPassingThresholdForMode:(unint64_t)mode forSize:(unint64_t)size
{
  v97 = *MEMORY[0x277D85DE8];
  [(ATXSuggestedPagesModeAffinityWidgetDataSource *)self _fetchScoreThresholdForWidgetModeAffinityModel];
  v8 = v7;
  v9 = +[ATXModeEntityScorerServer sharedInstance];
  v10 = [v9 rankedWidgetsForMode:mode];

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __93__ATXSuggestedPagesModeAffinityWidgetDataSource_fetchWidgetsPassingThresholdForMode_forSize___block_invoke;
  v89[3] = &unk_2785A1728;
  selfCopy = self;
  v89[4] = self;
  v82 = [v10 _pas_mappedArrayWithTransform:v89];
  v11 = objc_opt_new();
  v84 = objc_opt_new();
  v75 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v10;
  v81 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
  if (!v81)
  {
    goto LABEL_38;
  }

  v80 = *v86;
  *&v12 = 138412802;
  v73 = v12;
  sizeCopy = size;
  v77 = v11;
  while (2)
  {
    for (i = 0; i != v81; ++i)
    {
      if (*v86 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v85 + 1) + 8 * i);
      v15 = objc_autoreleasePoolPush();
      v16 = [v11 count];
      if ([v84 count] + v16 == 4)
      {
        objc_autoreleasePoolPop(v15);
        goto LABEL_38;
      }

      v17 = objc_alloc_init(MEMORY[0x277CEB5B0]);
      widget = [v14 widget];
      kind = [widget kind];
      [v17 setWidgetKind:kind];

      widget2 = [v14 widget];
      extensionIdentity = [widget2 extensionIdentity];
      extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
      [v17 setExtensionBundleId:extensionBundleIdentifier];

      widget3 = [v14 widget];
      extensionIdentity2 = [widget3 extensionIdentity];
      containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
      [v17 setAppBundleId:containerBundleIdentifier];

      [v17 setSize:size];
      scoreMetadata = [v14 scoreMetadata];
      [scoreMetadata score];
      [v17 setScore:?];

      [v17 setPredictionSource:@"Mode Entity"];
      [v17 setRequiresAppLaunch:1];
      v27 = [(ATXSuggestedPagesModeAffinityWidgetDataSource *)selfCopy _widgetIdentifierWithoutIntentForWidget:v17];
      LOBYTE(extensionIdentity2) = [v82 containsObject:v27];

      if (extensionIdentity2)
      {
        scoreMetadata2 = [v14 scoreMetadata];
        featureVector = [scoreMetadata2 featureVector];

        v30 = [featureVector objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
        v31 = [v30 objectForKeyedSubscript:@"parentAppGlobalPrior"];

        v78 = [featureVector objectForKeyedSubscript:@"correlationNumLocalOccurrences"];
        v32 = [featureVector objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
        v83 = [v32 objectForKeyedSubscript:@"widgetGlobalPrior"];

        widget4 = [v14 widget];
        extensionIdentity3 = [widget4 extensionIdentity];
        containerBundleIdentifier2 = [extensionIdentity3 containerBundleIdentifier];

        if (containerBundleIdentifier2)
        {
          v36 = [v84 objectForKeyedSubscript:containerBundleIdentifier2];
          if (v36)
          {
            v37 = v36;
            [v83 doubleValue];
            v39 = v38;
            v40 = [v75 objectForKeyedSubscript:containerBundleIdentifier2];
            [v40 doubleValue];
            v42 = v41;

            if (v39 > v42)
            {
              v43 = __atxlog_handle_modes();
              v11 = v77;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v91 = containerBundleIdentifier2;
                _os_log_impl(&dword_2263AA000, v43, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: replacing widget prediction since this widget from the app (%@) has higher global popularity", buf, 0xCu);
              }

              [v75 setObject:v83 forKeyedSubscript:containerBundleIdentifier2];
              v44 = [v84 objectForKeyedSubscript:containerBundleIdentifier2];
              [v44 score];
              [v17 setScore:?];

              v45 = [v84 objectForKeyedSubscript:containerBundleIdentifier2];
              predictionSource = [v45 predictionSource];
              [v17 setPredictionSource:predictionSource];

              [v84 setObject:v17 forKeyedSubscript:containerBundleIdentifier2];
              size = sizeCopy;
              v47 = v78;
              goto LABEL_33;
            }
          }
        }

        [v31 doubleValue];
        v11 = v77;
        v47 = v78;
        if (v50 <= 8.0 || [v78 integerValue] < 1)
        {
          [v31 doubleValue];
          if (v56 <= 5.0 || ([v83 doubleValue], v57 < 0.0005))
          {
            scoreMetadata3 = [v14 scoreMetadata];
            [scoreMetadata3 score];
            v60 = v59;

            size = sizeCopy;
            if (v60 <= v8)
            {
LABEL_33:

              goto LABEL_34;
            }

            v61 = __atxlog_handle_modes();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              identifier = [v14 identifier];
              scoreMetadata4 = [v14 scoreMetadata];
              [scoreMetadata4 score];
              *buf = 138412546;
              v91 = identifier;
              v92 = 2048;
              v93 = v64;
              _os_log_impl(&dword_2263AA000, v61, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: %@ passes widget mode affinity threshold with score: %f", buf, 0x16u);

              size = sizeCopy;
            }

            if (containerBundleIdentifier2)
            {
              goto LABEL_32;
            }

LABEL_27:
            v11 = v77;
            [v77 addObject:v17];
            goto LABEL_33;
          }

          v65 = __atxlog_handle_modes();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            identifier2 = [v14 identifier];
            [v83 doubleValue];
            v68 = v67;
            [v31 doubleValue];
            *buf = v73;
            v91 = identifier2;
            v92 = 2048;
            v93 = v68;
            v94 = 2048;
            v95 = v69;
            _os_log_impl(&dword_2263AA000, v65, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: %@ has widget popularity: %f and passes parent app global prior threshold with score: %f", buf, 0x20u);
          }

          [v31 doubleValue];
          [v17 setScore:?];
          v54 = v17;
          v55 = @"Widget Popularity";
        }

        else
        {
          v51 = __atxlog_handle_modes();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            identifier3 = [v14 identifier];
            [v31 doubleValue];
            *buf = 138412546;
            v91 = identifier3;
            v92 = 2048;
            v93 = v53;
            _os_log_impl(&dword_2263AA000, v51, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: %@ has local engagement and passes parent app global prior threshold with score: %f", buf, 0x16u);
          }

          [v31 doubleValue];
          [v17 setScore:?];
          v54 = v17;
          v55 = @"Global Mode Entity";
        }

        [v54 setPredictionSource:v55];
        size = sizeCopy;
        if (containerBundleIdentifier2)
        {
LABEL_32:
          [v75 setObject:v83 forKeyedSubscript:containerBundleIdentifier2];
          [v84 setObject:v17 forKeyedSubscript:containerBundleIdentifier2];
          v11 = v77;
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      featureVector = __atxlog_handle_modes();
      if (os_log_type_enabled(featureVector, OS_LOG_TYPE_INFO))
      {
        identifier4 = [v14 identifier];
        CHSWidgetFamilyFromATXStackLayoutSize();
        v49 = NSStringFromWidgetFamily();
        *buf = 138543618;
        v91 = identifier4;
        v92 = 2114;
        v93 = v49;
        _os_log_impl(&dword_2263AA000, featureVector, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: %{public}@ widget does not exist in the preferred size: %{public}@ for this suggested page type", buf, 0x16u);
      }

LABEL_34:

      objc_autoreleasePoolPop(v15);
    }

    v81 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
    if (v81)
    {
      continue;
    }

    break;
  }

LABEL_38:

  allValues = [v84 allValues];
  [v11 addObjectsFromArray:allValues];

  v71 = *MEMORY[0x277D85DE8];

  return v11;
}

id __93__ATXSuggestedPagesModeAffinityWidgetDataSource_fetchWidgetsPassingThresholdForMode_forSize___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 widget];
  v4 = [v2 _widgetIdentifierWithoutIntentForCHSWidget:v3];

  return v4;
}

- (double)_fetchScoreThresholdForWidgetModeAffinityModel
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = *MEMORY[0x277CEBB80];
  v5 = [v3 objectForKey:*MEMORY[0x277CEBB80]];

  if (v5)
  {
    [v3 doubleForKey:v4];
    v7 = v6;
  }

  else
  {
    v7 = 0.3;
  }

  return v7;
}

- (id)_widgetIdentifierWithoutIntentForCHSWidget:(id)widget
{
  v3 = MEMORY[0x277CCACA8];
  widgetCopy = widget;
  v5 = [v3 alloc];
  extensionIdentity = [widgetCopy extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  extensionIdentity2 = [widgetCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
  kind = [widgetCopy kind];
  [widgetCopy family];

  v11 = NSStringFromWidgetFamily();
  v12 = [v5 initWithFormat:@"%@:%@:%@:%@", extensionBundleIdentifier, containerBundleIdentifier, kind, v11];

  return v12;
}

- (id)_widgetIdentifierWithoutIntentForWidget:(id)widget
{
  v3 = MEMORY[0x277CCACA8];
  widgetCopy = widget;
  v5 = [v3 alloc];
  extensionBundleId = [widgetCopy extensionBundleId];
  appBundleId = [widgetCopy appBundleId];
  widgetKind = [widgetCopy widgetKind];
  [widgetCopy size];

  CHSWidgetFamilyFromATXStackLayoutSize();
  v9 = NSStringFromWidgetFamily();
  v10 = [v5 initWithFormat:@"%@:%@:%@:%@", extensionBundleId, appBundleId, widgetKind, v9];

  return v10;
}

- (void)provideWidgetsForPageType:(uint64_t)a1 environment:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromATXSuggestedPageType();
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesModeAffinityWidgetDataSource: No mode affinity model found for suggested page type: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end