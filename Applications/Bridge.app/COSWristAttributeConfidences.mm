@interface COSWristAttributeConfidences
- (COSWristAttributeConfidences)initWithObservationTime:(double)time;
- (COSWristAttributeConfidences)initWithObservationTime:(double)time none:(double)none invalid:(double)invalid lr:(double)lr ll:(double)ll rr:(double)rr rl:(double)rl palm:(double)self0 dock:(double)self1;
- (void)addConfidences:(id)confidences;
- (void)divideConfidencesBy:(int64_t)by;
@end

@implementation COSWristAttributeConfidences

- (COSWristAttributeConfidences)initWithObservationTime:(double)time none:(double)none invalid:(double)invalid lr:(double)lr ll:(double)ll rr:(double)rr rl:(double)rl palm:(double)self0 dock:(double)self1
{
  v20.receiver = self;
  v20.super_class = COSWristAttributeConfidences;
  result = [(COSWristAttributeConfidences *)&v20 init];
  if (result)
  {
    result->_observationTime = time;
    result->_none = none;
    result->_invalid = invalid;
    result->_leftWristRightCrown = lr;
    result->_leftWristLeftCrown = ll;
    result->_rightWristRightCrown = rr;
    result->_rightWristLeftCrown = rl;
    result->_palm = palm;
    result->_dock = dock;
  }

  return result;
}

- (COSWristAttributeConfidences)initWithObservationTime:(double)time
{
  v5.receiver = self;
  v5.super_class = COSWristAttributeConfidences;
  result = [(COSWristAttributeConfidences *)&v5 init];
  if (result)
  {
    result->_observationTime = time;
  }

  return result;
}

- (void)addConfidences:(id)confidences
{
  confidencesCopy = confidences;
  [confidencesCopy none];
  self->_none = v5 + self->_none;
  [confidencesCopy invalid];
  self->_invalid = v6 + self->_invalid;
  [confidencesCopy leftWristRightCrown];
  self->_leftWristRightCrown = v7 + self->_leftWristRightCrown;
  [confidencesCopy leftWristLeftCrown];
  self->_leftWristLeftCrown = v8 + self->_leftWristLeftCrown;
  [confidencesCopy rightWristRightCrown];
  self->_rightWristRightCrown = v9 + self->_rightWristRightCrown;
  [confidencesCopy rightWristLeftCrown];
  self->_rightWristLeftCrown = v10;
  [confidencesCopy palm];
  self->_palm = v11 + self->_palm;
  [confidencesCopy dock];
  v13 = v12;

  self->_dock = v13 + self->_dock;
}

- (void)divideConfidencesBy:(int64_t)by
{
  if (by)
  {
    v3 = vdupq_lane_s64(COERCE__INT64(by), 0);
    v4 = vdivq_f64(*&self->_leftWristRightCrown, v3);
    *&self->_none = vdivq_f64(*&self->_none, v3);
    *&self->_leftWristRightCrown = v4;
    v5 = vdivq_f64(*&self->_rightWristRightCrown, v3);
    v6 = vdivq_f64(*&self->_palm, v3);
    *&self->_rightWristRightCrown = v5;
    *&self->_palm = v6;
  }
}

@end