@interface _TUIOverscrollingEntry
- (CGPoint)defaultOrigin;
- (CGSize)defaultSize;
@end

@implementation _TUIOverscrollingEntry

- (CGPoint)defaultOrigin
{
  x = self->_defaultOrigin.x;
  y = self->_defaultOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)defaultSize
{
  width = self->_defaultSize.width;
  height = self->_defaultSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end