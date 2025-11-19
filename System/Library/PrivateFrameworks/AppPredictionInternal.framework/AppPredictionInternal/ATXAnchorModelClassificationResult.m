@interface ATXAnchorModelClassificationResult
- (ATXAnchorModelClassificationResult)initWithShouldPredictCandidate:(BOOL)a3 score:(double)a4;
@end

@implementation ATXAnchorModelClassificationResult

- (ATXAnchorModelClassificationResult)initWithShouldPredictCandidate:(BOOL)a3 score:(double)a4
{
  v7.receiver = self;
  v7.super_class = ATXAnchorModelClassificationResult;
  result = [(ATXAnchorModelClassificationResult *)&v7 init];
  if (result)
  {
    result->_shouldPredictCandidate = a3;
    result->_score = a4;
  }

  return result;
}

@end