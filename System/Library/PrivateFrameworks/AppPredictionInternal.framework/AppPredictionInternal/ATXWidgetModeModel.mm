@interface ATXWidgetModeModel
+ (id)fetchAvailableWidgets;
- (ATXWidgetModeModel)initWithMode:(unint64_t)mode globalWidgetPopularityModel:(id)model;
- (double)scoreFromCorrelationStatistics:(id)statistics;
- (id)scoredEntitiesWithScoredAppEntities:(id)entities;
- (id)scoredWidgetModeEntityWithWidgetFeatures:(id)features widget:(id)widget scoredApp:(id)app;
- (id)widgetModeEntityForDescriptor:(id)descriptor widgetSize:(int64_t)size scoredAppEntities:(id)entities;
- (id)widgetModeEntityForWidgetId:(id)id widgetFeatures:(id)features availableWidgets:(id)widgets scoredAppEntities:(id)entities;
- (void)addEntitySpecificFeaturesToWidgetFeatures:(id)features scoredApp:(id)app;
@end

@implementation ATXWidgetModeModel

- (ATXWidgetModeModel)initWithMode:(unint64_t)mode globalWidgetPopularityModel:(id)model
{
  modelCopy = model;
  v13.receiver = self;
  v13.super_class = ATXWidgetModeModel;
  v8 = [(ATXWidgetModeModel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = mode;
    v10 = objc_opt_new();
    widgetModeEntityModelWeights = v9->_widgetModeEntityModelWeights;
    v9->_widgetModeEntityModelWeights = v10;

    objc_storeStrong(&v9->_widgetPopularityModel, model);
  }

  return v9;
}

- (id)scoredEntitiesWithScoredAppEntities:(id)entities
{
  entitiesCopy = entities;
  v5 = objc_opt_new();
  v6 = +[ATXWidgetModeModel fetchAvailableWidgets];
  v7 = [ATXModeEntityModelTrainer eventProviderForMode:self->_mode];
  if (v7)
  {
    v8 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:0];
    entityFeaturesForWidgetScoring = [(ATXModeEntityCorrelator *)v8 entityFeaturesForWidgetScoring];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__ATXWidgetModeModel_scoredEntitiesWithScoredAppEntities___block_invoke;
    v20[3] = &unk_2785970E0;
    v20[4] = self;
    v10 = v6;
    v21 = v10;
    v11 = entitiesCopy;
    v22 = v11;
    v12 = v5;
    v23 = v12;
    [entityFeaturesForWidgetScoring enumerateKeysAndObjectsUsingBlock:v20];
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
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v3 = objc_opt_new();
  homeScreenDescriptors = [mEMORY[0x277CEB998] homeScreenDescriptors];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ATXWidgetModeModel_fetchAvailableWidgets__block_invoke;
  v7[3] = &unk_278597130;
  v5 = v3;
  v8 = v5;
  [homeScreenDescriptors enumerateObjectsUsingBlock:v7];

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

- (id)widgetModeEntityForWidgetId:(id)id widgetFeatures:(id)features availableWidgets:(id)widgets scoredAppEntities:(id)entities
{
  v49 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  widgetsCopy = widgets;
  entitiesCopy = entities;
  entity = [featuresCopy entity];
  widget = [entity widget];

  extensionIdentity = [widget extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  if (!containerBundleIdentifier)
  {
    goto LABEL_8;
  }

  v16 = containerBundleIdentifier;
  extensionIdentity2 = [widget extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity2 extensionBundleIdentifier];
  if (!extensionBundleIdentifier)
  {

LABEL_8:
    goto LABEL_9;
  }

  v19 = extensionBundleIdentifier;
  kind = [widget kind];

  if (kind)
  {
    selfCopy = self;
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    extensionIdentity3 = [widget extensionIdentity];
    containerBundleIdentifier2 = [extensionIdentity3 containerBundleIdentifier];
    extensionIdentity4 = [widget extensionIdentity];
    extensionBundleIdentifier2 = [extensionIdentity4 extensionBundleIdentifier];
    kind2 = [widget kind];
    v27 = [v21 initWithFormat:@"%@:%@:%@", containerBundleIdentifier2, extensionBundleIdentifier2, kind2];

    v28 = [widgetsCopy objectForKeyedSubscript:v27];

    if (v28)
    {
      extensionIdentity5 = [widget extensionIdentity];
      containerBundleIdentifier3 = [extensionIdentity5 containerBundleIdentifier];
      v31 = [entitiesCopy objectForKeyedSubscript:containerBundleIdentifier3];
      v28 = [(ATXWidgetModeModel *)selfCopy scoredWidgetModeEntityWithWidgetFeatures:featuresCopy widget:widget scoredApp:v31];
    }

    goto LABEL_12;
  }

LABEL_9:
  v32 = __atxlog_handle_modes();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    extensionIdentity6 = [widget extensionIdentity];
    containerBundleIdentifier4 = [extensionIdentity6 containerBundleIdentifier];
    extensionIdentity7 = [widget extensionIdentity];
    extensionBundleIdentifier3 = [extensionIdentity7 extensionBundleIdentifier];
    kind3 = [widget kind];
    *buf = 136315906;
    v42 = "[ATXWidgetModeModel widgetModeEntityForWidgetId:widgetFeatures:availableWidgets:scoredAppEntities:]";
    v43 = 2112;
    v44 = containerBundleIdentifier4;
    v45 = 2112;
    v46 = extensionBundleIdentifier3;
    v47 = 2112;
    v48 = kind3;
    _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "%s: Widget properties containerBundleIdentifier:'%@' extensionBundleIdentifier:'%@' kind:'%@' must all be non-null in order to be scored.", buf, 0x2Au);
  }

  v28 = 0;
LABEL_12:

  v38 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)widgetModeEntityForDescriptor:(id)descriptor widgetSize:(int64_t)size scoredAppEntities:(id)entities
{
  descriptorCopy = descriptor;
  entitiesCopy = entities;
  v10 = CHSWidgetFamilyMaskFromWidgetFamily();
  if (([descriptorCopy supportedFamilies] & v10) != 0)
  {
    v11 = objc_alloc(MEMORY[0x277CFA358]);
    extensionIdentity = [descriptorCopy extensionIdentity];
    kind = [descriptorCopy kind];
    v14 = [v11 initWithExtensionIdentity:extensionIdentity kind:kind family:size intent:0 activityIdentifier:0];

    extensionIdentity2 = [descriptorCopy extensionIdentity];
    containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
    v17 = [entitiesCopy objectForKeyedSubscript:containerBundleIdentifier];

    v18 = [(ATXWidgetModeModel *)self scoredWidgetModeEntityWithWidgetFeatures:0 widget:v14 scoredApp:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)scoredWidgetModeEntityWithWidgetFeatures:(id)features widget:(id)widget scoredApp:(id)app
{
  featuresCopy = features;
  appCopy = app;
  if (!featuresCopy)
  {
    widgetCopy = widget;
    featuresCopy = objc_opt_new();
    v11 = [objc_alloc(MEMORY[0x277CEB9A8]) initWithWidget:widgetCopy];

    [featuresCopy setEntity:v11];
  }

  [(ATXWidgetModeModel *)self addEntitySpecificFeaturesToWidgetFeatures:featuresCopy scoredApp:appCopy];
  [(ATXWidgetModeModel *)self scoreFromCorrelationStatistics:featuresCopy];
  v13 = v12;
  v14 = objc_opt_new();
  [v14 setScore:v13];
  jsonRepresentation = [featuresCopy jsonRepresentation];
  [v14 setFeatureVector:jsonRepresentation];

  entity = [featuresCopy entity];
  [entity setScoreMetadata:v14];

  entity2 = [featuresCopy entity];

  return entity2;
}

- (void)addEntitySpecificFeaturesToWidgetFeatures:(id)features scoredApp:(id)app
{
  featuresCopy = features;
  if (featuresCopy)
  {
    v28 = featuresCopy;
    appCopy = app;
    entitySpecificFeatures = [v28 entitySpecificFeatures];
    v9 = entitySpecificFeatures;
    if (entitySpecificFeatures)
    {
      v10 = entitySpecificFeatures;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    v12 = MEMORY[0x277CCABB0];
    scoreMetadata = [appCopy scoreMetadata];
    [scoreMetadata score];
    v14 = [v12 numberWithDouble:?];
    [v11 setParentAppScore:v14];

    entity = [v28 entity];
    widget = [entity widget];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    extensionIdentity = [widget extensionIdentity];
    extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
    kind = [widget kind];
    v21 = [v17 initWithFormat:@"%@:%@", extensionBundleIdentifier, kind];

    v22 = MEMORY[0x277CCABB0];
    [(ATXGlobalWidgetPopularityModel *)self->_widgetPopularityModel scoreForBundleIdAndKind:v21 scalingFactor:1.0];
    v23 = [v22 numberWithDouble:?];
    [v11 setWidgetGlobalPrior:v23];
    scoreMetadata2 = [appCopy scoreMetadata];

    featureVector = [scoreMetadata2 featureVector];

    v26 = [featureVector objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
    v27 = [v26 objectForKeyedSubscript:@"globalModeAffinityPrior"];

    if (v27)
    {
      [v11 setParentAppGlobalPrior:v27];
    }

    [v28 setEntitySpecificFeatures:v11];

    featuresCopy = v28;
  }
}

- (double)scoreFromCorrelationStatistics:(id)statistics
{
  widgetModeEntityModelWeights = self->_widgetModeEntityModelWeights;
  statisticsCopy = statistics;
  [(ATXWidgetModeEntityModelWeights *)widgetModeEntityModelWeights classConditionalProbability];
  v7 = v6;
  [statisticsCopy classConditionalProbability];
  v9 = v7 * v8;
  globalOccurrences = [statisticsCopy globalOccurrences];
  [(ATXWidgetModeEntityModelWeights *)self->_widgetModeEntityModelWeights globalPopularity];
  v12 = v11;
  [statisticsCopy globalPopularity];
  v14 = v12 * v13;
  [(ATXWidgetModeEntityModelWeights *)self->_widgetModeEntityModelWeights posteriorProbability];
  v16 = v15;
  [statisticsCopy posteriorProbability];
  v18 = v16 * v17;
  [(ATXWidgetModeEntityModelWeights *)self->_widgetModeEntityModelWeights modePopularity];
  v20 = v19;
  [statisticsCopy modePopularity];
  v22 = v20 * v21;
  v23 = [statisticsCopy entityOccurredInModeOverLastNDays:{-[ATXWidgetModeEntityModelWeights numOfDays](self->_widgetModeEntityModelWeights, "numOfDays")}];
  v24 = v14 + v9 + v18 + v22;
  v25 = (1.0 / (expf(-v24) + 1.0));
  if (globalOccurrences)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  if ([statisticsCopy uniqueOccurrencesInMode] < 3)
  {
    v26 = v26 * v23 * 0.5;
  }

  entitySpecificFeatures = [statisticsCopy entitySpecificFeatures];

  parentAppScore = [entitySpecificFeatures parentAppScore];
  [parentAppScore doubleValue];
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