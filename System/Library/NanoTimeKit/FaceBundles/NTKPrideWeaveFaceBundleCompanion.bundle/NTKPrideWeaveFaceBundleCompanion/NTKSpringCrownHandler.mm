@interface NTKSpringCrownHandler
- (NTKSpringCrownHandler)init;
- (NTKSpringCrownHandler)initWithConfig:(id *)config;
- (void)stepSystem:(double)system;
@end

@implementation NTKSpringCrownHandler

- (NTKSpringCrownHandler)initWithConfig:(id *)config
{
  v5.receiver = self;
  v5.super_class = NTKSpringCrownHandler;
  result = [(NTKSpringCrownHandler *)&v5 init];
  if (result)
  {
    result->_k = config->var0;
    result->_c = config->var1;
    result->_m = config->var2;
    result->_ke = config->var3;
    result->_kr = config->var4;
  }

  return result;
}

- (NTKSpringCrownHandler)init
{
  v3[0] = xmmword_1B060;
  v3[1] = xmmword_1B070;
  v4 = 0x3FEFAE147AE147AELL;
  return [(NTKSpringCrownHandler *)self initWithConfig:v3];
}

- (void)stepSystem:(double)system
{
  currentPosition = self->_currentPosition;
  v6 = -((currentPosition - self->_inputPosition) * self->_k);
  if (currentPosition >= 1.0)
  {
    v7 = -(pow(20.0, currentPosition + -1.0) + -1.0);
    goto LABEL_5;
  }

  if (currentPosition <= -1.0)
  {
    v7 = pow(20.0, fabs(currentPosition + 1.0)) + -1.0;
LABEL_5:
    v6 = v6 + v7 * self->_ke;
  }

  currentRotationOffset = self->_currentRotationOffset;
  inputRotation = self->_inputRotation;
  v10 = (1.0 - self->_kr) * self->_inputStaticRotationalVelocity + self->_kr * self->_currentRotationalVelocity;
  v11 = self->_currentVelocity + (v6 - self->_currentVelocity * self->_c) / self->_m * system;
  self->_currentPosition = currentPosition + v11 * system;
  self->_currentVelocity = v11;
  v12 = currentRotationOffset + system * v10;
  self->_currentRotationOffset = v12;
  self->_currentRotationalVelocity = v10;
  self->_currentRotation = v12 + inputRotation;
}

@end