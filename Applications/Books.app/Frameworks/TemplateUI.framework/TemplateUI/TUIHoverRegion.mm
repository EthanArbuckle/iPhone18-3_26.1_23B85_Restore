@interface TUIHoverRegion
- (CGRect)bounds;
- (TUIHoverRegion)initWithBounds:(CGRect)bounds;
@end

@implementation TUIHoverRegion

- (TUIHoverRegion)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = TUIHoverRegion;
  result = [(TUIHoverRegion *)&v8 init];
  if (result)
  {
    result->_bounds.origin.x = x;
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
  }

  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end