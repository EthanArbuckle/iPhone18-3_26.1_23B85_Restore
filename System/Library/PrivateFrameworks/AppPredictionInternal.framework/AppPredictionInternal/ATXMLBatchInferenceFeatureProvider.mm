@interface ATXMLBatchInferenceFeatureProvider
- (ATXMLBatchInferenceFeatureProvider)initWithFeatureVectors:(void *)vectors;
- (id).cxx_construct;
- (id)featuresAtIndex:(int64_t)index;
- (void)setFeatureVectors:(void *)vectors;
@end

@implementation ATXMLBatchInferenceFeatureProvider

- (ATXMLBatchInferenceFeatureProvider)initWithFeatureVectors:(void *)vectors
{
  v7.receiver = self;
  v7.super_class = ATXMLBatchInferenceFeatureProvider;
  v4 = [(ATXMLBatchInferenceFeatureProvider *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ATXMLBatchInferenceFeatureProvider *)v4 setFeatureVectors:vectors];
  }

  return v5;
}

- (id)featuresAtIndex:(int64_t)index
{
  index = [[ATXMLInferenceFeatureProvider alloc] initWithPredictionItem:*[(ATXMLBatchInferenceFeatureProvider *)self featureVectors]+ 3336 * index];

  return index;
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
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end