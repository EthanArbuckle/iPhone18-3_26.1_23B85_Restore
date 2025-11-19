@interface ATXMLBatchInferenceFeatureProvider
- (ATXMLBatchInferenceFeatureProvider)initWithFeatureVectors:(void *)a3;
- (id).cxx_construct;
- (id)featuresAtIndex:(int64_t)a3;
- (void)setFeatureVectors:(void *)a3;
@end

@implementation ATXMLBatchInferenceFeatureProvider

- (ATXMLBatchInferenceFeatureProvider)initWithFeatureVectors:(void *)a3
{
  v7.receiver = self;
  v7.super_class = ATXMLBatchInferenceFeatureProvider;
  v4 = [(ATXMLBatchInferenceFeatureProvider *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ATXMLBatchInferenceFeatureProvider *)v4 setFeatureVectors:a3];
  }

  return v5;
}

- (id)featuresAtIndex:(int64_t)a3
{
  v3 = [[ATXMLInferenceFeatureProvider alloc] initWithPredictionItem:*[(ATXMLBatchInferenceFeatureProvider *)self featureVectors]+ 3336 * a3];

  return v3;
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
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end