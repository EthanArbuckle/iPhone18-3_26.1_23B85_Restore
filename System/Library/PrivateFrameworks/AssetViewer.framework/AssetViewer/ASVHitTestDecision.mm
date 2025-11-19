@interface ASVHitTestDecision
- (ASVHitTestDecision)initWithOriginalResult:(id)a3 interpolatedResult:(id)a4 finalResult:(id)a5;
- (ASVHitTestResult)interpolatedOrFinalResult;
@end

@implementation ASVHitTestDecision

- (ASVHitTestDecision)initWithOriginalResult:(id)a3 interpolatedResult:(id)a4 finalResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ASVHitTestDecision;
  v12 = [(ASVHitTestDecision *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_originalResult, a3);
    objc_storeStrong(&v13->_interpolatedResult, a4);
    objc_storeStrong(&v13->_finalResult, a5);
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