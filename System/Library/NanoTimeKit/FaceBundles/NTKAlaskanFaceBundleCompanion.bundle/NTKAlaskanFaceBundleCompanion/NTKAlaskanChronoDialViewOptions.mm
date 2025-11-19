@interface NTKAlaskanChronoDialViewOptions
- (CGPoint)largeTicksAnchorPoint;
- (CGPoint)smallTicksAnchorPoint;
- (CGSize)largeTickSize;
- (CGSize)smallTickSize;
@end

@implementation NTKAlaskanChronoDialViewOptions

- (CGSize)largeTickSize
{
  width = self->_largeTickSize.width;
  height = self->_largeTickSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)smallTickSize
{
  width = self->_smallTickSize.width;
  height = self->_smallTickSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)largeTicksAnchorPoint
{
  x = self->_largeTicksAnchorPoint.x;
  y = self->_largeTicksAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)smallTicksAnchorPoint
{
  x = self->_smallTicksAnchorPoint.x;
  y = self->_smallTicksAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end