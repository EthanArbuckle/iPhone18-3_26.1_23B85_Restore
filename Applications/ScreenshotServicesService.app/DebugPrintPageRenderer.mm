@interface DebugPrintPageRenderer
- (CGRect)paperRect;
- (CGRect)printableRect;
@end

@implementation DebugPrintPageRenderer

- (CGRect)printableRect
{
  x = self->printableRect.origin.x;
  y = self->printableRect.origin.y;
  width = self->printableRect.size.width;
  height = self->printableRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)paperRect
{
  x = self->paperRect.origin.x;
  y = self->paperRect.origin.y;
  width = self->paperRect.size.width;
  height = self->paperRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end