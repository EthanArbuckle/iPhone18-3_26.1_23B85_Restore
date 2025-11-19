@interface IUIRemoteSelectionRect
- (CGRect)rect;
- (IUIRemoteSelectionRect)initWithCGRect:(CGRect)a3 isVertical:(BOOL)a4;
@end

@implementation IUIRemoteSelectionRect

- (IUIRemoteSelectionRect)initWithCGRect:(CGRect)a3 isVertical:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = IUIRemoteSelectionRect;
  result = [(IUIRemoteSelectionRect *)&v10 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_isVertical = a4;
  }

  return result;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end