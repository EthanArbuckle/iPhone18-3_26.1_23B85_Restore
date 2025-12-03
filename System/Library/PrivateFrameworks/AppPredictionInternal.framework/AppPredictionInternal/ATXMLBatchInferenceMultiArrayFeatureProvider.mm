@interface ATXMLBatchInferenceMultiArrayFeatureProvider
- (ATXMLBatchInferenceMultiArrayFeatureProvider)initWithFeatureVectors:(void *)vectors featuresToConcatenate:(id)concatenate;
- (id).cxx_construct;
- (id)featuresAtIndex:(int64_t)index;
- (void)setFeatureVectors:(void *)vectors;
@end

@implementation ATXMLBatchInferenceMultiArrayFeatureProvider

- (ATXMLBatchInferenceMultiArrayFeatureProvider)initWithFeatureVectors:(void *)vectors featuresToConcatenate:(id)concatenate
{
  concatenateCopy = concatenate;
  v10.receiver = self;
  v10.super_class = ATXMLBatchInferenceMultiArrayFeatureProvider;
  v7 = [(ATXMLBatchInferenceMultiArrayFeatureProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ATXMLBatchInferenceMultiArrayFeatureProvider *)v7 setFeatureVectors:vectors];
    [(ATXMLBatchInferenceMultiArrayFeatureProvider *)v8 setFeaturesToConcatenate:concatenateCopy];
  }

  return v8;
}

- (id)featuresAtIndex:(int64_t)index
{
  v5 = [ATXMLInferenceMultiArrayFeatureProvider alloc];
  v6 = *[(ATXMLBatchInferenceMultiArrayFeatureProvider *)self featureVectors]+ 3336 * index;
  featuresToConcatenate = [(ATXMLBatchInferenceMultiArrayFeatureProvider *)self featuresToConcatenate];
  v8 = [(ATXMLInferenceMultiArrayFeatureProvider *)v5 initWithPredictionItem:v6 featuresToConcatenate:featuresToConcatenate];

  return v8;
}

- (void)setFeatureVectors:(void *)vectors
{
  p_featureVectors = &self->_featureVectors;
  if (p_featureVectors != vectors)
  {
    std::vector<ATXPredictionItem>::__assign_with_size[abi:ne200100]<ATXPredictionItem*,ATXPredictionItem*>(p_featureVectors, *vectors, *(vectors + 1), 0x13A524387AC82261 * ((*(vectors + 1) - *vectors) >> 3));
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end