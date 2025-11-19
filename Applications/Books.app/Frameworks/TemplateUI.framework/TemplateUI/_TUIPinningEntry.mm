@interface _TUIPinningEntry
- (CGPoint)currentOffset;
- (CGPoint)defaultPosition;
- (CGPoint)sectionOffset;
@end

@implementation _TUIPinningEntry

- (CGPoint)currentOffset
{
  x = self->_currentOffset.x;
  y = self->_currentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)sectionOffset
{
  x = self->_sectionOffset.x;
  y = self->_sectionOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)defaultPosition
{
  x = self->_defaultPosition.x;
  y = self->_defaultPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end