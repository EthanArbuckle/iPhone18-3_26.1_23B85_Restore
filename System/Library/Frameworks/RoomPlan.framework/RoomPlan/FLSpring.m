@interface FLSpring
+ (id)springWithValue:(double)a3;
- (FLSpring)initWithValue:(double)a3;
- (FLSpringParameters)_effectiveParameters;
- (FLSpringParameters)parameters;
- (FLSpringParameters)trackingParameters;
- (double)_projectedTargetForVelocity:(double)a3;
- (double)projectedTarget;
- (void)_updateForEffectiveParameters;
- (void)resetImmediatelyToValue:(double)a3;
- (void)setParameters:(FLSpringParameters)a3;
- (void)setTarget:(double)a3;
- (void)setTracking:(BOOL)a3;
- (void)setTrackingParameters:(FLSpringParameters)a3;
- (void)step:(double)a3;
@end

@implementation FLSpring

+ (id)springWithValue:(double)a3
{
  v3 = [[a1 alloc] initWithValue:a3];

  return v3;
}

- (FLSpring)initWithValue:(double)a3
{
  v8.receiver = self;
  v8.super_class = FLSpring;
  v4 = [(FLSpring *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 424) = FLSpringParametersBouncy;
    *(v4 + 440) = *&qword_23AA10F80;
    *(v4 + 456) = FLSpringParametersTight;
    *(v4 + 472) = unk_23AA10FA0;
    *(v4 + 50) = 0x3FE199999999999ALL;
    *(v4 + 49) = 0x7FEFFFFFFFFFFFFFLL;
    *(v4 + 51) = 0x3FC3333333333333;
    *(v4 + 52) = 0x3FEFD70A3D70A3D7;
    [v4 resetImmediatelyToValue:a3];
    v6 = v5;
  }

  return v5;
}

- (void)setTarget:(double)a3
{
  rubberbandRange = self->_rubberbandRange;
  if (rubberbandRange != 1.79769313e308)
  {
    maximumTarget = self->_maximumTarget;
    if (maximumTarget > a3)
    {
      maximumTarget = a3;
    }

    if (maximumTarget < self->_minimumTarget)
    {
      maximumTarget = self->_minimumTarget;
    }

    a3 = FLRubberbandValue(a3, maximumTarget, rubberbandRange, self->_rubberbandFactor);
  }

  if (self->_transitioningFromTracking && self->_retargetResponseFraction > 0.0)
  {
    self->_s.anchor.anchor = a3;
  }

  else
  {

    FLCompoundSpringSetAnchorImmediately(&self->_s, a3);
  }
}

- (double)projectedTarget
{
  if (self->_tracking)
  {
    v2 = 352;
  }

  else
  {
    v2 = 16;
    if (self->_transitioningFromTracking)
    {
      v2 = 352;
    }
  }

  [(FLSpring *)self _projectedTargetForVelocity:*(&self->super.isa + v2)];
  return result;
}

- (double)_projectedTargetForVelocity:(double)a3
{
  [(FLSpring *)self value];
  projectionDeceleration = self->_projectionDeceleration;

  return FLDeceleratedRestPosition(v5, a3, projectionDeceleration);
}

- (void)resetImmediatelyToValue:(double)a3
{
  [(FLSpring *)self _effectiveParameters];
  FLCompoundSpringMakeWithDampingRatioResponse(__src, a3, 0.0, v5, v6);
  memcpy(&self->_s, __src, sizeof(self->_s));
  self->_previousTarget = a3;
  self->_targetVelocity = 0.0;
}

- (void)setParameters:(FLSpringParameters)a3
{
  v3.f64[0] = a3.dampingRatio;
  v3.f64[1] = a3.dampingRatioSmoothing;
  v4.f64[0] = a3.response;
  v4.f64[1] = a3.responseSmoothing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_parameters.dampingRatio, v3), vceqq_f64(*&self->_parameters.response, v4)))) & 1) == 0)
  {
    self->_parameters = a3;
    if (!self->_tracking)
    {
      [(FLSpring *)self _updateForEffectiveParameters];
    }
  }
}

- (void)setTrackingParameters:(FLSpringParameters)a3
{
  v3.f64[0] = a3.dampingRatio;
  v3.f64[1] = a3.dampingRatioSmoothing;
  v4.f64[0] = a3.response;
  v4.f64[1] = a3.responseSmoothing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_trackingParameters.dampingRatio, v3), vceqq_f64(*&self->_trackingParameters.response, v4)))) & 1) == 0)
  {
    self->_trackingParameters = a3;
    if (self->_tracking)
    {
      [(FLSpring *)self _updateForEffectiveParameters];
    }
  }
}

- (void)setTracking:(BOOL)a3
{
  tracking = self->_tracking;
  if (tracking != a3)
  {
    self->_transitioningFromTracking = tracking & ~a3;
    self->_tracking = a3;
    if (!a3)
    {
      v6 = self->_retargetResponseFraction * self->_parameters.response;
      [(FLSpring *)self _projectedTargetForVelocity:self->_targetVelocity];
      FLCompoundSpringSetAnchorWithIntermediatePositionAndResponse(&self->_s, self->_s.anchor.anchor, v7, v6);
    }

    [(FLSpring *)self _updateForEffectiveParameters];
  }
}

- (void)step:(double)a3
{
  memcpy(v6, &self->_s, sizeof(v6));
  FLCompoundSpringStep(v6, __src, a3);
  memcpy(&self->_s, __src, sizeof(self->_s));
  anchor = self->_s.anchor.anchor;
  self->_targetVelocity = (anchor - self->_previousTarget) / a3 * 0.25 + self->_targetVelocity * 0.75;
  self->_previousTarget = anchor;
  self->_transitioningFromTracking = 0;
}

- (FLSpringParameters)_effectiveParameters
{
  v2 = 424;
  if (self->_tracking)
  {
    v2 = 456;
  }

  v3 = 432;
  if (self->_tracking)
  {
    v3 = 464;
  }

  v4 = 440;
  if (self->_tracking)
  {
    v4 = 472;
  }

  v5 = 448;
  if (self->_tracking)
  {
    v5 = 480;
  }

  v6 = *(&self->super.isa + v5);
  v7 = *(&self->super.isa + v4);
  v8 = *(&self->super.isa + v2);
  v9 = *(&self->super.isa + v3);
  result.responseSmoothing = v6;
  result.response = v7;
  result.dampingRatioSmoothing = v9;
  result.dampingRatio = v8;
  return result;
}

- (void)_updateForEffectiveParameters
{
  [(FLSpring *)self _effectiveParameters];
  v6 = v4;
  v7 = v5;
  v9 = v8;
  if (self->_s.usesDampingRatioResponse)
  {
    FLCompoundSpringSetDampingRatioSmoothly(&self->_s, v3, v4);

    FLCompoundSpringSetResponseSmoothly(&self->_s, v7, v9);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v11, &v10, v3, v5);
    FLCompoundSpringSetStiffnessWithResponse(&self->_s, v11, v9);
    FLCompoundSpringSetDampingWithResponse(&self->_s, v10, v6);
  }
}

- (FLSpringParameters)parameters
{
  dampingRatio = self->_parameters.dampingRatio;
  dampingRatioSmoothing = self->_parameters.dampingRatioSmoothing;
  response = self->_parameters.response;
  responseSmoothing = self->_parameters.responseSmoothing;
  result.responseSmoothing = responseSmoothing;
  result.response = response;
  result.dampingRatioSmoothing = dampingRatioSmoothing;
  result.dampingRatio = dampingRatio;
  return result;
}

- (FLSpringParameters)trackingParameters
{
  dampingRatio = self->_trackingParameters.dampingRatio;
  dampingRatioSmoothing = self->_trackingParameters.dampingRatioSmoothing;
  response = self->_trackingParameters.response;
  responseSmoothing = self->_trackingParameters.responseSmoothing;
  result.responseSmoothing = responseSmoothing;
  result.response = response;
  result.dampingRatioSmoothing = dampingRatioSmoothing;
  result.dampingRatio = dampingRatio;
  return result;
}

@end