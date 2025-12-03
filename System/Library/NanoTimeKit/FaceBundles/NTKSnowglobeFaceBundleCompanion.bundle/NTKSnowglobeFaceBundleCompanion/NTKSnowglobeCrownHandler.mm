@interface NTKSnowglobeCrownHandler
- (void)step:(double)step;
@end

@implementation NTKSnowglobeCrownHandler

- (void)step:(double)step
{
  v3 = self->_idleOffset + self->_idleVelocity * step;
  v4 = v3 + self->_inputRotation;
  self->_idleOffset = v3;
  self->_currentRotation = v4;
}

@end