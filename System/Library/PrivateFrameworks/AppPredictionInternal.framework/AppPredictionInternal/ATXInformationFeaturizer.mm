@interface ATXInformationFeaturizer
- (double)_fetchAppLaunchCountForBundleIdentifier:(id)identifier;
- (double)_fetchAppLaunchPopularityForBundleIdentifier:(id)identifier;
- (double)_fetchFeedbackForWidgetBundleId:(id)id type:(unint64_t)type;
- (id)_featureSetForSuggestion:(id)suggestion;
- (id)featurizeInfoSuggestions:(id)suggestions;
- (id)featurizeTimelineWithWidgetBundleId:(id)id widgetKind:(id)kind appBundleIdentifier:(id)identifier;
- (id)populateFeatureSetForWidgetBundleId:(id)id widgetKind:(id)kind appBundleIdentifier:(id)identifier;
- (void)_lazyLoadAppLaunchHistogram;
- (void)_lazyLoadWidgetFeedbackHistogram;
@end

@implementation ATXInformationFeaturizer

- (id)featurizeInfoSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = suggestionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(ATXInformationFeaturizer *)self _featureSetForSuggestion:v11, v16];
        v13 = [[ATXFeaturizedInfoSuggestion alloc] initWithSuggestion:v11 featureSet:v12];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_featureSetForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
  widgetKind = [suggestionCopy widgetKind];
  appBundleIdentifier = [suggestionCopy appBundleIdentifier];
  v8 = [(ATXInformationFeaturizer *)self populateFeatureSetForWidgetBundleId:widgetBundleIdentifier widgetKind:widgetKind appBundleIdentifier:appBundleIdentifier];

  confidenceLevel = [suggestionCopy confidenceLevel];
  [v8 appendFeature:4 value:confidenceLevel];
  build = [v8 build];

  return build;
}

- (id)populateFeatureSetForWidgetBundleId:(id)id widgetKind:(id)kind appBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idCopy = id;
  v9 = objc_opt_new();
  [(ATXInformationFeaturizer *)self _fetchAppLaunchPopularityForBundleIdentifier:identifierCopy];
  v11 = v10;
  [(ATXInformationFeaturizer *)self _fetchAppLaunchCountForBundleIdentifier:identifierCopy];
  v13 = v12;

  [v9 appendFeature:2 value:v11];
  [v9 appendFeature:3 value:v13];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:idCopy type:2];
  [v9 appendFeature:1 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:idCopy type:0];
  [v9 appendFeature:5 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:idCopy type:3];
  [v9 appendFeature:6 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:idCopy type:4];
  [v9 appendFeature:7 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:idCopy type:7];
  [v9 appendFeature:9 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:idCopy type:1];
  v15 = v14;

  [v9 appendFeature:8 value:v15];

  return v9;
}

- (id)featurizeTimelineWithWidgetBundleId:(id)id widgetKind:(id)kind appBundleIdentifier:(id)identifier
{
  v5 = [(ATXInformationFeaturizer *)self populateFeatureSetForWidgetBundleId:id widgetKind:kind appBundleIdentifier:identifier];
  build = [v5 build];

  return build;
}

- (void)_lazyLoadAppLaunchHistogram
{
  if (!self->_appLaunchHistory)
  {
    v6 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v4 = [v6 histogramForLaunchType:0];
    appLaunchHistory = self->_appLaunchHistory;
    self->_appLaunchHistory = v4;
  }
}

- (void)_lazyLoadWidgetFeedbackHistogram
{
  if (!self->_widgetFeedback)
  {
    v4 = objc_opt_new();
    widgetFeedback = self->_widgetFeedback;
    self->_widgetFeedback = v4;

    MEMORY[0x2821F96F8](v4, widgetFeedback);
  }
}

- (double)_fetchAppLaunchPopularityForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [(ATXInformationFeaturizer *)self _lazyLoadAppLaunchHistogram];
    [(_ATXAppLaunchHistogram *)self->_appLaunchHistory overallLaunchPopularityForBundleId:identifierCopy];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)_fetchAppLaunchCountForBundleIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [(ATXInformationFeaturizer *)self _lazyLoadAppLaunchHistogram];
    appLaunchHistory = self->_appLaunchHistory;
    v11[0] = identifierCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(_ATXAppLaunchHistogram *)appLaunchHistory totalLaunchesForBundleIds:v6];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (double)_fetchFeedbackForWidgetBundleId:(id)id type:(unint64_t)type
{
  idCopy = id;
  if ([idCopy length])
  {
    [(ATXInformationFeaturizer *)self _lazyLoadWidgetFeedbackHistogram];
    [(ATXHomeScreenWidgetFeedback *)self->_widgetFeedback eventCountForWidgetBundleId:idCopy type:type];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

@end