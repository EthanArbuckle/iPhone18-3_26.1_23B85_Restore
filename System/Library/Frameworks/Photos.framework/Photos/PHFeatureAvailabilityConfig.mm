@interface PHFeatureAvailabilityConfig
- (PHFeatureAvailabilityConfig)init;
- (PHFeatureAvailabilityConfig)initWithFeature:(unint64_t)feature;
@end

@implementation PHFeatureAvailabilityConfig

- (PHFeatureAvailabilityConfig)initWithFeature:(unint64_t)feature
{
  v4 = [(PHFeatureAvailabilityConfig *)self init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69BE420]) initWithFeature:feature];
    [v5 fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold];
    v4->_fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold = v6;
    [v5 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndexThreshold];
    v4->_fractionOfCuratedAssetsWithSceneAnalysisInSearchIndexThreshold = v7;
    [v5 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
    v4->_fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold = v8;
    [v5 fractionOfCuratedAssetsWithCaptionsThreshold];
    v4->_fractionOfCuratedAssetsWithCaptionsThreshold = v9;
    [v5 fractionOfHighlightsEnrichedThreshold];
    v4->_fractionOfHighlightsEnrichedThreshold = v10;
    v4->_minimumNumberOfCuratedAssets = [v5 minimumNumberOfCuratedAssets];
    v4->_needsPhotosKnowledgeGraph = [v5 needsPhotosKnowledgeGraph];
    v11 = v4;
  }

  return v4;
}

- (PHFeatureAvailabilityConfig)init
{
  v6.receiver = self;
  v6.super_class = PHFeatureAvailabilityConfig;
  v2 = [(PHFeatureAvailabilityConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end