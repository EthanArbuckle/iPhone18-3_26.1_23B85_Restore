@interface ATXBehavioralPredictionsFeatureCacheGuardedData
- (id).cxx_construct;
@end

@implementation ATXBehavioralPredictionsFeatureCacheGuardedData

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end