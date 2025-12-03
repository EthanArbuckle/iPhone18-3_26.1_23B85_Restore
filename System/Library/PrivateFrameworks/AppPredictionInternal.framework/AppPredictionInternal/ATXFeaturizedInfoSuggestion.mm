@interface ATXFeaturizedInfoSuggestion
- (ATXFeaturizedInfoSuggestion)initWithSuggestion:(id)suggestion featureSet:(id)set;
- (double)scoreWithFeatureWeights:(id)weights;
@end

@implementation ATXFeaturizedInfoSuggestion

- (ATXFeaturizedInfoSuggestion)initWithSuggestion:(id)suggestion featureSet:(id)set
{
  suggestionCopy = suggestion;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = ATXFeaturizedInfoSuggestion;
  v9 = [(ATXFeaturizedInfoSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, suggestion);
    objc_storeStrong(&v10->_featureSet, set);
  }

  return v10;
}

- (double)scoreWithFeatureWeights:(id)weights
{
  suggestion = self->_suggestion;
  weightsCopy = weights;
  widgetBundleIdentifier = [(ATXInfoSuggestion *)suggestion widgetBundleIdentifier];
  widgetKind = [(ATXInfoSuggestion *)self->_suggestion widgetKind];
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:1];
  v44 = v8;
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:2];
  v43 = v9;
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:3];
  v42 = v10;
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:4];
  v41 = v11;
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:5];
  v40 = v12;
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:6];
  v39 = v13;
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:7];
  v38 = v14;
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:9];
  v37 = v15;
  [(ATXInformationFeatureSet *)self->_featureSet valueForFeature:8];
  v36 = v16;
  [weightsCopy weightForFeatureName:1 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v35 = v17;
  [weightsCopy weightForFeatureName:2 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v19 = v18;
  [weightsCopy weightForFeatureName:3 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v21 = v20;
  [weightsCopy weightForFeatureName:4 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v23 = v22;
  [weightsCopy weightForFeatureName:5 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v25 = v24;
  [weightsCopy weightForFeatureName:6 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v27 = v26;
  [weightsCopy weightForFeatureName:7 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v29 = v28;
  [weightsCopy weightForFeatureName:9 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v31 = v30;
  [weightsCopy weightForFeatureName:8 widgetExtensionBundleId:widgetBundleIdentifier widgetKind:widgetKind];
  v33 = v32;

  return v43 * v19 + v35 * v44 + v21 * v42 + v23 * v41 + v25 * v40 + v27 * v39 + v29 * v38 + v31 * v37 + v33 * v36;
}

@end