@interface SignatureAlignmentTrackerResult
- (SignatureAlignmentTrackerResult)initWithQueryStart:(double)start queryEnd:(double)end referenceStart:(double)referenceStart referenceEnd:(double)referenceEnd confidence:(float)confidence;
@end

@implementation SignatureAlignmentTrackerResult

- (SignatureAlignmentTrackerResult)initWithQueryStart:(double)start queryEnd:(double)end referenceStart:(double)referenceStart referenceEnd:(double)referenceEnd confidence:(float)confidence
{
  v13.receiver = self;
  v13.super_class = SignatureAlignmentTrackerResult;
  result = [(SignatureAlignmentTrackerResult *)&v13 init];
  if (result)
  {
    result->_queryStart = start;
    result->_queryEnd = end;
    result->_referenceStart = referenceStart;
    result->_referenceEnd = referenceEnd;
    result->_confidence = confidence;
  }

  return result;
}

@end