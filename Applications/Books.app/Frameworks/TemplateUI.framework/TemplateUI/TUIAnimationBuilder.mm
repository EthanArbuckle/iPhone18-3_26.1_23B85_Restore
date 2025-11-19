@interface TUIAnimationBuilder
- (TUIAnimationBuilder)init;
- (id)finalizeAnimationWithContext:(id)a3;
- (void)addFromAnimationStep:(id)a3;
- (void)addKeyframeStep:(id)a3;
- (void)addToAnimationStep:(id)a3;
- (void)configureWithNode:(id)a3 attributes:(id)a4;
@end

@implementation TUIAnimationBuilder

- (TUIAnimationBuilder)init
{
  v3.receiver = self;
  v3.super_class = TUIAnimationBuilder;
  result = [(TUIAnimationBuilder *)&v3 init];
  if (result)
  {
    result->_error = 0;
  }

  return result;
}

- (void)configureWithNode:(id)a3 attributes:(id)a4
{
  v6 = a4;
  [v6 floatForAttribute:66 node:a3.var0];
  self->_delay = v7;
  [v6 floatForAttribute:69 node:a3.var0];
  self->_duration = v8;
  self->_options = [v6 animationCalculationModeAndCurveForNode:a3.var0];
  if (v6)
  {
    [v6 springTimingParametersForAttribute:204 node:a3.var0];
  }

  else
  {
    v11 = 0.0;
    v9 = 0u;
    v10 = 0u;
  }

  *&self->_timing.mass = v9;
  *&self->_timing.damping = v10;
  self->_timing.initialVelocity.dy = v11;
}

- (void)addFromAnimationStep:(id)a3
{
  v5 = a3;
  if (self->_from || self->_keyFrames)
  {
    self->_error = 1019;
  }

  else
  {
    v6 = v5;
    objc_storeStrong(&self->_from, a3);
    v5 = v6;
  }
}

- (void)addToAnimationStep:(id)a3
{
  v5 = a3;
  if (*&self->_to == 0)
  {
    v6 = v5;
    objc_storeStrong(&self->_to, a3);
    v5 = v6;
  }

  else
  {
    self->_error = 1019;
  }
}

- (void)addKeyframeStep:(id)a3
{
  v4 = a3;
  if (*&self->_from == 0)
  {
    keyFrames = self->_keyFrames;
    v8 = v4;
    if (!keyFrames)
    {
      v6 = objc_opt_new();
      v7 = self->_keyFrames;
      self->_keyFrames = v6;

      keyFrames = self->_keyFrames;
    }

    [(NSMutableArray *)keyFrames addObject:v8];
    v4 = v8;
  }

  else
  {
    self->_error = 1019;
  }
}

- (id)finalizeAnimationWithContext:(id)a3
{
  error = self->_error;
  if (error)
  {
    [a3 reportError:error];
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(TUIAnimation);
    [(TUIAnimation *)v4 setFrom:self->_from];
    [(TUIAnimation *)v4 setTo:self->_to];
    [(TUIAnimation *)v4 setSteps:self->_keyFrames];
    [(TUIAnimation *)v4 setDelay:self->_delay];
    [(TUIAnimation *)v4 setDuration:self->_duration];
    [(TUIAnimation *)v4 setOptions:self->_options | [(TUIAnimation *)v4 options]];
    v6 = *&self->_timing.damping;
    v8[0] = *&self->_timing.mass;
    v8[1] = v6;
    dy = self->_timing.initialVelocity.dy;
    [(TUIAnimation *)v4 setTiming:v8];
  }

  return v4;
}

@end