@interface ATXFakeAnchorModelPredictionForwarder
- (ATXFakeAnchorModelPredictionForwarder)init;
@end

@implementation ATXFakeAnchorModelPredictionForwarder

- (ATXFakeAnchorModelPredictionForwarder)init
{
  v6.receiver = self;
  v6.super_class = ATXFakeAnchorModelPredictionForwarder;
  v2 = [(ATXFakeAnchorModelPredictionForwarder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    forwardedPredictions = v2->_forwardedPredictions;
    v2->_forwardedPredictions = MEMORY[0x277CBEBF8];
  }

  return v3;
}

@end