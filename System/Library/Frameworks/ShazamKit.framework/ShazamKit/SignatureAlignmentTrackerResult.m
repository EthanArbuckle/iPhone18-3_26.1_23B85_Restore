@interface SignatureAlignmentTrackerResult
- (SignatureAlignmentTrackerResult)initWithQueryStart:(double)a3 queryEnd:(double)a4 referenceStart:(double)a5 referenceEnd:(double)a6 confidence:(float)a7;
@end

@implementation SignatureAlignmentTrackerResult

- (SignatureAlignmentTrackerResult)initWithQueryStart:(double)a3 queryEnd:(double)a4 referenceStart:(double)a5 referenceEnd:(double)a6 confidence:(float)a7
{
  v13.receiver = self;
  v13.super_class = SignatureAlignmentTrackerResult;
  result = [(SignatureAlignmentTrackerResult *)&v13 init];
  if (result)
  {
    result->_queryStart = a3;
    result->_queryEnd = a4;
    result->_referenceStart = a5;
    result->_referenceEnd = a6;
    result->_confidence = a7;
  }

  return result;
}

@end