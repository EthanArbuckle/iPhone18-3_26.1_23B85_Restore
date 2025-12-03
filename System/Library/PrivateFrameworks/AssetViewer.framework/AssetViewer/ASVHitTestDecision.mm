@interface ASVHitTestDecision
- (ASVHitTestDecision)initWithOriginalResult:(id)result interpolatedResult:(id)interpolatedResult finalResult:(id)finalResult;
- (ASVHitTestResult)interpolatedOrFinalResult;
@end

@implementation ASVHitTestDecision

- (ASVHitTestDecision)initWithOriginalResult:(id)result interpolatedResult:(id)interpolatedResult finalResult:(id)finalResult
{
  resultCopy = result;
  interpolatedResultCopy = interpolatedResult;
  finalResultCopy = finalResult;
  v15.receiver = self;
  v15.super_class = ASVHitTestDecision;
  v12 = [(ASVHitTestDecision *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_originalResult, result);
    objc_storeStrong(&v13->_interpolatedResult, interpolatedResult);
    objc_storeStrong(&v13->_finalResult, finalResult);
  }

  return v13;
}

- (ASVHitTestResult)interpolatedOrFinalResult
{
  interpolatedResult = self->_interpolatedResult;
  if (!interpolatedResult)
  {
    interpolatedResult = self->_finalResult;
  }

  v3 = interpolatedResult;

  return v3;
}

@end