@interface ATXInformationFeaturizer
- (double)_fetchAppLaunchCountForBundleIdentifier:(id)a3;
- (double)_fetchAppLaunchPopularityForBundleIdentifier:(id)a3;
- (double)_fetchFeedbackForWidgetBundleId:(id)a3 type:(unint64_t)a4;
- (id)_featureSetForSuggestion:(id)a3;
- (id)featurizeInfoSuggestions:(id)a3;
- (id)featurizeTimelineWithWidgetBundleId:(id)a3 widgetKind:(id)a4 appBundleIdentifier:(id)a5;
- (id)populateFeatureSetForWidgetBundleId:(id)a3 widgetKind:(id)a4 appBundleIdentifier:(id)a5;
- (void)_lazyLoadAppLaunchHistogram;
- (void)_lazyLoadWidgetFeedbackHistogram;
@end

@implementation ATXInformationFeaturizer

- (id)featurizeInfoSuggestions:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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

- (id)_featureSetForSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 widgetBundleIdentifier];
  v6 = [v4 widgetKind];
  v7 = [v4 appBundleIdentifier];
  v8 = [(ATXInformationFeaturizer *)self populateFeatureSetForWidgetBundleId:v5 widgetKind:v6 appBundleIdentifier:v7];

  v9 = [v4 confidenceLevel];
  [v8 appendFeature:4 value:v9];
  v10 = [v8 build];

  return v10;
}

- (id)populateFeatureSetForWidgetBundleId:(id)a3 widgetKind:(id)a4 appBundleIdentifier:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  [(ATXInformationFeaturizer *)self _fetchAppLaunchPopularityForBundleIdentifier:v7];
  v11 = v10;
  [(ATXInformationFeaturizer *)self _fetchAppLaunchCountForBundleIdentifier:v7];
  v13 = v12;

  [v9 appendFeature:2 value:v11];
  [v9 appendFeature:3 value:v13];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:v8 type:2];
  [v9 appendFeature:1 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:v8 type:0];
  [v9 appendFeature:5 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:v8 type:3];
  [v9 appendFeature:6 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:v8 type:4];
  [v9 appendFeature:7 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:v8 type:7];
  [v9 appendFeature:9 value:?];
  [(ATXInformationFeaturizer *)self _fetchFeedbackForWidgetBundleId:v8 type:1];
  v15 = v14;

  [v9 appendFeature:8 value:v15];

  return v9;
}

- (id)featurizeTimelineWithWidgetBundleId:(id)a3 widgetKind:(id)a4 appBundleIdentifier:(id)a5
{
  v5 = [(ATXInformationFeaturizer *)self populateFeatureSetForWidgetBundleId:a3 widgetKind:a4 appBundleIdentifier:a5];
  v6 = [v5 build];

  return v6;
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

- (double)_fetchAppLaunchPopularityForBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(ATXInformationFeaturizer *)self _lazyLoadAppLaunchHistogram];
    [(_ATXAppLaunchHistogram *)self->_appLaunchHistory overallLaunchPopularityForBundleId:v4];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)_fetchAppLaunchCountForBundleIdentifier:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    [(ATXInformationFeaturizer *)self _lazyLoadAppLaunchHistogram];
    appLaunchHistory = self->_appLaunchHistory;
    v11[0] = v4;
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

- (double)_fetchFeedbackForWidgetBundleId:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  if ([v6 length])
  {
    [(ATXInformationFeaturizer *)self _lazyLoadWidgetFeedbackHistogram];
    [(ATXHomeScreenWidgetFeedback *)self->_widgetFeedback eventCountForWidgetBundleId:v6 type:a4];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

@end