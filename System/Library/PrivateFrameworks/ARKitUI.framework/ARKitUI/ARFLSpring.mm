@interface ARFLSpring
+ (id)springWithValue:(double)value;
- (ARFLSpring)initWithValue:(double)value;
- (ARFLSpringParameters)_effectiveParameters;
- (ARFLSpringParameters)parameters;
- (ARFLSpringParameters)trackingParameters;
- (double)_projectedTargetForVelocity:(double)velocity;
- (double)projectedTarget;
- (void)_updateForEffectiveParameters;
- (void)resetImmediatelyToValue:(double)value;
- (void)setParameters:(ARFLSpringParameters)parameters;
- (void)setTarget:(double)target;
- (void)setTracking:(BOOL)tracking;
- (void)setTrackingParameters:(ARFLSpringParameters)parameters;
- (void)step:(double)step;
@end

@implementation ARFLSpring

+ (id)springWithValue:(double)value
{
  v3 = [[self alloc] initWithValue:value];

  return v3;
}

- (ARFLSpring)initWithValue:(double)value
{
  v8.receiver = self;
  v8.super_class = ARFLSpring;
  v4 = [(ARFLSpring *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 424) = ARFLSpringParametersBouncy;
    *(v4 + 440) = unk_23D3DC210;
    *(v4 + 456) = ARFLSpringParametersTight;
    *(v4 + 472) = unk_23D3DC230;
    *(v4 + 50) = 0x3FE199999999999ALL;
    *(v4 + 49) = 0x7FEFFFFFFFFFFFFFLL;
    *(v4 + 51) = 0x3FC3333333333333;
    *(v4 + 52) = 0x3FEFD70A3D70A3D7;
    [v4 resetImmediatelyToValue:value];
    v6 = v5;
  }

  return v5;
}

- (void)setTarget:(double)target
{
  rubberbandRange = self->_rubberbandRange;
  if (rubberbandRange != 1.79769313e308)
  {
    maximumTarget = self->_maximumTarget;
    if (maximumTarget > target)
    {
      maximumTarget = target;
    }

    if (maximumTarget < self->_minimumTarget)
    {
      maximumTarget = self->_minimumTarget;
    }

    target = ARFLRubberbandValue(target, maximumTarget, rubberbandRange, self->_rubberbandFactor);
  }

  if (self->_transitioningFromTracking && self->_retargetResponseFraction > 0.0)
  {
    self->_s.anchor.anchor = target;
  }

  else
  {

    ARFLCompoundSpringSetAnchorImmediately(&self->_s, target);
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

  [(ARFLSpring *)self _projectedTargetForVelocity:*(&self->super.isa + v2)];
  return result;
}

- (double)_projectedTargetForVelocity:(double)velocity
{
  [(ARFLSpring *)self value];
  projectionDeceleration = self->_projectionDeceleration;

  return ARFLDeceleratedRestPosition(v5, velocity, projectionDeceleration);
}

- (void)resetImmediatelyToValue:(double)value
{
  [(ARFLSpring *)self _effectiveParameters];
  ARFLCompoundSpringMakeWithDampingRatioResponse(__src, value, 0.0, v5, v6);
  memcpy(&self->_s, __src, sizeof(self->_s));
  self->_previousTarget = value;
  self->_targetVelocity = 0.0;
}

- (void)setParameters:(ARFLSpringParameters)parameters
{
  v3.f64[0] = parameters.dampingRatio;
  v3.f64[1] = parameters.dampingRatioSmoothing;
  v4.f64[0] = parameters.response;
  v4.f64[1] = parameters.responseSmoothing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_parameters.dampingRatio, v3), vceqq_f64(*&self->_parameters.response, v4)))) & 1) == 0)
  {
    self->_parameters = parameters;
    if (!self->_tracking)
    {
      [(ARFLSpring *)self _updateForEffectiveParameters];
    }
  }
}

- (void)setTrackingParameters:(ARFLSpringParameters)parameters
{
  v3.f64[0] = parameters.dampingRatio;
  v3.f64[1] = parameters.dampingRatioSmoothing;
  v4.f64[0] = parameters.response;
  v4.f64[1] = parameters.responseSmoothing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_trackingParameters.dampingRatio, v3), vceqq_f64(*&self->_trackingParameters.response, v4)))) & 1) == 0)
  {
    self->_trackingParameters = parameters;
    if (self->_tracking)
    {
      [(ARFLSpring *)self _updateForEffectiveParameters];
    }
  }
}

- (void)setTracking:(BOOL)tracking
{
  tracking = self->_tracking;
  if (tracking != tracking)
  {
    self->_transitioningFromTracking = tracking & ~tracking;
    self->_tracking = tracking;
    if (!tracking)
    {
      v6 = self->_retargetResponseFraction * self->_parameters.response;
      [(ARFLSpring *)self _projectedTargetForVelocity:self->_targetVelocity];
      ARFLCompoundSpringSetAnchorWithIntermediatePositionAndResponse(&self->_s, self->_s.anchor.anchor, v7, v6);
    }

    [(ARFLSpring *)self _updateForEffectiveParameters];
  }
}

- (void)step:(double)step
{
  memcpy(v6, &self->_s, sizeof(v6));
  ARFLCompoundSpringStep(v6, __src, step);
  memcpy(&self->_s, __src, sizeof(self->_s));
  anchor = self->_s.anchor.anchor;
  self->_targetVelocity = (anchor - self->_previousTarget) / step * 0.25 + self->_targetVelocity * 0.75;
  self->_previousTarget = anchor;
  self->_transitioningFromTracking = 0;
}

- (ARFLSpringParameters)_effectiveParameters
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
  [(ARFLSpring *)self _effectiveParameters];
  v6 = v4;
  v7 = v5;
  v9 = v8;
  if (self->_s.usesDampingRatioResponse)
  {
    ARFLCompoundSpringSetDampingRatioSmoothly(&self->_s, v3, v4);

    ARFLCompoundSpringSetResponseSmoothly(&self->_s, v7, v9);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    ARFLSpringConvertDampingRatioResponseToStiffnessDamping(&v11, &v10, v3, v5);
    ARFLCompoundSpringSetStiffnessWithResponse(&self->_s, v11, v9);
    ARFLCompoundSpringSetDampingWithResponse(&self->_s, v10, v6);
  }
}

- (ARFLSpringParameters)parameters
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

- (ARFLSpringParameters)trackingParameters
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