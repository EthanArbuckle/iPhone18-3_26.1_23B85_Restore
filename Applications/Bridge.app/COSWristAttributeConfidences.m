@interface COSWristAttributeConfidences
- (COSWristAttributeConfidences)initWithObservationTime:(double)a3;
- (COSWristAttributeConfidences)initWithObservationTime:(double)a3 none:(double)a4 invalid:(double)a5 lr:(double)a6 ll:(double)a7 rr:(double)a8 rl:(double)a9 palm:(double)a10 dock:(double)a11;
- (void)addConfidences:(id)a3;
- (void)divideConfidencesBy:(int64_t)a3;
@end

@implementation COSWristAttributeConfidences

- (COSWristAttributeConfidences)initWithObservationTime:(double)a3 none:(double)a4 invalid:(double)a5 lr:(double)a6 ll:(double)a7 rr:(double)a8 rl:(double)a9 palm:(double)a10 dock:(double)a11
{
  v20.receiver = self;
  v20.super_class = COSWristAttributeConfidences;
  result = [(COSWristAttributeConfidences *)&v20 init];
  if (result)
  {
    result->_observationTime = a3;
    result->_none = a4;
    result->_invalid = a5;
    result->_leftWristRightCrown = a6;
    result->_leftWristLeftCrown = a7;
    result->_rightWristRightCrown = a8;
    result->_rightWristLeftCrown = a9;
    result->_palm = a10;
    result->_dock = a11;
  }

  return result;
}

- (COSWristAttributeConfidences)initWithObservationTime:(double)a3
{
  v5.receiver = self;
  v5.super_class = COSWristAttributeConfidences;
  result = [(COSWristAttributeConfidences *)&v5 init];
  if (result)
  {
    result->_observationTime = a3;
  }

  return result;
}

- (void)addConfidences:(id)a3
{
  v4 = a3;
  [v4 none];
  self->_none = v5 + self->_none;
  [v4 invalid];
  self->_invalid = v6 + self->_invalid;
  [v4 leftWristRightCrown];
  self->_leftWristRightCrown = v7 + self->_leftWristRightCrown;
  [v4 leftWristLeftCrown];
  self->_leftWristLeftCrown = v8 + self->_leftWristLeftCrown;
  [v4 rightWristRightCrown];
  self->_rightWristRightCrown = v9 + self->_rightWristRightCrown;
  [v4 rightWristLeftCrown];
  self->_rightWristLeftCrown = v10;
  [v4 palm];
  self->_palm = v11 + self->_palm;
  [v4 dock];
  v13 = v12;

  self->_dock = v13 + self->_dock;
}

- (void)divideConfidencesBy:(int64_t)a3
{
  if (a3)
  {
    v3 = vdupq_lane_s64(COERCE__INT64(a3), 0);
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