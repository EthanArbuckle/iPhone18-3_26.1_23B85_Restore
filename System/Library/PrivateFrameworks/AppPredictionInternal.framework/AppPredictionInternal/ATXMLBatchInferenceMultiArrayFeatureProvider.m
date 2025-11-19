@interface ATXMLBatchInferenceMultiArrayFeatureProvider
- (ATXMLBatchInferenceMultiArrayFeatureProvider)initWithFeatureVectors:(void *)a3 featuresToConcatenate:(id)a4;
- (id).cxx_construct;
- (id)featuresAtIndex:(int64_t)a3;
- (void)setFeatureVectors:(void *)a3;
@end

@implementation ATXMLBatchInferenceMultiArrayFeatureProvider

- (ATXMLBatchInferenceMultiArrayFeatureProvider)initWithFeatureVectors:(void *)a3 featuresToConcatenate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ATXMLBatchInferenceMultiArrayFeatureProvider;
  v7 = [(ATXMLBatchInferenceMultiArrayFeatureProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ATXMLBatchInferenceMultiArrayFeatureProvider *)v7 setFeatureVectors:a3];
    [(ATXMLBatchInferenceMultiArrayFeatureProvider *)v8 setFeaturesToConcatenate:v6];
  }

  return v8;
}

- (id)featuresAtIndex:(int64_t)a3
{
  v5 = [ATXMLInferenceMultiArrayFeatureProvider alloc];
  v6 = *[(ATXMLBatchInferenceMultiArrayFeatureProvider *)self featureVectors]+ 3336 * a3;
  v7 = [(ATXMLBatchInferenceMultiArrayFeatureProvider *)self featuresToConcatenate];
  v8 = [(ATXMLInferenceMultiArrayFeatureProvider *)v5 initWithPredictionItem:v6 featuresToConcatenate:v7];

  return v8;
}

- (void)setFeatureVectors:(void *)a3
{
  p_featureVectors = &self->_featureVectors;
  if (p_featureVectors != a3)
  {
    std::vector<ATXPredictionItem>::__assign_with_size[abi:ne200100]<ATXPredictionItem*,ATXPredictionItem*>(p_featureVectors, *a3, *(a3 + 1), 0x13A524387AC82261 * ((*(a3 + 1) - *a3) >> 3));
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