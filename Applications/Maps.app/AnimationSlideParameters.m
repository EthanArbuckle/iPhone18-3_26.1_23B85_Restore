@interface AnimationSlideParameters
+ (id)defaultParameters;
+ (id)presentSmallerParameters;
- ($01BB1521EC52D44A8E7628F5261DCEC8)parametersIn;
- ($01BB1521EC52D44A8E7628F5261DCEC8)parametersOut;
@end

@implementation AnimationSlideParameters

- ($01BB1521EC52D44A8E7628F5261DCEC8)parametersOut
{
  duration = self->_parametersOut.duration;
  mass = self->_parametersOut.mass;
  stiffness = self->_parametersOut.stiffness;
  damping = self->_parametersOut.damping;
  result.var3 = damping;
  result.var2 = stiffness;
  result.var1 = mass;
  result.var0 = duration;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)parametersIn
{
  duration = self->_parametersIn.duration;
  mass = self->_parametersIn.mass;
  stiffness = self->_parametersIn.stiffness;
  damping = self->_parametersIn.damping;
  result.var3 = damping;
  result.var2 = stiffness;
  result.var1 = mass;
  result.var0 = duration;
  return result;
}

+ (id)presentSmallerParameters
{
  v2 = objc_alloc_init(AnimationSlideParameters);
  [(AnimationSlideParameters *)v2 setParametersIn:0.75, 3.0, 800.0, 100.0];
  [(AnimationSlideParameters *)v2 setParametersOut:0.75, 3.0, 600.0, 100.0];
  [(AnimationSlideParameters *)v2 setDeltaHeight:25.0];

  return v2;
}

+ (id)defaultParameters
{
  v2 = objc_alloc_init(AnimationSlideParameters);
  [(AnimationSlideParameters *)v2 setParametersIn:0.5, 3.0, 1000.0, 500.0];
  [(AnimationSlideParameters *)v2 setParametersOut:0.5, 3.0, 1000.0, 500.0];

  return v2;
}

@end