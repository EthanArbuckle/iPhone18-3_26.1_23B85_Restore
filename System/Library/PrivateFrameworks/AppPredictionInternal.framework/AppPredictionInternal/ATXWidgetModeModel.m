@interface ATXWidgetModeModel
+ (id)fetchAvailableWidgets;
- (ATXWidgetModeModel)initWithMode:(unint64_t)a3 globalWidgetPopularityModel:(id)a4;
- (double)scoreFromCorrelationStatistics:(id)a3;
- (id)scoredEntitiesWithScoredAppEntities:(id)a3;
- (id)scoredWidgetModeEntityWithWidgetFeatures:(id)a3 widget:(id)a4 scoredApp:(id)a5;
- (id)widgetModeEntityForDescriptor:(id)a3 widgetSize:(int64_t)a4 scoredAppEntities:(id)a5;
- (id)widgetModeEntityForWidgetId:(id)a3 widgetFeatures:(id)a4 availableWidgets:(id)a5 scoredAppEntities:(id)a6;
- (void)addEntitySpecificFeaturesToWidgetFeatures:(id)a3 scoredApp:(id)a4;
@end

@implementation ATXWidgetModeModel

- (ATXWidgetModeModel)initWithMode:(unint64_t)a3 globalWidgetPopularityModel:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ATXWidgetModeModel;
  v8 = [(ATXWidgetModeModel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = a3;
    v10 = objc_opt_new();
    widgetModeEntityModelWeights = v9->_widgetModeEntityModelWeights;
    v9->_widgetModeEntityModelWeights = v10;

    objc_storeStrong(&v9->_widgetPopularityModel, a4);
  }

  return v9;
}

- (id)scoredEntitiesWithScoredAppEntities:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[ATXWidgetModeModel fetchAvailableWidgets];
  v7 = [ATXModeEntityModelTrainer eventProviderForMode:self->_mode];
  if (v7)
  {
    v8 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:0];
    v9 = [(ATXModeEntityCorrelator *)v8 entityFeaturesForWidgetScoring];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__ATXWidgetModeModel_scoredEntitiesWithScoredAppEntities___block_invoke;
    v20[3] = &unk_2785970E0;
    v20[4] = self;
    v10 = v6;
    v21 = v10;
    v11 = v4;
    v22 = v11;
    v12 = v5;
    v23 = v12;
    [v9 enumerateKeysAndObjectsUsingBlock:v20];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__ATXWidgetModeModel_scoredEntitiesWithScoredAppEntities___block_invoke_2;
    v17[3] = &unk_278597108;
    v17[4] = self;
    v18 = v11;
    v13 = v12;
    v19 = v13;
    [v10 enumerateKeysAndObjectsUsingBlock:v17];
    v14 = v19;
    v15 = v13;
  }

  else
  {
    v8 = __atxlog_handle_modes();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetModeModel scoredEntitiesWithScoredAppEntities:?];
    }
  }

  return v5;
}

void __58__ATXWidgetModeModel_scoredEntitiesWithScoredAppEntities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v6 = [*(a1 + 32) widgetModeEntityForWidgetId:? widgetFeatures:? availableWidgets:? scoredAppEntities:?];
  if (v6)
  {
    [*(a1 + 56) setObject:v6 forKey:v7];
  }
}

void __58__ATXWidgetModeModel_scoredEntitiesWithScoredAppEntities___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 1; i != 5; ++i)
  {
    v6 = [*(a1 + 32) widgetModeEntityForDescriptor:a3 widgetSize:i scoredAppEntities:*(a1 + 40)];
    v7 = v6;
    if (v6)
    {
      v8 = *(a1 + 48);
      v9 = [v6 identifier];
      v10 = [v8 objectForKeyedSubscript:v9];

      if (!v10)
      {
        v11 = *(a1 + 48);
        v12 = [v7 identifier];
        [v11 setObject:v7 forKey:v12];
      }
    }
  }
}

+ (id)fetchAvailableWidgets
{
  v2 = [MEMORY[0x277CEB998] sharedInstance];
  v3 = objc_opt_new();
  v4 = [v2 homeScreenDescriptors];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ATXWidgetModeModel_fetchAvailableWidgets__block_invoke;
  v7[3] = &unk_278597130;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __43__ATXWidgetModeModel_fetchAvailableWidgets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v3 extensionIdentity];
  v6 = [v5 containerBundleIdentifier];
  v7 = [v3 extensionIdentity];
  v8 = [v7 extensionBundleIdentifier];
  v9 = [v3 kind];
  v10 = [v4 initWithFormat:@"%@:%@:%@", v6, v8, v9];

  v11 = [*(a1 + 32) objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = __atxlog_handle_modes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __43__ATXWidgetModeModel_fetchAvailableWidgets__block_invoke_cold_1(v3, v12);
    }
  }

  else
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v10];
  }
}

- (id)widgetModeEntityForWidgetId:(id)a3 widgetFeatures:(id)a4 availableWidgets:(id)a5 scoredAppEntities:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 entity];
  v13 = [v12 widget];

  v14 = [v13 extensionIdentity];
  v15 = [v14 containerBundleIdentifier];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v17 = [v13 extensionIdentity];
  v18 = [v17 extensionBundleIdentifier];
  if (!v18)
  {

LABEL_8:
    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v13 kind];

  if (v20)
  {
    v40 = self;
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = [v13 extensionIdentity];
    v23 = [v22 containerBundleIdentifier];
    v24 = [v13 extensionIdentity];
    v25 = [v24 extensionBundleIdentifier];
    v26 = [v13 kind];
    v27 = [v21 initWithFormat:@"%@:%@:%@", v23, v25, v26];

    v28 = [v10 objectForKeyedSubscript:v27];

    if (v28)
    {
      v29 = [v13 extensionIdentity];
      v30 = [v29 containerBundleIdentifier];
      v31 = [v11 objectForKeyedSubscript:v30];
      v28 = [(ATXWidgetModeModel *)v40 scoredWidgetModeEntityWithWidgetFeatures:v9 widget:v13 scoredApp:v31];
    }

    goto LABEL_12;
  }

LABEL_9:
  v32 = __atxlog_handle_modes();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v13 extensionIdentity];
    v34 = [v33 containerBundleIdentifier];
    v35 = [v13 extensionIdentity];
    v36 = [v35 extensionBundleIdentifier];
    v37 = [v13 kind];
    *buf = 136315906;
    v42 = "[ATXWidgetModeModel widgetModeEntityForWidgetId:widgetFeatures:availableWidgets:scoredAppEntities:]";
    v43 = 2112;
    v44 = v34;
    v45 = 2112;
    v46 = v36;
    v47 = 2112;
    v48 = v37;
    _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "%s: Widget properties containerBundleIdentifier:'%@' extensionBundleIdentifier:'%@' kind:'%@' must all be non-null in order to be scored.", buf, 0x2Au);
  }

  v28 = 0;
LABEL_12:

  v38 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)widgetModeEntityForDescriptor:(id)a3 widgetSize:(int64_t)a4 scoredAppEntities:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = CHSWidgetFamilyMaskFromWidgetFamily();
  if (([v8 supportedFamilies] & v10) != 0)
  {
    v11 = objc_alloc(MEMORY[0x277CFA358]);
    v12 = [v8 extensionIdentity];
    v13 = [v8 kind];
    v14 = [v11 initWithExtensionIdentity:v12 kind:v13 family:a4 intent:0 activityIdentifier:0];

    v15 = [v8 extensionIdentity];
    v16 = [v15 containerBundleIdentifier];
    v17 = [v9 objectForKeyedSubscript:v16];

    v18 = [(ATXWidgetModeModel *)self scoredWidgetModeEntityWithWidgetFeatures:0 widget:v14 scoredApp:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)scoredWidgetModeEntityWithWidgetFeatures:(id)a3 widget:(id)a4 scoredApp:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    v10 = a4;
    v8 = objc_opt_new();
    v11 = [objc_alloc(MEMORY[0x277CEB9A8]) initWithWidget:v10];

    [v8 setEntity:v11];
  }

  [(ATXWidgetModeModel *)self addEntitySpecificFeaturesToWidgetFeatures:v8 scoredApp:v9];
  [(ATXWidgetModeModel *)self scoreFromCorrelationStatistics:v8];
  v13 = v12;
  v14 = objc_opt_new();
  [v14 setScore:v13];
  v15 = [v8 jsonRepresentation];
  [v14 setFeatureVector:v15];

  v16 = [v8 entity];
  [v16 setScoreMetadata:v14];

  v17 = [v8 entity];

  return v17;
}

- (void)addEntitySpecificFeaturesToWidgetFeatures:(id)a3 scoredApp:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v28 = v6;
    v7 = a4;
    v8 = [v28 entitySpecificFeatures];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    v12 = MEMORY[0x277CCABB0];
    v13 = [v7 scoreMetadata];
    [v13 score];
    v14 = [v12 numberWithDouble:?];
    [v11 setParentAppScore:v14];

    v15 = [v28 entity];
    v16 = [v15 widget];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [v16 extensionIdentity];
    v19 = [v18 extensionBundleIdentifier];
    v20 = [v16 kind];
    v21 = [v17 initWithFormat:@"%@:%@", v19, v20];

    v22 = MEMORY[0x277CCABB0];
    [(ATXGlobalWidgetPopularityModel *)self->_widgetPopularityModel scoreForBundleIdAndKind:v21 scalingFactor:1.0];
    v23 = [v22 numberWithDouble:?];
    [v11 setWidgetGlobalPrior:v23];
    v24 = [v7 scoreMetadata];

    v25 = [v24 featureVector];

    v26 = [v25 objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
    v27 = [v26 objectForKeyedSubscript:@"globalModeAffinityPrior"];

    if (v27)
    {
      [v11 setParentAppGlobalPrior:v27];
    }

    [v28 setEntitySpecificFeatures:v11];

    v6 = v28;
  }
}

- (double)scoreFromCorrelationStatistics:(id)a3
{
  widgetModeEntityModelWeights = self->_widgetModeEntityModelWeights;
  v5 = a3;
  [(ATXWidgetModeEntityModelWeights *)widgetModeEntityModelWeights classConditionalProbability];
  v7 = v6;
  [v5 classConditionalProbability];
  v9 = v7 * v8;
  v10 = [v5 globalOccurrences];
  [(ATXWidgetModeEntityModelWeights *)self->_widgetModeEntityModelWeights globalPopularity];
  v12 = v11;
  [v5 globalPopularity];
  v14 = v12 * v13;
  [(ATXWidgetModeEntityModelWeights *)self->_widgetModeEntityModelWeights posteriorProbability];
  v16 = v15;
  [v5 posteriorProbability];
  v18 = v16 * v17;
  [(ATXWidgetModeEntityModelWeights *)self->_widgetModeEntityModelWeights modePopularity];
  v20 = v19;
  [v5 modePopularity];
  v22 = v20 * v21;
  v23 = [v5 entityOccurredInModeOverLastNDays:{-[ATXWidgetModeEntityModelWeights numOfDays](self->_widgetModeEntityModelWeights, "numOfDays")}];
  v24 = v14 + v9 + v18 + v22;
  v25 = (1.0 / (expf(-v24) + 1.0));
  if (v10)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  if ([v5 uniqueOccurrencesInMode] < 3)
  {
    v26 = v26 * v23 * 0.5;
  }

  v27 = [v5 entitySpecificFeatures];

  v28 = [v27 parentAppScore];
  [v28 doubleValue];
  [(ATXWidgetModeModel *)self combineWidgetModeProbability:v26 withAppModeProbabiilty:v29];
  v31 = v30;

  return v31;
}

void __43__ATXWidgetModeModel_fetchAvailableWidgets__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a1 extensionIdentity];
  v5 = [v4 containerBundleIdentifier];
  v6 = [a1 extensionIdentity];
  v7 = [v6 extensionBundleIdentifier];
  v8 = [a1 kind];
  v10 = 138412802;
  v11 = v5;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXWidgetModeModel: duplicate descriptor for containerBundleIdentifier:%@, extensionBundleIdentifier: %@, kind:%@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end