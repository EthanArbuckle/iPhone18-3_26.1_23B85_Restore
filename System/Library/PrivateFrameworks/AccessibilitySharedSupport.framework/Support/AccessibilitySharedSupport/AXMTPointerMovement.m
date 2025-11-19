@interface AXMTPointerMovement
- (AXMTPointerMovement)initWithMovementDelta:(CGPoint)a3;
- (AXMTPointerMovement)initWithPointerLocation:(CGPoint)a3;
- (CGPoint)delta;
- (CGPoint)location;
@end

@implementation AXMTPointerMovement

- (AXMTPointerMovement)initWithPointerLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6.receiver = self;
  v6.super_class = AXMTPointerMovement;
  result = [(AXMTPointerMovement *)&v6 init];
  if (result)
  {
    result->_type = 0;
    result->_location.x = x;
    result->_location.y = y;
  }

  return result;
}

- (AXMTPointerMovement)initWithMovementDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6.receiver = self;
  v6.super_class = AXMTPointerMovement;
  result = [(AXMTPointerMovement *)&v6 init];
  if (result)
  {
    result->_type = 1;
    result->_delta.x = x;
    result->_delta.y = y;
  }

  return result;
}

- (CGPoint)location
{
  objc_copyStruct(v4, &self->_location, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)delta
{
  objc_copyStruct(v4, &self->_delta, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end