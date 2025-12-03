@interface AVPresentationContextTransition
- (BOOL)isRotated;
- (CGAffineTransform)counterRotationTransform;
- (CGAffineTransform)rotationTransform;
- (int64_t)initialInterfaceOrientation;
- (int64_t)interfaceRotation;
@end

@implementation AVPresentationContextTransition

- (int64_t)initialInterfaceOrientation
{
  wasCancelledWithInactiveScene = [(AVPresentationContextTransition *)self wasCancelledWithInactiveScene];
  v4 = 24;
  if (wasCancelledWithInactiveScene)
  {
    v4 = 32;
  }

  return *(&self->super.isa + v4);
}

- (BOOL)isRotated
{
  interfaceRotation = [(AVPresentationContextTransition *)self interfaceRotation];
  if (interfaceRotation >= 0)
  {
    v3 = interfaceRotation;
  }

  else
  {
    v3 = -interfaceRotation;
  }

  return v3 == 1;
}

- (int64_t)interfaceRotation
{
  initialInterfaceOrientation = [(AVPresentationContextTransition *)self initialInterfaceOrientation];
  finalInterfaceOrientation = [(AVPresentationContextTransition *)self finalInterfaceOrientation];
  if ((initialInterfaceOrientation - 2) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_18B6EC6F0[initialInterfaceOrientation - 2];
  }

  if ((finalInterfaceOrientation - 2) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_18B6EC708[finalInterfaceOrientation - 2];
  }

  return v6 + v5;
}

- (CGAffineTransform)counterRotationTransform
{
  v4 = [(AVPresentationContextTransition *)self]* 1.57079633;

  return CGAffineTransformMakeRotation(retstr, v4);
}

- (CGAffineTransform)rotationTransform
{
  v4 = [(AVPresentationContextTransition *)self interfaceRotation]* 1.57079633;

  return CGAffineTransformMakeRotation(retstr, v4);
}

@end