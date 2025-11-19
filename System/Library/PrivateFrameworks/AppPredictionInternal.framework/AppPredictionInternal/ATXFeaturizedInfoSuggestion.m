@interface ATXFeaturizedInfoSuggestion
- (ATXFeaturizedInfoSuggestion)initWithSuggestion:(id)a3 featureSet:(id)a4;
- (double)scoreWithFeatureWeights:(id)a3;
@end

@implementation ATXFeaturizedInfoSuggestion

- (ATXFeaturizedInfoSuggestion)initWithSuggestion:(id)a3 featureSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXFeaturizedInfoSuggestion;
  v9 = [(ATXFeaturizedInfoSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, a3);
    objc_storeStrong(&v10->_featureSet, a4);
  }

  return v10;
}

- (double)scoreWithFeatureWeights:(id)a3
{
  suggestion = self->_suggestion;
  v5 = a3;
  v6 = [(ATXInfoSuggestion *)suggestion widgetBundleIdentifier];
  v7 = [(ATXInfoSuggestion *)self->_suggestion widgetKind];
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
  [v5 weightForFeatureName:1 widgetExtensionBundleId:v6 widgetKind:v7];
  v35 = v17;
  [v5 weightForFeatureName:2 widgetExtensionBundleId:v6 widgetKind:v7];
  v19 = v18;
  [v5 weightForFeatureName:3 widgetExtensionBundleId:v6 widgetKind:v7];
  v21 = v20;
  [v5 weightForFeatureName:4 widgetExtensionBundleId:v6 widgetKind:v7];
  v23 = v22;
  [v5 weightForFeatureName:5 widgetExtensionBundleId:v6 widgetKind:v7];
  v25 = v24;
  [v5 weightForFeatureName:6 widgetExtensionBundleId:v6 widgetKind:v7];
  v27 = v26;
  [v5 weightForFeatureName:7 widgetExtensionBundleId:v6 widgetKind:v7];
  v29 = v28;
  [v5 weightForFeatureName:9 widgetExtensionBundleId:v6 widgetKind:v7];
  v31 = v30;
  [v5 weightForFeatureName:8 widgetExtensionBundleId:v6 widgetKind:v7];
  v33 = v32;

  return v43 * v19 + v35 * v44 + v21 * v42 + v23 * v41 + v25 * v40 + v27 * v39 + v29 * v38 + v31 * v37 + v33 * v36;
}

@end