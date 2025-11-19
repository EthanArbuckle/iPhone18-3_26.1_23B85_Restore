@interface NTKSnowglobeCrownHandler
- (void)step:(double)a3;
@end

@implementation NTKSnowglobeCrownHandler

- (void)step:(double)a3
{
  v3 = self->_idleOffset + self->_idleVelocity * a3;
  v4 = v3 + self->_inputRotation;
  self->_idleOffset = v3;
  self->_currentRotation = v4;
}

@end