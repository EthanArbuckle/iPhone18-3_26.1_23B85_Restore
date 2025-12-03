@interface ATXAnchorModelClassificationResult
- (ATXAnchorModelClassificationResult)initWithShouldPredictCandidate:(BOOL)candidate score:(double)score;
@end

@implementation ATXAnchorModelClassificationResult

- (ATXAnchorModelClassificationResult)initWithShouldPredictCandidate:(BOOL)candidate score:(double)score
{
  v7.receiver = self;
  v7.super_class = ATXAnchorModelClassificationResult;
  result = [(ATXAnchorModelClassificationResult *)&v7 init];
  if (result)
  {
    result->_shouldPredictCandidate = candidate;
    result->_score = score;
  }

  return result;
}

@end