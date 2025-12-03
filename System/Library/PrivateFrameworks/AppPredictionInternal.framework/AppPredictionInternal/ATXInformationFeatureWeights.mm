@interface ATXInformationFeatureWeights
- (ATXInformationFeatureWeights)init;
- (double)defaultWeightForFeatureName:(unint64_t)name;
- (double)weightForFeatureName:(unint64_t)name widgetExtensionBundleId:(id)id widgetKind:(id)kind;
- (id)widgetIdentifierForWidgetExtensionBundleId:(id)id widgetKind:(id)kind;
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

- (double)weightForFeatureName:(unint64_t)name widgetExtensionBundleId:(id)id widgetKind:(id)kind
{
  if (!self->_weights)
  {
    return 0.0;
  }

  kindCopy = kind;
  idCopy = id;
  v10 = [ATXInformationFeatureSetBuilder stringForInfoSuggestionFeature:name];
  v11 = [(ATXInformationFeatureWeights *)self widgetIdentifierForWidgetExtensionBundleId:idCopy widgetKind:kindCopy];

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
      [(ATXInformationFeatureWeights *)self defaultWeightForFeatureName:name];
    }
  }

  v17 = v16;

  return v17;
}

- (id)widgetIdentifierForWidgetExtensionBundleId:(id)id widgetKind:(id)kind
{
  v5 = MEMORY[0x277CCACA8];
  kindCopy = kind;
  idCopy = id;
  kindCopy = [[v5 alloc] initWithFormat:@"%@:%@", idCopy, kindCopy];

  return kindCopy;
}

- (double)defaultWeightForFeatureName:(unint64_t)name
{
  if (name < 0xB)
  {
    return dbl_226872418[name];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXInformationFeatureWeights.m" lineNumber:82 description:@"Unknown value for ATXInfoSuggestionFeatureName"];

  return result;
}

@end