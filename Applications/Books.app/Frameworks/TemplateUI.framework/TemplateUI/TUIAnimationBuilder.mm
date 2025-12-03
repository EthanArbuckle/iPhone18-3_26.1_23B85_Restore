@interface TUIAnimationBuilder
- (TUIAnimationBuilder)init;
- (id)finalizeAnimationWithContext:(id)context;
- (void)addFromAnimationStep:(id)step;
- (void)addKeyframeStep:(id)step;
- (void)addToAnimationStep:(id)step;
- (void)configureWithNode:(id)node attributes:(id)attributes;
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

- (void)configureWithNode:(id)node attributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy floatForAttribute:66 node:node.var0];
  self->_delay = v7;
  [attributesCopy floatForAttribute:69 node:node.var0];
  self->_duration = v8;
  self->_options = [attributesCopy animationCalculationModeAndCurveForNode:node.var0];
  if (attributesCopy)
  {
    [attributesCopy springTimingParametersForAttribute:204 node:node.var0];
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

- (void)addFromAnimationStep:(id)step
{
  stepCopy = step;
  if (self->_from || self->_keyFrames)
  {
    self->_error = 1019;
  }

  else
  {
    v6 = stepCopy;
    objc_storeStrong(&self->_from, step);
    stepCopy = v6;
  }
}

- (void)addToAnimationStep:(id)step
{
  stepCopy = step;
  if (*&self->_to == 0)
  {
    v6 = stepCopy;
    objc_storeStrong(&self->_to, step);
    stepCopy = v6;
  }

  else
  {
    self->_error = 1019;
  }
}

- (void)addKeyframeStep:(id)step
{
  stepCopy = step;
  if (*&self->_from == 0)
  {
    keyFrames = self->_keyFrames;
    v8 = stepCopy;
    if (!keyFrames)
    {
      v6 = objc_opt_new();
      v7 = self->_keyFrames;
      self->_keyFrames = v6;

      keyFrames = self->_keyFrames;
    }

    [(NSMutableArray *)keyFrames addObject:v8];
    stepCopy = v8;
  }

  else
  {
    self->_error = 1019;
  }
}

- (id)finalizeAnimationWithContext:(id)context
{
  error = self->_error;
  if (error)
  {
    [context reportError:error];
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