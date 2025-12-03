@interface AXMTPointerMovementMapper
- (AXMTPointerMovementMapper)initWithScreenBounds:(CGRect)bounds;
- (CGRect)screenBounds;
- (id)processPointInNormalizedTrackingSpace:(CGPoint)space;
@end

@implementation AXMTPointerMovementMapper

- (AXMTPointerMovementMapper)initWithScreenBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10.receiver = self;
  v10.super_class = AXMTPointerMovementMapper;
  v7 = [(AXMTPointerMovementMapper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_screenBounds.origin.x = x;
    v7->_screenBounds.origin.y = y;
    v7->_screenBounds.size.width = width;
    v7->_screenBounds.size.height = height;
    [(AXMTPointerMovementMapper *)v7 reset];
  }

  return v8;
}

- (id)processPointInNormalizedTrackingSpace:(CGPoint)space
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", v3];

  return 0;
}

- (CGRect)screenBounds
{
  x = self->_screenBounds.origin.x;
  y = self->_screenBounds.origin.y;
  width = self->_screenBounds.size.width;
  height = self->_screenBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end