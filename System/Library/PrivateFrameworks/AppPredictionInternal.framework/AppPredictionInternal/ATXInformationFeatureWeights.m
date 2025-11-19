@interface ATXInformationFeatureWeights
- (ATXInformationFeatureWeights)init;
- (double)defaultWeightForFeatureName:(unint64_t)a3;
- (double)weightForFeatureName:(unint64_t)a3 widgetExtensionBundleId:(id)a4 widgetKind:(id)a5;
- (id)widgetIdentifierForWidgetExtensionBundleId:(id)a3 widgetKind:(id)a4;
@end

@implementation ATXInformationFeatureWeights

- (ATXInformationFeatureWeights)init
{
  v6.receiver = self;
  v6.super_class = ATXInformationFeatureWeights;
  v2 = [(ATXInformationFeatureWeights *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryForClass:objc_opt_class()];
    weights = v2->_weights;
    v2->_weights = v3;
  }

  return v2;
}

- (double)weightForFeatureName:(unint64_t)a3 widgetExtensionBundleId:(id)a4 widgetKind:(id)a5
{
  if (!self->_weights)
  {
    return 0.0;
  }

  v8 = a5;
  v9 = a4;
  v10 = [ATXInformationFeatureSetBuilder stringForInfoSuggestionFeature:a3];
  v11 = [(ATXInformationFeatureWeights *)self widgetIdentifierForWidgetExtensionBundleId:v9 widgetKind:v8];

  v12 = [(NSDictionary *)self->_weights objectForKeyedSubscript:v11];
  v13 = v12;
  if (v12 && ([v12 objectForKeyedSubscript:v10], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = [v13 objectForKeyedSubscript:v10];
    [v15 doubleValue];
  }

  else
  {
    v15 = [(NSDictionary *)self->_weights objectForKeyedSubscript:v10];
    [v15 doubleValue];
    if (v16 == 0.0)
    {
      [(ATXInformationFeatureWeights *)self defaultWeightForFeatureName:a3];
    }
  }

  v17 = v16;

  return v17;
}

- (id)widgetIdentifierForWidgetExtensionBundleId:(id)a3 widgetKind:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFormat:@"%@:%@", v7, v6];

  return v8;
}

- (double)defaultWeightForFeatureName:(unint64_t)a3
{
  if (a3 < 0xB)
  {
    return dbl_226872418[a3];
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ATXInformationFeatureWeights.m" lineNumber:82 description:@"Unknown value for ATXInfoSuggestionFeatureName"];

  return result;
}

@end